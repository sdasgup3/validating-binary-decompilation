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
%G_0x746af__rip__type = type <{ [4 x i8] }>
%G_0x748c3__rip__type = type <{ [4 x i8] }>
%G_0x74932__rip__type = type <{ [4 x i8] }>
%G_0x749a6__rip__type = type <{ [4 x i8] }>
%G_0x749c6__rip__type = type <{ [4 x i8] }>
%G_0x74a03__rip__type = type <{ [4 x i8] }>
%G_0x74a56__rip__type = type <{ [4 x i8] }>
%G_0x74a76__rip__type = type <{ [4 x i8] }>
%G_0x74d4d__rip__type = type <{ [4 x i8] }>
%G_0x74db8__rip__type = type <{ [4 x i8] }>
%G_0x74e01__rip__type = type <{ [4 x i8] }>
%G_0x74e54__rip__type = type <{ [4 x i8] }>
%G_0x74e74__rip__type = type <{ [4 x i8] }>
%G_0x74eb1__rip__type = type <{ [4 x i8] }>
%G_0x74f04__rip__type = type <{ [4 x i8] }>
%G_0x74f24__rip__type = type <{ [4 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0fc0_type = type <{ [1 x i8] }>
%G_0xb38cb0_type = type <{ [4 x i8] }>
%G_0xb454f8_type = type <{ [4 x i8] }>
%G_0xb8c040_type = type <{ [4 x i8] }>
%G__0x58058f_type = type <{ [8 x i8] }>
%G__0x5805b3_type = type <{ [8 x i8] }>
%G__0x5805dc_type = type <{ [8 x i8] }>
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
@G_0x746af__rip_ = global %G_0x746af__rip__type zeroinitializer
@G_0x748c3__rip_ = global %G_0x748c3__rip__type zeroinitializer
@G_0x74932__rip_ = global %G_0x74932__rip__type zeroinitializer
@G_0x749a6__rip_ = global %G_0x749a6__rip__type zeroinitializer
@G_0x749c6__rip_ = global %G_0x749c6__rip__type zeroinitializer
@G_0x74a03__rip_ = global %G_0x74a03__rip__type zeroinitializer
@G_0x74a56__rip_ = global %G_0x74a56__rip__type zeroinitializer
@G_0x74a76__rip_ = global %G_0x74a76__rip__type zeroinitializer
@G_0x74d4d__rip_ = global %G_0x74d4d__rip__type zeroinitializer
@G_0x74db8__rip_ = global %G_0x74db8__rip__type zeroinitializer
@G_0x74e01__rip_ = global %G_0x74e01__rip__type zeroinitializer
@G_0x74e54__rip_ = global %G_0x74e54__rip__type zeroinitializer
@G_0x74e74__rip_ = global %G_0x74e74__rip__type zeroinitializer
@G_0x74eb1__rip_ = global %G_0x74eb1__rip__type zeroinitializer
@G_0x74f04__rip_ = global %G_0x74f04__rip__type zeroinitializer
@G_0x74f24__rip_ = global %G_0x74f24__rip__type zeroinitializer
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G_0xab0f24 = global %G_0xab0f24_type zeroinitializer
@G_0xab0fc0 = global %G_0xab0fc0_type zeroinitializer
@G_0xb38cb0 = global %G_0xb38cb0_type zeroinitializer
@G_0xb454f8 = global %G_0xb454f8_type zeroinitializer
@G_0xb8c040 = global %G_0xb8c040_type zeroinitializer
@G__0x58058f = global %G__0x58058f_type zeroinitializer
@G__0x5805b3 = global %G__0x5805b3_type zeroinitializer
@G__0x5805dc = global %G__0x5805dc_type zeroinitializer

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

declare %struct.Memory* @sub_46ccd0.dilate_erode(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46d5f0.close_bubbles(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46dc00.print_regions(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46de20.captured_territory(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @estimate_score(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_46e0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_46e0c0, %struct.Memory** %MEMORY
  %loadMem_46e0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i221 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i221
  %27 = load i64, i64* %PC.i220
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i220
  store i64 %26, i64* %RBP.i222, align 8
  store %struct.Memory* %loadMem_46e0c1, %struct.Memory** %MEMORY
  %loadMem_46e0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i273 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i273
  %36 = load i64, i64* %PC.i272
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i272
  %38 = sub i64 %35, 1728
  store i64 %38, i64* %RSP.i273, align 8
  %39 = icmp ult i64 %35, 1728
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
  %49 = xor i64 1728, %35
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
  store %struct.Memory* %loadMem_46e0c4, %struct.Memory** %MEMORY
  %loadMem_46e0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i655
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i655
  store i64 5, i64* %RAX.i656, align 8
  store %struct.Memory* %loadMem_46e0cb, %struct.Memory** %MEMORY
  %loadMem_46e0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RCX.i707 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %PC.i706
  %82 = add i64 %81, 5
  store i64 %82, i64* %PC.i706
  store i64 21, i64* %RCX.i707, align 8
  store %struct.Memory* %loadMem_46e0d0, %struct.Memory** %MEMORY
  %loadMem_46e0d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RDX.i946 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %PC.i945
  %90 = add i64 %89, 5
  store i64 %90, i64* %PC.i945
  store i64 1, i64* %RDX.i946, align 8
  store %struct.Memory* %loadMem_46e0d5, %struct.Memory** %MEMORY
  %loadMem_46e0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 15
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RBP.i943 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 17
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %R8.i944 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i943
  %101 = sub i64 %100, 1616
  %102 = load i64, i64* %PC.i942
  %103 = add i64 %102, 7
  store i64 %103, i64* %PC.i942
  store i64 %101, i64* %R8.i944, align 8
  store %struct.Memory* %loadMem_46e0da, %struct.Memory** %MEMORY
  %loadMem_46e0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %107, i64 0, i64 0
  %YMM0.i940 = bitcast %union.VectorReg* %108 to %"class.std::bitset"*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %110 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %109, i64 0, i64 0
  %XMM0.i941 = bitcast %union.VectorReg* %110 to %union.vec128_t*
  %111 = bitcast %"class.std::bitset"* %YMM0.i940 to i8*
  %112 = bitcast %"class.std::bitset"* %YMM0.i940 to i8*
  %113 = bitcast %union.vec128_t* %XMM0.i941 to i8*
  %114 = load i64, i64* %PC.i939
  %115 = add i64 %114, 3
  store i64 %115, i64* %PC.i939
  %116 = bitcast i8* %112 to i64*
  %117 = load i64, i64* %116, align 1
  %118 = getelementptr inbounds i8, i8* %112, i64 8
  %119 = bitcast i8* %118 to i64*
  %120 = load i64, i64* %119, align 1
  %121 = bitcast i8* %113 to i64*
  %122 = load i64, i64* %121, align 1
  %123 = getelementptr inbounds i8, i8* %113, i64 8
  %124 = bitcast i8* %123 to i64*
  %125 = load i64, i64* %124, align 1
  %126 = xor i64 %122, %117
  %127 = xor i64 %125, %120
  %128 = trunc i64 %126 to i32
  %129 = lshr i64 %126, 32
  %130 = trunc i64 %129 to i32
  %131 = bitcast i8* %111 to i32*
  store i32 %128, i32* %131, align 1
  %132 = getelementptr inbounds i8, i8* %111, i64 4
  %133 = bitcast i8* %132 to i32*
  store i32 %130, i32* %133, align 1
  %134 = trunc i64 %127 to i32
  %135 = getelementptr inbounds i8, i8* %111, i64 8
  %136 = bitcast i8* %135 to i32*
  store i32 %134, i32* %136, align 1
  %137 = lshr i64 %127, 32
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds i8, i8* %111, i64 12
  %140 = bitcast i8* %139 to i32*
  store i32 %138, i32* %140, align 1
  store %struct.Memory* %loadMem_46e0e1, %struct.Memory** %MEMORY
  %loadMem_46e0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 11
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RDI.i937 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 15
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RBP.i938 = bitcast %union.anon* %149 to i64*
  %150 = load i64, i64* %RBP.i938
  %151 = sub i64 %150, 8
  %152 = load i64, i64* %RDI.i937
  %153 = load i64, i64* %PC.i936
  %154 = add i64 %153, 4
  store i64 %154, i64* %PC.i936
  %155 = inttoptr i64 %151 to i64*
  store i64 %152, i64* %155
  store %struct.Memory* %loadMem_46e0e4, %struct.Memory** %MEMORY
  %loadMem_46e0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 9
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RSI.i934 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 15
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RBP.i935 = bitcast %union.anon* %164 to i64*
  %165 = load i64, i64* %RBP.i935
  %166 = sub i64 %165, 16
  %167 = load i64, i64* %RSI.i934
  %168 = load i64, i64* %PC.i933
  %169 = add i64 %168, 4
  store i64 %169, i64* %PC.i933
  %170 = inttoptr i64 %166 to i64*
  store i64 %167, i64* %170
  store %struct.Memory* %loadMem_46e0e8, %struct.Memory** %MEMORY
  %loadMem_46e0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i931 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %178 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %177, i64 0, i64 0
  %XMM0.i932 = bitcast %union.VectorReg* %178 to %union.vec128_t*
  %179 = load i64, i64* %RBP.i931
  %180 = sub i64 %179, 1620
  %181 = bitcast %union.vec128_t* %XMM0.i932 to i8*
  %182 = load i64, i64* %PC.i930
  %183 = add i64 %182, 8
  store i64 %183, i64* %PC.i930
  %184 = bitcast i8* %181 to <2 x float>*
  %185 = load <2 x float>, <2 x float>* %184, align 1
  %186 = extractelement <2 x float> %185, i32 0
  %187 = inttoptr i64 %180 to float*
  store float %186, float* %187
  store %struct.Memory* %loadMem_46e0ec, %struct.Memory** %MEMORY
  %loadMem_46e0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i928 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %195 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %194, i64 0, i64 0
  %XMM0.i929 = bitcast %union.VectorReg* %195 to %union.vec128_t*
  %196 = load i64, i64* %RBP.i928
  %197 = sub i64 %196, 1624
  %198 = bitcast %union.vec128_t* %XMM0.i929 to i8*
  %199 = load i64, i64* %PC.i927
  %200 = add i64 %199, 8
  store i64 %200, i64* %PC.i927
  %201 = bitcast i8* %198 to <2 x float>*
  %202 = load <2 x float>, <2 x float>* %201, align 1
  %203 = extractelement <2 x float> %202, i32 0
  %204 = inttoptr i64 %197 to float*
  store float %203, float* %204
  store %struct.Memory* %loadMem_46e0f4, %struct.Memory** %MEMORY
  %loadMem_46e0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 15
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RBP.i925 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %211, i64 0, i64 0
  %XMM0.i926 = bitcast %union.VectorReg* %212 to %union.vec128_t*
  %213 = load i64, i64* %RBP.i925
  %214 = sub i64 %213, 1628
  %215 = bitcast %union.vec128_t* %XMM0.i926 to i8*
  %216 = load i64, i64* %PC.i924
  %217 = add i64 %216, 8
  store i64 %217, i64* %PC.i924
  %218 = bitcast i8* %215 to <2 x float>*
  %219 = load <2 x float>, <2 x float>* %218, align 1
  %220 = extractelement <2 x float> %219, i32 0
  %221 = inttoptr i64 %214 to float*
  store float %220, float* %221
  store %struct.Memory* %loadMem_46e0fc, %struct.Memory** %MEMORY
  %loadMem_46e104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 15
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RBP.i922 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %229 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %228, i64 0, i64 0
  %XMM0.i923 = bitcast %union.VectorReg* %229 to %union.vec128_t*
  %230 = load i64, i64* %RBP.i922
  %231 = sub i64 %230, 1632
  %232 = bitcast %union.vec128_t* %XMM0.i923 to i8*
  %233 = load i64, i64* %PC.i921
  %234 = add i64 %233, 8
  store i64 %234, i64* %PC.i921
  %235 = bitcast i8* %232 to <2 x float>*
  %236 = load <2 x float>, <2 x float>* %235, align 1
  %237 = extractelement <2 x float> %236, i32 0
  %238 = inttoptr i64 %231 to float*
  store float %237, float* %238
  store %struct.Memory* %loadMem_46e104, %struct.Memory** %MEMORY
  %loadMem_46e10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %EAX.i919 = bitcast %union.anon* %244 to i32*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 11
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RDI.i920 = bitcast %union.anon* %247 to i64*
  %248 = load i32, i32* %EAX.i919
  %249 = zext i32 %248 to i64
  %250 = load i64, i64* %PC.i918
  %251 = add i64 %250, 2
  store i64 %251, i64* %PC.i918
  %252 = and i64 %249, 4294967295
  store i64 %252, i64* %RDI.i920, align 8
  store %struct.Memory* %loadMem_46e10c, %struct.Memory** %MEMORY
  %loadMem_46e10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %ECX.i916 = bitcast %union.anon* %258 to i32*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 9
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RSI.i917 = bitcast %union.anon* %261 to i64*
  %262 = load i32, i32* %ECX.i916
  %263 = zext i32 %262 to i64
  %264 = load i64, i64* %PC.i915
  %265 = add i64 %264, 2
  store i64 %265, i64* %PC.i915
  %266 = and i64 %263, 4294967295
  store i64 %266, i64* %RSI.i917, align 8
  store %struct.Memory* %loadMem_46e10e, %struct.Memory** %MEMORY
  %loadMem_46e110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 33
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %269 to i64*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 7
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %272 to i32*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 15
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %RBP.i914 = bitcast %union.anon* %275 to i64*
  %276 = load i64, i64* %RBP.i914
  %277 = sub i64 %276, 1692
  %278 = load i32, i32* %EDX.i
  %279 = zext i32 %278 to i64
  %280 = load i64, i64* %PC.i913
  %281 = add i64 %280, 6
  store i64 %281, i64* %PC.i913
  %282 = inttoptr i64 %277 to i32*
  store i32 %278, i32* %282
  store %struct.Memory* %loadMem_46e110, %struct.Memory** %MEMORY
  %loadMem_46e116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 7
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %RDX.i912 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 17
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %R8.i = bitcast %union.anon* %291 to i64*
  %292 = load i64, i64* %R8.i
  %293 = load i64, i64* %PC.i911
  %294 = add i64 %293, 3
  store i64 %294, i64* %PC.i911
  store i64 %292, i64* %RDX.i912, align 8
  store %struct.Memory* %loadMem_46e116, %struct.Memory** %MEMORY
  %loadMem_46e119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %RCX.i909 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 15
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RBP.i910 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %RBP.i910
  %305 = sub i64 %304, 1692
  %306 = load i64, i64* %PC.i908
  %307 = add i64 %306, 6
  store i64 %307, i64* %PC.i908
  %308 = inttoptr i64 %305 to i32*
  %309 = load i32, i32* %308
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RCX.i909, align 8
  store %struct.Memory* %loadMem_46e119, %struct.Memory** %MEMORY
  %loadMem1_46e11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 33
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %313 to i64*
  %314 = load i64, i64* %PC.i907
  %315 = add i64 %314, -5199
  %316 = load i64, i64* %PC.i907
  %317 = add i64 %316, 5
  %318 = load i64, i64* %PC.i907
  %319 = add i64 %318, 5
  store i64 %319, i64* %PC.i907
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = add i64 %321, -8
  %323 = inttoptr i64 %322 to i64*
  store i64 %317, i64* %323
  store i64 %322, i64* %320, align 8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %315, i64* %324, align 8
  store %struct.Memory* %loadMem1_46e11f, %struct.Memory** %MEMORY
  %loadMem2_46e11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e11f = load i64, i64* %3
  %call2_46e11f = call %struct.Memory* @sub_46ccd0.dilate_erode(%struct.State* %0, i64 %loadPC_46e11f, %struct.Memory* %loadMem2_46e11f)
  store %struct.Memory* %call2_46e11f, %struct.Memory** %MEMORY
  %loadMem_46e124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 11
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RDI.i905 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 15
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RBP.i906 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %RBP.i906
  %335 = sub i64 %334, 1616
  %336 = load i64, i64* %PC.i904
  %337 = add i64 %336, 7
  store i64 %337, i64* %PC.i904
  store i64 %335, i64* %RDI.i905, align 8
  store %struct.Memory* %loadMem_46e124, %struct.Memory** %MEMORY
  %loadMem_46e12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 33
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %EAX.i902 = bitcast %union.anon* %343 to i32*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 15
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %RBP.i903 = bitcast %union.anon* %346 to i64*
  %347 = load i64, i64* %RBP.i903
  %348 = sub i64 %347, 1656
  %349 = load i32, i32* %EAX.i902
  %350 = zext i32 %349 to i64
  %351 = load i64, i64* %PC.i901
  %352 = add i64 %351, 6
  store i64 %352, i64* %PC.i901
  %353 = inttoptr i64 %348 to i32*
  store i32 %349, i32* %353
  store %struct.Memory* %loadMem_46e12b, %struct.Memory** %MEMORY
  %loadMem1_46e131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %356 to i64*
  %357 = load i64, i64* %PC.i900
  %358 = add i64 %357, -2881
  %359 = load i64, i64* %PC.i900
  %360 = add i64 %359, 5
  %361 = load i64, i64* %PC.i900
  %362 = add i64 %361, 5
  store i64 %362, i64* %PC.i900
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = add i64 %364, -8
  %366 = inttoptr i64 %365 to i64*
  store i64 %360, i64* %366
  store i64 %365, i64* %363, align 8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %358, i64* %367, align 8
  store %struct.Memory* %loadMem1_46e131, %struct.Memory** %MEMORY
  %loadMem2_46e131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e131 = load i64, i64* %3
  %call2_46e131 = call %struct.Memory* @sub_46d5f0.close_bubbles(%struct.State* %0, i64 %loadPC_46e131, %struct.Memory* %loadMem2_46e131)
  store %struct.Memory* %call2_46e131, %struct.Memory** %MEMORY
  %loadMem_46e136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %RAX.i899 = bitcast %union.anon* %373 to i64*
  %374 = load i64, i64* %PC.i898
  %375 = add i64 %374, 7
  store i64 %375, i64* %PC.i898
  %376 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RAX.i899, align 8
  store %struct.Memory* %loadMem_46e136, %struct.Memory** %MEMORY
  %loadMem_46e13d = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RAX.i897 = bitcast %union.anon* %383 to i64*
  %384 = load i64, i64* %RAX.i897
  %385 = load i64, i64* %PC.i896
  %386 = add i64 %385, 5
  store i64 %386, i64* %PC.i896
  %387 = and i64 65536, %384
  %388 = trunc i64 %387 to i32
  store i64 %387, i64* %RAX.i897, align 8
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %389, align 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %390, align 1
  %391 = icmp eq i32 %388, 0
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %392, i8* %393, align 1
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %394, align 1
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %395, align 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %396, align 1
  store %struct.Memory* %loadMem_46e13d, %struct.Memory** %MEMORY
  %loadMem_46e142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 33
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %EAX.i895 = bitcast %union.anon* %402 to i32*
  %403 = load i32, i32* %EAX.i895
  %404 = zext i32 %403 to i64
  %405 = load i64, i64* %PC.i894
  %406 = add i64 %405, 3
  store i64 %406, i64* %PC.i894
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %407, align 1
  %408 = and i32 %403, 255
  %409 = call i32 @llvm.ctpop.i32(i32 %408)
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %412, i8* %413, align 1
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %414, align 1
  %415 = icmp eq i32 %403, 0
  %416 = zext i1 %415 to i8
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %416, i8* %417, align 1
  %418 = lshr i32 %403, 31
  %419 = trunc i32 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %419, i8* %420, align 1
  %421 = lshr i32 %403, 31
  %422 = xor i32 %418, %421
  %423 = add i32 %422, %421
  %424 = icmp eq i32 %423, 2
  %425 = zext i1 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %425, i8* %426, align 1
  store %struct.Memory* %loadMem_46e142, %struct.Memory** %MEMORY
  %loadMem_46e145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 33
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %429 to i64*
  %430 = load i64, i64* %PC.i893
  %431 = add i64 %430, 18
  %432 = load i64, i64* %PC.i893
  %433 = add i64 %432, 6
  %434 = load i64, i64* %PC.i893
  %435 = add i64 %434, 6
  store i64 %435, i64* %PC.i893
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %437 = load i8, i8* %436, align 1
  store i8 %437, i8* %BRANCH_TAKEN, align 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %439 = icmp ne i8 %437, 0
  %440 = select i1 %439, i64 %431, i64 %433
  store i64 %440, i64* %438, align 8
  store %struct.Memory* %loadMem_46e145, %struct.Memory** %MEMORY
  %loadBr_46e145 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e145 = icmp eq i8 %loadBr_46e145, 1
  br i1 %cmpBr_46e145, label %block_.L_46e157, label %block_46e14b

block_46e14b:                                     ; preds = %entry
  %loadMem_46e14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 33
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 11
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RDI.i891 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 15
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %RBP.i892 = bitcast %union.anon* %449 to i64*
  %450 = load i64, i64* %RBP.i892
  %451 = sub i64 %450, 1616
  %452 = load i64, i64* %PC.i890
  %453 = add i64 %452, 7
  store i64 %453, i64* %PC.i890
  store i64 %451, i64* %RDI.i891, align 8
  store %struct.Memory* %loadMem_46e14b, %struct.Memory** %MEMORY
  %loadMem1_46e152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %PC.i889
  %458 = add i64 %457, -1362
  %459 = load i64, i64* %PC.i889
  %460 = add i64 %459, 5
  %461 = load i64, i64* %PC.i889
  %462 = add i64 %461, 5
  store i64 %462, i64* %PC.i889
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = add i64 %464, -8
  %466 = inttoptr i64 %465 to i64*
  store i64 %460, i64* %466
  store i64 %465, i64* %463, align 8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %458, i64* %467, align 8
  store %struct.Memory* %loadMem1_46e152, %struct.Memory** %MEMORY
  %loadMem2_46e152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e152 = load i64, i64* %3
  %call2_46e152 = call %struct.Memory* @sub_46dc00.print_regions(%struct.State* %0, i64 %loadPC_46e152, %struct.Memory* %loadMem2_46e152)
  store %struct.Memory* %call2_46e152, %struct.Memory** %MEMORY
  br label %block_.L_46e157

block_.L_46e157:                                  ; preds = %block_46e14b, %entry
  %loadMem_46e157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 33
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 15
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RBP.i888 = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RBP.i888
  %475 = sub i64 %474, 1636
  %476 = load i64, i64* %PC.i887
  %477 = add i64 %476, 10
  store i64 %477, i64* %PC.i887
  %478 = inttoptr i64 %475 to i32*
  store i32 0, i32* %478
  store %struct.Memory* %loadMem_46e157, %struct.Memory** %MEMORY
  br label %block_.L_46e161

block_.L_46e161:                                  ; preds = %block_.L_46e4dd, %block_.L_46e157
  %loadMem_46e161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 33
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %481 to i64*
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %RAX.i885 = bitcast %union.anon* %484 to i64*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 15
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %RBP.i886 = bitcast %union.anon* %487 to i64*
  %488 = load i64, i64* %RBP.i886
  %489 = sub i64 %488, 1636
  %490 = load i64, i64* %PC.i884
  %491 = add i64 %490, 6
  store i64 %491, i64* %PC.i884
  %492 = inttoptr i64 %489 to i32*
  %493 = load i32, i32* %492
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX.i885, align 8
  store %struct.Memory* %loadMem_46e161, %struct.Memory** %MEMORY
  %loadMem_46e167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %EAX.i883 = bitcast %union.anon* %500 to i32*
  %501 = load i32, i32* %EAX.i883
  %502 = zext i32 %501 to i64
  %503 = load i64, i64* %PC.i882
  %504 = add i64 %503, 7
  store i64 %504, i64* %PC.i882
  %505 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %506 = sub i32 %501, %505
  %507 = icmp ult i32 %501, %505
  %508 = zext i1 %507 to i8
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %508, i8* %509, align 1
  %510 = and i32 %506, 255
  %511 = call i32 @llvm.ctpop.i32(i32 %510)
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %514, i8* %515, align 1
  %516 = xor i32 %505, %501
  %517 = xor i32 %516, %506
  %518 = lshr i32 %517, 4
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %520, i8* %521, align 1
  %522 = icmp eq i32 %506, 0
  %523 = zext i1 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %523, i8* %524, align 1
  %525 = lshr i32 %506, 31
  %526 = trunc i32 %525 to i8
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %526, i8* %527, align 1
  %528 = lshr i32 %501, 31
  %529 = lshr i32 %505, 31
  %530 = xor i32 %529, %528
  %531 = xor i32 %525, %528
  %532 = add i32 %531, %530
  %533 = icmp eq i32 %532, 2
  %534 = zext i1 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %534, i8* %535, align 1
  store %struct.Memory* %loadMem_46e167, %struct.Memory** %MEMORY
  %loadMem_46e16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 33
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %PC.i881
  %540 = add i64 %539, 899
  %541 = load i64, i64* %PC.i881
  %542 = add i64 %541, 6
  %543 = load i64, i64* %PC.i881
  %544 = add i64 %543, 6
  store i64 %544, i64* %PC.i881
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %546 = load i8, i8* %545, align 1
  %547 = icmp ne i8 %546, 0
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %549 = load i8, i8* %548, align 1
  %550 = icmp ne i8 %549, 0
  %551 = xor i1 %547, %550
  %552 = xor i1 %551, true
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %BRANCH_TAKEN, align 1
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %555 = select i1 %551, i64 %542, i64 %540
  store i64 %555, i64* %554, align 8
  store %struct.Memory* %loadMem_46e16e, %struct.Memory** %MEMORY
  %loadBr_46e16e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e16e = icmp eq i8 %loadBr_46e16e, 1
  br i1 %cmpBr_46e16e, label %block_.L_46e4f1, label %block_46e174

block_46e174:                                     ; preds = %block_.L_46e161
  %loadMem_46e174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 15
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RBP.i880 = bitcast %union.anon* %561 to i64*
  %562 = load i64, i64* %RBP.i880
  %563 = sub i64 %562, 1660
  %564 = load i64, i64* %PC.i879
  %565 = add i64 %564, 10
  store i64 %565, i64* %PC.i879
  %566 = inttoptr i64 %563 to i32*
  store i32 0, i32* %566
  store %struct.Memory* %loadMem_46e174, %struct.Memory** %MEMORY
  %loadMem_46e17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 33
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %569 to i64*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 15
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %572 to i64*
  %573 = load i64, i64* %RBP.i878
  %574 = sub i64 %573, 1664
  %575 = load i64, i64* %PC.i877
  %576 = add i64 %575, 10
  store i64 %576, i64* %PC.i877
  %577 = inttoptr i64 %574 to i32*
  store i32 0, i32* %577
  store %struct.Memory* %loadMem_46e17e, %struct.Memory** %MEMORY
  %loadMem_46e188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 15
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RBP.i876 = bitcast %union.anon* %583 to i64*
  %584 = load i64, i64* %RBP.i876
  %585 = sub i64 %584, 1668
  %586 = load i64, i64* %PC.i875
  %587 = add i64 %586, 10
  store i64 %587, i64* %PC.i875
  %588 = inttoptr i64 %585 to i32*
  store i32 0, i32* %588
  store %struct.Memory* %loadMem_46e188, %struct.Memory** %MEMORY
  %loadMem_46e192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 15
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RBP.i874 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %RBP.i874
  %596 = sub i64 %595, 1672
  %597 = load i64, i64* %PC.i873
  %598 = add i64 %597, 10
  store i64 %598, i64* %PC.i873
  %599 = inttoptr i64 %596 to i32*
  store i32 0, i32* %599
  store %struct.Memory* %loadMem_46e192, %struct.Memory** %MEMORY
  %loadMem_46e19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 15
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RBP.i872 = bitcast %union.anon* %605 to i64*
  %606 = load i64, i64* %RBP.i872
  %607 = sub i64 %606, 1640
  %608 = load i64, i64* %PC.i871
  %609 = add i64 %608, 10
  store i64 %609, i64* %PC.i871
  %610 = inttoptr i64 %607 to i32*
  store i32 0, i32* %610
  store %struct.Memory* %loadMem_46e19c, %struct.Memory** %MEMORY
  br label %block_.L_46e1a6

block_.L_46e1a6:                                  ; preds = %block_.L_46e414, %block_46e174
  %loadMem_46e1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 1
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %RAX.i869 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 15
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RBP.i870 = bitcast %union.anon* %619 to i64*
  %620 = load i64, i64* %RBP.i870
  %621 = sub i64 %620, 1640
  %622 = load i64, i64* %PC.i868
  %623 = add i64 %622, 6
  store i64 %623, i64* %PC.i868
  %624 = inttoptr i64 %621 to i32*
  %625 = load i32, i32* %624
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RAX.i869, align 8
  store %struct.Memory* %loadMem_46e1a6, %struct.Memory** %MEMORY
  %loadMem_46e1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 33
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %629 to i64*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 1
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %EAX.i867 = bitcast %union.anon* %632 to i32*
  %633 = load i32, i32* %EAX.i867
  %634 = zext i32 %633 to i64
  %635 = load i64, i64* %PC.i866
  %636 = add i64 %635, 7
  store i64 %636, i64* %PC.i866
  %637 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %638 = sub i32 %633, %637
  %639 = icmp ult i32 %633, %637
  %640 = zext i1 %639 to i8
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %640, i8* %641, align 1
  %642 = and i32 %638, 255
  %643 = call i32 @llvm.ctpop.i32(i32 %642)
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %646, i8* %647, align 1
  %648 = xor i32 %637, %633
  %649 = xor i32 %648, %638
  %650 = lshr i32 %649, 4
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %652, i8* %653, align 1
  %654 = icmp eq i32 %638, 0
  %655 = zext i1 %654 to i8
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %655, i8* %656, align 1
  %657 = lshr i32 %638, 31
  %658 = trunc i32 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %658, i8* %659, align 1
  %660 = lshr i32 %633, 31
  %661 = lshr i32 %637, 31
  %662 = xor i32 %661, %660
  %663 = xor i32 %657, %660
  %664 = add i32 %663, %662
  %665 = icmp eq i32 %664, 2
  %666 = zext i1 %665 to i8
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %666, i8* %667, align 1
  store %struct.Memory* %loadMem_46e1ac, %struct.Memory** %MEMORY
  %loadMem_46e1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %670 to i64*
  %671 = load i64, i64* %PC.i865
  %672 = add i64 %671, 629
  %673 = load i64, i64* %PC.i865
  %674 = add i64 %673, 6
  %675 = load i64, i64* %PC.i865
  %676 = add i64 %675, 6
  store i64 %676, i64* %PC.i865
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %678 = load i8, i8* %677, align 1
  %679 = icmp ne i8 %678, 0
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %681 = load i8, i8* %680, align 1
  %682 = icmp ne i8 %681, 0
  %683 = xor i1 %679, %682
  %684 = xor i1 %683, true
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %BRANCH_TAKEN, align 1
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %687 = select i1 %683, i64 %674, i64 %672
  store i64 %687, i64* %686, align 8
  store %struct.Memory* %loadMem_46e1b3, %struct.Memory** %MEMORY
  %loadBr_46e1b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e1b3 = icmp eq i8 %loadBr_46e1b3, 1
  br i1 %cmpBr_46e1b3, label %block_.L_46e428, label %block_46e1b9

block_46e1b9:                                     ; preds = %block_.L_46e1a6
  %loadMem_46e1b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 1
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RAX.i863 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 15
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RBP.i864 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %RBP.i864
  %698 = sub i64 %697, 1636
  %699 = load i64, i64* %PC.i862
  %700 = add i64 %699, 7
  store i64 %700, i64* %PC.i862
  %701 = inttoptr i64 %698 to i32*
  %702 = load i32, i32* %701
  %703 = sext i32 %702 to i64
  %704 = mul i64 %703, 20
  %705 = trunc i64 %704 to i32
  %706 = and i64 %704, 4294967295
  store i64 %706, i64* %RAX.i863, align 8
  %707 = shl i64 %704, 32
  %708 = ashr exact i64 %707, 32
  %709 = icmp ne i64 %708, %704
  %710 = zext i1 %709 to i8
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %710, i8* %711, align 1
  %712 = and i32 %705, 255
  %713 = call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %716, i8* %717, align 1
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %718, align 1
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %719, align 1
  %720 = lshr i32 %705, 31
  %721 = trunc i32 %720 to i8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %721, i8* %722, align 1
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %710, i8* %723, align 1
  store %struct.Memory* %loadMem_46e1b9, %struct.Memory** %MEMORY
  %loadMem_46e1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 1
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RAX.i861 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RAX.i861
  %731 = load i64, i64* %PC.i860
  %732 = add i64 %731, 3
  store i64 %732, i64* %PC.i860
  %733 = trunc i64 %730 to i32
  %734 = add i32 21, %733
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RAX.i861, align 8
  %736 = icmp ult i32 %734, %733
  %737 = icmp ult i32 %734, 21
  %738 = or i1 %736, %737
  %739 = zext i1 %738 to i8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %739, i8* %740, align 1
  %741 = and i32 %734, 255
  %742 = call i32 @llvm.ctpop.i32(i32 %741)
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  %745 = xor i8 %744, 1
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %745, i8* %746, align 1
  %747 = xor i64 21, %730
  %748 = trunc i64 %747 to i32
  %749 = xor i32 %748, %734
  %750 = lshr i32 %749, 4
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %752, i8* %753, align 1
  %754 = icmp eq i32 %734, 0
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %755, i8* %756, align 1
  %757 = lshr i32 %734, 31
  %758 = trunc i32 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %758, i8* %759, align 1
  %760 = lshr i32 %733, 31
  %761 = xor i32 %757, %760
  %762 = add i32 %761, %757
  %763 = icmp eq i32 %762, 2
  %764 = zext i1 %763 to i8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %764, i8* %765, align 1
  store %struct.Memory* %loadMem_46e1c0, %struct.Memory** %MEMORY
  %loadMem_46e1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 33
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 1
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %RAX.i858 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 15
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %RBP.i859 = bitcast %union.anon* %774 to i64*
  %775 = load i64, i64* %RAX.i858
  %776 = load i64, i64* %RBP.i859
  %777 = sub i64 %776, 1640
  %778 = load i64, i64* %PC.i857
  %779 = add i64 %778, 6
  store i64 %779, i64* %PC.i857
  %780 = trunc i64 %775 to i32
  %781 = inttoptr i64 %777 to i32*
  %782 = load i32, i32* %781
  %783 = add i32 %782, %780
  %784 = zext i32 %783 to i64
  store i64 %784, i64* %RAX.i858, align 8
  %785 = icmp ult i32 %783, %780
  %786 = icmp ult i32 %783, %782
  %787 = or i1 %785, %786
  %788 = zext i1 %787 to i8
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %788, i8* %789, align 1
  %790 = and i32 %783, 255
  %791 = call i32 @llvm.ctpop.i32(i32 %790)
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %794, i8* %795, align 1
  %796 = xor i32 %782, %780
  %797 = xor i32 %796, %783
  %798 = lshr i32 %797, 4
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %800, i8* %801, align 1
  %802 = icmp eq i32 %783, 0
  %803 = zext i1 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %803, i8* %804, align 1
  %805 = lshr i32 %783, 31
  %806 = trunc i32 %805 to i8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %806, i8* %807, align 1
  %808 = lshr i32 %780, 31
  %809 = lshr i32 %782, 31
  %810 = xor i32 %805, %808
  %811 = xor i32 %805, %809
  %812 = add i32 %810, %811
  %813 = icmp eq i32 %812, 2
  %814 = zext i1 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %814, i8* %815, align 1
  store %struct.Memory* %loadMem_46e1c3, %struct.Memory** %MEMORY
  %loadMem_46e1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 1
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %EAX.i855 = bitcast %union.anon* %821 to i32*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 15
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RBP.i856 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %RBP.i856
  %826 = sub i64 %825, 1644
  %827 = load i32, i32* %EAX.i855
  %828 = zext i32 %827 to i64
  %829 = load i64, i64* %PC.i854
  %830 = add i64 %829, 6
  store i64 %830, i64* %PC.i854
  %831 = inttoptr i64 %826 to i32*
  store i32 %827, i32* %831
  store %struct.Memory* %loadMem_46e1c9, %struct.Memory** %MEMORY
  %loadMem_46e1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 33
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 5
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RCX.i852 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 15
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RBP.i853 = bitcast %union.anon* %840 to i64*
  %841 = load i64, i64* %RBP.i853
  %842 = sub i64 %841, 1644
  %843 = load i64, i64* %PC.i851
  %844 = add i64 %843, 7
  store i64 %844, i64* %PC.i851
  %845 = inttoptr i64 %842 to i32*
  %846 = load i32, i32* %845
  %847 = sext i32 %846 to i64
  store i64 %847, i64* %RCX.i852, align 8
  store %struct.Memory* %loadMem_46e1cf, %struct.Memory** %MEMORY
  %loadMem_46e1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 1
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RAX.i849 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 5
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RCX.i850 = bitcast %union.anon* %856 to i64*
  %857 = load i64, i64* %RCX.i850
  %858 = add i64 %857, 12099168
  %859 = load i64, i64* %PC.i848
  %860 = add i64 %859, 8
  store i64 %860, i64* %PC.i848
  %861 = inttoptr i64 %858 to i8*
  %862 = load i8, i8* %861
  %863 = zext i8 %862 to i64
  store i64 %863, i64* %RAX.i849, align 8
  store %struct.Memory* %loadMem_46e1d6, %struct.Memory** %MEMORY
  %loadMem_46e1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 1
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %EAX.i847 = bitcast %union.anon* %869 to i32*
  %870 = load i32, i32* %EAX.i847
  %871 = zext i32 %870 to i64
  %872 = load i64, i64* %PC.i846
  %873 = add i64 %872, 3
  store i64 %873, i64* %PC.i846
  %874 = sub i32 %870, 2
  %875 = icmp ult i32 %870, 2
  %876 = zext i1 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %876, i8* %877, align 1
  %878 = and i32 %874, 255
  %879 = call i32 @llvm.ctpop.i32(i32 %878)
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %882, i8* %883, align 1
  %884 = xor i64 2, %871
  %885 = trunc i64 %884 to i32
  %886 = xor i32 %885, %874
  %887 = lshr i32 %886, 4
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %889, i8* %890, align 1
  %891 = icmp eq i32 %874, 0
  %892 = zext i1 %891 to i8
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %892, i8* %893, align 1
  %894 = lshr i32 %874, 31
  %895 = trunc i32 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %895, i8* %896, align 1
  %897 = lshr i32 %870, 31
  %898 = xor i32 %894, %897
  %899 = add i32 %898, %897
  %900 = icmp eq i32 %899, 2
  %901 = zext i1 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %901, i8* %902, align 1
  store %struct.Memory* %loadMem_46e1de, %struct.Memory** %MEMORY
  %loadMem_46e1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 33
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %905 to i64*
  %906 = load i64, i64* %PC.i845
  %907 = add i64 %906, 158
  %908 = load i64, i64* %PC.i845
  %909 = add i64 %908, 6
  %910 = load i64, i64* %PC.i845
  %911 = add i64 %910, 6
  store i64 %911, i64* %PC.i845
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %913 = load i8, i8* %912, align 1
  %914 = icmp eq i8 %913, 0
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %BRANCH_TAKEN, align 1
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %917 = select i1 %914, i64 %907, i64 %909
  store i64 %917, i64* %916, align 8
  store %struct.Memory* %loadMem_46e1e1, %struct.Memory** %MEMORY
  %loadBr_46e1e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e1e1 = icmp eq i8 %loadBr_46e1e1, 1
  br i1 %cmpBr_46e1e1, label %block_.L_46e27f, label %block_46e1e7

block_46e1e7:                                     ; preds = %block_46e1b9
  %loadMem_46e1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 33
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %920 to i64*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 9
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RSI.i844 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %PC.i843
  %925 = add i64 %924, 5
  store i64 %925, i64* %PC.i843
  store i64 1, i64* %RSI.i844, align 8
  store %struct.Memory* %loadMem_46e1e7, %struct.Memory** %MEMORY
  %loadMem_46e1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 11
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RDI.i841 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 15
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RBP.i842 = bitcast %union.anon* %934 to i64*
  %935 = load i64, i64* %RBP.i842
  %936 = sub i64 %935, 1644
  %937 = load i64, i64* %PC.i840
  %938 = add i64 %937, 6
  store i64 %938, i64* %PC.i840
  %939 = inttoptr i64 %936 to i32*
  %940 = load i32, i32* %939
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %RDI.i841, align 8
  store %struct.Memory* %loadMem_46e1ec, %struct.Memory** %MEMORY
  %loadMem1_46e1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 33
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %944 to i64*
  %945 = load i64, i64* %PC.i839
  %946 = add i64 %945, -978
  %947 = load i64, i64* %PC.i839
  %948 = add i64 %947, 5
  %949 = load i64, i64* %PC.i839
  %950 = add i64 %949, 5
  store i64 %950, i64* %PC.i839
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %952 = load i64, i64* %951, align 8
  %953 = add i64 %952, -8
  %954 = inttoptr i64 %953 to i64*
  store i64 %948, i64* %954
  store i64 %953, i64* %951, align 8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %946, i64* %955, align 8
  store %struct.Memory* %loadMem1_46e1f2, %struct.Memory** %MEMORY
  %loadMem2_46e1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e1f2 = load i64, i64* %3
  %call2_46e1f2 = call %struct.Memory* @sub_46de20.captured_territory(%struct.State* %0, i64 %loadPC_46e1f2, %struct.Memory* %loadMem2_46e1f2)
  store %struct.Memory* %call2_46e1f2, %struct.Memory** %MEMORY
  %loadMem_46e1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 33
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %958 to i64*
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 1
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %EAX.i838 = bitcast %union.anon* %961 to i32*
  %962 = load i32, i32* %EAX.i838
  %963 = zext i32 %962 to i64
  %964 = load i64, i64* %PC.i837
  %965 = add i64 %964, 3
  store i64 %965, i64* %PC.i837
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %966, align 1
  %967 = and i32 %962, 255
  %968 = call i32 @llvm.ctpop.i32(i32 %967)
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  %971 = xor i8 %970, 1
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %971, i8* %972, align 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %973, align 1
  %974 = icmp eq i32 %962, 0
  %975 = zext i1 %974 to i8
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %975, i8* %976, align 1
  %977 = lshr i32 %962, 31
  %978 = trunc i32 %977 to i8
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %978, i8* %979, align 1
  %980 = lshr i32 %962, 31
  %981 = xor i32 %977, %980
  %982 = add i32 %981, %980
  %983 = icmp eq i32 %982, 2
  %984 = zext i1 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %984, i8* %985, align 1
  store %struct.Memory* %loadMem_46e1f7, %struct.Memory** %MEMORY
  %loadMem_46e1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %PC.i836
  %990 = add i64 %989, 89
  %991 = load i64, i64* %PC.i836
  %992 = add i64 %991, 6
  %993 = load i64, i64* %PC.i836
  %994 = add i64 %993, 6
  store i64 %994, i64* %PC.i836
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %996 = load i8, i8* %995, align 1
  store i8 %996, i8* %BRANCH_TAKEN, align 1
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %998 = icmp ne i8 %996, 0
  %999 = select i1 %998, i64 %990, i64 %992
  store i64 %999, i64* %997, align 8
  store %struct.Memory* %loadMem_46e1fa, %struct.Memory** %MEMORY
  %loadBr_46e1fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e1fa = icmp eq i8 %loadBr_46e1fa, 1
  br i1 %cmpBr_46e1fa, label %block_.L_46e253, label %block_46e200

block_46e200:                                     ; preds = %block_46e1e7
  %loadMem_46e200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 33
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1004 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1003, i64 0, i64 0
  %YMM0.i835 = bitcast %union.VectorReg* %1004 to %"class.std::bitset"*
  %1005 = bitcast %"class.std::bitset"* %YMM0.i835 to i8*
  %1006 = load i64, i64* %PC.i834
  %1007 = add i64 %1006, ptrtoint (%G_0x74f04__rip__type* @G_0x74f04__rip_ to i64)
  %1008 = load i64, i64* %PC.i834
  %1009 = add i64 %1008, 8
  store i64 %1009, i64* %PC.i834
  %1010 = inttoptr i64 %1007 to float*
  %1011 = load float, float* %1010
  %1012 = bitcast i8* %1005 to float*
  store float %1011, float* %1012, align 1
  %1013 = getelementptr inbounds i8, i8* %1005, i64 4
  %1014 = bitcast i8* %1013 to float*
  store float 0.000000e+00, float* %1014, align 1
  %1015 = getelementptr inbounds i8, i8* %1005, i64 8
  %1016 = bitcast i8* %1015 to float*
  store float 0.000000e+00, float* %1016, align 1
  %1017 = getelementptr inbounds i8, i8* %1005, i64 12
  %1018 = bitcast i8* %1017 to float*
  store float 0.000000e+00, float* %1018, align 1
  store %struct.Memory* %loadMem_46e200, %struct.Memory** %MEMORY
  %loadMem_46e208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1023 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1022, i64 0, i64 1
  %YMM1.i833 = bitcast %union.VectorReg* %1023 to %"class.std::bitset"*
  %1024 = bitcast %"class.std::bitset"* %YMM1.i833 to i8*
  %1025 = load i64, i64* %PC.i832
  %1026 = add i64 %1025, ptrtoint (%G_0x74f24__rip__type* @G_0x74f24__rip_ to i64)
  %1027 = load i64, i64* %PC.i832
  %1028 = add i64 %1027, 8
  store i64 %1028, i64* %PC.i832
  %1029 = inttoptr i64 %1026 to float*
  %1030 = load float, float* %1029
  %1031 = bitcast i8* %1024 to float*
  store float %1030, float* %1031, align 1
  %1032 = getelementptr inbounds i8, i8* %1024, i64 4
  %1033 = bitcast i8* %1032 to float*
  store float 0.000000e+00, float* %1033, align 1
  %1034 = getelementptr inbounds i8, i8* %1024, i64 8
  %1035 = bitcast i8* %1034 to float*
  store float 0.000000e+00, float* %1035, align 1
  %1036 = getelementptr inbounds i8, i8* %1024, i64 12
  %1037 = bitcast i8* %1036 to float*
  store float 0.000000e+00, float* %1037, align 1
  store %struct.Memory* %loadMem_46e208, %struct.Memory** %MEMORY
  %loadMem_46e210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 15
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %RBP.i830 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1045 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1044, i64 0, i64 1
  %YMM1.i831 = bitcast %union.VectorReg* %1045 to %"class.std::bitset"*
  %1046 = bitcast %"class.std::bitset"* %YMM1.i831 to i8*
  %1047 = bitcast %"class.std::bitset"* %YMM1.i831 to i8*
  %1048 = load i64, i64* %RBP.i830
  %1049 = sub i64 %1048, 1620
  %1050 = load i64, i64* %PC.i829
  %1051 = add i64 %1050, 8
  store i64 %1051, i64* %PC.i829
  %1052 = bitcast i8* %1047 to <2 x float>*
  %1053 = load <2 x float>, <2 x float>* %1052, align 1
  %1054 = getelementptr inbounds i8, i8* %1047, i64 8
  %1055 = bitcast i8* %1054 to <2 x i32>*
  %1056 = load <2 x i32>, <2 x i32>* %1055, align 1
  %1057 = inttoptr i64 %1049 to float*
  %1058 = load float, float* %1057
  %1059 = extractelement <2 x float> %1053, i32 0
  %1060 = fadd float %1059, %1058
  %1061 = bitcast i8* %1046 to float*
  store float %1060, float* %1061, align 1
  %1062 = bitcast <2 x float> %1053 to <2 x i32>
  %1063 = extractelement <2 x i32> %1062, i32 1
  %1064 = getelementptr inbounds i8, i8* %1046, i64 4
  %1065 = bitcast i8* %1064 to i32*
  store i32 %1063, i32* %1065, align 1
  %1066 = extractelement <2 x i32> %1056, i32 0
  %1067 = getelementptr inbounds i8, i8* %1046, i64 8
  %1068 = bitcast i8* %1067 to i32*
  store i32 %1066, i32* %1068, align 1
  %1069 = extractelement <2 x i32> %1056, i32 1
  %1070 = getelementptr inbounds i8, i8* %1046, i64 12
  %1071 = bitcast i8* %1070 to i32*
  store i32 %1069, i32* %1071, align 1
  store %struct.Memory* %loadMem_46e210, %struct.Memory** %MEMORY
  %loadMem_46e218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 15
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1079 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1078, i64 0, i64 1
  %XMM1.i828 = bitcast %union.VectorReg* %1079 to %union.vec128_t*
  %1080 = load i64, i64* %RBP.i827
  %1081 = sub i64 %1080, 1620
  %1082 = bitcast %union.vec128_t* %XMM1.i828 to i8*
  %1083 = load i64, i64* %PC.i826
  %1084 = add i64 %1083, 8
  store i64 %1084, i64* %PC.i826
  %1085 = bitcast i8* %1082 to <2 x float>*
  %1086 = load <2 x float>, <2 x float>* %1085, align 1
  %1087 = extractelement <2 x float> %1086, i32 0
  %1088 = inttoptr i64 %1081 to float*
  store float %1087, float* %1088
  store %struct.Memory* %loadMem_46e218, %struct.Memory** %MEMORY
  %loadMem_46e220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 33
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 15
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %RBP.i824 = bitcast %union.anon* %1094 to i64*
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1096 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1095, i64 0, i64 0
  %YMM0.i825 = bitcast %union.VectorReg* %1096 to %"class.std::bitset"*
  %1097 = bitcast %"class.std::bitset"* %YMM0.i825 to i8*
  %1098 = bitcast %"class.std::bitset"* %YMM0.i825 to i8*
  %1099 = load i64, i64* %RBP.i824
  %1100 = sub i64 %1099, 1628
  %1101 = load i64, i64* %PC.i823
  %1102 = add i64 %1101, 8
  store i64 %1102, i64* %PC.i823
  %1103 = bitcast i8* %1098 to <2 x float>*
  %1104 = load <2 x float>, <2 x float>* %1103, align 1
  %1105 = getelementptr inbounds i8, i8* %1098, i64 8
  %1106 = bitcast i8* %1105 to <2 x i32>*
  %1107 = load <2 x i32>, <2 x i32>* %1106, align 1
  %1108 = inttoptr i64 %1100 to float*
  %1109 = load float, float* %1108
  %1110 = extractelement <2 x float> %1104, i32 0
  %1111 = fadd float %1110, %1109
  %1112 = bitcast i8* %1097 to float*
  store float %1111, float* %1112, align 1
  %1113 = bitcast <2 x float> %1104 to <2 x i32>
  %1114 = extractelement <2 x i32> %1113, i32 1
  %1115 = getelementptr inbounds i8, i8* %1097, i64 4
  %1116 = bitcast i8* %1115 to i32*
  store i32 %1114, i32* %1116, align 1
  %1117 = extractelement <2 x i32> %1107, i32 0
  %1118 = getelementptr inbounds i8, i8* %1097, i64 8
  %1119 = bitcast i8* %1118 to i32*
  store i32 %1117, i32* %1119, align 1
  %1120 = extractelement <2 x i32> %1107, i32 1
  %1121 = getelementptr inbounds i8, i8* %1097, i64 12
  %1122 = bitcast i8* %1121 to i32*
  store i32 %1120, i32* %1122, align 1
  store %struct.Memory* %loadMem_46e220, %struct.Memory** %MEMORY
  %loadMem_46e228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 33
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 15
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %1128 to i64*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1130 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1129, i64 0, i64 0
  %XMM0.i822 = bitcast %union.VectorReg* %1130 to %union.vec128_t*
  %1131 = load i64, i64* %RBP.i821
  %1132 = sub i64 %1131, 1628
  %1133 = bitcast %union.vec128_t* %XMM0.i822 to i8*
  %1134 = load i64, i64* %PC.i820
  %1135 = add i64 %1134, 8
  store i64 %1135, i64* %PC.i820
  %1136 = bitcast i8* %1133 to <2 x float>*
  %1137 = load <2 x float>, <2 x float>* %1136, align 1
  %1138 = extractelement <2 x float> %1137, i32 0
  %1139 = inttoptr i64 %1132 to float*
  store float %1138, float* %1139
  store %struct.Memory* %loadMem_46e228, %struct.Memory** %MEMORY
  %loadMem_46e230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 33
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 1
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RAX.i818 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 15
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %RBP.i819 = bitcast %union.anon* %1148 to i64*
  %1149 = load i64, i64* %RBP.i819
  %1150 = sub i64 %1149, 1664
  %1151 = load i64, i64* %PC.i817
  %1152 = add i64 %1151, 6
  store i64 %1152, i64* %PC.i817
  %1153 = inttoptr i64 %1150 to i32*
  %1154 = load i32, i32* %1153
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RAX.i818, align 8
  store %struct.Memory* %loadMem_46e230, %struct.Memory** %MEMORY
  %loadMem_46e236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 1
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RAX.i816 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %RAX.i816
  %1163 = load i64, i64* %PC.i815
  %1164 = add i64 %1163, 3
  store i64 %1164, i64* %PC.i815
  %1165 = trunc i64 %1162 to i32
  %1166 = add i32 2, %1165
  %1167 = zext i32 %1166 to i64
  store i64 %1167, i64* %RAX.i816, align 8
  %1168 = icmp ult i32 %1166, %1165
  %1169 = icmp ult i32 %1166, 2
  %1170 = or i1 %1168, %1169
  %1171 = zext i1 %1170 to i8
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1171, i8* %1172, align 1
  %1173 = and i32 %1166, 255
  %1174 = call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1177, i8* %1178, align 1
  %1179 = xor i64 2, %1162
  %1180 = trunc i64 %1179 to i32
  %1181 = xor i32 %1180, %1166
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1184, i8* %1185, align 1
  %1186 = icmp eq i32 %1166, 0
  %1187 = zext i1 %1186 to i8
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1187, i8* %1188, align 1
  %1189 = lshr i32 %1166, 31
  %1190 = trunc i32 %1189 to i8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1190, i8* %1191, align 1
  %1192 = lshr i32 %1165, 31
  %1193 = xor i32 %1189, %1192
  %1194 = add i32 %1193, %1189
  %1195 = icmp eq i32 %1194, 2
  %1196 = zext i1 %1195 to i8
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1196, i8* %1197, align 1
  store %struct.Memory* %loadMem_46e236, %struct.Memory** %MEMORY
  %loadMem_46e239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 33
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 1
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %EAX.i813 = bitcast %union.anon* %1203 to i32*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 15
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %1206 to i64*
  %1207 = load i64, i64* %RBP.i814
  %1208 = sub i64 %1207, 1664
  %1209 = load i32, i32* %EAX.i813
  %1210 = zext i32 %1209 to i64
  %1211 = load i64, i64* %PC.i812
  %1212 = add i64 %1211, 6
  store i64 %1212, i64* %PC.i812
  %1213 = inttoptr i64 %1208 to i32*
  store i32 %1209, i32* %1213
  store %struct.Memory* %loadMem_46e239, %struct.Memory** %MEMORY
  %loadMem_46e23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 33
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1216 to i64*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 1
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 15
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %1222 to i64*
  %1223 = load i64, i64* %RBP.i811
  %1224 = sub i64 %1223, 1668
  %1225 = load i64, i64* %PC.i809
  %1226 = add i64 %1225, 6
  store i64 %1226, i64* %PC.i809
  %1227 = inttoptr i64 %1224 to i32*
  %1228 = load i32, i32* %1227
  %1229 = zext i32 %1228 to i64
  store i64 %1229, i64* %RAX.i810, align 8
  store %struct.Memory* %loadMem_46e23f, %struct.Memory** %MEMORY
  %loadMem_46e245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 1
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %1235 to i64*
  %1236 = load i64, i64* %RAX.i808
  %1237 = load i64, i64* %PC.i807
  %1238 = add i64 %1237, 3
  store i64 %1238, i64* %PC.i807
  %1239 = trunc i64 %1236 to i32
  %1240 = add i32 1, %1239
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RAX.i808, align 8
  %1242 = icmp ult i32 %1240, %1239
  %1243 = icmp ult i32 %1240, 1
  %1244 = or i1 %1242, %1243
  %1245 = zext i1 %1244 to i8
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1245, i8* %1246, align 1
  %1247 = and i32 %1240, 255
  %1248 = call i32 @llvm.ctpop.i32(i32 %1247)
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  %1251 = xor i8 %1250, 1
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1251, i8* %1252, align 1
  %1253 = xor i64 1, %1236
  %1254 = trunc i64 %1253 to i32
  %1255 = xor i32 %1254, %1240
  %1256 = lshr i32 %1255, 4
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1258, i8* %1259, align 1
  %1260 = icmp eq i32 %1240, 0
  %1261 = zext i1 %1260 to i8
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1261, i8* %1262, align 1
  %1263 = lshr i32 %1240, 31
  %1264 = trunc i32 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1264, i8* %1265, align 1
  %1266 = lshr i32 %1239, 31
  %1267 = xor i32 %1263, %1266
  %1268 = add i32 %1267, %1263
  %1269 = icmp eq i32 %1268, 2
  %1270 = zext i1 %1269 to i8
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1270, i8* %1271, align 1
  store %struct.Memory* %loadMem_46e245, %struct.Memory** %MEMORY
  %loadMem_46e248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 1
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %EAX.i805 = bitcast %union.anon* %1277 to i32*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 15
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %RBP.i806 = bitcast %union.anon* %1280 to i64*
  %1281 = load i64, i64* %RBP.i806
  %1282 = sub i64 %1281, 1668
  %1283 = load i32, i32* %EAX.i805
  %1284 = zext i32 %1283 to i64
  %1285 = load i64, i64* %PC.i804
  %1286 = add i64 %1285, 6
  store i64 %1286, i64* %PC.i804
  %1287 = inttoptr i64 %1282 to i32*
  store i32 %1283, i32* %1287
  store %struct.Memory* %loadMem_46e248, %struct.Memory** %MEMORY
  %loadMem_46e24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 33
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %1290 to i64*
  %1291 = load i64, i64* %PC.i803
  %1292 = add i64 %1291, 44
  %1293 = load i64, i64* %PC.i803
  %1294 = add i64 %1293, 5
  store i64 %1294, i64* %PC.i803
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1292, i64* %1295, align 8
  store %struct.Memory* %loadMem_46e24e, %struct.Memory** %MEMORY
  br label %block_.L_46e27a

block_.L_46e253:                                  ; preds = %block_46e1e7
  %loadMem_46e253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1299, i64 0, i64 0
  %YMM0.i802 = bitcast %union.VectorReg* %1300 to %"class.std::bitset"*
  %1301 = bitcast %"class.std::bitset"* %YMM0.i802 to i8*
  %1302 = load i64, i64* %PC.i801
  %1303 = add i64 %1302, ptrtoint (%G_0x74eb1__rip__type* @G_0x74eb1__rip_ to i64)
  %1304 = load i64, i64* %PC.i801
  %1305 = add i64 %1304, 8
  store i64 %1305, i64* %PC.i801
  %1306 = inttoptr i64 %1303 to float*
  %1307 = load float, float* %1306
  %1308 = bitcast i8* %1301 to float*
  store float %1307, float* %1308, align 1
  %1309 = getelementptr inbounds i8, i8* %1301, i64 4
  %1310 = bitcast i8* %1309 to float*
  store float 0.000000e+00, float* %1310, align 1
  %1311 = getelementptr inbounds i8, i8* %1301, i64 8
  %1312 = bitcast i8* %1311 to float*
  store float 0.000000e+00, float* %1312, align 1
  %1313 = getelementptr inbounds i8, i8* %1301, i64 12
  %1314 = bitcast i8* %1313 to float*
  store float 0.000000e+00, float* %1314, align 1
  store %struct.Memory* %loadMem_46e253, %struct.Memory** %MEMORY
  %loadMem_46e25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 15
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1321, i64 0, i64 0
  %YMM0.i800 = bitcast %union.VectorReg* %1322 to %"class.std::bitset"*
  %1323 = bitcast %"class.std::bitset"* %YMM0.i800 to i8*
  %1324 = bitcast %"class.std::bitset"* %YMM0.i800 to i8*
  %1325 = load i64, i64* %RBP.i799
  %1326 = sub i64 %1325, 1632
  %1327 = load i64, i64* %PC.i798
  %1328 = add i64 %1327, 8
  store i64 %1328, i64* %PC.i798
  %1329 = bitcast i8* %1324 to <2 x float>*
  %1330 = load <2 x float>, <2 x float>* %1329, align 1
  %1331 = getelementptr inbounds i8, i8* %1324, i64 8
  %1332 = bitcast i8* %1331 to <2 x i32>*
  %1333 = load <2 x i32>, <2 x i32>* %1332, align 1
  %1334 = inttoptr i64 %1326 to float*
  %1335 = load float, float* %1334
  %1336 = extractelement <2 x float> %1330, i32 0
  %1337 = fadd float %1336, %1335
  %1338 = bitcast i8* %1323 to float*
  store float %1337, float* %1338, align 1
  %1339 = bitcast <2 x float> %1330 to <2 x i32>
  %1340 = extractelement <2 x i32> %1339, i32 1
  %1341 = getelementptr inbounds i8, i8* %1323, i64 4
  %1342 = bitcast i8* %1341 to i32*
  store i32 %1340, i32* %1342, align 1
  %1343 = extractelement <2 x i32> %1333, i32 0
  %1344 = getelementptr inbounds i8, i8* %1323, i64 8
  %1345 = bitcast i8* %1344 to i32*
  store i32 %1343, i32* %1345, align 1
  %1346 = extractelement <2 x i32> %1333, i32 1
  %1347 = getelementptr inbounds i8, i8* %1323, i64 12
  %1348 = bitcast i8* %1347 to i32*
  store i32 %1346, i32* %1348, align 1
  store %struct.Memory* %loadMem_46e25b, %struct.Memory** %MEMORY
  %loadMem_46e263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 15
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RBP.i796 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1356 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1355, i64 0, i64 0
  %XMM0.i797 = bitcast %union.VectorReg* %1356 to %union.vec128_t*
  %1357 = load i64, i64* %RBP.i796
  %1358 = sub i64 %1357, 1632
  %1359 = bitcast %union.vec128_t* %XMM0.i797 to i8*
  %1360 = load i64, i64* %PC.i795
  %1361 = add i64 %1360, 8
  store i64 %1361, i64* %PC.i795
  %1362 = bitcast i8* %1359 to <2 x float>*
  %1363 = load <2 x float>, <2 x float>* %1362, align 1
  %1364 = extractelement <2 x float> %1363, i32 0
  %1365 = inttoptr i64 %1358 to float*
  store float %1364, float* %1365
  store %struct.Memory* %loadMem_46e263, %struct.Memory** %MEMORY
  %loadMem_46e26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %1368 to i64*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 1
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %RAX.i793 = bitcast %union.anon* %1371 to i64*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 15
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %1374 to i64*
  %1375 = load i64, i64* %RBP.i794
  %1376 = sub i64 %1375, 1672
  %1377 = load i64, i64* %PC.i792
  %1378 = add i64 %1377, 6
  store i64 %1378, i64* %PC.i792
  %1379 = inttoptr i64 %1376 to i32*
  %1380 = load i32, i32* %1379
  %1381 = zext i32 %1380 to i64
  store i64 %1381, i64* %RAX.i793, align 8
  store %struct.Memory* %loadMem_46e26b, %struct.Memory** %MEMORY
  %loadMem_46e271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 1
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RAX.i791 = bitcast %union.anon* %1387 to i64*
  %1388 = load i64, i64* %RAX.i791
  %1389 = load i64, i64* %PC.i790
  %1390 = add i64 %1389, 3
  store i64 %1390, i64* %PC.i790
  %1391 = trunc i64 %1388 to i32
  %1392 = add i32 1, %1391
  %1393 = zext i32 %1392 to i64
  store i64 %1393, i64* %RAX.i791, align 8
  %1394 = icmp ult i32 %1392, %1391
  %1395 = icmp ult i32 %1392, 1
  %1396 = or i1 %1394, %1395
  %1397 = zext i1 %1396 to i8
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1397, i8* %1398, align 1
  %1399 = and i32 %1392, 255
  %1400 = call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1403, i8* %1404, align 1
  %1405 = xor i64 1, %1388
  %1406 = trunc i64 %1405 to i32
  %1407 = xor i32 %1406, %1392
  %1408 = lshr i32 %1407, 4
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1410, i8* %1411, align 1
  %1412 = icmp eq i32 %1392, 0
  %1413 = zext i1 %1412 to i8
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1413, i8* %1414, align 1
  %1415 = lshr i32 %1392, 31
  %1416 = trunc i32 %1415 to i8
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1416, i8* %1417, align 1
  %1418 = lshr i32 %1391, 31
  %1419 = xor i32 %1415, %1418
  %1420 = add i32 %1419, %1415
  %1421 = icmp eq i32 %1420, 2
  %1422 = zext i1 %1421 to i8
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1422, i8* %1423, align 1
  store %struct.Memory* %loadMem_46e271, %struct.Memory** %MEMORY
  %loadMem_46e274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 33
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 1
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %EAX.i788 = bitcast %union.anon* %1429 to i32*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 15
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %RBP.i789
  %1434 = sub i64 %1433, 1672
  %1435 = load i32, i32* %EAX.i788
  %1436 = zext i32 %1435 to i64
  %1437 = load i64, i64* %PC.i787
  %1438 = add i64 %1437, 6
  store i64 %1438, i64* %PC.i787
  %1439 = inttoptr i64 %1434 to i32*
  store i32 %1435, i32* %1439
  store %struct.Memory* %loadMem_46e274, %struct.Memory** %MEMORY
  br label %block_.L_46e27a

block_.L_46e27a:                                  ; preds = %block_.L_46e253, %block_46e200
  %loadMem_46e27a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 33
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1442 to i64*
  %1443 = load i64, i64* %PC.i786
  %1444 = add i64 %1443, 405
  %1445 = load i64, i64* %PC.i786
  %1446 = add i64 %1445, 5
  store i64 %1446, i64* %PC.i786
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1444, i64* %1447, align 8
  store %struct.Memory* %loadMem_46e27a, %struct.Memory** %MEMORY
  br label %block_.L_46e40f

block_.L_46e27f:                                  ; preds = %block_46e1b9
  %loadMem_46e27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 33
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 1
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RAX.i784 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 15
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %1456 to i64*
  %1457 = load i64, i64* %RBP.i785
  %1458 = sub i64 %1457, 1644
  %1459 = load i64, i64* %PC.i783
  %1460 = add i64 %1459, 7
  store i64 %1460, i64* %PC.i783
  %1461 = inttoptr i64 %1458 to i32*
  %1462 = load i32, i32* %1461
  %1463 = sext i32 %1462 to i64
  store i64 %1463, i64* %RAX.i784, align 8
  store %struct.Memory* %loadMem_46e27f, %struct.Memory** %MEMORY
  %loadMem_46e286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 33
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 1
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 5
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RCX.i782 = bitcast %union.anon* %1472 to i64*
  %1473 = load i64, i64* %RAX.i781
  %1474 = add i64 %1473, 12099168
  %1475 = load i64, i64* %PC.i780
  %1476 = add i64 %1475, 8
  store i64 %1476, i64* %PC.i780
  %1477 = inttoptr i64 %1474 to i8*
  %1478 = load i8, i8* %1477
  %1479 = zext i8 %1478 to i64
  store i64 %1479, i64* %RCX.i782, align 8
  store %struct.Memory* %loadMem_46e286, %struct.Memory** %MEMORY
  %loadMem_46e28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 33
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1482 to i64*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 5
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %ECX.i779 = bitcast %union.anon* %1485 to i32*
  %1486 = load i32, i32* %ECX.i779
  %1487 = zext i32 %1486 to i64
  %1488 = load i64, i64* %PC.i778
  %1489 = add i64 %1488, 3
  store i64 %1489, i64* %PC.i778
  %1490 = sub i32 %1486, 1
  %1491 = icmp ult i32 %1486, 1
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
  %1500 = xor i64 1, %1487
  %1501 = trunc i64 %1500 to i32
  %1502 = xor i32 %1501, %1490
  %1503 = lshr i32 %1502, 4
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1505, i8* %1506, align 1
  %1507 = icmp eq i32 %1490, 0
  %1508 = zext i1 %1507 to i8
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1508, i8* %1509, align 1
  %1510 = lshr i32 %1490, 31
  %1511 = trunc i32 %1510 to i8
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1511, i8* %1512, align 1
  %1513 = lshr i32 %1486, 31
  %1514 = xor i32 %1510, %1513
  %1515 = add i32 %1514, %1513
  %1516 = icmp eq i32 %1515, 2
  %1517 = zext i1 %1516 to i8
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1517, i8* %1518, align 1
  store %struct.Memory* %loadMem_46e28e, %struct.Memory** %MEMORY
  %loadMem_46e291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1521 to i64*
  %1522 = load i64, i64* %PC.i777
  %1523 = add i64 %1522, 158
  %1524 = load i64, i64* %PC.i777
  %1525 = add i64 %1524, 6
  %1526 = load i64, i64* %PC.i777
  %1527 = add i64 %1526, 6
  store i64 %1527, i64* %PC.i777
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1529 = load i8, i8* %1528, align 1
  %1530 = icmp eq i8 %1529, 0
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %BRANCH_TAKEN, align 1
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1533 = select i1 %1530, i64 %1523, i64 %1525
  store i64 %1533, i64* %1532, align 8
  store %struct.Memory* %loadMem_46e291, %struct.Memory** %MEMORY
  %loadBr_46e291 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e291 = icmp eq i8 %loadBr_46e291, 1
  br i1 %cmpBr_46e291, label %block_.L_46e32f, label %block_46e297

block_46e297:                                     ; preds = %block_.L_46e27f
  %loadMem_46e297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 33
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 9
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %RSI.i776 = bitcast %union.anon* %1539 to i64*
  %1540 = load i64, i64* %PC.i775
  %1541 = add i64 %1540, 5
  store i64 %1541, i64* %PC.i775
  store i64 1, i64* %RSI.i776, align 8
  store %struct.Memory* %loadMem_46e297, %struct.Memory** %MEMORY
  %loadMem_46e29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 11
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RDI.i773 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 15
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %1550 to i64*
  %1551 = load i64, i64* %RBP.i774
  %1552 = sub i64 %1551, 1644
  %1553 = load i64, i64* %PC.i772
  %1554 = add i64 %1553, 6
  store i64 %1554, i64* %PC.i772
  %1555 = inttoptr i64 %1552 to i32*
  %1556 = load i32, i32* %1555
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %RDI.i773, align 8
  store %struct.Memory* %loadMem_46e29c, %struct.Memory** %MEMORY
  %loadMem1_46e2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %PC.i771
  %1562 = add i64 %1561, -1154
  %1563 = load i64, i64* %PC.i771
  %1564 = add i64 %1563, 5
  %1565 = load i64, i64* %PC.i771
  %1566 = add i64 %1565, 5
  store i64 %1566, i64* %PC.i771
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1568 = load i64, i64* %1567, align 8
  %1569 = add i64 %1568, -8
  %1570 = inttoptr i64 %1569 to i64*
  store i64 %1564, i64* %1570
  store i64 %1569, i64* %1567, align 8
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1562, i64* %1571, align 8
  store %struct.Memory* %loadMem1_46e2a2, %struct.Memory** %MEMORY
  %loadMem2_46e2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e2a2 = load i64, i64* %3
  %call2_46e2a2 = call %struct.Memory* @sub_46de20.captured_territory(%struct.State* %0, i64 %loadPC_46e2a2, %struct.Memory* %loadMem2_46e2a2)
  store %struct.Memory* %call2_46e2a2, %struct.Memory** %MEMORY
  %loadMem_46e2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 1
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %EAX.i770 = bitcast %union.anon* %1577 to i32*
  %1578 = load i32, i32* %EAX.i770
  %1579 = zext i32 %1578 to i64
  %1580 = load i64, i64* %PC.i769
  %1581 = add i64 %1580, 3
  store i64 %1581, i64* %PC.i769
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1582, align 1
  %1583 = and i32 %1578, 255
  %1584 = call i32 @llvm.ctpop.i32(i32 %1583)
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = xor i8 %1586, 1
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1587, i8* %1588, align 1
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1589, align 1
  %1590 = icmp eq i32 %1578, 0
  %1591 = zext i1 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1591, i8* %1592, align 1
  %1593 = lshr i32 %1578, 31
  %1594 = trunc i32 %1593 to i8
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1594, i8* %1595, align 1
  %1596 = lshr i32 %1578, 31
  %1597 = xor i32 %1593, %1596
  %1598 = add i32 %1597, %1596
  %1599 = icmp eq i32 %1598, 2
  %1600 = zext i1 %1599 to i8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1600, i8* %1601, align 1
  store %struct.Memory* %loadMem_46e2a7, %struct.Memory** %MEMORY
  %loadMem_46e2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 33
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1604 to i64*
  %1605 = load i64, i64* %PC.i768
  %1606 = add i64 %1605, 89
  %1607 = load i64, i64* %PC.i768
  %1608 = add i64 %1607, 6
  %1609 = load i64, i64* %PC.i768
  %1610 = add i64 %1609, 6
  store i64 %1610, i64* %PC.i768
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1612 = load i8, i8* %1611, align 1
  store i8 %1612, i8* %BRANCH_TAKEN, align 1
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1614 = icmp ne i8 %1612, 0
  %1615 = select i1 %1614, i64 %1606, i64 %1608
  store i64 %1615, i64* %1613, align 8
  store %struct.Memory* %loadMem_46e2aa, %struct.Memory** %MEMORY
  %loadBr_46e2aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e2aa = icmp eq i8 %loadBr_46e2aa, 1
  br i1 %cmpBr_46e2aa, label %block_.L_46e303, label %block_46e2b0

block_46e2b0:                                     ; preds = %block_46e297
  %loadMem_46e2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1620 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1619, i64 0, i64 0
  %YMM0.i767 = bitcast %union.VectorReg* %1620 to %"class.std::bitset"*
  %1621 = bitcast %"class.std::bitset"* %YMM0.i767 to i8*
  %1622 = load i64, i64* %PC.i766
  %1623 = add i64 %1622, ptrtoint (%G_0x74e54__rip__type* @G_0x74e54__rip_ to i64)
  %1624 = load i64, i64* %PC.i766
  %1625 = add i64 %1624, 8
  store i64 %1625, i64* %PC.i766
  %1626 = inttoptr i64 %1623 to float*
  %1627 = load float, float* %1626
  %1628 = bitcast i8* %1621 to float*
  store float %1627, float* %1628, align 1
  %1629 = getelementptr inbounds i8, i8* %1621, i64 4
  %1630 = bitcast i8* %1629 to float*
  store float 0.000000e+00, float* %1630, align 1
  %1631 = getelementptr inbounds i8, i8* %1621, i64 8
  %1632 = bitcast i8* %1631 to float*
  store float 0.000000e+00, float* %1632, align 1
  %1633 = getelementptr inbounds i8, i8* %1621, i64 12
  %1634 = bitcast i8* %1633 to float*
  store float 0.000000e+00, float* %1634, align 1
  store %struct.Memory* %loadMem_46e2b0, %struct.Memory** %MEMORY
  %loadMem_46e2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 33
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %1637 to i64*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1639 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1638, i64 0, i64 1
  %YMM1.i765 = bitcast %union.VectorReg* %1639 to %"class.std::bitset"*
  %1640 = bitcast %"class.std::bitset"* %YMM1.i765 to i8*
  %1641 = load i64, i64* %PC.i764
  %1642 = add i64 %1641, ptrtoint (%G_0x74e74__rip__type* @G_0x74e74__rip_ to i64)
  %1643 = load i64, i64* %PC.i764
  %1644 = add i64 %1643, 8
  store i64 %1644, i64* %PC.i764
  %1645 = inttoptr i64 %1642 to float*
  %1646 = load float, float* %1645
  %1647 = bitcast i8* %1640 to float*
  store float %1646, float* %1647, align 1
  %1648 = getelementptr inbounds i8, i8* %1640, i64 4
  %1649 = bitcast i8* %1648 to float*
  store float 0.000000e+00, float* %1649, align 1
  %1650 = getelementptr inbounds i8, i8* %1640, i64 8
  %1651 = bitcast i8* %1650 to float*
  store float 0.000000e+00, float* %1651, align 1
  %1652 = getelementptr inbounds i8, i8* %1640, i64 12
  %1653 = bitcast i8* %1652 to float*
  store float 0.000000e+00, float* %1653, align 1
  store %struct.Memory* %loadMem_46e2b8, %struct.Memory** %MEMORY
  %loadMem_46e2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 15
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1661 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1660, i64 0, i64 1
  %YMM1.i763 = bitcast %union.VectorReg* %1661 to %"class.std::bitset"*
  %1662 = bitcast %"class.std::bitset"* %YMM1.i763 to i8*
  %1663 = bitcast %"class.std::bitset"* %YMM1.i763 to i8*
  %1664 = load i64, i64* %RBP.i762
  %1665 = sub i64 %1664, 1624
  %1666 = load i64, i64* %PC.i761
  %1667 = add i64 %1666, 8
  store i64 %1667, i64* %PC.i761
  %1668 = bitcast i8* %1663 to <2 x float>*
  %1669 = load <2 x float>, <2 x float>* %1668, align 1
  %1670 = getelementptr inbounds i8, i8* %1663, i64 8
  %1671 = bitcast i8* %1670 to <2 x i32>*
  %1672 = load <2 x i32>, <2 x i32>* %1671, align 1
  %1673 = inttoptr i64 %1665 to float*
  %1674 = load float, float* %1673
  %1675 = extractelement <2 x float> %1669, i32 0
  %1676 = fadd float %1675, %1674
  %1677 = bitcast i8* %1662 to float*
  store float %1676, float* %1677, align 1
  %1678 = bitcast <2 x float> %1669 to <2 x i32>
  %1679 = extractelement <2 x i32> %1678, i32 1
  %1680 = getelementptr inbounds i8, i8* %1662, i64 4
  %1681 = bitcast i8* %1680 to i32*
  store i32 %1679, i32* %1681, align 1
  %1682 = extractelement <2 x i32> %1672, i32 0
  %1683 = getelementptr inbounds i8, i8* %1662, i64 8
  %1684 = bitcast i8* %1683 to i32*
  store i32 %1682, i32* %1684, align 1
  %1685 = extractelement <2 x i32> %1672, i32 1
  %1686 = getelementptr inbounds i8, i8* %1662, i64 12
  %1687 = bitcast i8* %1686 to i32*
  store i32 %1685, i32* %1687, align 1
  store %struct.Memory* %loadMem_46e2c0, %struct.Memory** %MEMORY
  %loadMem_46e2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 15
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %1693 to i64*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1695 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1694, i64 0, i64 1
  %XMM1.i760 = bitcast %union.VectorReg* %1695 to %union.vec128_t*
  %1696 = load i64, i64* %RBP.i759
  %1697 = sub i64 %1696, 1624
  %1698 = bitcast %union.vec128_t* %XMM1.i760 to i8*
  %1699 = load i64, i64* %PC.i758
  %1700 = add i64 %1699, 8
  store i64 %1700, i64* %PC.i758
  %1701 = bitcast i8* %1698 to <2 x float>*
  %1702 = load <2 x float>, <2 x float>* %1701, align 1
  %1703 = extractelement <2 x float> %1702, i32 0
  %1704 = inttoptr i64 %1697 to float*
  store float %1703, float* %1704
  store %struct.Memory* %loadMem_46e2c8, %struct.Memory** %MEMORY
  %loadMem_46e2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 15
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %1710 to i64*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1712 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1711, i64 0, i64 0
  %YMM0.i757 = bitcast %union.VectorReg* %1712 to %"class.std::bitset"*
  %1713 = bitcast %"class.std::bitset"* %YMM0.i757 to i8*
  %1714 = bitcast %"class.std::bitset"* %YMM0.i757 to i8*
  %1715 = load i64, i64* %RBP.i756
  %1716 = sub i64 %1715, 1632
  %1717 = load i64, i64* %PC.i755
  %1718 = add i64 %1717, 8
  store i64 %1718, i64* %PC.i755
  %1719 = bitcast i8* %1714 to <2 x float>*
  %1720 = load <2 x float>, <2 x float>* %1719, align 1
  %1721 = getelementptr inbounds i8, i8* %1714, i64 8
  %1722 = bitcast i8* %1721 to <2 x i32>*
  %1723 = load <2 x i32>, <2 x i32>* %1722, align 1
  %1724 = inttoptr i64 %1716 to float*
  %1725 = load float, float* %1724
  %1726 = extractelement <2 x float> %1720, i32 0
  %1727 = fadd float %1726, %1725
  %1728 = bitcast i8* %1713 to float*
  store float %1727, float* %1728, align 1
  %1729 = bitcast <2 x float> %1720 to <2 x i32>
  %1730 = extractelement <2 x i32> %1729, i32 1
  %1731 = getelementptr inbounds i8, i8* %1713, i64 4
  %1732 = bitcast i8* %1731 to i32*
  store i32 %1730, i32* %1732, align 1
  %1733 = extractelement <2 x i32> %1723, i32 0
  %1734 = getelementptr inbounds i8, i8* %1713, i64 8
  %1735 = bitcast i8* %1734 to i32*
  store i32 %1733, i32* %1735, align 1
  %1736 = extractelement <2 x i32> %1723, i32 1
  %1737 = getelementptr inbounds i8, i8* %1713, i64 12
  %1738 = bitcast i8* %1737 to i32*
  store i32 %1736, i32* %1738, align 1
  store %struct.Memory* %loadMem_46e2d0, %struct.Memory** %MEMORY
  %loadMem_46e2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 33
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1741 to i64*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 15
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1746 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1745, i64 0, i64 0
  %XMM0.i754 = bitcast %union.VectorReg* %1746 to %union.vec128_t*
  %1747 = load i64, i64* %RBP.i753
  %1748 = sub i64 %1747, 1632
  %1749 = bitcast %union.vec128_t* %XMM0.i754 to i8*
  %1750 = load i64, i64* %PC.i752
  %1751 = add i64 %1750, 8
  store i64 %1751, i64* %PC.i752
  %1752 = bitcast i8* %1749 to <2 x float>*
  %1753 = load <2 x float>, <2 x float>* %1752, align 1
  %1754 = extractelement <2 x float> %1753, i32 0
  %1755 = inttoptr i64 %1748 to float*
  store float %1754, float* %1755
  store %struct.Memory* %loadMem_46e2d8, %struct.Memory** %MEMORY
  %loadMem_46e2e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 1
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RAX.i750 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 15
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %1764 to i64*
  %1765 = load i64, i64* %RBP.i751
  %1766 = sub i64 %1765, 1660
  %1767 = load i64, i64* %PC.i749
  %1768 = add i64 %1767, 6
  store i64 %1768, i64* %PC.i749
  %1769 = inttoptr i64 %1766 to i32*
  %1770 = load i32, i32* %1769
  %1771 = zext i32 %1770 to i64
  store i64 %1771, i64* %RAX.i750, align 8
  store %struct.Memory* %loadMem_46e2e0, %struct.Memory** %MEMORY
  %loadMem_46e2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 33
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 1
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RAX.i748 = bitcast %union.anon* %1777 to i64*
  %1778 = load i64, i64* %RAX.i748
  %1779 = load i64, i64* %PC.i747
  %1780 = add i64 %1779, 3
  store i64 %1780, i64* %PC.i747
  %1781 = trunc i64 %1778 to i32
  %1782 = add i32 2, %1781
  %1783 = zext i32 %1782 to i64
  store i64 %1783, i64* %RAX.i748, align 8
  %1784 = icmp ult i32 %1782, %1781
  %1785 = icmp ult i32 %1782, 2
  %1786 = or i1 %1784, %1785
  %1787 = zext i1 %1786 to i8
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1787, i8* %1788, align 1
  %1789 = and i32 %1782, 255
  %1790 = call i32 @llvm.ctpop.i32(i32 %1789)
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = xor i8 %1792, 1
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1793, i8* %1794, align 1
  %1795 = xor i64 2, %1778
  %1796 = trunc i64 %1795 to i32
  %1797 = xor i32 %1796, %1782
  %1798 = lshr i32 %1797, 4
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1800, i8* %1801, align 1
  %1802 = icmp eq i32 %1782, 0
  %1803 = zext i1 %1802 to i8
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1803, i8* %1804, align 1
  %1805 = lshr i32 %1782, 31
  %1806 = trunc i32 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1806, i8* %1807, align 1
  %1808 = lshr i32 %1781, 31
  %1809 = xor i32 %1805, %1808
  %1810 = add i32 %1809, %1805
  %1811 = icmp eq i32 %1810, 2
  %1812 = zext i1 %1811 to i8
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1812, i8* %1813, align 1
  store %struct.Memory* %loadMem_46e2e6, %struct.Memory** %MEMORY
  %loadMem_46e2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 33
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1816 to i64*
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 1
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %EAX.i745 = bitcast %union.anon* %1819 to i32*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 15
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %RBP.i746 = bitcast %union.anon* %1822 to i64*
  %1823 = load i64, i64* %RBP.i746
  %1824 = sub i64 %1823, 1660
  %1825 = load i32, i32* %EAX.i745
  %1826 = zext i32 %1825 to i64
  %1827 = load i64, i64* %PC.i744
  %1828 = add i64 %1827, 6
  store i64 %1828, i64* %PC.i744
  %1829 = inttoptr i64 %1824 to i32*
  store i32 %1825, i32* %1829
  store %struct.Memory* %loadMem_46e2e9, %struct.Memory** %MEMORY
  %loadMem_46e2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 33
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %1832 to i64*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 1
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 15
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %RBP.i743 = bitcast %union.anon* %1838 to i64*
  %1839 = load i64, i64* %RBP.i743
  %1840 = sub i64 %1839, 1672
  %1841 = load i64, i64* %PC.i741
  %1842 = add i64 %1841, 6
  store i64 %1842, i64* %PC.i741
  %1843 = inttoptr i64 %1840 to i32*
  %1844 = load i32, i32* %1843
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RAX.i742, align 8
  store %struct.Memory* %loadMem_46e2ef, %struct.Memory** %MEMORY
  %loadMem_46e2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 33
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1848 to i64*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 1
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %RAX.i740 = bitcast %union.anon* %1851 to i64*
  %1852 = load i64, i64* %RAX.i740
  %1853 = load i64, i64* %PC.i739
  %1854 = add i64 %1853, 3
  store i64 %1854, i64* %PC.i739
  %1855 = trunc i64 %1852 to i32
  %1856 = add i32 1, %1855
  %1857 = zext i32 %1856 to i64
  store i64 %1857, i64* %RAX.i740, align 8
  %1858 = icmp ult i32 %1856, %1855
  %1859 = icmp ult i32 %1856, 1
  %1860 = or i1 %1858, %1859
  %1861 = zext i1 %1860 to i8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1861, i8* %1862, align 1
  %1863 = and i32 %1856, 255
  %1864 = call i32 @llvm.ctpop.i32(i32 %1863)
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  %1867 = xor i8 %1866, 1
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1867, i8* %1868, align 1
  %1869 = xor i64 1, %1852
  %1870 = trunc i64 %1869 to i32
  %1871 = xor i32 %1870, %1856
  %1872 = lshr i32 %1871, 4
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1874, i8* %1875, align 1
  %1876 = icmp eq i32 %1856, 0
  %1877 = zext i1 %1876 to i8
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1877, i8* %1878, align 1
  %1879 = lshr i32 %1856, 31
  %1880 = trunc i32 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1880, i8* %1881, align 1
  %1882 = lshr i32 %1855, 31
  %1883 = xor i32 %1879, %1882
  %1884 = add i32 %1883, %1879
  %1885 = icmp eq i32 %1884, 2
  %1886 = zext i1 %1885 to i8
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1886, i8* %1887, align 1
  store %struct.Memory* %loadMem_46e2f5, %struct.Memory** %MEMORY
  %loadMem_46e2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 33
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1890 to i64*
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 1
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %EAX.i737 = bitcast %union.anon* %1893 to i32*
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 15
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %1896 to i64*
  %1897 = load i64, i64* %RBP.i738
  %1898 = sub i64 %1897, 1672
  %1899 = load i32, i32* %EAX.i737
  %1900 = zext i32 %1899 to i64
  %1901 = load i64, i64* %PC.i736
  %1902 = add i64 %1901, 6
  store i64 %1902, i64* %PC.i736
  %1903 = inttoptr i64 %1898 to i32*
  store i32 %1899, i32* %1903
  store %struct.Memory* %loadMem_46e2f8, %struct.Memory** %MEMORY
  %loadMem_46e2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 33
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1906 to i64*
  %1907 = load i64, i64* %PC.i735
  %1908 = add i64 %1907, 44
  %1909 = load i64, i64* %PC.i735
  %1910 = add i64 %1909, 5
  store i64 %1910, i64* %PC.i735
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1908, i64* %1911, align 8
  store %struct.Memory* %loadMem_46e2fe, %struct.Memory** %MEMORY
  br label %block_.L_46e32a

block_.L_46e303:                                  ; preds = %block_46e297
  %loadMem_46e303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1916 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1915, i64 0, i64 0
  %YMM0.i734 = bitcast %union.VectorReg* %1916 to %"class.std::bitset"*
  %1917 = bitcast %"class.std::bitset"* %YMM0.i734 to i8*
  %1918 = load i64, i64* %PC.i733
  %1919 = add i64 %1918, ptrtoint (%G_0x74e01__rip__type* @G_0x74e01__rip_ to i64)
  %1920 = load i64, i64* %PC.i733
  %1921 = add i64 %1920, 8
  store i64 %1921, i64* %PC.i733
  %1922 = inttoptr i64 %1919 to float*
  %1923 = load float, float* %1922
  %1924 = bitcast i8* %1917 to float*
  store float %1923, float* %1924, align 1
  %1925 = getelementptr inbounds i8, i8* %1917, i64 4
  %1926 = bitcast i8* %1925 to float*
  store float 0.000000e+00, float* %1926, align 1
  %1927 = getelementptr inbounds i8, i8* %1917, i64 8
  %1928 = bitcast i8* %1927 to float*
  store float 0.000000e+00, float* %1928, align 1
  %1929 = getelementptr inbounds i8, i8* %1917, i64 12
  %1930 = bitcast i8* %1929 to float*
  store float 0.000000e+00, float* %1930, align 1
  store %struct.Memory* %loadMem_46e303, %struct.Memory** %MEMORY
  %loadMem_46e30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 15
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1938 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1937, i64 0, i64 0
  %YMM0.i732 = bitcast %union.VectorReg* %1938 to %"class.std::bitset"*
  %1939 = bitcast %"class.std::bitset"* %YMM0.i732 to i8*
  %1940 = bitcast %"class.std::bitset"* %YMM0.i732 to i8*
  %1941 = load i64, i64* %RBP.i731
  %1942 = sub i64 %1941, 1628
  %1943 = load i64, i64* %PC.i730
  %1944 = add i64 %1943, 8
  store i64 %1944, i64* %PC.i730
  %1945 = bitcast i8* %1940 to <2 x float>*
  %1946 = load <2 x float>, <2 x float>* %1945, align 1
  %1947 = getelementptr inbounds i8, i8* %1940, i64 8
  %1948 = bitcast i8* %1947 to <2 x i32>*
  %1949 = load <2 x i32>, <2 x i32>* %1948, align 1
  %1950 = inttoptr i64 %1942 to float*
  %1951 = load float, float* %1950
  %1952 = extractelement <2 x float> %1946, i32 0
  %1953 = fadd float %1952, %1951
  %1954 = bitcast i8* %1939 to float*
  store float %1953, float* %1954, align 1
  %1955 = bitcast <2 x float> %1946 to <2 x i32>
  %1956 = extractelement <2 x i32> %1955, i32 1
  %1957 = getelementptr inbounds i8, i8* %1939, i64 4
  %1958 = bitcast i8* %1957 to i32*
  store i32 %1956, i32* %1958, align 1
  %1959 = extractelement <2 x i32> %1949, i32 0
  %1960 = getelementptr inbounds i8, i8* %1939, i64 8
  %1961 = bitcast i8* %1960 to i32*
  store i32 %1959, i32* %1961, align 1
  %1962 = extractelement <2 x i32> %1949, i32 1
  %1963 = getelementptr inbounds i8, i8* %1939, i64 12
  %1964 = bitcast i8* %1963 to i32*
  store i32 %1962, i32* %1964, align 1
  store %struct.Memory* %loadMem_46e30b, %struct.Memory** %MEMORY
  %loadMem_46e313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 33
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 15
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1972 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1971, i64 0, i64 0
  %XMM0.i729 = bitcast %union.VectorReg* %1972 to %union.vec128_t*
  %1973 = load i64, i64* %RBP.i728
  %1974 = sub i64 %1973, 1628
  %1975 = bitcast %union.vec128_t* %XMM0.i729 to i8*
  %1976 = load i64, i64* %PC.i727
  %1977 = add i64 %1976, 8
  store i64 %1977, i64* %PC.i727
  %1978 = bitcast i8* %1975 to <2 x float>*
  %1979 = load <2 x float>, <2 x float>* %1978, align 1
  %1980 = extractelement <2 x float> %1979, i32 0
  %1981 = inttoptr i64 %1974 to float*
  store float %1980, float* %1981
  store %struct.Memory* %loadMem_46e313, %struct.Memory** %MEMORY
  %loadMem_46e31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 33
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 1
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %1987 to i64*
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 15
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %1990 to i64*
  %1991 = load i64, i64* %RBP.i726
  %1992 = sub i64 %1991, 1668
  %1993 = load i64, i64* %PC.i724
  %1994 = add i64 %1993, 6
  store i64 %1994, i64* %PC.i724
  %1995 = inttoptr i64 %1992 to i32*
  %1996 = load i32, i32* %1995
  %1997 = zext i32 %1996 to i64
  store i64 %1997, i64* %RAX.i725, align 8
  store %struct.Memory* %loadMem_46e31b, %struct.Memory** %MEMORY
  %loadMem_46e321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 33
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 1
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RAX.i723 = bitcast %union.anon* %2003 to i64*
  %2004 = load i64, i64* %RAX.i723
  %2005 = load i64, i64* %PC.i722
  %2006 = add i64 %2005, 3
  store i64 %2006, i64* %PC.i722
  %2007 = trunc i64 %2004 to i32
  %2008 = add i32 1, %2007
  %2009 = zext i32 %2008 to i64
  store i64 %2009, i64* %RAX.i723, align 8
  %2010 = icmp ult i32 %2008, %2007
  %2011 = icmp ult i32 %2008, 1
  %2012 = or i1 %2010, %2011
  %2013 = zext i1 %2012 to i8
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2013, i8* %2014, align 1
  %2015 = and i32 %2008, 255
  %2016 = call i32 @llvm.ctpop.i32(i32 %2015)
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  %2019 = xor i8 %2018, 1
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2019, i8* %2020, align 1
  %2021 = xor i64 1, %2004
  %2022 = trunc i64 %2021 to i32
  %2023 = xor i32 %2022, %2008
  %2024 = lshr i32 %2023, 4
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2026, i8* %2027, align 1
  %2028 = icmp eq i32 %2008, 0
  %2029 = zext i1 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2029, i8* %2030, align 1
  %2031 = lshr i32 %2008, 31
  %2032 = trunc i32 %2031 to i8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2032, i8* %2033, align 1
  %2034 = lshr i32 %2007, 31
  %2035 = xor i32 %2031, %2034
  %2036 = add i32 %2035, %2031
  %2037 = icmp eq i32 %2036, 2
  %2038 = zext i1 %2037 to i8
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2038, i8* %2039, align 1
  store %struct.Memory* %loadMem_46e321, %struct.Memory** %MEMORY
  %loadMem_46e324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 33
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 1
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %EAX.i720 = bitcast %union.anon* %2045 to i32*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 15
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %2048 to i64*
  %2049 = load i64, i64* %RBP.i721
  %2050 = sub i64 %2049, 1668
  %2051 = load i32, i32* %EAX.i720
  %2052 = zext i32 %2051 to i64
  %2053 = load i64, i64* %PC.i719
  %2054 = add i64 %2053, 6
  store i64 %2054, i64* %PC.i719
  %2055 = inttoptr i64 %2050 to i32*
  store i32 %2051, i32* %2055
  store %struct.Memory* %loadMem_46e324, %struct.Memory** %MEMORY
  br label %block_.L_46e32a

block_.L_46e32a:                                  ; preds = %block_.L_46e303, %block_46e2b0
  %loadMem_46e32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %2058 to i64*
  %2059 = load i64, i64* %PC.i718
  %2060 = add i64 %2059, 224
  %2061 = load i64, i64* %PC.i718
  %2062 = add i64 %2061, 5
  store i64 %2062, i64* %PC.i718
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2060, i64* %2063, align 8
  store %struct.Memory* %loadMem_46e32a, %struct.Memory** %MEMORY
  br label %block_.L_46e40a

block_.L_46e32f:                                  ; preds = %block_.L_46e27f
  %loadMem_46e32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2068 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2067, i64 0, i64 0
  %YMM0.i716 = bitcast %union.VectorReg* %2068 to %"class.std::bitset"*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2070 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2069, i64 0, i64 0
  %XMM0.i717 = bitcast %union.VectorReg* %2070 to %union.vec128_t*
  %2071 = bitcast %"class.std::bitset"* %YMM0.i716 to i8*
  %2072 = bitcast %"class.std::bitset"* %YMM0.i716 to i8*
  %2073 = bitcast %union.vec128_t* %XMM0.i717 to i8*
  %2074 = load i64, i64* %PC.i715
  %2075 = add i64 %2074, 3
  store i64 %2075, i64* %PC.i715
  %2076 = bitcast i8* %2072 to i64*
  %2077 = load i64, i64* %2076, align 1
  %2078 = getelementptr inbounds i8, i8* %2072, i64 8
  %2079 = bitcast i8* %2078 to i64*
  %2080 = load i64, i64* %2079, align 1
  %2081 = bitcast i8* %2073 to i64*
  %2082 = load i64, i64* %2081, align 1
  %2083 = getelementptr inbounds i8, i8* %2073, i64 8
  %2084 = bitcast i8* %2083 to i64*
  %2085 = load i64, i64* %2084, align 1
  %2086 = xor i64 %2082, %2077
  %2087 = xor i64 %2085, %2080
  %2088 = trunc i64 %2086 to i32
  %2089 = lshr i64 %2086, 32
  %2090 = trunc i64 %2089 to i32
  %2091 = bitcast i8* %2071 to i32*
  store i32 %2088, i32* %2091, align 1
  %2092 = getelementptr inbounds i8, i8* %2071, i64 4
  %2093 = bitcast i8* %2092 to i32*
  store i32 %2090, i32* %2093, align 1
  %2094 = trunc i64 %2087 to i32
  %2095 = getelementptr inbounds i8, i8* %2071, i64 8
  %2096 = bitcast i8* %2095 to i32*
  store i32 %2094, i32* %2096, align 1
  %2097 = lshr i64 %2087, 32
  %2098 = trunc i64 %2097 to i32
  %2099 = getelementptr inbounds i8, i8* %2071, i64 12
  %2100 = bitcast i8* %2099 to i32*
  store i32 %2098, i32* %2100, align 1
  store %struct.Memory* %loadMem_46e32f, %struct.Memory** %MEMORY
  %loadMem_46e332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 33
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2103 to i64*
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 1
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %RAX.i713 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 15
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RBP.i714 = bitcast %union.anon* %2109 to i64*
  %2110 = load i64, i64* %RBP.i714
  %2111 = sub i64 %2110, 1644
  %2112 = load i64, i64* %PC.i712
  %2113 = add i64 %2112, 7
  store i64 %2113, i64* %PC.i712
  %2114 = inttoptr i64 %2111 to i32*
  %2115 = load i32, i32* %2114
  %2116 = sext i32 %2115 to i64
  store i64 %2116, i64* %RAX.i713, align 8
  store %struct.Memory* %loadMem_46e332, %struct.Memory** %MEMORY
  %loadMem_46e339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 33
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2119 to i64*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 1
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %RAX.i709 = bitcast %union.anon* %2122 to i64*
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 15
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2126, i64 0, i64 1
  %YMM1.i711 = bitcast %union.VectorReg* %2127 to %"class.std::bitset"*
  %2128 = bitcast %"class.std::bitset"* %YMM1.i711 to i8*
  %2129 = load i64, i64* %RBP.i710
  %2130 = load i64, i64* %RAX.i709
  %2131 = mul i64 %2130, 4
  %2132 = add i64 %2129, -1616
  %2133 = add i64 %2132, %2131
  %2134 = load i64, i64* %PC.i708
  %2135 = add i64 %2134, 9
  store i64 %2135, i64* %PC.i708
  %2136 = inttoptr i64 %2133 to i32*
  %2137 = load i32, i32* %2136
  %2138 = sitofp i32 %2137 to double
  %2139 = bitcast i8* %2128 to double*
  store double %2138, double* %2139, align 1
  store %struct.Memory* %loadMem_46e339, %struct.Memory** %MEMORY
  %loadMem_46e342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2144 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2143, i64 0, i64 0
  %XMM0.i703 = bitcast %union.VectorReg* %2144 to %union.vec128_t*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2146 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2145, i64 0, i64 1
  %XMM1.i704 = bitcast %union.VectorReg* %2146 to %union.vec128_t*
  %2147 = bitcast %union.vec128_t* %XMM1.i704 to i8*
  %2148 = bitcast %union.vec128_t* %XMM0.i703 to i8*
  %2149 = load i64, i64* %PC.i702
  %2150 = add i64 %2149, 4
  store i64 %2150, i64* %PC.i702
  %2151 = bitcast i8* %2147 to double*
  %2152 = load double, double* %2151, align 1
  %2153 = bitcast i8* %2148 to double*
  %2154 = load double, double* %2153, align 1
  %2155 = fcmp uno double %2152, %2154
  br i1 %2155, label %2156, label %2168

; <label>:2156:                                   ; preds = %block_.L_46e32f
  %2157 = fadd double %2152, %2154
  %2158 = bitcast double %2157 to i64
  %2159 = and i64 %2158, 9221120237041090560
  %2160 = icmp eq i64 %2159, 9218868437227405312
  %2161 = and i64 %2158, 2251799813685247
  %2162 = icmp ne i64 %2161, 0
  %2163 = and i1 %2160, %2162
  br i1 %2163, label %2164, label %2174

; <label>:2164:                                   ; preds = %2156
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2166 = load i64, i64* %2165, align 8
  %2167 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2166, %struct.Memory* %loadMem_46e342)
  br label %routine_ucomisd__xmm0___xmm1.exit705

; <label>:2168:                                   ; preds = %block_.L_46e32f
  %2169 = fcmp ogt double %2152, %2154
  br i1 %2169, label %2174, label %2170

; <label>:2170:                                   ; preds = %2168
  %2171 = fcmp olt double %2152, %2154
  br i1 %2171, label %2174, label %2172

; <label>:2172:                                   ; preds = %2170
  %2173 = fcmp oeq double %2152, %2154
  br i1 %2173, label %2174, label %2181

; <label>:2174:                                   ; preds = %2172, %2170, %2168, %2156
  %2175 = phi i8 [ 0, %2168 ], [ 0, %2170 ], [ 1, %2172 ], [ 1, %2156 ]
  %2176 = phi i8 [ 0, %2168 ], [ 0, %2170 ], [ 0, %2172 ], [ 1, %2156 ]
  %2177 = phi i8 [ 0, %2168 ], [ 1, %2170 ], [ 0, %2172 ], [ 1, %2156 ]
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2175, i8* %2178, align 1
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2176, i8* %2179, align 1
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2177, i8* %2180, align 1
  br label %2181

; <label>:2181:                                   ; preds = %2174, %2172
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2182, align 1
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2183, align 1
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2184, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit705

routine_ucomisd__xmm0___xmm1.exit705:             ; preds = %2164, %2181
  %2185 = phi %struct.Memory* [ %2167, %2164 ], [ %loadMem_46e342, %2181 ]
  store %struct.Memory* %2185, %struct.Memory** %MEMORY
  %loadMem_46e346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %2188 to i64*
  %2189 = load i64, i64* %PC.i701
  %2190 = add i64 %2189, 84
  %2191 = load i64, i64* %PC.i701
  %2192 = add i64 %2191, 6
  %2193 = load i64, i64* %PC.i701
  %2194 = add i64 %2193, 6
  store i64 %2194, i64* %PC.i701
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2196 = load i8, i8* %2195, align 1
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2198 = load i8, i8* %2197, align 1
  %2199 = or i8 %2198, %2196
  %2200 = icmp ne i8 %2199, 0
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %BRANCH_TAKEN, align 1
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2203 = select i1 %2200, i64 %2190, i64 %2192
  store i64 %2203, i64* %2202, align 8
  store %struct.Memory* %loadMem_46e346, %struct.Memory** %MEMORY
  %loadBr_46e346 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e346 = icmp eq i8 %loadBr_46e346, 1
  br i1 %cmpBr_46e346, label %block_.L_46e39a, label %block_46e34c

block_46e34c:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit705
  %loadMem_46e34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2207, i64 0, i64 0
  %YMM0.i700 = bitcast %union.VectorReg* %2208 to %"class.std::bitset"*
  %2209 = bitcast %"class.std::bitset"* %YMM0.i700 to i8*
  %2210 = load i64, i64* %PC.i699
  %2211 = add i64 %2210, ptrtoint (%G_0x74db8__rip__type* @G_0x74db8__rip_ to i64)
  %2212 = load i64, i64* %PC.i699
  %2213 = add i64 %2212, 8
  store i64 %2213, i64* %PC.i699
  %2214 = inttoptr i64 %2211 to float*
  %2215 = load float, float* %2214
  %2216 = bitcast i8* %2209 to float*
  store float %2215, float* %2216, align 1
  %2217 = getelementptr inbounds i8, i8* %2209, i64 4
  %2218 = bitcast i8* %2217 to float*
  store float 0.000000e+00, float* %2218, align 1
  %2219 = getelementptr inbounds i8, i8* %2209, i64 8
  %2220 = bitcast i8* %2219 to float*
  store float 0.000000e+00, float* %2220, align 1
  %2221 = getelementptr inbounds i8, i8* %2209, i64 12
  %2222 = bitcast i8* %2221 to float*
  store float 0.000000e+00, float* %2222, align 1
  store %struct.Memory* %loadMem_46e34c, %struct.Memory** %MEMORY
  %loadMem_46e354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2226, i64 0, i64 1
  %YMM1.i697 = bitcast %union.VectorReg* %2227 to %"class.std::bitset"*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2229 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2228, i64 0, i64 0
  %XMM0.i698 = bitcast %union.VectorReg* %2229 to %union.vec128_t*
  %2230 = bitcast %"class.std::bitset"* %YMM1.i697 to i8*
  %2231 = bitcast %union.vec128_t* %XMM0.i698 to i8*
  %2232 = load i64, i64* %PC.i696
  %2233 = add i64 %2232, 3
  store i64 %2233, i64* %PC.i696
  %2234 = bitcast i8* %2231 to <2 x i32>*
  %2235 = load <2 x i32>, <2 x i32>* %2234, align 1
  %2236 = getelementptr inbounds i8, i8* %2231, i64 8
  %2237 = bitcast i8* %2236 to <2 x i32>*
  %2238 = load <2 x i32>, <2 x i32>* %2237, align 1
  %2239 = extractelement <2 x i32> %2235, i32 0
  %2240 = bitcast i8* %2230 to i32*
  store i32 %2239, i32* %2240, align 1
  %2241 = extractelement <2 x i32> %2235, i32 1
  %2242 = getelementptr inbounds i8, i8* %2230, i64 4
  %2243 = bitcast i8* %2242 to i32*
  store i32 %2241, i32* %2243, align 1
  %2244 = extractelement <2 x i32> %2238, i32 0
  %2245 = getelementptr inbounds i8, i8* %2230, i64 8
  %2246 = bitcast i8* %2245 to i32*
  store i32 %2244, i32* %2246, align 1
  %2247 = extractelement <2 x i32> %2238, i32 1
  %2248 = getelementptr inbounds i8, i8* %2230, i64 12
  %2249 = bitcast i8* %2248 to i32*
  store i32 %2247, i32* %2249, align 1
  store %struct.Memory* %loadMem_46e354, %struct.Memory** %MEMORY
  %loadMem_46e357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 33
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 15
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2257 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2256, i64 0, i64 1
  %YMM1.i695 = bitcast %union.VectorReg* %2257 to %"class.std::bitset"*
  %2258 = bitcast %"class.std::bitset"* %YMM1.i695 to i8*
  %2259 = bitcast %"class.std::bitset"* %YMM1.i695 to i8*
  %2260 = load i64, i64* %RBP.i694
  %2261 = sub i64 %2260, 1620
  %2262 = load i64, i64* %PC.i693
  %2263 = add i64 %2262, 8
  store i64 %2263, i64* %PC.i693
  %2264 = bitcast i8* %2259 to <2 x float>*
  %2265 = load <2 x float>, <2 x float>* %2264, align 1
  %2266 = getelementptr inbounds i8, i8* %2259, i64 8
  %2267 = bitcast i8* %2266 to <2 x i32>*
  %2268 = load <2 x i32>, <2 x i32>* %2267, align 1
  %2269 = inttoptr i64 %2261 to float*
  %2270 = load float, float* %2269
  %2271 = extractelement <2 x float> %2265, i32 0
  %2272 = fadd float %2271, %2270
  %2273 = bitcast i8* %2258 to float*
  store float %2272, float* %2273, align 1
  %2274 = bitcast <2 x float> %2265 to <2 x i32>
  %2275 = extractelement <2 x i32> %2274, i32 1
  %2276 = getelementptr inbounds i8, i8* %2258, i64 4
  %2277 = bitcast i8* %2276 to i32*
  store i32 %2275, i32* %2277, align 1
  %2278 = extractelement <2 x i32> %2268, i32 0
  %2279 = getelementptr inbounds i8, i8* %2258, i64 8
  %2280 = bitcast i8* %2279 to i32*
  store i32 %2278, i32* %2280, align 1
  %2281 = extractelement <2 x i32> %2268, i32 1
  %2282 = getelementptr inbounds i8, i8* %2258, i64 12
  %2283 = bitcast i8* %2282 to i32*
  store i32 %2281, i32* %2283, align 1
  store %struct.Memory* %loadMem_46e357, %struct.Memory** %MEMORY
  %loadMem_46e35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 33
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2286 to i64*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 15
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2290, i64 0, i64 1
  %XMM1.i692 = bitcast %union.VectorReg* %2291 to %union.vec128_t*
  %2292 = load i64, i64* %RBP.i691
  %2293 = sub i64 %2292, 1620
  %2294 = bitcast %union.vec128_t* %XMM1.i692 to i8*
  %2295 = load i64, i64* %PC.i690
  %2296 = add i64 %2295, 8
  store i64 %2296, i64* %PC.i690
  %2297 = bitcast i8* %2294 to <2 x float>*
  %2298 = load <2 x float>, <2 x float>* %2297, align 1
  %2299 = extractelement <2 x float> %2298, i32 0
  %2300 = inttoptr i64 %2293 to float*
  store float %2299, float* %2300
  store %struct.Memory* %loadMem_46e35f, %struct.Memory** %MEMORY
  %loadMem_46e367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 33
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 15
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2308 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2307, i64 0, i64 0
  %YMM0.i689 = bitcast %union.VectorReg* %2308 to %"class.std::bitset"*
  %2309 = bitcast %"class.std::bitset"* %YMM0.i689 to i8*
  %2310 = bitcast %"class.std::bitset"* %YMM0.i689 to i8*
  %2311 = load i64, i64* %RBP.i688
  %2312 = sub i64 %2311, 1628
  %2313 = load i64, i64* %PC.i687
  %2314 = add i64 %2313, 8
  store i64 %2314, i64* %PC.i687
  %2315 = bitcast i8* %2310 to <2 x float>*
  %2316 = load <2 x float>, <2 x float>* %2315, align 1
  %2317 = getelementptr inbounds i8, i8* %2310, i64 8
  %2318 = bitcast i8* %2317 to <2 x i32>*
  %2319 = load <2 x i32>, <2 x i32>* %2318, align 1
  %2320 = inttoptr i64 %2312 to float*
  %2321 = load float, float* %2320
  %2322 = extractelement <2 x float> %2316, i32 0
  %2323 = fadd float %2322, %2321
  %2324 = bitcast i8* %2309 to float*
  store float %2323, float* %2324, align 1
  %2325 = bitcast <2 x float> %2316 to <2 x i32>
  %2326 = extractelement <2 x i32> %2325, i32 1
  %2327 = getelementptr inbounds i8, i8* %2309, i64 4
  %2328 = bitcast i8* %2327 to i32*
  store i32 %2326, i32* %2328, align 1
  %2329 = extractelement <2 x i32> %2319, i32 0
  %2330 = getelementptr inbounds i8, i8* %2309, i64 8
  %2331 = bitcast i8* %2330 to i32*
  store i32 %2329, i32* %2331, align 1
  %2332 = extractelement <2 x i32> %2319, i32 1
  %2333 = getelementptr inbounds i8, i8* %2309, i64 12
  %2334 = bitcast i8* %2333 to i32*
  store i32 %2332, i32* %2334, align 1
  store %struct.Memory* %loadMem_46e367, %struct.Memory** %MEMORY
  %loadMem_46e36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 15
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2342 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2341, i64 0, i64 0
  %XMM0.i686 = bitcast %union.VectorReg* %2342 to %union.vec128_t*
  %2343 = load i64, i64* %RBP.i685
  %2344 = sub i64 %2343, 1628
  %2345 = bitcast %union.vec128_t* %XMM0.i686 to i8*
  %2346 = load i64, i64* %PC.i684
  %2347 = add i64 %2346, 8
  store i64 %2347, i64* %PC.i684
  %2348 = bitcast i8* %2345 to <2 x float>*
  %2349 = load <2 x float>, <2 x float>* %2348, align 1
  %2350 = extractelement <2 x float> %2349, i32 0
  %2351 = inttoptr i64 %2344 to float*
  store float %2350, float* %2351
  store %struct.Memory* %loadMem_46e36f, %struct.Memory** %MEMORY
  %loadMem_46e377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 15
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %2360 to i64*
  %2361 = load i64, i64* %RBP.i683
  %2362 = sub i64 %2361, 1664
  %2363 = load i64, i64* %PC.i681
  %2364 = add i64 %2363, 6
  store i64 %2364, i64* %PC.i681
  %2365 = inttoptr i64 %2362 to i32*
  %2366 = load i32, i32* %2365
  %2367 = zext i32 %2366 to i64
  store i64 %2367, i64* %RAX.i682, align 8
  store %struct.Memory* %loadMem_46e377, %struct.Memory** %MEMORY
  %loadMem_46e37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 1
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %2373 to i64*
  %2374 = load i64, i64* %RAX.i680
  %2375 = load i64, i64* %PC.i679
  %2376 = add i64 %2375, 3
  store i64 %2376, i64* %PC.i679
  %2377 = trunc i64 %2374 to i32
  %2378 = add i32 1, %2377
  %2379 = zext i32 %2378 to i64
  store i64 %2379, i64* %RAX.i680, align 8
  %2380 = icmp ult i32 %2378, %2377
  %2381 = icmp ult i32 %2378, 1
  %2382 = or i1 %2380, %2381
  %2383 = zext i1 %2382 to i8
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2383, i8* %2384, align 1
  %2385 = and i32 %2378, 255
  %2386 = call i32 @llvm.ctpop.i32(i32 %2385)
  %2387 = trunc i32 %2386 to i8
  %2388 = and i8 %2387, 1
  %2389 = xor i8 %2388, 1
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2389, i8* %2390, align 1
  %2391 = xor i64 1, %2374
  %2392 = trunc i64 %2391 to i32
  %2393 = xor i32 %2392, %2378
  %2394 = lshr i32 %2393, 4
  %2395 = trunc i32 %2394 to i8
  %2396 = and i8 %2395, 1
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2396, i8* %2397, align 1
  %2398 = icmp eq i32 %2378, 0
  %2399 = zext i1 %2398 to i8
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2399, i8* %2400, align 1
  %2401 = lshr i32 %2378, 31
  %2402 = trunc i32 %2401 to i8
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2402, i8* %2403, align 1
  %2404 = lshr i32 %2377, 31
  %2405 = xor i32 %2401, %2404
  %2406 = add i32 %2405, %2401
  %2407 = icmp eq i32 %2406, 2
  %2408 = zext i1 %2407 to i8
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2408, i8* %2409, align 1
  store %struct.Memory* %loadMem_46e37d, %struct.Memory** %MEMORY
  %loadMem_46e380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 33
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2412 to i64*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 1
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %EAX.i677 = bitcast %union.anon* %2415 to i32*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 15
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %2418 to i64*
  %2419 = load i64, i64* %RBP.i678
  %2420 = sub i64 %2419, 1664
  %2421 = load i32, i32* %EAX.i677
  %2422 = zext i32 %2421 to i64
  %2423 = load i64, i64* %PC.i676
  %2424 = add i64 %2423, 6
  store i64 %2424, i64* %PC.i676
  %2425 = inttoptr i64 %2420 to i32*
  store i32 %2421, i32* %2425
  store %struct.Memory* %loadMem_46e380, %struct.Memory** %MEMORY
  %loadMem_46e386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 33
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 1
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 15
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %2434 to i64*
  %2435 = load i64, i64* %RBP.i675
  %2436 = sub i64 %2435, 1668
  %2437 = load i64, i64* %PC.i673
  %2438 = add i64 %2437, 6
  store i64 %2438, i64* %PC.i673
  %2439 = inttoptr i64 %2436 to i32*
  %2440 = load i32, i32* %2439
  %2441 = zext i32 %2440 to i64
  store i64 %2441, i64* %RAX.i674, align 8
  store %struct.Memory* %loadMem_46e386, %struct.Memory** %MEMORY
  %loadMem_46e38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 33
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2444 to i64*
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 1
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %2447 to i64*
  %2448 = load i64, i64* %RAX.i672
  %2449 = load i64, i64* %PC.i671
  %2450 = add i64 %2449, 3
  store i64 %2450, i64* %PC.i671
  %2451 = trunc i64 %2448 to i32
  %2452 = add i32 1, %2451
  %2453 = zext i32 %2452 to i64
  store i64 %2453, i64* %RAX.i672, align 8
  %2454 = icmp ult i32 %2452, %2451
  %2455 = icmp ult i32 %2452, 1
  %2456 = or i1 %2454, %2455
  %2457 = zext i1 %2456 to i8
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2457, i8* %2458, align 1
  %2459 = and i32 %2452, 255
  %2460 = call i32 @llvm.ctpop.i32(i32 %2459)
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  %2463 = xor i8 %2462, 1
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2463, i8* %2464, align 1
  %2465 = xor i64 1, %2448
  %2466 = trunc i64 %2465 to i32
  %2467 = xor i32 %2466, %2452
  %2468 = lshr i32 %2467, 4
  %2469 = trunc i32 %2468 to i8
  %2470 = and i8 %2469, 1
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2470, i8* %2471, align 1
  %2472 = icmp eq i32 %2452, 0
  %2473 = zext i1 %2472 to i8
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2473, i8* %2474, align 1
  %2475 = lshr i32 %2452, 31
  %2476 = trunc i32 %2475 to i8
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2476, i8* %2477, align 1
  %2478 = lshr i32 %2451, 31
  %2479 = xor i32 %2475, %2478
  %2480 = add i32 %2479, %2475
  %2481 = icmp eq i32 %2480, 2
  %2482 = zext i1 %2481 to i8
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2482, i8* %2483, align 1
  store %struct.Memory* %loadMem_46e38c, %struct.Memory** %MEMORY
  %loadMem_46e38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 1
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %EAX.i669 = bitcast %union.anon* %2489 to i32*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 15
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RBP.i670
  %2494 = sub i64 %2493, 1668
  %2495 = load i32, i32* %EAX.i669
  %2496 = zext i32 %2495 to i64
  %2497 = load i64, i64* %PC.i668
  %2498 = add i64 %2497, 6
  store i64 %2498, i64* %PC.i668
  %2499 = inttoptr i64 %2494 to i32*
  store i32 %2495, i32* %2499
  store %struct.Memory* %loadMem_46e38f, %struct.Memory** %MEMORY
  %loadMem_46e395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 33
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2502 to i64*
  %2503 = load i64, i64* %PC.i667
  %2504 = add i64 %2503, 112
  %2505 = load i64, i64* %PC.i667
  %2506 = add i64 %2505, 5
  store i64 %2506, i64* %PC.i667
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2504, i64* %2507, align 8
  store %struct.Memory* %loadMem_46e395, %struct.Memory** %MEMORY
  br label %block_.L_46e405

block_.L_46e39a:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit705
  %loadMem_46e39a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 33
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2510 to i64*
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2512 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2511, i64 0, i64 0
  %YMM0.i665 = bitcast %union.VectorReg* %2512 to %"class.std::bitset"*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2513, i64 0, i64 0
  %XMM0.i666 = bitcast %union.VectorReg* %2514 to %union.vec128_t*
  %2515 = bitcast %"class.std::bitset"* %YMM0.i665 to i8*
  %2516 = bitcast %"class.std::bitset"* %YMM0.i665 to i8*
  %2517 = bitcast %union.vec128_t* %XMM0.i666 to i8*
  %2518 = load i64, i64* %PC.i664
  %2519 = add i64 %2518, 3
  store i64 %2519, i64* %PC.i664
  %2520 = bitcast i8* %2516 to i64*
  %2521 = load i64, i64* %2520, align 1
  %2522 = getelementptr inbounds i8, i8* %2516, i64 8
  %2523 = bitcast i8* %2522 to i64*
  %2524 = load i64, i64* %2523, align 1
  %2525 = bitcast i8* %2517 to i64*
  %2526 = load i64, i64* %2525, align 1
  %2527 = getelementptr inbounds i8, i8* %2517, i64 8
  %2528 = bitcast i8* %2527 to i64*
  %2529 = load i64, i64* %2528, align 1
  %2530 = xor i64 %2526, %2521
  %2531 = xor i64 %2529, %2524
  %2532 = trunc i64 %2530 to i32
  %2533 = lshr i64 %2530, 32
  %2534 = trunc i64 %2533 to i32
  %2535 = bitcast i8* %2515 to i32*
  store i32 %2532, i32* %2535, align 1
  %2536 = getelementptr inbounds i8, i8* %2515, i64 4
  %2537 = bitcast i8* %2536 to i32*
  store i32 %2534, i32* %2537, align 1
  %2538 = trunc i64 %2531 to i32
  %2539 = getelementptr inbounds i8, i8* %2515, i64 8
  %2540 = bitcast i8* %2539 to i32*
  store i32 %2538, i32* %2540, align 1
  %2541 = lshr i64 %2531, 32
  %2542 = trunc i64 %2541 to i32
  %2543 = getelementptr inbounds i8, i8* %2515, i64 12
  %2544 = bitcast i8* %2543 to i32*
  store i32 %2542, i32* %2544, align 1
  store %struct.Memory* %loadMem_46e39a, %struct.Memory** %MEMORY
  %loadMem_46e39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 33
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 1
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 15
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %2553 to i64*
  %2554 = load i64, i64* %RBP.i663
  %2555 = sub i64 %2554, 1644
  %2556 = load i64, i64* %PC.i661
  %2557 = add i64 %2556, 7
  store i64 %2557, i64* %PC.i661
  %2558 = inttoptr i64 %2555 to i32*
  %2559 = load i32, i32* %2558
  %2560 = sext i32 %2559 to i64
  store i64 %2560, i64* %RAX.i662, align 8
  store %struct.Memory* %loadMem_46e39d, %struct.Memory** %MEMORY
  %loadMem_46e3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 1
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %RAX.i658 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 15
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2570, i64 0, i64 1
  %YMM1.i660 = bitcast %union.VectorReg* %2571 to %"class.std::bitset"*
  %2572 = bitcast %"class.std::bitset"* %YMM1.i660 to i8*
  %2573 = load i64, i64* %RBP.i659
  %2574 = load i64, i64* %RAX.i658
  %2575 = mul i64 %2574, 4
  %2576 = add i64 %2573, -1616
  %2577 = add i64 %2576, %2575
  %2578 = load i64, i64* %PC.i657
  %2579 = add i64 %2578, 9
  store i64 %2579, i64* %PC.i657
  %2580 = inttoptr i64 %2577 to i32*
  %2581 = load i32, i32* %2580
  %2582 = sitofp i32 %2581 to double
  %2583 = bitcast i8* %2572 to double*
  store double %2582, double* %2583, align 1
  store %struct.Memory* %loadMem_46e3a4, %struct.Memory** %MEMORY
  %loadMem_46e3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 33
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2586 to i64*
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2588 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2587, i64 0, i64 0
  %XMM0.i652 = bitcast %union.VectorReg* %2588 to %union.vec128_t*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2590 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2589, i64 0, i64 1
  %XMM1.i653 = bitcast %union.VectorReg* %2590 to %union.vec128_t*
  %2591 = bitcast %union.vec128_t* %XMM0.i652 to i8*
  %2592 = bitcast %union.vec128_t* %XMM1.i653 to i8*
  %2593 = load i64, i64* %PC.i651
  %2594 = add i64 %2593, 4
  store i64 %2594, i64* %PC.i651
  %2595 = bitcast i8* %2591 to double*
  %2596 = load double, double* %2595, align 1
  %2597 = bitcast i8* %2592 to double*
  %2598 = load double, double* %2597, align 1
  %2599 = fcmp uno double %2596, %2598
  br i1 %2599, label %2600, label %2612

; <label>:2600:                                   ; preds = %block_.L_46e39a
  %2601 = fadd double %2596, %2598
  %2602 = bitcast double %2601 to i64
  %2603 = and i64 %2602, 9221120237041090560
  %2604 = icmp eq i64 %2603, 9218868437227405312
  %2605 = and i64 %2602, 2251799813685247
  %2606 = icmp ne i64 %2605, 0
  %2607 = and i1 %2604, %2606
  br i1 %2607, label %2608, label %2618

; <label>:2608:                                   ; preds = %2600
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2610 = load i64, i64* %2609, align 8
  %2611 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2610, %struct.Memory* %loadMem_46e3ad)
  br label %routine_ucomisd__xmm1___xmm0.exit654

; <label>:2612:                                   ; preds = %block_.L_46e39a
  %2613 = fcmp ogt double %2596, %2598
  br i1 %2613, label %2618, label %2614

; <label>:2614:                                   ; preds = %2612
  %2615 = fcmp olt double %2596, %2598
  br i1 %2615, label %2618, label %2616

; <label>:2616:                                   ; preds = %2614
  %2617 = fcmp oeq double %2596, %2598
  br i1 %2617, label %2618, label %2625

; <label>:2618:                                   ; preds = %2616, %2614, %2612, %2600
  %2619 = phi i8 [ 0, %2612 ], [ 0, %2614 ], [ 1, %2616 ], [ 1, %2600 ]
  %2620 = phi i8 [ 0, %2612 ], [ 0, %2614 ], [ 0, %2616 ], [ 1, %2600 ]
  %2621 = phi i8 [ 0, %2612 ], [ 1, %2614 ], [ 0, %2616 ], [ 1, %2600 ]
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2619, i8* %2622, align 1
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2620, i8* %2623, align 1
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2621, i8* %2624, align 1
  br label %2625

; <label>:2625:                                   ; preds = %2618, %2616
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2626, align 1
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2627, align 1
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2628, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit654

routine_ucomisd__xmm1___xmm0.exit654:             ; preds = %2608, %2625
  %2629 = phi %struct.Memory* [ %2611, %2608 ], [ %loadMem_46e3ad, %2625 ]
  store %struct.Memory* %2629, %struct.Memory** %MEMORY
  %loadMem_46e3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 33
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2632 to i64*
  %2633 = load i64, i64* %PC.i650
  %2634 = add i64 %2633, 79
  %2635 = load i64, i64* %PC.i650
  %2636 = add i64 %2635, 6
  %2637 = load i64, i64* %PC.i650
  %2638 = add i64 %2637, 6
  store i64 %2638, i64* %PC.i650
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2640 = load i8, i8* %2639, align 1
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2642 = load i8, i8* %2641, align 1
  %2643 = or i8 %2642, %2640
  %2644 = icmp ne i8 %2643, 0
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %BRANCH_TAKEN, align 1
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2647 = select i1 %2644, i64 %2634, i64 %2636
  store i64 %2647, i64* %2646, align 8
  store %struct.Memory* %loadMem_46e3b1, %struct.Memory** %MEMORY
  %loadBr_46e3b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e3b1 = icmp eq i8 %loadBr_46e3b1, 1
  br i1 %cmpBr_46e3b1, label %block_.L_46e400, label %block_46e3b7

block_46e3b7:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit654
  %loadMem_46e3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2651, i64 0, i64 0
  %YMM0.i649 = bitcast %union.VectorReg* %2652 to %"class.std::bitset"*
  %2653 = bitcast %"class.std::bitset"* %YMM0.i649 to i8*
  %2654 = load i64, i64* %PC.i648
  %2655 = add i64 %2654, ptrtoint (%G_0x74d4d__rip__type* @G_0x74d4d__rip_ to i64)
  %2656 = load i64, i64* %PC.i648
  %2657 = add i64 %2656, 8
  store i64 %2657, i64* %PC.i648
  %2658 = inttoptr i64 %2655 to float*
  %2659 = load float, float* %2658
  %2660 = bitcast i8* %2653 to float*
  store float %2659, float* %2660, align 1
  %2661 = getelementptr inbounds i8, i8* %2653, i64 4
  %2662 = bitcast i8* %2661 to float*
  store float 0.000000e+00, float* %2662, align 1
  %2663 = getelementptr inbounds i8, i8* %2653, i64 8
  %2664 = bitcast i8* %2663 to float*
  store float 0.000000e+00, float* %2664, align 1
  %2665 = getelementptr inbounds i8, i8* %2653, i64 12
  %2666 = bitcast i8* %2665 to float*
  store float 0.000000e+00, float* %2666, align 1
  store %struct.Memory* %loadMem_46e3b7, %struct.Memory** %MEMORY
  %loadMem_46e3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2671 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2670, i64 0, i64 1
  %YMM1.i646 = bitcast %union.VectorReg* %2671 to %"class.std::bitset"*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2673 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2672, i64 0, i64 0
  %XMM0.i647 = bitcast %union.VectorReg* %2673 to %union.vec128_t*
  %2674 = bitcast %"class.std::bitset"* %YMM1.i646 to i8*
  %2675 = bitcast %union.vec128_t* %XMM0.i647 to i8*
  %2676 = load i64, i64* %PC.i645
  %2677 = add i64 %2676, 3
  store i64 %2677, i64* %PC.i645
  %2678 = bitcast i8* %2675 to <2 x i32>*
  %2679 = load <2 x i32>, <2 x i32>* %2678, align 1
  %2680 = getelementptr inbounds i8, i8* %2675, i64 8
  %2681 = bitcast i8* %2680 to <2 x i32>*
  %2682 = load <2 x i32>, <2 x i32>* %2681, align 1
  %2683 = extractelement <2 x i32> %2679, i32 0
  %2684 = bitcast i8* %2674 to i32*
  store i32 %2683, i32* %2684, align 1
  %2685 = extractelement <2 x i32> %2679, i32 1
  %2686 = getelementptr inbounds i8, i8* %2674, i64 4
  %2687 = bitcast i8* %2686 to i32*
  store i32 %2685, i32* %2687, align 1
  %2688 = extractelement <2 x i32> %2682, i32 0
  %2689 = getelementptr inbounds i8, i8* %2674, i64 8
  %2690 = bitcast i8* %2689 to i32*
  store i32 %2688, i32* %2690, align 1
  %2691 = extractelement <2 x i32> %2682, i32 1
  %2692 = getelementptr inbounds i8, i8* %2674, i64 12
  %2693 = bitcast i8* %2692 to i32*
  store i32 %2691, i32* %2693, align 1
  store %struct.Memory* %loadMem_46e3bf, %struct.Memory** %MEMORY
  %loadMem_46e3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 33
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2696 to i64*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 15
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %2699 to i64*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2701 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2700, i64 0, i64 1
  %YMM1.i644 = bitcast %union.VectorReg* %2701 to %"class.std::bitset"*
  %2702 = bitcast %"class.std::bitset"* %YMM1.i644 to i8*
  %2703 = bitcast %"class.std::bitset"* %YMM1.i644 to i8*
  %2704 = load i64, i64* %RBP.i643
  %2705 = sub i64 %2704, 1624
  %2706 = load i64, i64* %PC.i642
  %2707 = add i64 %2706, 8
  store i64 %2707, i64* %PC.i642
  %2708 = bitcast i8* %2703 to <2 x float>*
  %2709 = load <2 x float>, <2 x float>* %2708, align 1
  %2710 = getelementptr inbounds i8, i8* %2703, i64 8
  %2711 = bitcast i8* %2710 to <2 x i32>*
  %2712 = load <2 x i32>, <2 x i32>* %2711, align 1
  %2713 = inttoptr i64 %2705 to float*
  %2714 = load float, float* %2713
  %2715 = extractelement <2 x float> %2709, i32 0
  %2716 = fadd float %2715, %2714
  %2717 = bitcast i8* %2702 to float*
  store float %2716, float* %2717, align 1
  %2718 = bitcast <2 x float> %2709 to <2 x i32>
  %2719 = extractelement <2 x i32> %2718, i32 1
  %2720 = getelementptr inbounds i8, i8* %2702, i64 4
  %2721 = bitcast i8* %2720 to i32*
  store i32 %2719, i32* %2721, align 1
  %2722 = extractelement <2 x i32> %2712, i32 0
  %2723 = getelementptr inbounds i8, i8* %2702, i64 8
  %2724 = bitcast i8* %2723 to i32*
  store i32 %2722, i32* %2724, align 1
  %2725 = extractelement <2 x i32> %2712, i32 1
  %2726 = getelementptr inbounds i8, i8* %2702, i64 12
  %2727 = bitcast i8* %2726 to i32*
  store i32 %2725, i32* %2727, align 1
  store %struct.Memory* %loadMem_46e3c2, %struct.Memory** %MEMORY
  %loadMem_46e3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 15
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %2733 to i64*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2735 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2734, i64 0, i64 1
  %XMM1.i641 = bitcast %union.VectorReg* %2735 to %union.vec128_t*
  %2736 = load i64, i64* %RBP.i640
  %2737 = sub i64 %2736, 1624
  %2738 = bitcast %union.vec128_t* %XMM1.i641 to i8*
  %2739 = load i64, i64* %PC.i639
  %2740 = add i64 %2739, 8
  store i64 %2740, i64* %PC.i639
  %2741 = bitcast i8* %2738 to <2 x float>*
  %2742 = load <2 x float>, <2 x float>* %2741, align 1
  %2743 = extractelement <2 x float> %2742, i32 0
  %2744 = inttoptr i64 %2737 to float*
  store float %2743, float* %2744
  store %struct.Memory* %loadMem_46e3ca, %struct.Memory** %MEMORY
  %loadMem_46e3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 15
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2751, i64 0, i64 0
  %YMM0.i638 = bitcast %union.VectorReg* %2752 to %"class.std::bitset"*
  %2753 = bitcast %"class.std::bitset"* %YMM0.i638 to i8*
  %2754 = bitcast %"class.std::bitset"* %YMM0.i638 to i8*
  %2755 = load i64, i64* %RBP.i637
  %2756 = sub i64 %2755, 1632
  %2757 = load i64, i64* %PC.i636
  %2758 = add i64 %2757, 8
  store i64 %2758, i64* %PC.i636
  %2759 = bitcast i8* %2754 to <2 x float>*
  %2760 = load <2 x float>, <2 x float>* %2759, align 1
  %2761 = getelementptr inbounds i8, i8* %2754, i64 8
  %2762 = bitcast i8* %2761 to <2 x i32>*
  %2763 = load <2 x i32>, <2 x i32>* %2762, align 1
  %2764 = inttoptr i64 %2756 to float*
  %2765 = load float, float* %2764
  %2766 = extractelement <2 x float> %2760, i32 0
  %2767 = fadd float %2766, %2765
  %2768 = bitcast i8* %2753 to float*
  store float %2767, float* %2768, align 1
  %2769 = bitcast <2 x float> %2760 to <2 x i32>
  %2770 = extractelement <2 x i32> %2769, i32 1
  %2771 = getelementptr inbounds i8, i8* %2753, i64 4
  %2772 = bitcast i8* %2771 to i32*
  store i32 %2770, i32* %2772, align 1
  %2773 = extractelement <2 x i32> %2763, i32 0
  %2774 = getelementptr inbounds i8, i8* %2753, i64 8
  %2775 = bitcast i8* %2774 to i32*
  store i32 %2773, i32* %2775, align 1
  %2776 = extractelement <2 x i32> %2763, i32 1
  %2777 = getelementptr inbounds i8, i8* %2753, i64 12
  %2778 = bitcast i8* %2777 to i32*
  store i32 %2776, i32* %2778, align 1
  store %struct.Memory* %loadMem_46e3d2, %struct.Memory** %MEMORY
  %loadMem_46e3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 33
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %2781 to i64*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 15
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %2784 to i64*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2785, i64 0, i64 0
  %XMM0.i635 = bitcast %union.VectorReg* %2786 to %union.vec128_t*
  %2787 = load i64, i64* %RBP.i634
  %2788 = sub i64 %2787, 1632
  %2789 = bitcast %union.vec128_t* %XMM0.i635 to i8*
  %2790 = load i64, i64* %PC.i633
  %2791 = add i64 %2790, 8
  store i64 %2791, i64* %PC.i633
  %2792 = bitcast i8* %2789 to <2 x float>*
  %2793 = load <2 x float>, <2 x float>* %2792, align 1
  %2794 = extractelement <2 x float> %2793, i32 0
  %2795 = inttoptr i64 %2788 to float*
  store float %2794, float* %2795
  store %struct.Memory* %loadMem_46e3da, %struct.Memory** %MEMORY
  %loadMem_46e3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 33
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2798 to i64*
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 1
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %RAX.i631 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 15
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %2804 to i64*
  %2805 = load i64, i64* %RBP.i632
  %2806 = sub i64 %2805, 1660
  %2807 = load i64, i64* %PC.i630
  %2808 = add i64 %2807, 6
  store i64 %2808, i64* %PC.i630
  %2809 = inttoptr i64 %2806 to i32*
  %2810 = load i32, i32* %2809
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RAX.i631, align 8
  store %struct.Memory* %loadMem_46e3e2, %struct.Memory** %MEMORY
  %loadMem_46e3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 1
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %2817 to i64*
  %2818 = load i64, i64* %RAX.i629
  %2819 = load i64, i64* %PC.i628
  %2820 = add i64 %2819, 3
  store i64 %2820, i64* %PC.i628
  %2821 = trunc i64 %2818 to i32
  %2822 = add i32 1, %2821
  %2823 = zext i32 %2822 to i64
  store i64 %2823, i64* %RAX.i629, align 8
  %2824 = icmp ult i32 %2822, %2821
  %2825 = icmp ult i32 %2822, 1
  %2826 = or i1 %2824, %2825
  %2827 = zext i1 %2826 to i8
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2827, i8* %2828, align 1
  %2829 = and i32 %2822, 255
  %2830 = call i32 @llvm.ctpop.i32(i32 %2829)
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = xor i8 %2832, 1
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2833, i8* %2834, align 1
  %2835 = xor i64 1, %2818
  %2836 = trunc i64 %2835 to i32
  %2837 = xor i32 %2836, %2822
  %2838 = lshr i32 %2837, 4
  %2839 = trunc i32 %2838 to i8
  %2840 = and i8 %2839, 1
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2840, i8* %2841, align 1
  %2842 = icmp eq i32 %2822, 0
  %2843 = zext i1 %2842 to i8
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2843, i8* %2844, align 1
  %2845 = lshr i32 %2822, 31
  %2846 = trunc i32 %2845 to i8
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2846, i8* %2847, align 1
  %2848 = lshr i32 %2821, 31
  %2849 = xor i32 %2845, %2848
  %2850 = add i32 %2849, %2845
  %2851 = icmp eq i32 %2850, 2
  %2852 = zext i1 %2851 to i8
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2852, i8* %2853, align 1
  store %struct.Memory* %loadMem_46e3e8, %struct.Memory** %MEMORY
  %loadMem_46e3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 33
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 1
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %EAX.i626 = bitcast %union.anon* %2859 to i32*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 15
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %2862 to i64*
  %2863 = load i64, i64* %RBP.i627
  %2864 = sub i64 %2863, 1660
  %2865 = load i32, i32* %EAX.i626
  %2866 = zext i32 %2865 to i64
  %2867 = load i64, i64* %PC.i625
  %2868 = add i64 %2867, 6
  store i64 %2868, i64* %PC.i625
  %2869 = inttoptr i64 %2864 to i32*
  store i32 %2865, i32* %2869
  store %struct.Memory* %loadMem_46e3eb, %struct.Memory** %MEMORY
  %loadMem_46e3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 1
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %RAX.i623 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 15
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %2878 to i64*
  %2879 = load i64, i64* %RBP.i624
  %2880 = sub i64 %2879, 1672
  %2881 = load i64, i64* %PC.i622
  %2882 = add i64 %2881, 6
  store i64 %2882, i64* %PC.i622
  %2883 = inttoptr i64 %2880 to i32*
  %2884 = load i32, i32* %2883
  %2885 = zext i32 %2884 to i64
  store i64 %2885, i64* %RAX.i623, align 8
  store %struct.Memory* %loadMem_46e3f1, %struct.Memory** %MEMORY
  %loadMem_46e3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 33
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 1
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RAX.i621 = bitcast %union.anon* %2891 to i64*
  %2892 = load i64, i64* %RAX.i621
  %2893 = load i64, i64* %PC.i620
  %2894 = add i64 %2893, 3
  store i64 %2894, i64* %PC.i620
  %2895 = trunc i64 %2892 to i32
  %2896 = add i32 1, %2895
  %2897 = zext i32 %2896 to i64
  store i64 %2897, i64* %RAX.i621, align 8
  %2898 = icmp ult i32 %2896, %2895
  %2899 = icmp ult i32 %2896, 1
  %2900 = or i1 %2898, %2899
  %2901 = zext i1 %2900 to i8
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2901, i8* %2902, align 1
  %2903 = and i32 %2896, 255
  %2904 = call i32 @llvm.ctpop.i32(i32 %2903)
  %2905 = trunc i32 %2904 to i8
  %2906 = and i8 %2905, 1
  %2907 = xor i8 %2906, 1
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2907, i8* %2908, align 1
  %2909 = xor i64 1, %2892
  %2910 = trunc i64 %2909 to i32
  %2911 = xor i32 %2910, %2896
  %2912 = lshr i32 %2911, 4
  %2913 = trunc i32 %2912 to i8
  %2914 = and i8 %2913, 1
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2914, i8* %2915, align 1
  %2916 = icmp eq i32 %2896, 0
  %2917 = zext i1 %2916 to i8
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2917, i8* %2918, align 1
  %2919 = lshr i32 %2896, 31
  %2920 = trunc i32 %2919 to i8
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2920, i8* %2921, align 1
  %2922 = lshr i32 %2895, 31
  %2923 = xor i32 %2919, %2922
  %2924 = add i32 %2923, %2919
  %2925 = icmp eq i32 %2924, 2
  %2926 = zext i1 %2925 to i8
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2926, i8* %2927, align 1
  store %struct.Memory* %loadMem_46e3f7, %struct.Memory** %MEMORY
  %loadMem_46e3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 1
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %EAX.i618 = bitcast %union.anon* %2933 to i32*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 15
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %2936 to i64*
  %2937 = load i64, i64* %RBP.i619
  %2938 = sub i64 %2937, 1672
  %2939 = load i32, i32* %EAX.i618
  %2940 = zext i32 %2939 to i64
  %2941 = load i64, i64* %PC.i617
  %2942 = add i64 %2941, 6
  store i64 %2942, i64* %PC.i617
  %2943 = inttoptr i64 %2938 to i32*
  store i32 %2939, i32* %2943
  store %struct.Memory* %loadMem_46e3fa, %struct.Memory** %MEMORY
  br label %block_.L_46e400

block_.L_46e400:                                  ; preds = %block_46e3b7, %routine_ucomisd__xmm1___xmm0.exit654
  %loadMem_46e400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 33
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %PC.i616
  %2948 = add i64 %2947, 5
  %2949 = load i64, i64* %PC.i616
  %2950 = add i64 %2949, 5
  store i64 %2950, i64* %PC.i616
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2948, i64* %2951, align 8
  store %struct.Memory* %loadMem_46e400, %struct.Memory** %MEMORY
  br label %block_.L_46e405

block_.L_46e405:                                  ; preds = %block_.L_46e400, %block_46e34c
  %loadMem_46e405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2954 to i64*
  %2955 = load i64, i64* %PC.i615
  %2956 = add i64 %2955, 5
  %2957 = load i64, i64* %PC.i615
  %2958 = add i64 %2957, 5
  store i64 %2958, i64* %PC.i615
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2956, i64* %2959, align 8
  store %struct.Memory* %loadMem_46e405, %struct.Memory** %MEMORY
  br label %block_.L_46e40a

block_.L_46e40a:                                  ; preds = %block_.L_46e405, %block_.L_46e32a
  %loadMem_46e40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2962 to i64*
  %2963 = load i64, i64* %PC.i614
  %2964 = add i64 %2963, 5
  %2965 = load i64, i64* %PC.i614
  %2966 = add i64 %2965, 5
  store i64 %2966, i64* %PC.i614
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2964, i64* %2967, align 8
  store %struct.Memory* %loadMem_46e40a, %struct.Memory** %MEMORY
  br label %block_.L_46e40f

block_.L_46e40f:                                  ; preds = %block_.L_46e40a, %block_.L_46e27a
  %loadMem_46e40f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %PC.i613
  %2972 = add i64 %2971, 5
  %2973 = load i64, i64* %PC.i613
  %2974 = add i64 %2973, 5
  store i64 %2974, i64* %PC.i613
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2972, i64* %2975, align 8
  store %struct.Memory* %loadMem_46e40f, %struct.Memory** %MEMORY
  br label %block_.L_46e414

block_.L_46e414:                                  ; preds = %block_.L_46e40f
  %loadMem_46e414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 33
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 1
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 15
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %2984 to i64*
  %2985 = load i64, i64* %RBP.i612
  %2986 = sub i64 %2985, 1640
  %2987 = load i64, i64* %PC.i610
  %2988 = add i64 %2987, 6
  store i64 %2988, i64* %PC.i610
  %2989 = inttoptr i64 %2986 to i32*
  %2990 = load i32, i32* %2989
  %2991 = zext i32 %2990 to i64
  store i64 %2991, i64* %RAX.i611, align 8
  store %struct.Memory* %loadMem_46e414, %struct.Memory** %MEMORY
  %loadMem_46e41a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 33
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 1
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %2997 to i64*
  %2998 = load i64, i64* %RAX.i609
  %2999 = load i64, i64* %PC.i608
  %3000 = add i64 %2999, 3
  store i64 %3000, i64* %PC.i608
  %3001 = trunc i64 %2998 to i32
  %3002 = add i32 1, %3001
  %3003 = zext i32 %3002 to i64
  store i64 %3003, i64* %RAX.i609, align 8
  %3004 = icmp ult i32 %3002, %3001
  %3005 = icmp ult i32 %3002, 1
  %3006 = or i1 %3004, %3005
  %3007 = zext i1 %3006 to i8
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3007, i8* %3008, align 1
  %3009 = and i32 %3002, 255
  %3010 = call i32 @llvm.ctpop.i32(i32 %3009)
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  %3013 = xor i8 %3012, 1
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3013, i8* %3014, align 1
  %3015 = xor i64 1, %2998
  %3016 = trunc i64 %3015 to i32
  %3017 = xor i32 %3016, %3002
  %3018 = lshr i32 %3017, 4
  %3019 = trunc i32 %3018 to i8
  %3020 = and i8 %3019, 1
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3020, i8* %3021, align 1
  %3022 = icmp eq i32 %3002, 0
  %3023 = zext i1 %3022 to i8
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3023, i8* %3024, align 1
  %3025 = lshr i32 %3002, 31
  %3026 = trunc i32 %3025 to i8
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3026, i8* %3027, align 1
  %3028 = lshr i32 %3001, 31
  %3029 = xor i32 %3025, %3028
  %3030 = add i32 %3029, %3025
  %3031 = icmp eq i32 %3030, 2
  %3032 = zext i1 %3031 to i8
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3032, i8* %3033, align 1
  store %struct.Memory* %loadMem_46e41a, %struct.Memory** %MEMORY
  %loadMem_46e41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 33
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 1
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %EAX.i606 = bitcast %union.anon* %3039 to i32*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 15
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %3042 to i64*
  %3043 = load i64, i64* %RBP.i607
  %3044 = sub i64 %3043, 1640
  %3045 = load i32, i32* %EAX.i606
  %3046 = zext i32 %3045 to i64
  %3047 = load i64, i64* %PC.i605
  %3048 = add i64 %3047, 6
  store i64 %3048, i64* %PC.i605
  %3049 = inttoptr i64 %3044 to i32*
  store i32 %3045, i32* %3049
  store %struct.Memory* %loadMem_46e41d, %struct.Memory** %MEMORY
  %loadMem_46e423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 33
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %3052 to i64*
  %3053 = load i64, i64* %PC.i604
  %3054 = add i64 %3053, -637
  %3055 = load i64, i64* %PC.i604
  %3056 = add i64 %3055, 5
  store i64 %3056, i64* %PC.i604
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3054, i64* %3057, align 8
  store %struct.Memory* %loadMem_46e423, %struct.Memory** %MEMORY
  br label %block_.L_46e1a6

block_.L_46e428:                                  ; preds = %block_.L_46e1a6
  %loadMem_46e428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %3060 to i64*
  %3061 = load i64, i64* %PC.i603
  %3062 = add i64 %3061, 8
  store i64 %3062, i64* %PC.i603
  %3063 = load i32, i32* bitcast (%G_0xab0fc0_type* @G_0xab0fc0 to i32*)
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3064, align 1
  %3065 = and i32 %3063, 255
  %3066 = call i32 @llvm.ctpop.i32(i32 %3065)
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  %3069 = xor i8 %3068, 1
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3069, i8* %3070, align 1
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3071, align 1
  %3072 = icmp eq i32 %3063, 0
  %3073 = zext i1 %3072 to i8
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3073, i8* %3074, align 1
  %3075 = lshr i32 %3063, 31
  %3076 = trunc i32 %3075 to i8
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3076, i8* %3077, align 1
  %3078 = lshr i32 %3063, 31
  %3079 = xor i32 %3075, %3078
  %3080 = add i32 %3079, %3078
  %3081 = icmp eq i32 %3080, 2
  %3082 = zext i1 %3081 to i8
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3082, i8* %3083, align 1
  store %struct.Memory* %loadMem_46e428, %struct.Memory** %MEMORY
  %loadMem_46e430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 33
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3086 to i64*
  %3087 = load i64, i64* %PC.i602
  %3088 = add i64 %3087, 87
  %3089 = load i64, i64* %PC.i602
  %3090 = add i64 %3089, 6
  %3091 = load i64, i64* %PC.i602
  %3092 = add i64 %3091, 6
  store i64 %3092, i64* %PC.i602
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3094 = load i8, i8* %3093, align 1
  store i8 %3094, i8* %BRANCH_TAKEN, align 1
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3096 = icmp ne i8 %3094, 0
  %3097 = select i1 %3096, i64 %3088, i64 %3090
  store i64 %3097, i64* %3095, align 8
  store %struct.Memory* %loadMem_46e430, %struct.Memory** %MEMORY
  %loadBr_46e430 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e430 = icmp eq i8 %loadBr_46e430, 1
  br i1 %cmpBr_46e430, label %block_.L_46e487, label %block_46e436

block_46e436:                                     ; preds = %block_.L_46e428
  %loadMem_46e436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 33
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %3100 to i64*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 1
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %3103 to i64*
  %3104 = load i64, i64* %PC.i600
  %3105 = add i64 %3104, 7
  store i64 %3105, i64* %PC.i600
  %3106 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %3107 = zext i32 %3106 to i64
  store i64 %3107, i64* %RAX.i601, align 8
  store %struct.Memory* %loadMem_46e436, %struct.Memory** %MEMORY
  %loadMem_46e43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 33
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3110 to i64*
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 1
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %3113 to i64*
  %3114 = load i64, i64* %RAX.i599
  %3115 = load i64, i64* %PC.i598
  %3116 = add i64 %3115, 5
  store i64 %3116, i64* %PC.i598
  %3117 = and i64 65536, %3114
  %3118 = trunc i64 %3117 to i32
  store i64 %3117, i64* %RAX.i599, align 8
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3119, align 1
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3120, align 1
  %3121 = icmp eq i32 %3118, 0
  %3122 = zext i1 %3121 to i8
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3122, i8* %3123, align 1
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3124, align 1
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3125, align 1
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3126, align 1
  store %struct.Memory* %loadMem_46e43d, %struct.Memory** %MEMORY
  %loadMem_46e442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 33
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %3129 to i64*
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 1
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %EAX.i597 = bitcast %union.anon* %3132 to i32*
  %3133 = load i32, i32* %EAX.i597
  %3134 = zext i32 %3133 to i64
  %3135 = load i64, i64* %PC.i596
  %3136 = add i64 %3135, 3
  store i64 %3136, i64* %PC.i596
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3137, align 1
  %3138 = and i32 %3133, 255
  %3139 = call i32 @llvm.ctpop.i32(i32 %3138)
  %3140 = trunc i32 %3139 to i8
  %3141 = and i8 %3140, 1
  %3142 = xor i8 %3141, 1
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3142, i8* %3143, align 1
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3144, align 1
  %3145 = icmp eq i32 %3133, 0
  %3146 = zext i1 %3145 to i8
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3146, i8* %3147, align 1
  %3148 = lshr i32 %3133, 31
  %3149 = trunc i32 %3148 to i8
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3149, i8* %3150, align 1
  %3151 = lshr i32 %3133, 31
  %3152 = xor i32 %3148, %3151
  %3153 = add i32 %3152, %3151
  %3154 = icmp eq i32 %3153, 2
  %3155 = zext i1 %3154 to i8
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3155, i8* %3156, align 1
  store %struct.Memory* %loadMem_46e442, %struct.Memory** %MEMORY
  %loadMem_46e445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 33
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %3159 to i64*
  %3160 = load i64, i64* %PC.i595
  %3161 = add i64 %3160, 11
  %3162 = load i64, i64* %PC.i595
  %3163 = add i64 %3162, 6
  %3164 = load i64, i64* %PC.i595
  %3165 = add i64 %3164, 6
  store i64 %3165, i64* %PC.i595
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3167 = load i8, i8* %3166, align 1
  %3168 = icmp eq i8 %3167, 0
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %BRANCH_TAKEN, align 1
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3171 = select i1 %3168, i64 %3161, i64 %3163
  store i64 %3171, i64* %3170, align 8
  store %struct.Memory* %loadMem_46e445, %struct.Memory** %MEMORY
  %loadBr_46e445 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e445 = icmp eq i8 %loadBr_46e445, 1
  br i1 %cmpBr_46e445, label %block_.L_46e450, label %block_46e44b

block_46e44b:                                     ; preds = %block_46e436
  %loadMem_46e44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 33
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3174 to i64*
  %3175 = load i64, i64* %PC.i594
  %3176 = add i64 %3175, 55
  %3177 = load i64, i64* %PC.i594
  %3178 = add i64 %3177, 5
  store i64 %3178, i64* %PC.i594
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3176, i64* %3179, align 8
  store %struct.Memory* %loadMem_46e44b, %struct.Memory** %MEMORY
  br label %block_.L_46e482

block_.L_46e450:                                  ; preds = %block_46e436
  %loadMem_46e450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 33
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 11
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RDI.i593 = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %PC.i592
  %3187 = add i64 %3186, 10
  store i64 %3187, i64* %PC.i592
  store i64 ptrtoint (%G__0x58058f_type* @G__0x58058f to i64), i64* %RDI.i593, align 8
  store %struct.Memory* %loadMem_46e450, %struct.Memory** %MEMORY
  %loadMem_46e45a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 33
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %3190 to i64*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 1
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %3193 to i64*
  %3194 = load i64, i64* %PC.i590
  %3195 = add i64 %3194, 7
  store i64 %3195, i64* %PC.i590
  %3196 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %3197 = zext i32 %3196 to i64
  store i64 %3197, i64* %RAX.i591, align 8
  store %struct.Memory* %loadMem_46e45a, %struct.Memory** %MEMORY
  %loadMem_46e461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 33
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 1
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 15
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %3206 to i64*
  %3207 = load i64, i64* %RAX.i588
  %3208 = load i64, i64* %RBP.i589
  %3209 = sub i64 %3208, 1636
  %3210 = load i64, i64* %PC.i587
  %3211 = add i64 %3210, 6
  store i64 %3211, i64* %PC.i587
  %3212 = trunc i64 %3207 to i32
  %3213 = inttoptr i64 %3209 to i32*
  %3214 = load i32, i32* %3213
  %3215 = sub i32 %3212, %3214
  %3216 = zext i32 %3215 to i64
  store i64 %3216, i64* %RAX.i588, align 8
  %3217 = icmp ult i32 %3212, %3214
  %3218 = zext i1 %3217 to i8
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3218, i8* %3219, align 1
  %3220 = and i32 %3215, 255
  %3221 = call i32 @llvm.ctpop.i32(i32 %3220)
  %3222 = trunc i32 %3221 to i8
  %3223 = and i8 %3222, 1
  %3224 = xor i8 %3223, 1
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3224, i8* %3225, align 1
  %3226 = xor i32 %3214, %3212
  %3227 = xor i32 %3226, %3215
  %3228 = lshr i32 %3227, 4
  %3229 = trunc i32 %3228 to i8
  %3230 = and i8 %3229, 1
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3230, i8* %3231, align 1
  %3232 = icmp eq i32 %3215, 0
  %3233 = zext i1 %3232 to i8
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3233, i8* %3234, align 1
  %3235 = lshr i32 %3215, 31
  %3236 = trunc i32 %3235 to i8
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3236, i8* %3237, align 1
  %3238 = lshr i32 %3212, 31
  %3239 = lshr i32 %3214, 31
  %3240 = xor i32 %3239, %3238
  %3241 = xor i32 %3235, %3238
  %3242 = add i32 %3241, %3240
  %3243 = icmp eq i32 %3242, 2
  %3244 = zext i1 %3243 to i8
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3244, i8* %3245, align 1
  store %struct.Memory* %loadMem_46e461, %struct.Memory** %MEMORY
  %loadMem_46e467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 33
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 7
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RDX.i585 = bitcast %union.anon* %3251 to i64*
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 15
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %3254 to i64*
  %3255 = load i64, i64* %RBP.i586
  %3256 = sub i64 %3255, 1668
  %3257 = load i64, i64* %PC.i584
  %3258 = add i64 %3257, 6
  store i64 %3258, i64* %PC.i584
  %3259 = inttoptr i64 %3256 to i32*
  %3260 = load i32, i32* %3259
  %3261 = zext i32 %3260 to i64
  store i64 %3261, i64* %RDX.i585, align 8
  store %struct.Memory* %loadMem_46e467, %struct.Memory** %MEMORY
  %loadMem_46e46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 33
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 5
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RCX.i582 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 15
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %3270 to i64*
  %3271 = load i64, i64* %RBP.i583
  %3272 = sub i64 %3271, 1672
  %3273 = load i64, i64* %PC.i581
  %3274 = add i64 %3273, 6
  store i64 %3274, i64* %PC.i581
  %3275 = inttoptr i64 %3272 to i32*
  %3276 = load i32, i32* %3275
  %3277 = zext i32 %3276 to i64
  store i64 %3277, i64* %RCX.i582, align 8
  store %struct.Memory* %loadMem_46e46d, %struct.Memory** %MEMORY
  %loadMem_46e473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 1
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %EAX.i579 = bitcast %union.anon* %3283 to i32*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 9
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %RSI.i580 = bitcast %union.anon* %3286 to i64*
  %3287 = load i32, i32* %EAX.i579
  %3288 = zext i32 %3287 to i64
  %3289 = load i64, i64* %PC.i578
  %3290 = add i64 %3289, 2
  store i64 %3290, i64* %PC.i578
  %3291 = and i64 %3288, 4294967295
  store i64 %3291, i64* %RSI.i580, align 8
  store %struct.Memory* %loadMem_46e473, %struct.Memory** %MEMORY
  %loadMem_46e475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 33
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 1
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %3298 = bitcast %union.anon* %3297 to %struct.anon.2*
  %AL.i577 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3298, i32 0, i32 0
  %3299 = load i64, i64* %PC.i576
  %3300 = add i64 %3299, 2
  store i64 %3300, i64* %PC.i576
  store i8 0, i8* %AL.i577, align 1
  store %struct.Memory* %loadMem_46e475, %struct.Memory** %MEMORY
  %loadMem1_46e477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 33
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3303 to i64*
  %3304 = load i64, i64* %PC.i575
  %3305 = add i64 %3304, -116423
  %3306 = load i64, i64* %PC.i575
  %3307 = add i64 %3306, 5
  %3308 = load i64, i64* %PC.i575
  %3309 = add i64 %3308, 5
  store i64 %3309, i64* %PC.i575
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3311 = load i64, i64* %3310, align 8
  %3312 = add i64 %3311, -8
  %3313 = inttoptr i64 %3312 to i64*
  store i64 %3307, i64* %3313
  store i64 %3312, i64* %3310, align 8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3305, i64* %3314, align 8
  store %struct.Memory* %loadMem1_46e477, %struct.Memory** %MEMORY
  %loadMem2_46e477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e477 = load i64, i64* %3
  %call2_46e477 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_46e477, %struct.Memory* %loadMem2_46e477)
  store %struct.Memory* %call2_46e477, %struct.Memory** %MEMORY
  %loadMem_46e47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 1
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %EAX.i573 = bitcast %union.anon* %3320 to i32*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 15
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %3323 to i64*
  %3324 = load i64, i64* %RBP.i574
  %3325 = sub i64 %3324, 1696
  %3326 = load i32, i32* %EAX.i573
  %3327 = zext i32 %3326 to i64
  %3328 = load i64, i64* %PC.i572
  %3329 = add i64 %3328, 6
  store i64 %3329, i64* %PC.i572
  %3330 = inttoptr i64 %3325 to i32*
  store i32 %3326, i32* %3330
  store %struct.Memory* %loadMem_46e47c, %struct.Memory** %MEMORY
  br label %block_.L_46e482

block_.L_46e482:                                  ; preds = %block_.L_46e450, %block_46e44b
  %loadMem_46e482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %3333 to i64*
  %3334 = load i64, i64* %PC.i571
  %3335 = add i64 %3334, 86
  %3336 = load i64, i64* %PC.i571
  %3337 = add i64 %3336, 5
  store i64 %3337, i64* %PC.i571
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3335, i64* %3338, align 8
  store %struct.Memory* %loadMem_46e482, %struct.Memory** %MEMORY
  br label %block_.L_46e4d8

block_.L_46e487:                                  ; preds = %block_.L_46e428
  %loadMem_46e487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 33
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 1
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %3344 to i64*
  %3345 = load i64, i64* %PC.i569
  %3346 = add i64 %3345, 7
  store i64 %3346, i64* %PC.i569
  %3347 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %3348 = zext i32 %3347 to i64
  store i64 %3348, i64* %RAX.i570, align 8
  store %struct.Memory* %loadMem_46e487, %struct.Memory** %MEMORY
  %loadMem_46e48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 33
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3351 to i64*
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 1
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %3354 to i64*
  %3355 = load i64, i64* %RAX.i568
  %3356 = load i64, i64* %PC.i567
  %3357 = add i64 %3356, 5
  store i64 %3357, i64* %PC.i567
  %3358 = and i64 65536, %3355
  %3359 = trunc i64 %3358 to i32
  store i64 %3358, i64* %RAX.i568, align 8
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3360, align 1
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3361, align 1
  %3362 = icmp eq i32 %3359, 0
  %3363 = zext i1 %3362 to i8
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3363, i8* %3364, align 1
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3365, align 1
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3366, align 1
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3367, align 1
  store %struct.Memory* %loadMem_46e48e, %struct.Memory** %MEMORY
  %loadMem_46e493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3369 = getelementptr inbounds %struct.GPR, %struct.GPR* %3368, i32 0, i32 33
  %3370 = getelementptr inbounds %struct.Reg, %struct.Reg* %3369, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3370 to i64*
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 1
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %EAX.i566 = bitcast %union.anon* %3373 to i32*
  %3374 = load i32, i32* %EAX.i566
  %3375 = zext i32 %3374 to i64
  %3376 = load i64, i64* %PC.i565
  %3377 = add i64 %3376, 3
  store i64 %3377, i64* %PC.i565
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3378, align 1
  %3379 = and i32 %3374, 255
  %3380 = call i32 @llvm.ctpop.i32(i32 %3379)
  %3381 = trunc i32 %3380 to i8
  %3382 = and i8 %3381, 1
  %3383 = xor i8 %3382, 1
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3383, i8* %3384, align 1
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3385, align 1
  %3386 = icmp eq i32 %3374, 0
  %3387 = zext i1 %3386 to i8
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3387, i8* %3388, align 1
  %3389 = lshr i32 %3374, 31
  %3390 = trunc i32 %3389 to i8
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3390, i8* %3391, align 1
  %3392 = lshr i32 %3374, 31
  %3393 = xor i32 %3389, %3392
  %3394 = add i32 %3393, %3392
  %3395 = icmp eq i32 %3394, 2
  %3396 = zext i1 %3395 to i8
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3396, i8* %3397, align 1
  store %struct.Memory* %loadMem_46e493, %struct.Memory** %MEMORY
  %loadMem_46e496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 33
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %3400 to i64*
  %3401 = load i64, i64* %PC.i564
  %3402 = add i64 %3401, 11
  %3403 = load i64, i64* %PC.i564
  %3404 = add i64 %3403, 6
  %3405 = load i64, i64* %PC.i564
  %3406 = add i64 %3405, 6
  store i64 %3406, i64* %PC.i564
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3408 = load i8, i8* %3407, align 1
  %3409 = icmp eq i8 %3408, 0
  %3410 = zext i1 %3409 to i8
  store i8 %3410, i8* %BRANCH_TAKEN, align 1
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3412 = select i1 %3409, i64 %3402, i64 %3404
  store i64 %3412, i64* %3411, align 8
  store %struct.Memory* %loadMem_46e496, %struct.Memory** %MEMORY
  %loadBr_46e496 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e496 = icmp eq i8 %loadBr_46e496, 1
  br i1 %cmpBr_46e496, label %block_.L_46e4a1, label %block_46e49c

block_46e49c:                                     ; preds = %block_.L_46e487
  %loadMem_46e49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 33
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %3415 to i64*
  %3416 = load i64, i64* %PC.i563
  %3417 = add i64 %3416, 55
  %3418 = load i64, i64* %PC.i563
  %3419 = add i64 %3418, 5
  store i64 %3419, i64* %PC.i563
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3417, i64* %3420, align 8
  store %struct.Memory* %loadMem_46e49c, %struct.Memory** %MEMORY
  br label %block_.L_46e4d3

block_.L_46e4a1:                                  ; preds = %block_.L_46e487
  %loadMem_46e4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 33
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 11
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RDI.i562 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %PC.i561
  %3428 = add i64 %3427, 10
  store i64 %3428, i64* %PC.i561
  store i64 ptrtoint (%G__0x5805b3_type* @G__0x5805b3 to i64), i64* %RDI.i562, align 8
  store %struct.Memory* %loadMem_46e4a1, %struct.Memory** %MEMORY
  %loadMem_46e4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 1
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %3434 to i64*
  %3435 = load i64, i64* %PC.i559
  %3436 = add i64 %3435, 7
  store i64 %3436, i64* %PC.i559
  %3437 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %3438 = zext i32 %3437 to i64
  store i64 %3438, i64* %RAX.i560, align 8
  store %struct.Memory* %loadMem_46e4ab, %struct.Memory** %MEMORY
  %loadMem_46e4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 33
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3441 to i64*
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 1
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %3444 to i64*
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 15
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %3447 to i64*
  %3448 = load i64, i64* %RAX.i557
  %3449 = load i64, i64* %RBP.i558
  %3450 = sub i64 %3449, 1636
  %3451 = load i64, i64* %PC.i556
  %3452 = add i64 %3451, 6
  store i64 %3452, i64* %PC.i556
  %3453 = trunc i64 %3448 to i32
  %3454 = inttoptr i64 %3450 to i32*
  %3455 = load i32, i32* %3454
  %3456 = sub i32 %3453, %3455
  %3457 = zext i32 %3456 to i64
  store i64 %3457, i64* %RAX.i557, align 8
  %3458 = icmp ult i32 %3453, %3455
  %3459 = zext i1 %3458 to i8
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3459, i8* %3460, align 1
  %3461 = and i32 %3456, 255
  %3462 = call i32 @llvm.ctpop.i32(i32 %3461)
  %3463 = trunc i32 %3462 to i8
  %3464 = and i8 %3463, 1
  %3465 = xor i8 %3464, 1
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3465, i8* %3466, align 1
  %3467 = xor i32 %3455, %3453
  %3468 = xor i32 %3467, %3456
  %3469 = lshr i32 %3468, 4
  %3470 = trunc i32 %3469 to i8
  %3471 = and i8 %3470, 1
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3471, i8* %3472, align 1
  %3473 = icmp eq i32 %3456, 0
  %3474 = zext i1 %3473 to i8
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3474, i8* %3475, align 1
  %3476 = lshr i32 %3456, 31
  %3477 = trunc i32 %3476 to i8
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3477, i8* %3478, align 1
  %3479 = lshr i32 %3453, 31
  %3480 = lshr i32 %3455, 31
  %3481 = xor i32 %3480, %3479
  %3482 = xor i32 %3476, %3479
  %3483 = add i32 %3482, %3481
  %3484 = icmp eq i32 %3483, 2
  %3485 = zext i1 %3484 to i8
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3485, i8* %3486, align 1
  store %struct.Memory* %loadMem_46e4b2, %struct.Memory** %MEMORY
  %loadMem_46e4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 33
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3489 to i64*
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 7
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %RDX.i554 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 15
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %RBP.i555
  %3497 = sub i64 %3496, 1664
  %3498 = load i64, i64* %PC.i553
  %3499 = add i64 %3498, 6
  store i64 %3499, i64* %PC.i553
  %3500 = inttoptr i64 %3497 to i32*
  %3501 = load i32, i32* %3500
  %3502 = zext i32 %3501 to i64
  store i64 %3502, i64* %RDX.i554, align 8
  store %struct.Memory* %loadMem_46e4b8, %struct.Memory** %MEMORY
  %loadMem_46e4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 33
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %3505 to i64*
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 5
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 15
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %3511 to i64*
  %3512 = load i64, i64* %RBP.i552
  %3513 = sub i64 %3512, 1660
  %3514 = load i64, i64* %PC.i550
  %3515 = add i64 %3514, 6
  store i64 %3515, i64* %PC.i550
  %3516 = inttoptr i64 %3513 to i32*
  %3517 = load i32, i32* %3516
  %3518 = zext i32 %3517 to i64
  store i64 %3518, i64* %RCX.i551, align 8
  store %struct.Memory* %loadMem_46e4be, %struct.Memory** %MEMORY
  %loadMem_46e4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 33
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 1
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %EAX.i548 = bitcast %union.anon* %3524 to i32*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 9
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RSI.i549 = bitcast %union.anon* %3527 to i64*
  %3528 = load i32, i32* %EAX.i548
  %3529 = zext i32 %3528 to i64
  %3530 = load i64, i64* %PC.i547
  %3531 = add i64 %3530, 2
  store i64 %3531, i64* %PC.i547
  %3532 = and i64 %3529, 4294967295
  store i64 %3532, i64* %RSI.i549, align 8
  store %struct.Memory* %loadMem_46e4c4, %struct.Memory** %MEMORY
  %loadMem_46e4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 33
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3535 to i64*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 1
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %3539 = bitcast %union.anon* %3538 to %struct.anon.2*
  %AL.i546 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3539, i32 0, i32 0
  %3540 = load i64, i64* %PC.i545
  %3541 = add i64 %3540, 2
  store i64 %3541, i64* %PC.i545
  store i8 0, i8* %AL.i546, align 1
  store %struct.Memory* %loadMem_46e4c6, %struct.Memory** %MEMORY
  %loadMem1_46e4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 33
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %3544 to i64*
  %3545 = load i64, i64* %PC.i544
  %3546 = add i64 %3545, -116504
  %3547 = load i64, i64* %PC.i544
  %3548 = add i64 %3547, 5
  %3549 = load i64, i64* %PC.i544
  %3550 = add i64 %3549, 5
  store i64 %3550, i64* %PC.i544
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3552 = load i64, i64* %3551, align 8
  %3553 = add i64 %3552, -8
  %3554 = inttoptr i64 %3553 to i64*
  store i64 %3548, i64* %3554
  store i64 %3553, i64* %3551, align 8
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3546, i64* %3555, align 8
  store %struct.Memory* %loadMem1_46e4c8, %struct.Memory** %MEMORY
  %loadMem2_46e4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e4c8 = load i64, i64* %3
  %call2_46e4c8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_46e4c8, %struct.Memory* %loadMem2_46e4c8)
  store %struct.Memory* %call2_46e4c8, %struct.Memory** %MEMORY
  %loadMem_46e4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 33
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 1
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %EAX.i542 = bitcast %union.anon* %3561 to i32*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 15
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %3564 to i64*
  %3565 = load i64, i64* %RBP.i543
  %3566 = sub i64 %3565, 1700
  %3567 = load i32, i32* %EAX.i542
  %3568 = zext i32 %3567 to i64
  %3569 = load i64, i64* %PC.i541
  %3570 = add i64 %3569, 6
  store i64 %3570, i64* %PC.i541
  %3571 = inttoptr i64 %3566 to i32*
  store i32 %3567, i32* %3571
  store %struct.Memory* %loadMem_46e4cd, %struct.Memory** %MEMORY
  br label %block_.L_46e4d3

block_.L_46e4d3:                                  ; preds = %block_.L_46e4a1, %block_46e49c
  %loadMem_46e4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 33
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3574 to i64*
  %3575 = load i64, i64* %PC.i540
  %3576 = add i64 %3575, 5
  %3577 = load i64, i64* %PC.i540
  %3578 = add i64 %3577, 5
  store i64 %3578, i64* %PC.i540
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3576, i64* %3579, align 8
  store %struct.Memory* %loadMem_46e4d3, %struct.Memory** %MEMORY
  br label %block_.L_46e4d8

block_.L_46e4d8:                                  ; preds = %block_.L_46e4d3, %block_.L_46e482
  %loadMem_46e4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 33
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %PC.i539
  %3584 = add i64 %3583, 5
  %3585 = load i64, i64* %PC.i539
  %3586 = add i64 %3585, 5
  store i64 %3586, i64* %PC.i539
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3584, i64* %3587, align 8
  store %struct.Memory* %loadMem_46e4d8, %struct.Memory** %MEMORY
  br label %block_.L_46e4dd

block_.L_46e4dd:                                  ; preds = %block_.L_46e4d8
  %loadMem_46e4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 33
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 1
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 15
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %3596 to i64*
  %3597 = load i64, i64* %RBP.i538
  %3598 = sub i64 %3597, 1636
  %3599 = load i64, i64* %PC.i536
  %3600 = add i64 %3599, 6
  store i64 %3600, i64* %PC.i536
  %3601 = inttoptr i64 %3598 to i32*
  %3602 = load i32, i32* %3601
  %3603 = zext i32 %3602 to i64
  store i64 %3603, i64* %RAX.i537, align 8
  store %struct.Memory* %loadMem_46e4dd, %struct.Memory** %MEMORY
  %loadMem_46e4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 33
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3606 to i64*
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 1
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %3609 to i64*
  %3610 = load i64, i64* %RAX.i535
  %3611 = load i64, i64* %PC.i534
  %3612 = add i64 %3611, 3
  store i64 %3612, i64* %PC.i534
  %3613 = trunc i64 %3610 to i32
  %3614 = add i32 1, %3613
  %3615 = zext i32 %3614 to i64
  store i64 %3615, i64* %RAX.i535, align 8
  %3616 = icmp ult i32 %3614, %3613
  %3617 = icmp ult i32 %3614, 1
  %3618 = or i1 %3616, %3617
  %3619 = zext i1 %3618 to i8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3619, i8* %3620, align 1
  %3621 = and i32 %3614, 255
  %3622 = call i32 @llvm.ctpop.i32(i32 %3621)
  %3623 = trunc i32 %3622 to i8
  %3624 = and i8 %3623, 1
  %3625 = xor i8 %3624, 1
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3625, i8* %3626, align 1
  %3627 = xor i64 1, %3610
  %3628 = trunc i64 %3627 to i32
  %3629 = xor i32 %3628, %3614
  %3630 = lshr i32 %3629, 4
  %3631 = trunc i32 %3630 to i8
  %3632 = and i8 %3631, 1
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3632, i8* %3633, align 1
  %3634 = icmp eq i32 %3614, 0
  %3635 = zext i1 %3634 to i8
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3635, i8* %3636, align 1
  %3637 = lshr i32 %3614, 31
  %3638 = trunc i32 %3637 to i8
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3638, i8* %3639, align 1
  %3640 = lshr i32 %3613, 31
  %3641 = xor i32 %3637, %3640
  %3642 = add i32 %3641, %3637
  %3643 = icmp eq i32 %3642, 2
  %3644 = zext i1 %3643 to i8
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3644, i8* %3645, align 1
  store %struct.Memory* %loadMem_46e4e3, %struct.Memory** %MEMORY
  %loadMem_46e4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 1
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %EAX.i532 = bitcast %union.anon* %3651 to i32*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 15
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3654 to i64*
  %3655 = load i64, i64* %RBP.i533
  %3656 = sub i64 %3655, 1636
  %3657 = load i32, i32* %EAX.i532
  %3658 = zext i32 %3657 to i64
  %3659 = load i64, i64* %PC.i531
  %3660 = add i64 %3659, 6
  store i64 %3660, i64* %PC.i531
  %3661 = inttoptr i64 %3656 to i32*
  store i32 %3657, i32* %3661
  store %struct.Memory* %loadMem_46e4e6, %struct.Memory** %MEMORY
  %loadMem_46e4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 33
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %3664 to i64*
  %3665 = load i64, i64* %PC.i530
  %3666 = add i64 %3665, -907
  %3667 = load i64, i64* %PC.i530
  %3668 = add i64 %3667, 5
  store i64 %3668, i64* %PC.i530
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3666, i64* %3669, align 8
  store %struct.Memory* %loadMem_46e4ec, %struct.Memory** %MEMORY
  br label %block_.L_46e161

block_.L_46e4f1:                                  ; preds = %block_.L_46e161
  %loadMem_46e4f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %3672 to i64*
  %3673 = load i64, i64* %PC.i529
  %3674 = add i64 %3673, 8
  store i64 %3674, i64* %PC.i529
  %3675 = load i32, i32* bitcast (%G_0xab0fc0_type* @G_0xab0fc0 to i32*)
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3676, align 1
  %3677 = and i32 %3675, 255
  %3678 = call i32 @llvm.ctpop.i32(i32 %3677)
  %3679 = trunc i32 %3678 to i8
  %3680 = and i8 %3679, 1
  %3681 = xor i8 %3680, 1
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3681, i8* %3682, align 1
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3683, align 1
  %3684 = icmp eq i32 %3675, 0
  %3685 = zext i1 %3684 to i8
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3685, i8* %3686, align 1
  %3687 = lshr i32 %3675, 31
  %3688 = trunc i32 %3687 to i8
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3688, i8* %3689, align 1
  %3690 = lshr i32 %3675, 31
  %3691 = xor i32 %3687, %3690
  %3692 = add i32 %3691, %3690
  %3693 = icmp eq i32 %3692, 2
  %3694 = zext i1 %3693 to i8
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3694, i8* %3695, align 1
  store %struct.Memory* %loadMem_46e4f1, %struct.Memory** %MEMORY
  %loadMem_46e4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 33
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3698 to i64*
  %3699 = load i64, i64* %PC.i528
  %3700 = add i64 %3699, 44
  %3701 = load i64, i64* %PC.i528
  %3702 = add i64 %3701, 6
  %3703 = load i64, i64* %PC.i528
  %3704 = add i64 %3703, 6
  store i64 %3704, i64* %PC.i528
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3706 = load i8, i8* %3705, align 1
  store i8 %3706, i8* %BRANCH_TAKEN, align 1
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3708 = icmp ne i8 %3706, 0
  %3709 = select i1 %3708, i64 %3700, i64 %3702
  store i64 %3709, i64* %3707, align 8
  store %struct.Memory* %loadMem_46e4f9, %struct.Memory** %MEMORY
  %loadBr_46e4f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e4f9 = icmp eq i8 %loadBr_46e4f9, 1
  br i1 %cmpBr_46e4f9, label %block_.L_46e525, label %block_46e4ff

block_46e4ff:                                     ; preds = %block_.L_46e4f1
  %loadMem_46e4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 33
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3712 to i64*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 15
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3717 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3716, i64 0, i64 0
  %YMM0.i527 = bitcast %union.VectorReg* %3717 to %"class.std::bitset"*
  %3718 = bitcast %"class.std::bitset"* %YMM0.i527 to i8*
  %3719 = load i64, i64* %RBP.i526
  %3720 = sub i64 %3719, 1628
  %3721 = load i64, i64* %PC.i525
  %3722 = add i64 %3721, 8
  store i64 %3722, i64* %PC.i525
  %3723 = inttoptr i64 %3720 to float*
  %3724 = load float, float* %3723
  %3725 = bitcast i8* %3718 to float*
  store float %3724, float* %3725, align 1
  %3726 = getelementptr inbounds i8, i8* %3718, i64 4
  %3727 = bitcast i8* %3726 to float*
  store float 0.000000e+00, float* %3727, align 1
  %3728 = getelementptr inbounds i8, i8* %3718, i64 8
  %3729 = bitcast i8* %3728 to float*
  store float 0.000000e+00, float* %3729, align 1
  %3730 = getelementptr inbounds i8, i8* %3718, i64 12
  %3731 = bitcast i8* %3730 to float*
  store float 0.000000e+00, float* %3731, align 1
  store %struct.Memory* %loadMem_46e4ff, %struct.Memory** %MEMORY
  %loadMem_46e507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 33
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 15
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3739 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3738, i64 0, i64 0
  %YMM0.i524 = bitcast %union.VectorReg* %3739 to %"class.std::bitset"*
  %3740 = bitcast %"class.std::bitset"* %YMM0.i524 to i8*
  %3741 = bitcast %"class.std::bitset"* %YMM0.i524 to i8*
  %3742 = load i64, i64* %RBP.i523
  %3743 = sub i64 %3742, 1632
  %3744 = load i64, i64* %PC.i522
  %3745 = add i64 %3744, 8
  store i64 %3745, i64* %PC.i522
  %3746 = bitcast i8* %3741 to <2 x float>*
  %3747 = load <2 x float>, <2 x float>* %3746, align 1
  %3748 = getelementptr inbounds i8, i8* %3741, i64 8
  %3749 = bitcast i8* %3748 to <2 x i32>*
  %3750 = load <2 x i32>, <2 x i32>* %3749, align 1
  %3751 = inttoptr i64 %3743 to float*
  %3752 = load float, float* %3751
  %3753 = extractelement <2 x float> %3747, i32 0
  %3754 = fsub float %3753, %3752
  %3755 = bitcast i8* %3740 to float*
  store float %3754, float* %3755, align 1
  %3756 = bitcast <2 x float> %3747 to <2 x i32>
  %3757 = extractelement <2 x i32> %3756, i32 1
  %3758 = getelementptr inbounds i8, i8* %3740, i64 4
  %3759 = bitcast i8* %3758 to i32*
  store i32 %3757, i32* %3759, align 1
  %3760 = extractelement <2 x i32> %3750, i32 0
  %3761 = getelementptr inbounds i8, i8* %3740, i64 8
  %3762 = bitcast i8* %3761 to i32*
  store i32 %3760, i32* %3762, align 1
  %3763 = extractelement <2 x i32> %3750, i32 1
  %3764 = getelementptr inbounds i8, i8* %3740, i64 12
  %3765 = bitcast i8* %3764 to i32*
  store i32 %3763, i32* %3765, align 1
  store %struct.Memory* %loadMem_46e507, %struct.Memory** %MEMORY
  %loadMem_46e50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 33
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3769, i64 0, i64 0
  %YMM0.i521 = bitcast %union.VectorReg* %3770 to %"class.std::bitset"*
  %3771 = bitcast %"class.std::bitset"* %YMM0.i521 to i8*
  %3772 = bitcast %"class.std::bitset"* %YMM0.i521 to i8*
  %3773 = load i64, i64* %PC.i520
  %3774 = add i64 %3773, 9
  store i64 %3774, i64* %PC.i520
  %3775 = bitcast i8* %3772 to <2 x float>*
  %3776 = load <2 x float>, <2 x float>* %3775, align 1
  %3777 = getelementptr inbounds i8, i8* %3772, i64 8
  %3778 = bitcast i8* %3777 to <2 x i32>*
  %3779 = load <2 x i32>, <2 x i32>* %3778, align 1
  %3780 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*)
  %3781 = extractelement <2 x float> %3776, i32 0
  %3782 = fadd float %3781, %3780
  %3783 = bitcast i8* %3771 to float*
  store float %3782, float* %3783, align 1
  %3784 = bitcast <2 x float> %3776 to <2 x i32>
  %3785 = extractelement <2 x i32> %3784, i32 1
  %3786 = getelementptr inbounds i8, i8* %3771, i64 4
  %3787 = bitcast i8* %3786 to i32*
  store i32 %3785, i32* %3787, align 1
  %3788 = extractelement <2 x i32> %3779, i32 0
  %3789 = getelementptr inbounds i8, i8* %3771, i64 8
  %3790 = bitcast i8* %3789 to i32*
  store i32 %3788, i32* %3790, align 1
  %3791 = extractelement <2 x i32> %3779, i32 1
  %3792 = getelementptr inbounds i8, i8* %3771, i64 12
  %3793 = bitcast i8* %3792 to i32*
  store i32 %3791, i32* %3793, align 1
  store %struct.Memory* %loadMem_46e50f, %struct.Memory** %MEMORY
  %loadMem_46e518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 33
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3796 to i64*
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 15
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3801 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3800, i64 0, i64 0
  %XMM0.i519 = bitcast %union.VectorReg* %3801 to %union.vec128_t*
  %3802 = load i64, i64* %RBP.i518
  %3803 = sub i64 %3802, 1648
  %3804 = bitcast %union.vec128_t* %XMM0.i519 to i8*
  %3805 = load i64, i64* %PC.i517
  %3806 = add i64 %3805, 8
  store i64 %3806, i64* %PC.i517
  %3807 = bitcast i8* %3804 to <2 x float>*
  %3808 = load <2 x float>, <2 x float>* %3807, align 1
  %3809 = extractelement <2 x float> %3808, i32 0
  %3810 = inttoptr i64 %3803 to float*
  store float %3809, float* %3810
  store %struct.Memory* %loadMem_46e518, %struct.Memory** %MEMORY
  %loadMem_46e520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 33
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %3813 to i64*
  %3814 = load i64, i64* %PC.i516
  %3815 = add i64 %3814, 136
  %3816 = load i64, i64* %PC.i516
  %3817 = add i64 %3816, 5
  store i64 %3817, i64* %PC.i516
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3815, i64* %3818, align 8
  store %struct.Memory* %loadMem_46e520, %struct.Memory** %MEMORY
  br label %block_.L_46e5a8

block_.L_46e525:                                  ; preds = %block_.L_46e4f1
  %loadMem_46e525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 1
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %3824 to i64*
  %3825 = load i64, i64* %PC.i514
  %3826 = add i64 %3825, 7
  store i64 %3826, i64* %PC.i514
  %3827 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %3828 = zext i32 %3827 to i64
  store i64 %3828, i64* %RAX.i515, align 8
  store %struct.Memory* %loadMem_46e525, %struct.Memory** %MEMORY
  %loadMem_46e52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 33
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 1
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %3834 to i64*
  %3835 = load i64, i64* %RAX.i513
  %3836 = load i64, i64* %PC.i512
  %3837 = add i64 %3836, 5
  store i64 %3837, i64* %PC.i512
  %3838 = and i64 65536, %3835
  %3839 = trunc i64 %3838 to i32
  store i64 %3838, i64* %RAX.i513, align 8
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3840, align 1
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3841, align 1
  %3842 = icmp eq i32 %3839, 0
  %3843 = zext i1 %3842 to i8
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3843, i8* %3844, align 1
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3845, align 1
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3846, align 1
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3847, align 1
  store %struct.Memory* %loadMem_46e52c, %struct.Memory** %MEMORY
  %loadMem_46e531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 33
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 1
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %EAX.i511 = bitcast %union.anon* %3853 to i32*
  %3854 = load i32, i32* %EAX.i511
  %3855 = zext i32 %3854 to i64
  %3856 = load i64, i64* %PC.i510
  %3857 = add i64 %3856, 3
  store i64 %3857, i64* %PC.i510
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3858, align 1
  %3859 = and i32 %3854, 255
  %3860 = call i32 @llvm.ctpop.i32(i32 %3859)
  %3861 = trunc i32 %3860 to i8
  %3862 = and i8 %3861, 1
  %3863 = xor i8 %3862, 1
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3863, i8* %3864, align 1
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3865, align 1
  %3866 = icmp eq i32 %3854, 0
  %3867 = zext i1 %3866 to i8
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3867, i8* %3868, align 1
  %3869 = lshr i32 %3854, 31
  %3870 = trunc i32 %3869 to i8
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3870, i8* %3871, align 1
  %3872 = lshr i32 %3854, 31
  %3873 = xor i32 %3869, %3872
  %3874 = add i32 %3873, %3872
  %3875 = icmp eq i32 %3874, 2
  %3876 = zext i1 %3875 to i8
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3876, i8* %3877, align 1
  store %struct.Memory* %loadMem_46e531, %struct.Memory** %MEMORY
  %loadMem_46e534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %3880 to i64*
  %3881 = load i64, i64* %PC.i509
  %3882 = add i64 %3881, 11
  %3883 = load i64, i64* %PC.i509
  %3884 = add i64 %3883, 6
  %3885 = load i64, i64* %PC.i509
  %3886 = add i64 %3885, 6
  store i64 %3886, i64* %PC.i509
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3888 = load i8, i8* %3887, align 1
  %3889 = icmp eq i8 %3888, 0
  %3890 = zext i1 %3889 to i8
  store i8 %3890, i8* %BRANCH_TAKEN, align 1
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3892 = select i1 %3889, i64 %3882, i64 %3884
  store i64 %3892, i64* %3891, align 8
  store %struct.Memory* %loadMem_46e534, %struct.Memory** %MEMORY
  %loadBr_46e534 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e534 = icmp eq i8 %loadBr_46e534, 1
  br i1 %cmpBr_46e534, label %block_.L_46e53f, label %block_46e53a

block_46e53a:                                     ; preds = %block_.L_46e525
  %loadMem_46e53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3895 to i64*
  %3896 = load i64, i64* %PC.i508
  %3897 = add i64 %3896, 51
  %3898 = load i64, i64* %PC.i508
  %3899 = add i64 %3898, 5
  store i64 %3899, i64* %PC.i508
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3897, i64* %3900, align 8
  store %struct.Memory* %loadMem_46e53a, %struct.Memory** %MEMORY
  br label %block_.L_46e56d

block_.L_46e53f:                                  ; preds = %block_.L_46e525
  %loadMem_46e53f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 33
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %3903 to i64*
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 11
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %RDI.i507 = bitcast %union.anon* %3906 to i64*
  %3907 = load i64, i64* %PC.i506
  %3908 = add i64 %3907, 10
  store i64 %3908, i64* %PC.i506
  store i64 ptrtoint (%G__0x5805dc_type* @G__0x5805dc to i64), i64* %RDI.i507, align 8
  store %struct.Memory* %loadMem_46e53f, %struct.Memory** %MEMORY
  %loadMem_46e549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 33
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3911 to i64*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 9
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %RSI.i505 = bitcast %union.anon* %3914 to i64*
  %3915 = load i64, i64* %PC.i504
  %3916 = add i64 %3915, 7
  store i64 %3916, i64* %PC.i504
  %3917 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*)
  %3918 = zext i32 %3917 to i64
  store i64 %3918, i64* %RSI.i505, align 8
  store %struct.Memory* %loadMem_46e549, %struct.Memory** %MEMORY
  %loadMem_46e550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 33
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %3921 to i64*
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 7
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %RDX.i503 = bitcast %union.anon* %3924 to i64*
  %3925 = load i64, i64* %PC.i502
  %3926 = add i64 %3925, 7
  store i64 %3926, i64* %PC.i502
  %3927 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*)
  %3928 = zext i32 %3927 to i64
  store i64 %3928, i64* %RDX.i503, align 8
  store %struct.Memory* %loadMem_46e550, %struct.Memory** %MEMORY
  %loadMem_46e557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 33
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3933 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3932, i64 0, i64 0
  %YMM0.i501 = bitcast %union.VectorReg* %3933 to %"class.std::bitset"*
  %3934 = bitcast %"class.std::bitset"* %YMM0.i501 to i8*
  %3935 = load i64, i64* %PC.i500
  %3936 = add i64 %3935, 9
  store i64 %3936, i64* %PC.i500
  %3937 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*)
  %3938 = fpext float %3937 to double
  %3939 = bitcast i8* %3934 to double*
  store double %3938, double* %3939, align 1
  store %struct.Memory* %loadMem_46e557, %struct.Memory** %MEMORY
  %loadMem_46e560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 33
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3942 to i64*
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 1
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %3946 = bitcast %union.anon* %3945 to %struct.anon.2*
  %AL.i499 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3946, i32 0, i32 0
  %3947 = load i64, i64* %PC.i498
  %3948 = add i64 %3947, 2
  store i64 %3948, i64* %PC.i498
  store i8 1, i8* %AL.i499, align 1
  store %struct.Memory* %loadMem_46e560, %struct.Memory** %MEMORY
  %loadMem1_46e562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 33
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3951 to i64*
  %3952 = load i64, i64* %PC.i497
  %3953 = add i64 %3952, -116658
  %3954 = load i64, i64* %PC.i497
  %3955 = add i64 %3954, 5
  %3956 = load i64, i64* %PC.i497
  %3957 = add i64 %3956, 5
  store i64 %3957, i64* %PC.i497
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3959 = load i64, i64* %3958, align 8
  %3960 = add i64 %3959, -8
  %3961 = inttoptr i64 %3960 to i64*
  store i64 %3955, i64* %3961
  store i64 %3960, i64* %3958, align 8
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3953, i64* %3962, align 8
  store %struct.Memory* %loadMem1_46e562, %struct.Memory** %MEMORY
  %loadMem2_46e562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e562 = load i64, i64* %3
  %call2_46e562 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_46e562, %struct.Memory* %loadMem2_46e562)
  store %struct.Memory* %call2_46e562, %struct.Memory** %MEMORY
  %loadMem_46e567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 33
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %3965 to i64*
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 1
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %EAX.i495 = bitcast %union.anon* %3968 to i32*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 15
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %3971 to i64*
  %3972 = load i64, i64* %RBP.i496
  %3973 = sub i64 %3972, 1704
  %3974 = load i32, i32* %EAX.i495
  %3975 = zext i32 %3974 to i64
  %3976 = load i64, i64* %PC.i494
  %3977 = add i64 %3976, 6
  store i64 %3977, i64* %PC.i494
  %3978 = inttoptr i64 %3973 to i32*
  store i32 %3974, i32* %3978
  store %struct.Memory* %loadMem_46e567, %struct.Memory** %MEMORY
  br label %block_.L_46e56d

block_.L_46e56d:                                  ; preds = %block_.L_46e53f, %block_46e53a
  %loadMem_46e56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 33
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %3981 to i64*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 15
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %3984 to i64*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3986 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3985, i64 0, i64 0
  %YMM0.i493 = bitcast %union.VectorReg* %3986 to %"class.std::bitset"*
  %3987 = bitcast %"class.std::bitset"* %YMM0.i493 to i8*
  %3988 = load i64, i64* %RBP.i492
  %3989 = sub i64 %3988, 1620
  %3990 = load i64, i64* %PC.i491
  %3991 = add i64 %3990, 8
  store i64 %3991, i64* %PC.i491
  %3992 = inttoptr i64 %3989 to float*
  %3993 = load float, float* %3992
  %3994 = bitcast i8* %3987 to float*
  store float %3993, float* %3994, align 1
  %3995 = getelementptr inbounds i8, i8* %3987, i64 4
  %3996 = bitcast i8* %3995 to float*
  store float 0.000000e+00, float* %3996, align 1
  %3997 = getelementptr inbounds i8, i8* %3987, i64 8
  %3998 = bitcast i8* %3997 to float*
  store float 0.000000e+00, float* %3998, align 1
  %3999 = getelementptr inbounds i8, i8* %3987, i64 12
  %4000 = bitcast i8* %3999 to float*
  store float 0.000000e+00, float* %4000, align 1
  store %struct.Memory* %loadMem_46e56d, %struct.Memory** %MEMORY
  %loadMem_46e575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 33
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4005 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4004, i64 0, i64 1
  %YMM1.i490 = bitcast %union.VectorReg* %4005 to %"class.std::bitset"*
  %4006 = bitcast %"class.std::bitset"* %YMM1.i490 to i8*
  %4007 = load i64, i64* %PC.i489
  %4008 = add i64 %4007, 9
  store i64 %4008, i64* %PC.i489
  %4009 = bitcast i8* %4006 to <2 x i32>*
  %4010 = load <2 x i32>, <2 x i32>* %4009, align 1
  %4011 = getelementptr inbounds i8, i8* %4006, i64 8
  %4012 = bitcast i8* %4011 to <2 x i32>*
  %4013 = load <2 x i32>, <2 x i32>* %4012, align 1
  %4014 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*)
  %4015 = sitofp i32 %4014 to float
  %4016 = bitcast i8* %4006 to float*
  store float %4015, float* %4016, align 1
  %4017 = extractelement <2 x i32> %4010, i32 1
  %4018 = getelementptr inbounds i8, i8* %4006, i64 4
  %4019 = bitcast i8* %4018 to i32*
  store i32 %4017, i32* %4019, align 1
  %4020 = extractelement <2 x i32> %4013, i32 0
  %4021 = bitcast i8* %4011 to i32*
  store i32 %4020, i32* %4021, align 1
  %4022 = extractelement <2 x i32> %4013, i32 1
  %4023 = getelementptr inbounds i8, i8* %4006, i64 12
  %4024 = bitcast i8* %4023 to i32*
  store i32 %4022, i32* %4024, align 1
  store %struct.Memory* %loadMem_46e575, %struct.Memory** %MEMORY
  %loadMem_46e57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 33
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %4027 to i64*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4029 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4028, i64 0, i64 0
  %YMM0.i487 = bitcast %union.VectorReg* %4029 to %"class.std::bitset"*
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4031 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4030, i64 0, i64 1
  %XMM1.i488 = bitcast %union.VectorReg* %4031 to %union.vec128_t*
  %4032 = bitcast %"class.std::bitset"* %YMM0.i487 to i8*
  %4033 = bitcast %"class.std::bitset"* %YMM0.i487 to i8*
  %4034 = bitcast %union.vec128_t* %XMM1.i488 to i8*
  %4035 = load i64, i64* %PC.i486
  %4036 = add i64 %4035, 4
  store i64 %4036, i64* %PC.i486
  %4037 = bitcast i8* %4033 to <2 x float>*
  %4038 = load <2 x float>, <2 x float>* %4037, align 1
  %4039 = getelementptr inbounds i8, i8* %4033, i64 8
  %4040 = bitcast i8* %4039 to <2 x i32>*
  %4041 = load <2 x i32>, <2 x i32>* %4040, align 1
  %4042 = bitcast i8* %4034 to <2 x float>*
  %4043 = load <2 x float>, <2 x float>* %4042, align 1
  %4044 = extractelement <2 x float> %4038, i32 0
  %4045 = extractelement <2 x float> %4043, i32 0
  %4046 = fadd float %4044, %4045
  %4047 = bitcast i8* %4032 to float*
  store float %4046, float* %4047, align 1
  %4048 = bitcast <2 x float> %4038 to <2 x i32>
  %4049 = extractelement <2 x i32> %4048, i32 1
  %4050 = getelementptr inbounds i8, i8* %4032, i64 4
  %4051 = bitcast i8* %4050 to i32*
  store i32 %4049, i32* %4051, align 1
  %4052 = extractelement <2 x i32> %4041, i32 0
  %4053 = getelementptr inbounds i8, i8* %4032, i64 8
  %4054 = bitcast i8* %4053 to i32*
  store i32 %4052, i32* %4054, align 1
  %4055 = extractelement <2 x i32> %4041, i32 1
  %4056 = getelementptr inbounds i8, i8* %4032, i64 12
  %4057 = bitcast i8* %4056 to i32*
  store i32 %4055, i32* %4057, align 1
  store %struct.Memory* %loadMem_46e57e, %struct.Memory** %MEMORY
  %loadMem_46e582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 33
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 15
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4065 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4064, i64 0, i64 0
  %YMM0.i485 = bitcast %union.VectorReg* %4065 to %"class.std::bitset"*
  %4066 = bitcast %"class.std::bitset"* %YMM0.i485 to i8*
  %4067 = bitcast %"class.std::bitset"* %YMM0.i485 to i8*
  %4068 = load i64, i64* %RBP.i484
  %4069 = sub i64 %4068, 1624
  %4070 = load i64, i64* %PC.i483
  %4071 = add i64 %4070, 8
  store i64 %4071, i64* %PC.i483
  %4072 = bitcast i8* %4067 to <2 x float>*
  %4073 = load <2 x float>, <2 x float>* %4072, align 1
  %4074 = getelementptr inbounds i8, i8* %4067, i64 8
  %4075 = bitcast i8* %4074 to <2 x i32>*
  %4076 = load <2 x i32>, <2 x i32>* %4075, align 1
  %4077 = inttoptr i64 %4069 to float*
  %4078 = load float, float* %4077
  %4079 = extractelement <2 x float> %4073, i32 0
  %4080 = fsub float %4079, %4078
  %4081 = bitcast i8* %4066 to float*
  store float %4080, float* %4081, align 1
  %4082 = bitcast <2 x float> %4073 to <2 x i32>
  %4083 = extractelement <2 x i32> %4082, i32 1
  %4084 = getelementptr inbounds i8, i8* %4066, i64 4
  %4085 = bitcast i8* %4084 to i32*
  store i32 %4083, i32* %4085, align 1
  %4086 = extractelement <2 x i32> %4076, i32 0
  %4087 = getelementptr inbounds i8, i8* %4066, i64 8
  %4088 = bitcast i8* %4087 to i32*
  store i32 %4086, i32* %4088, align 1
  %4089 = extractelement <2 x i32> %4076, i32 1
  %4090 = getelementptr inbounds i8, i8* %4066, i64 12
  %4091 = bitcast i8* %4090 to i32*
  store i32 %4089, i32* %4091, align 1
  store %struct.Memory* %loadMem_46e582, %struct.Memory** %MEMORY
  %loadMem_46e58a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 33
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4094 to i64*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4096 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4095, i64 0, i64 1
  %YMM1.i482 = bitcast %union.VectorReg* %4096 to %"class.std::bitset"*
  %4097 = bitcast %"class.std::bitset"* %YMM1.i482 to i8*
  %4098 = load i64, i64* %PC.i481
  %4099 = add i64 %4098, 9
  store i64 %4099, i64* %PC.i481
  %4100 = bitcast i8* %4097 to <2 x i32>*
  %4101 = load <2 x i32>, <2 x i32>* %4100, align 1
  %4102 = getelementptr inbounds i8, i8* %4097, i64 8
  %4103 = bitcast i8* %4102 to <2 x i32>*
  %4104 = load <2 x i32>, <2 x i32>* %4103, align 1
  %4105 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*)
  %4106 = sitofp i32 %4105 to float
  %4107 = bitcast i8* %4097 to float*
  store float %4106, float* %4107, align 1
  %4108 = extractelement <2 x i32> %4101, i32 1
  %4109 = getelementptr inbounds i8, i8* %4097, i64 4
  %4110 = bitcast i8* %4109 to i32*
  store i32 %4108, i32* %4110, align 1
  %4111 = extractelement <2 x i32> %4104, i32 0
  %4112 = bitcast i8* %4102 to i32*
  store i32 %4111, i32* %4112, align 1
  %4113 = extractelement <2 x i32> %4104, i32 1
  %4114 = getelementptr inbounds i8, i8* %4097, i64 12
  %4115 = bitcast i8* %4114 to i32*
  store i32 %4113, i32* %4115, align 1
  store %struct.Memory* %loadMem_46e58a, %struct.Memory** %MEMORY
  %loadMem_46e593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4120 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4119, i64 0, i64 0
  %YMM0.i479 = bitcast %union.VectorReg* %4120 to %"class.std::bitset"*
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4121, i64 0, i64 1
  %XMM1.i480 = bitcast %union.VectorReg* %4122 to %union.vec128_t*
  %4123 = bitcast %"class.std::bitset"* %YMM0.i479 to i8*
  %4124 = bitcast %"class.std::bitset"* %YMM0.i479 to i8*
  %4125 = bitcast %union.vec128_t* %XMM1.i480 to i8*
  %4126 = load i64, i64* %PC.i478
  %4127 = add i64 %4126, 4
  store i64 %4127, i64* %PC.i478
  %4128 = bitcast i8* %4124 to <2 x float>*
  %4129 = load <2 x float>, <2 x float>* %4128, align 1
  %4130 = getelementptr inbounds i8, i8* %4124, i64 8
  %4131 = bitcast i8* %4130 to <2 x i32>*
  %4132 = load <2 x i32>, <2 x i32>* %4131, align 1
  %4133 = bitcast i8* %4125 to <2 x float>*
  %4134 = load <2 x float>, <2 x float>* %4133, align 1
  %4135 = extractelement <2 x float> %4129, i32 0
  %4136 = extractelement <2 x float> %4134, i32 0
  %4137 = fsub float %4135, %4136
  %4138 = bitcast i8* %4123 to float*
  store float %4137, float* %4138, align 1
  %4139 = bitcast <2 x float> %4129 to <2 x i32>
  %4140 = extractelement <2 x i32> %4139, i32 1
  %4141 = getelementptr inbounds i8, i8* %4123, i64 4
  %4142 = bitcast i8* %4141 to i32*
  store i32 %4140, i32* %4142, align 1
  %4143 = extractelement <2 x i32> %4132, i32 0
  %4144 = getelementptr inbounds i8, i8* %4123, i64 8
  %4145 = bitcast i8* %4144 to i32*
  store i32 %4143, i32* %4145, align 1
  %4146 = extractelement <2 x i32> %4132, i32 1
  %4147 = getelementptr inbounds i8, i8* %4123, i64 12
  %4148 = bitcast i8* %4147 to i32*
  store i32 %4146, i32* %4148, align 1
  store %struct.Memory* %loadMem_46e593, %struct.Memory** %MEMORY
  %loadMem_46e597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 33
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4153 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4152, i64 0, i64 0
  %YMM0.i477 = bitcast %union.VectorReg* %4153 to %"class.std::bitset"*
  %4154 = bitcast %"class.std::bitset"* %YMM0.i477 to i8*
  %4155 = bitcast %"class.std::bitset"* %YMM0.i477 to i8*
  %4156 = load i64, i64* %PC.i476
  %4157 = add i64 %4156, 9
  store i64 %4157, i64* %PC.i476
  %4158 = bitcast i8* %4155 to <2 x float>*
  %4159 = load <2 x float>, <2 x float>* %4158, align 1
  %4160 = getelementptr inbounds i8, i8* %4155, i64 8
  %4161 = bitcast i8* %4160 to <2 x i32>*
  %4162 = load <2 x i32>, <2 x i32>* %4161, align 1
  %4163 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*)
  %4164 = extractelement <2 x float> %4159, i32 0
  %4165 = fadd float %4164, %4163
  %4166 = bitcast i8* %4154 to float*
  store float %4165, float* %4166, align 1
  %4167 = bitcast <2 x float> %4159 to <2 x i32>
  %4168 = extractelement <2 x i32> %4167, i32 1
  %4169 = getelementptr inbounds i8, i8* %4154, i64 4
  %4170 = bitcast i8* %4169 to i32*
  store i32 %4168, i32* %4170, align 1
  %4171 = extractelement <2 x i32> %4162, i32 0
  %4172 = getelementptr inbounds i8, i8* %4154, i64 8
  %4173 = bitcast i8* %4172 to i32*
  store i32 %4171, i32* %4173, align 1
  %4174 = extractelement <2 x i32> %4162, i32 1
  %4175 = getelementptr inbounds i8, i8* %4154, i64 12
  %4176 = bitcast i8* %4175 to i32*
  store i32 %4174, i32* %4176, align 1
  store %struct.Memory* %loadMem_46e597, %struct.Memory** %MEMORY
  %loadMem_46e5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 33
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %4179 to i64*
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 15
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %4182 to i64*
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4184 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4183, i64 0, i64 0
  %XMM0.i475 = bitcast %union.VectorReg* %4184 to %union.vec128_t*
  %4185 = load i64, i64* %RBP.i474
  %4186 = sub i64 %4185, 1648
  %4187 = bitcast %union.vec128_t* %XMM0.i475 to i8*
  %4188 = load i64, i64* %PC.i473
  %4189 = add i64 %4188, 8
  store i64 %4189, i64* %PC.i473
  %4190 = bitcast i8* %4187 to <2 x float>*
  %4191 = load <2 x float>, <2 x float>* %4190, align 1
  %4192 = extractelement <2 x float> %4191, i32 0
  %4193 = inttoptr i64 %4186 to float*
  store float %4192, float* %4193
  store %struct.Memory* %loadMem_46e5a0, %struct.Memory** %MEMORY
  br label %block_.L_46e5a8

block_.L_46e5a8:                                  ; preds = %block_.L_46e56d, %block_46e4ff
  %loadMem_46e5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 15
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %4199 to i64*
  %4200 = load i64, i64* %RBP.i472
  %4201 = sub i64 %4200, 1656
  %4202 = load i64, i64* %PC.i471
  %4203 = add i64 %4202, 7
  store i64 %4203, i64* %PC.i471
  %4204 = inttoptr i64 %4201 to i32*
  %4205 = load i32, i32* %4204
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4206, align 1
  %4207 = and i32 %4205, 255
  %4208 = call i32 @llvm.ctpop.i32(i32 %4207)
  %4209 = trunc i32 %4208 to i8
  %4210 = and i8 %4209, 1
  %4211 = xor i8 %4210, 1
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4211, i8* %4212, align 1
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4213, align 1
  %4214 = icmp eq i32 %4205, 0
  %4215 = zext i1 %4214 to i8
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4215, i8* %4216, align 1
  %4217 = lshr i32 %4205, 31
  %4218 = trunc i32 %4217 to i8
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4218, i8* %4219, align 1
  %4220 = lshr i32 %4205, 31
  %4221 = xor i32 %4217, %4220
  %4222 = add i32 %4221, %4220
  %4223 = icmp eq i32 %4222, 2
  %4224 = zext i1 %4223 to i8
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4224, i8* %4225, align 1
  store %struct.Memory* %loadMem_46e5a8, %struct.Memory** %MEMORY
  %loadMem_46e5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 33
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4228 to i64*
  %4229 = load i64, i64* %PC.i470
  %4230 = add i64 %4229, 1160
  %4231 = load i64, i64* %PC.i470
  %4232 = add i64 %4231, 6
  %4233 = load i64, i64* %PC.i470
  %4234 = add i64 %4233, 6
  store i64 %4234, i64* %PC.i470
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4236 = load i8, i8* %4235, align 1
  store i8 %4236, i8* %BRANCH_TAKEN, align 1
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4238 = icmp ne i8 %4236, 0
  %4239 = select i1 %4238, i64 %4230, i64 %4232
  store i64 %4239, i64* %4237, align 8
  store %struct.Memory* %loadMem_46e5af, %struct.Memory** %MEMORY
  %loadBr_46e5af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e5af = icmp eq i8 %loadBr_46e5af, 1
  br i1 %cmpBr_46e5af, label %block_.L_46ea37, label %block_46e5b5

block_46e5b5:                                     ; preds = %block_.L_46e5a8
  %loadMem_46e5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 33
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %4242 to i64*
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 11
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %RDI.i469 = bitcast %union.anon* %4245 to i64*
  %4246 = load i64, i64* %PC.i468
  %4247 = add i64 %4246, 5
  store i64 %4247, i64* %PC.i468
  store i64 5, i64* %RDI.i469, align 8
  store %struct.Memory* %loadMem_46e5b5, %struct.Memory** %MEMORY
  %loadMem_46e5ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 33
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 9
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RSI.i467 = bitcast %union.anon* %4253 to i64*
  %4254 = load i64, i64* %PC.i466
  %4255 = add i64 %4254, 5
  store i64 %4255, i64* %PC.i466
  store i64 21, i64* %RSI.i467, align 8
  store %struct.Memory* %loadMem_46e5ba, %struct.Memory** %MEMORY
  %loadMem_46e5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 33
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %4258 to i64*
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 5
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %4261 to i64*
  %4262 = load i64, i64* %PC.i464
  %4263 = add i64 %4262, 5
  store i64 %4263, i64* %PC.i464
  store i64 2, i64* %RCX.i465, align 8
  store %struct.Memory* %loadMem_46e5bf, %struct.Memory** %MEMORY
  %loadMem_46e5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 33
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 7
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %RDX.i462 = bitcast %union.anon* %4269 to i64*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 15
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %4272 to i64*
  %4273 = load i64, i64* %RBP.i463
  %4274 = sub i64 %4273, 1616
  %4275 = load i64, i64* %PC.i461
  %4276 = add i64 %4275, 7
  store i64 %4276, i64* %PC.i461
  store i64 %4274, i64* %RDX.i462, align 8
  store %struct.Memory* %loadMem_46e5c4, %struct.Memory** %MEMORY
  %loadMem_46e5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4278 = getelementptr inbounds %struct.GPR, %struct.GPR* %4277, i32 0, i32 33
  %4279 = getelementptr inbounds %struct.Reg, %struct.Reg* %4278, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %4279 to i64*
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4280, i64 0, i64 0
  %YMM0.i459 = bitcast %union.VectorReg* %4281 to %"class.std::bitset"*
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4282, i64 0, i64 0
  %XMM0.i460 = bitcast %union.VectorReg* %4283 to %union.vec128_t*
  %4284 = bitcast %"class.std::bitset"* %YMM0.i459 to i8*
  %4285 = bitcast %"class.std::bitset"* %YMM0.i459 to i8*
  %4286 = bitcast %union.vec128_t* %XMM0.i460 to i8*
  %4287 = load i64, i64* %PC.i458
  %4288 = add i64 %4287, 3
  store i64 %4288, i64* %PC.i458
  %4289 = bitcast i8* %4285 to i64*
  %4290 = load i64, i64* %4289, align 1
  %4291 = getelementptr inbounds i8, i8* %4285, i64 8
  %4292 = bitcast i8* %4291 to i64*
  %4293 = load i64, i64* %4292, align 1
  %4294 = bitcast i8* %4286 to i64*
  %4295 = load i64, i64* %4294, align 1
  %4296 = getelementptr inbounds i8, i8* %4286, i64 8
  %4297 = bitcast i8* %4296 to i64*
  %4298 = load i64, i64* %4297, align 1
  %4299 = xor i64 %4295, %4290
  %4300 = xor i64 %4298, %4293
  %4301 = trunc i64 %4299 to i32
  %4302 = lshr i64 %4299, 32
  %4303 = trunc i64 %4302 to i32
  %4304 = bitcast i8* %4284 to i32*
  store i32 %4301, i32* %4304, align 1
  %4305 = getelementptr inbounds i8, i8* %4284, i64 4
  %4306 = bitcast i8* %4305 to i32*
  store i32 %4303, i32* %4306, align 1
  %4307 = trunc i64 %4300 to i32
  %4308 = getelementptr inbounds i8, i8* %4284, i64 8
  %4309 = bitcast i8* %4308 to i32*
  store i32 %4307, i32* %4309, align 1
  %4310 = lshr i64 %4300, 32
  %4311 = trunc i64 %4310 to i32
  %4312 = getelementptr inbounds i8, i8* %4284, i64 12
  %4313 = bitcast i8* %4312 to i32*
  store i32 %4311, i32* %4313, align 1
  store %struct.Memory* %loadMem_46e5cb, %struct.Memory** %MEMORY
  %loadMem_46e5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 15
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4320, i64 0, i64 0
  %XMM0.i457 = bitcast %union.VectorReg* %4321 to %union.vec128_t*
  %4322 = load i64, i64* %RBP.i456
  %4323 = sub i64 %4322, 1620
  %4324 = bitcast %union.vec128_t* %XMM0.i457 to i8*
  %4325 = load i64, i64* %PC.i455
  %4326 = add i64 %4325, 8
  store i64 %4326, i64* %PC.i455
  %4327 = bitcast i8* %4324 to <2 x float>*
  %4328 = load <2 x float>, <2 x float>* %4327, align 1
  %4329 = extractelement <2 x float> %4328, i32 0
  %4330 = inttoptr i64 %4323 to float*
  store float %4329, float* %4330
  store %struct.Memory* %loadMem_46e5ce, %struct.Memory** %MEMORY
  %loadMem_46e5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 33
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %4333 to i64*
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 15
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %4336 to i64*
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4338 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4337, i64 0, i64 0
  %XMM0.i454 = bitcast %union.VectorReg* %4338 to %union.vec128_t*
  %4339 = load i64, i64* %RBP.i453
  %4340 = sub i64 %4339, 1624
  %4341 = bitcast %union.vec128_t* %XMM0.i454 to i8*
  %4342 = load i64, i64* %PC.i452
  %4343 = add i64 %4342, 8
  store i64 %4343, i64* %PC.i452
  %4344 = bitcast i8* %4341 to <2 x float>*
  %4345 = load <2 x float>, <2 x float>* %4344, align 1
  %4346 = extractelement <2 x float> %4345, i32 0
  %4347 = inttoptr i64 %4340 to float*
  store float %4346, float* %4347
  store %struct.Memory* %loadMem_46e5d6, %struct.Memory** %MEMORY
  %loadMem_46e5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 33
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 15
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %4353 to i64*
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4355 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4354, i64 0, i64 0
  %XMM0.i451 = bitcast %union.VectorReg* %4355 to %union.vec128_t*
  %4356 = load i64, i64* %RBP.i450
  %4357 = sub i64 %4356, 1628
  %4358 = bitcast %union.vec128_t* %XMM0.i451 to i8*
  %4359 = load i64, i64* %PC.i449
  %4360 = add i64 %4359, 8
  store i64 %4360, i64* %PC.i449
  %4361 = bitcast i8* %4358 to <2 x float>*
  %4362 = load <2 x float>, <2 x float>* %4361, align 1
  %4363 = extractelement <2 x float> %4362, i32 0
  %4364 = inttoptr i64 %4357 to float*
  store float %4363, float* %4364
  store %struct.Memory* %loadMem_46e5de, %struct.Memory** %MEMORY
  %loadMem_46e5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 33
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4367 to i64*
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 15
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4372 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4371, i64 0, i64 0
  %XMM0.i448 = bitcast %union.VectorReg* %4372 to %union.vec128_t*
  %4373 = load i64, i64* %RBP.i447
  %4374 = sub i64 %4373, 1632
  %4375 = bitcast %union.vec128_t* %XMM0.i448 to i8*
  %4376 = load i64, i64* %PC.i446
  %4377 = add i64 %4376, 8
  store i64 %4377, i64* %PC.i446
  %4378 = bitcast i8* %4375 to <2 x float>*
  %4379 = load <2 x float>, <2 x float>* %4378, align 1
  %4380 = extractelement <2 x float> %4379, i32 0
  %4381 = inttoptr i64 %4374 to float*
  store float %4380, float* %4381
  store %struct.Memory* %loadMem_46e5e6, %struct.Memory** %MEMORY
  %loadMem1_46e5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4383 = getelementptr inbounds %struct.GPR, %struct.GPR* %4382, i32 0, i32 33
  %4384 = getelementptr inbounds %struct.Reg, %struct.Reg* %4383, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4384 to i64*
  %4385 = load i64, i64* %PC.i445
  %4386 = add i64 %4385, -6430
  %4387 = load i64, i64* %PC.i445
  %4388 = add i64 %4387, 5
  %4389 = load i64, i64* %PC.i445
  %4390 = add i64 %4389, 5
  store i64 %4390, i64* %PC.i445
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4392 = load i64, i64* %4391, align 8
  %4393 = add i64 %4392, -8
  %4394 = inttoptr i64 %4393 to i64*
  store i64 %4388, i64* %4394
  store i64 %4393, i64* %4391, align 8
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4386, i64* %4395, align 8
  store %struct.Memory* %loadMem1_46e5ee, %struct.Memory** %MEMORY
  %loadMem2_46e5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e5ee = load i64, i64* %3
  %call2_46e5ee = call %struct.Memory* @sub_46ccd0.dilate_erode(%struct.State* %0, i64 %loadPC_46e5ee, %struct.Memory* %loadMem2_46e5ee)
  store %struct.Memory* %call2_46e5ee, %struct.Memory** %MEMORY
  %loadMem_46e5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 33
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4398 to i64*
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 11
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %RDI.i443 = bitcast %union.anon* %4401 to i64*
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 15
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %4404 to i64*
  %4405 = load i64, i64* %RBP.i444
  %4406 = sub i64 %4405, 1616
  %4407 = load i64, i64* %PC.i442
  %4408 = add i64 %4407, 7
  store i64 %4408, i64* %PC.i442
  store i64 %4406, i64* %RDI.i443, align 8
  store %struct.Memory* %loadMem_46e5f3, %struct.Memory** %MEMORY
  %loadMem_46e5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 33
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 1
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %EAX.i440 = bitcast %union.anon* %4414 to i32*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 15
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %4417 to i64*
  %4418 = load i64, i64* %RBP.i441
  %4419 = sub i64 %4418, 1708
  %4420 = load i32, i32* %EAX.i440
  %4421 = zext i32 %4420 to i64
  %4422 = load i64, i64* %PC.i439
  %4423 = add i64 %4422, 6
  store i64 %4423, i64* %PC.i439
  %4424 = inttoptr i64 %4419 to i32*
  store i32 %4420, i32* %4424
  store %struct.Memory* %loadMem_46e5fa, %struct.Memory** %MEMORY
  %loadMem1_46e600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 33
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4427 to i64*
  %4428 = load i64, i64* %PC.i438
  %4429 = add i64 %4428, -4112
  %4430 = load i64, i64* %PC.i438
  %4431 = add i64 %4430, 5
  %4432 = load i64, i64* %PC.i438
  %4433 = add i64 %4432, 5
  store i64 %4433, i64* %PC.i438
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4435 = load i64, i64* %4434, align 8
  %4436 = add i64 %4435, -8
  %4437 = inttoptr i64 %4436 to i64*
  store i64 %4431, i64* %4437
  store i64 %4436, i64* %4434, align 8
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4429, i64* %4438, align 8
  store %struct.Memory* %loadMem1_46e600, %struct.Memory** %MEMORY
  %loadMem2_46e600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e600 = load i64, i64* %3
  %call2_46e600 = call %struct.Memory* @sub_46d5f0.close_bubbles(%struct.State* %0, i64 %loadPC_46e600, %struct.Memory* %loadMem2_46e600)
  store %struct.Memory* %call2_46e600, %struct.Memory** %MEMORY
  %loadMem_46e605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 33
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 15
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %4444 to i64*
  %4445 = load i64, i64* %RBP.i437
  %4446 = sub i64 %4445, 1636
  %4447 = load i64, i64* %PC.i436
  %4448 = add i64 %4447, 10
  store i64 %4448, i64* %PC.i436
  %4449 = inttoptr i64 %4446 to i32*
  store i32 0, i32* %4449
  store %struct.Memory* %loadMem_46e605, %struct.Memory** %MEMORY
  br label %block_.L_46e60f

block_.L_46e60f:                                  ; preds = %block_.L_46e967, %block_46e5b5
  %loadMem_46e60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 1
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %4455 to i64*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 15
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %4458 to i64*
  %4459 = load i64, i64* %RBP.i435
  %4460 = sub i64 %4459, 1636
  %4461 = load i64, i64* %PC.i433
  %4462 = add i64 %4461, 6
  store i64 %4462, i64* %PC.i433
  %4463 = inttoptr i64 %4460 to i32*
  %4464 = load i32, i32* %4463
  %4465 = zext i32 %4464 to i64
  store i64 %4465, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_46e60f, %struct.Memory** %MEMORY
  %loadMem_46e615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 33
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4468 to i64*
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 1
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %EAX.i432 = bitcast %union.anon* %4471 to i32*
  %4472 = load i32, i32* %EAX.i432
  %4473 = zext i32 %4472 to i64
  %4474 = load i64, i64* %PC.i431
  %4475 = add i64 %4474, 7
  store i64 %4475, i64* %PC.i431
  %4476 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %4477 = sub i32 %4472, %4476
  %4478 = icmp ult i32 %4472, %4476
  %4479 = zext i1 %4478 to i8
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4479, i8* %4480, align 1
  %4481 = and i32 %4477, 255
  %4482 = call i32 @llvm.ctpop.i32(i32 %4481)
  %4483 = trunc i32 %4482 to i8
  %4484 = and i8 %4483, 1
  %4485 = xor i8 %4484, 1
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4485, i8* %4486, align 1
  %4487 = xor i32 %4476, %4472
  %4488 = xor i32 %4487, %4477
  %4489 = lshr i32 %4488, 4
  %4490 = trunc i32 %4489 to i8
  %4491 = and i8 %4490, 1
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4491, i8* %4492, align 1
  %4493 = icmp eq i32 %4477, 0
  %4494 = zext i1 %4493 to i8
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4494, i8* %4495, align 1
  %4496 = lshr i32 %4477, 31
  %4497 = trunc i32 %4496 to i8
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4497, i8* %4498, align 1
  %4499 = lshr i32 %4472, 31
  %4500 = lshr i32 %4476, 31
  %4501 = xor i32 %4500, %4499
  %4502 = xor i32 %4496, %4499
  %4503 = add i32 %4502, %4501
  %4504 = icmp eq i32 %4503, 2
  %4505 = zext i1 %4504 to i8
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4505, i8* %4506, align 1
  store %struct.Memory* %loadMem_46e615, %struct.Memory** %MEMORY
  %loadMem_46e61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 33
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %4509 to i64*
  %4510 = load i64, i64* %PC.i430
  %4511 = add i64 %4510, 863
  %4512 = load i64, i64* %PC.i430
  %4513 = add i64 %4512, 6
  %4514 = load i64, i64* %PC.i430
  %4515 = add i64 %4514, 6
  store i64 %4515, i64* %PC.i430
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4517 = load i8, i8* %4516, align 1
  %4518 = icmp ne i8 %4517, 0
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4520 = load i8, i8* %4519, align 1
  %4521 = icmp ne i8 %4520, 0
  %4522 = xor i1 %4518, %4521
  %4523 = xor i1 %4522, true
  %4524 = zext i1 %4523 to i8
  store i8 %4524, i8* %BRANCH_TAKEN, align 1
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4526 = select i1 %4522, i64 %4513, i64 %4511
  store i64 %4526, i64* %4525, align 8
  store %struct.Memory* %loadMem_46e61c, %struct.Memory** %MEMORY
  %loadBr_46e61c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e61c = icmp eq i8 %loadBr_46e61c, 1
  br i1 %cmpBr_46e61c, label %block_.L_46e97b, label %block_46e622

block_46e622:                                     ; preds = %block_.L_46e60f
  %loadMem_46e622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 33
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 15
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %4532 to i64*
  %4533 = load i64, i64* %RBP.i429
  %4534 = sub i64 %4533, 1676
  %4535 = load i64, i64* %PC.i428
  %4536 = add i64 %4535, 10
  store i64 %4536, i64* %PC.i428
  %4537 = inttoptr i64 %4534 to i32*
  store i32 0, i32* %4537
  store %struct.Memory* %loadMem_46e622, %struct.Memory** %MEMORY
  %loadMem_46e62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 33
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %4540 to i64*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 15
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %4543 to i64*
  %4544 = load i64, i64* %RBP.i427
  %4545 = sub i64 %4544, 1680
  %4546 = load i64, i64* %PC.i426
  %4547 = add i64 %4546, 10
  store i64 %4547, i64* %PC.i426
  %4548 = inttoptr i64 %4545 to i32*
  store i32 0, i32* %4548
  store %struct.Memory* %loadMem_46e62c, %struct.Memory** %MEMORY
  %loadMem_46e636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 33
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 15
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %4554 to i64*
  %4555 = load i64, i64* %RBP.i425
  %4556 = sub i64 %4555, 1684
  %4557 = load i64, i64* %PC.i424
  %4558 = add i64 %4557, 10
  store i64 %4558, i64* %PC.i424
  %4559 = inttoptr i64 %4556 to i32*
  store i32 0, i32* %4559
  store %struct.Memory* %loadMem_46e636, %struct.Memory** %MEMORY
  %loadMem_46e640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 33
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4562 to i64*
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 15
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %4565 to i64*
  %4566 = load i64, i64* %RBP.i423
  %4567 = sub i64 %4566, 1688
  %4568 = load i64, i64* %PC.i422
  %4569 = add i64 %4568, 10
  store i64 %4569, i64* %PC.i422
  %4570 = inttoptr i64 %4567 to i32*
  store i32 0, i32* %4570
  store %struct.Memory* %loadMem_46e640, %struct.Memory** %MEMORY
  %loadMem_46e64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 33
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %4573 to i64*
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4575 = getelementptr inbounds %struct.GPR, %struct.GPR* %4574, i32 0, i32 15
  %4576 = getelementptr inbounds %struct.Reg, %struct.Reg* %4575, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %4576 to i64*
  %4577 = load i64, i64* %RBP.i421
  %4578 = sub i64 %4577, 1640
  %4579 = load i64, i64* %PC.i420
  %4580 = add i64 %4579, 10
  store i64 %4580, i64* %PC.i420
  %4581 = inttoptr i64 %4578 to i32*
  store i32 0, i32* %4581
  store %struct.Memory* %loadMem_46e64a, %struct.Memory** %MEMORY
  br label %block_.L_46e654

block_.L_46e654:                                  ; preds = %block_.L_46e89e, %block_46e622
  %loadMem_46e654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 33
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %4584 to i64*
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 1
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %4587 to i64*
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 15
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %4590 to i64*
  %4591 = load i64, i64* %RBP.i419
  %4592 = sub i64 %4591, 1640
  %4593 = load i64, i64* %PC.i417
  %4594 = add i64 %4593, 6
  store i64 %4594, i64* %PC.i417
  %4595 = inttoptr i64 %4592 to i32*
  %4596 = load i32, i32* %4595
  %4597 = zext i32 %4596 to i64
  store i64 %4597, i64* %RAX.i418, align 8
  store %struct.Memory* %loadMem_46e654, %struct.Memory** %MEMORY
  %loadMem_46e65a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 33
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %4600 to i64*
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 1
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %EAX.i416 = bitcast %union.anon* %4603 to i32*
  %4604 = load i32, i32* %EAX.i416
  %4605 = zext i32 %4604 to i64
  %4606 = load i64, i64* %PC.i415
  %4607 = add i64 %4606, 7
  store i64 %4607, i64* %PC.i415
  %4608 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %4609 = sub i32 %4604, %4608
  %4610 = icmp ult i32 %4604, %4608
  %4611 = zext i1 %4610 to i8
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4611, i8* %4612, align 1
  %4613 = and i32 %4609, 255
  %4614 = call i32 @llvm.ctpop.i32(i32 %4613)
  %4615 = trunc i32 %4614 to i8
  %4616 = and i8 %4615, 1
  %4617 = xor i8 %4616, 1
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4617, i8* %4618, align 1
  %4619 = xor i32 %4608, %4604
  %4620 = xor i32 %4619, %4609
  %4621 = lshr i32 %4620, 4
  %4622 = trunc i32 %4621 to i8
  %4623 = and i8 %4622, 1
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4623, i8* %4624, align 1
  %4625 = icmp eq i32 %4609, 0
  %4626 = zext i1 %4625 to i8
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4626, i8* %4627, align 1
  %4628 = lshr i32 %4609, 31
  %4629 = trunc i32 %4628 to i8
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4629, i8* %4630, align 1
  %4631 = lshr i32 %4604, 31
  %4632 = lshr i32 %4608, 31
  %4633 = xor i32 %4632, %4631
  %4634 = xor i32 %4628, %4631
  %4635 = add i32 %4634, %4633
  %4636 = icmp eq i32 %4635, 2
  %4637 = zext i1 %4636 to i8
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4637, i8* %4638, align 1
  store %struct.Memory* %loadMem_46e65a, %struct.Memory** %MEMORY
  %loadMem_46e661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4640 = getelementptr inbounds %struct.GPR, %struct.GPR* %4639, i32 0, i32 33
  %4641 = getelementptr inbounds %struct.Reg, %struct.Reg* %4640, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4641 to i64*
  %4642 = load i64, i64* %PC.i414
  %4643 = add i64 %4642, 593
  %4644 = load i64, i64* %PC.i414
  %4645 = add i64 %4644, 6
  %4646 = load i64, i64* %PC.i414
  %4647 = add i64 %4646, 6
  store i64 %4647, i64* %PC.i414
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4649 = load i8, i8* %4648, align 1
  %4650 = icmp ne i8 %4649, 0
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4652 = load i8, i8* %4651, align 1
  %4653 = icmp ne i8 %4652, 0
  %4654 = xor i1 %4650, %4653
  %4655 = xor i1 %4654, true
  %4656 = zext i1 %4655 to i8
  store i8 %4656, i8* %BRANCH_TAKEN, align 1
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4658 = select i1 %4654, i64 %4645, i64 %4643
  store i64 %4658, i64* %4657, align 8
  store %struct.Memory* %loadMem_46e661, %struct.Memory** %MEMORY
  %loadBr_46e661 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e661 = icmp eq i8 %loadBr_46e661, 1
  br i1 %cmpBr_46e661, label %block_.L_46e8b2, label %block_46e667

block_46e667:                                     ; preds = %block_.L_46e654
  %loadMem_46e667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 33
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4661 to i64*
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 1
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %4664 to i64*
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 15
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %4667 to i64*
  %4668 = load i64, i64* %RBP.i413
  %4669 = sub i64 %4668, 1636
  %4670 = load i64, i64* %PC.i411
  %4671 = add i64 %4670, 7
  store i64 %4671, i64* %PC.i411
  %4672 = inttoptr i64 %4669 to i32*
  %4673 = load i32, i32* %4672
  %4674 = sext i32 %4673 to i64
  %4675 = mul i64 %4674, 20
  %4676 = trunc i64 %4675 to i32
  %4677 = and i64 %4675, 4294967295
  store i64 %4677, i64* %RAX.i412, align 8
  %4678 = shl i64 %4675, 32
  %4679 = ashr exact i64 %4678, 32
  %4680 = icmp ne i64 %4679, %4675
  %4681 = zext i1 %4680 to i8
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4681, i8* %4682, align 1
  %4683 = and i32 %4676, 255
  %4684 = call i32 @llvm.ctpop.i32(i32 %4683)
  %4685 = trunc i32 %4684 to i8
  %4686 = and i8 %4685, 1
  %4687 = xor i8 %4686, 1
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4687, i8* %4688, align 1
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4689, align 1
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4690, align 1
  %4691 = lshr i32 %4676, 31
  %4692 = trunc i32 %4691 to i8
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4692, i8* %4693, align 1
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4681, i8* %4694, align 1
  store %struct.Memory* %loadMem_46e667, %struct.Memory** %MEMORY
  %loadMem_46e66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4696 = getelementptr inbounds %struct.GPR, %struct.GPR* %4695, i32 0, i32 33
  %4697 = getelementptr inbounds %struct.Reg, %struct.Reg* %4696, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4697 to i64*
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 1
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %4700 to i64*
  %4701 = load i64, i64* %RAX.i410
  %4702 = load i64, i64* %PC.i409
  %4703 = add i64 %4702, 3
  store i64 %4703, i64* %PC.i409
  %4704 = trunc i64 %4701 to i32
  %4705 = add i32 21, %4704
  %4706 = zext i32 %4705 to i64
  store i64 %4706, i64* %RAX.i410, align 8
  %4707 = icmp ult i32 %4705, %4704
  %4708 = icmp ult i32 %4705, 21
  %4709 = or i1 %4707, %4708
  %4710 = zext i1 %4709 to i8
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4710, i8* %4711, align 1
  %4712 = and i32 %4705, 255
  %4713 = call i32 @llvm.ctpop.i32(i32 %4712)
  %4714 = trunc i32 %4713 to i8
  %4715 = and i8 %4714, 1
  %4716 = xor i8 %4715, 1
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4716, i8* %4717, align 1
  %4718 = xor i64 21, %4701
  %4719 = trunc i64 %4718 to i32
  %4720 = xor i32 %4719, %4705
  %4721 = lshr i32 %4720, 4
  %4722 = trunc i32 %4721 to i8
  %4723 = and i8 %4722, 1
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4723, i8* %4724, align 1
  %4725 = icmp eq i32 %4705, 0
  %4726 = zext i1 %4725 to i8
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4726, i8* %4727, align 1
  %4728 = lshr i32 %4705, 31
  %4729 = trunc i32 %4728 to i8
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4729, i8* %4730, align 1
  %4731 = lshr i32 %4704, 31
  %4732 = xor i32 %4728, %4731
  %4733 = add i32 %4732, %4728
  %4734 = icmp eq i32 %4733, 2
  %4735 = zext i1 %4734 to i8
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4735, i8* %4736, align 1
  store %struct.Memory* %loadMem_46e66e, %struct.Memory** %MEMORY
  %loadMem_46e671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 33
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4739 to i64*
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 1
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %4742 to i64*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 15
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %4745 to i64*
  %4746 = load i64, i64* %RAX.i407
  %4747 = load i64, i64* %RBP.i408
  %4748 = sub i64 %4747, 1640
  %4749 = load i64, i64* %PC.i406
  %4750 = add i64 %4749, 6
  store i64 %4750, i64* %PC.i406
  %4751 = trunc i64 %4746 to i32
  %4752 = inttoptr i64 %4748 to i32*
  %4753 = load i32, i32* %4752
  %4754 = add i32 %4753, %4751
  %4755 = zext i32 %4754 to i64
  store i64 %4755, i64* %RAX.i407, align 8
  %4756 = icmp ult i32 %4754, %4751
  %4757 = icmp ult i32 %4754, %4753
  %4758 = or i1 %4756, %4757
  %4759 = zext i1 %4758 to i8
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4759, i8* %4760, align 1
  %4761 = and i32 %4754, 255
  %4762 = call i32 @llvm.ctpop.i32(i32 %4761)
  %4763 = trunc i32 %4762 to i8
  %4764 = and i8 %4763, 1
  %4765 = xor i8 %4764, 1
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4765, i8* %4766, align 1
  %4767 = xor i32 %4753, %4751
  %4768 = xor i32 %4767, %4754
  %4769 = lshr i32 %4768, 4
  %4770 = trunc i32 %4769 to i8
  %4771 = and i8 %4770, 1
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4771, i8* %4772, align 1
  %4773 = icmp eq i32 %4754, 0
  %4774 = zext i1 %4773 to i8
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4774, i8* %4775, align 1
  %4776 = lshr i32 %4754, 31
  %4777 = trunc i32 %4776 to i8
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4777, i8* %4778, align 1
  %4779 = lshr i32 %4751, 31
  %4780 = lshr i32 %4753, 31
  %4781 = xor i32 %4776, %4779
  %4782 = xor i32 %4776, %4780
  %4783 = add i32 %4781, %4782
  %4784 = icmp eq i32 %4783, 2
  %4785 = zext i1 %4784 to i8
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4785, i8* %4786, align 1
  store %struct.Memory* %loadMem_46e671, %struct.Memory** %MEMORY
  %loadMem_46e677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4788 = getelementptr inbounds %struct.GPR, %struct.GPR* %4787, i32 0, i32 33
  %4789 = getelementptr inbounds %struct.Reg, %struct.Reg* %4788, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %4789 to i64*
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 1
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %EAX.i404 = bitcast %union.anon* %4792 to i32*
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 15
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %4795 to i64*
  %4796 = load i64, i64* %RBP.i405
  %4797 = sub i64 %4796, 1644
  %4798 = load i32, i32* %EAX.i404
  %4799 = zext i32 %4798 to i64
  %4800 = load i64, i64* %PC.i403
  %4801 = add i64 %4800, 6
  store i64 %4801, i64* %PC.i403
  %4802 = inttoptr i64 %4797 to i32*
  store i32 %4798, i32* %4802
  store %struct.Memory* %loadMem_46e677, %struct.Memory** %MEMORY
  %loadMem_46e67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 33
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %4805 to i64*
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 5
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 15
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %RBP.i402
  %4813 = sub i64 %4812, 1644
  %4814 = load i64, i64* %PC.i400
  %4815 = add i64 %4814, 7
  store i64 %4815, i64* %PC.i400
  %4816 = inttoptr i64 %4813 to i32*
  %4817 = load i32, i32* %4816
  %4818 = sext i32 %4817 to i64
  store i64 %4818, i64* %RCX.i401, align 8
  store %struct.Memory* %loadMem_46e67d, %struct.Memory** %MEMORY
  %loadMem_46e684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4820 = getelementptr inbounds %struct.GPR, %struct.GPR* %4819, i32 0, i32 33
  %4821 = getelementptr inbounds %struct.Reg, %struct.Reg* %4820, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4821 to i64*
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 1
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 5
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %4827 to i64*
  %4828 = load i64, i64* %RCX.i399
  %4829 = add i64 %4828, 12099168
  %4830 = load i64, i64* %PC.i397
  %4831 = add i64 %4830, 8
  store i64 %4831, i64* %PC.i397
  %4832 = inttoptr i64 %4829 to i8*
  %4833 = load i8, i8* %4832
  %4834 = zext i8 %4833 to i64
  store i64 %4834, i64* %RAX.i398, align 8
  store %struct.Memory* %loadMem_46e684, %struct.Memory** %MEMORY
  %loadMem_46e68c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 33
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4837 to i64*
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 1
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %EAX.i396 = bitcast %union.anon* %4840 to i32*
  %4841 = load i32, i32* %EAX.i396
  %4842 = zext i32 %4841 to i64
  %4843 = load i64, i64* %PC.i395
  %4844 = add i64 %4843, 3
  store i64 %4844, i64* %PC.i395
  %4845 = sub i32 %4841, 2
  %4846 = icmp ult i32 %4841, 2
  %4847 = zext i1 %4846 to i8
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4847, i8* %4848, align 1
  %4849 = and i32 %4845, 255
  %4850 = call i32 @llvm.ctpop.i32(i32 %4849)
  %4851 = trunc i32 %4850 to i8
  %4852 = and i8 %4851, 1
  %4853 = xor i8 %4852, 1
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4853, i8* %4854, align 1
  %4855 = xor i64 2, %4842
  %4856 = trunc i64 %4855 to i32
  %4857 = xor i32 %4856, %4845
  %4858 = lshr i32 %4857, 4
  %4859 = trunc i32 %4858 to i8
  %4860 = and i8 %4859, 1
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4860, i8* %4861, align 1
  %4862 = icmp eq i32 %4845, 0
  %4863 = zext i1 %4862 to i8
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4863, i8* %4864, align 1
  %4865 = lshr i32 %4845, 31
  %4866 = trunc i32 %4865 to i8
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4866, i8* %4867, align 1
  %4868 = lshr i32 %4841, 31
  %4869 = xor i32 %4865, %4868
  %4870 = add i32 %4869, %4868
  %4871 = icmp eq i32 %4870, 2
  %4872 = zext i1 %4871 to i8
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4872, i8* %4873, align 1
  store %struct.Memory* %loadMem_46e68c, %struct.Memory** %MEMORY
  %loadMem_46e68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 33
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %4876 to i64*
  %4877 = load i64, i64* %PC.i394
  %4878 = add i64 %4877, 158
  %4879 = load i64, i64* %PC.i394
  %4880 = add i64 %4879, 6
  %4881 = load i64, i64* %PC.i394
  %4882 = add i64 %4881, 6
  store i64 %4882, i64* %PC.i394
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4884 = load i8, i8* %4883, align 1
  %4885 = icmp eq i8 %4884, 0
  %4886 = zext i1 %4885 to i8
  store i8 %4886, i8* %BRANCH_TAKEN, align 1
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4888 = select i1 %4885, i64 %4878, i64 %4880
  store i64 %4888, i64* %4887, align 8
  store %struct.Memory* %loadMem_46e68f, %struct.Memory** %MEMORY
  %loadBr_46e68f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e68f = icmp eq i8 %loadBr_46e68f, 1
  br i1 %cmpBr_46e68f, label %block_.L_46e72d, label %block_46e695

block_46e695:                                     ; preds = %block_46e667
  %loadMem_46e695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 33
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4891 to i64*
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4893 = getelementptr inbounds %struct.GPR, %struct.GPR* %4892, i32 0, i32 9
  %4894 = getelementptr inbounds %struct.Reg, %struct.Reg* %4893, i32 0, i32 0
  %RSI.i393 = bitcast %union.anon* %4894 to i64*
  %4895 = load i64, i64* %PC.i392
  %4896 = add i64 %4895, 5
  store i64 %4896, i64* %PC.i392
  store i64 2, i64* %RSI.i393, align 8
  store %struct.Memory* %loadMem_46e695, %struct.Memory** %MEMORY
  %loadMem_46e69a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4898 = getelementptr inbounds %struct.GPR, %struct.GPR* %4897, i32 0, i32 33
  %4899 = getelementptr inbounds %struct.Reg, %struct.Reg* %4898, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4899 to i64*
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 11
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %RDI.i390 = bitcast %union.anon* %4902 to i64*
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 15
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %4905 to i64*
  %4906 = load i64, i64* %RBP.i391
  %4907 = sub i64 %4906, 1644
  %4908 = load i64, i64* %PC.i389
  %4909 = add i64 %4908, 6
  store i64 %4909, i64* %PC.i389
  %4910 = inttoptr i64 %4907 to i32*
  %4911 = load i32, i32* %4910
  %4912 = zext i32 %4911 to i64
  store i64 %4912, i64* %RDI.i390, align 8
  store %struct.Memory* %loadMem_46e69a, %struct.Memory** %MEMORY
  %loadMem1_46e6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 33
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %4915 to i64*
  %4916 = load i64, i64* %PC.i388
  %4917 = add i64 %4916, -2176
  %4918 = load i64, i64* %PC.i388
  %4919 = add i64 %4918, 5
  %4920 = load i64, i64* %PC.i388
  %4921 = add i64 %4920, 5
  store i64 %4921, i64* %PC.i388
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4923 = load i64, i64* %4922, align 8
  %4924 = add i64 %4923, -8
  %4925 = inttoptr i64 %4924 to i64*
  store i64 %4919, i64* %4925
  store i64 %4924, i64* %4922, align 8
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4917, i64* %4926, align 8
  store %struct.Memory* %loadMem1_46e6a0, %struct.Memory** %MEMORY
  %loadMem2_46e6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e6a0 = load i64, i64* %3
  %call2_46e6a0 = call %struct.Memory* @sub_46de20.captured_territory(%struct.State* %0, i64 %loadPC_46e6a0, %struct.Memory* %loadMem2_46e6a0)
  store %struct.Memory* %call2_46e6a0, %struct.Memory** %MEMORY
  %loadMem_46e6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4928 = getelementptr inbounds %struct.GPR, %struct.GPR* %4927, i32 0, i32 33
  %4929 = getelementptr inbounds %struct.Reg, %struct.Reg* %4928, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4929 to i64*
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 1
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %EAX.i387 = bitcast %union.anon* %4932 to i32*
  %4933 = load i32, i32* %EAX.i387
  %4934 = zext i32 %4933 to i64
  %4935 = load i64, i64* %PC.i386
  %4936 = add i64 %4935, 3
  store i64 %4936, i64* %PC.i386
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4937, align 1
  %4938 = and i32 %4933, 255
  %4939 = call i32 @llvm.ctpop.i32(i32 %4938)
  %4940 = trunc i32 %4939 to i8
  %4941 = and i8 %4940, 1
  %4942 = xor i8 %4941, 1
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4942, i8* %4943, align 1
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4944, align 1
  %4945 = icmp eq i32 %4933, 0
  %4946 = zext i1 %4945 to i8
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4946, i8* %4947, align 1
  %4948 = lshr i32 %4933, 31
  %4949 = trunc i32 %4948 to i8
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4949, i8* %4950, align 1
  %4951 = lshr i32 %4933, 31
  %4952 = xor i32 %4948, %4951
  %4953 = add i32 %4952, %4951
  %4954 = icmp eq i32 %4953, 2
  %4955 = zext i1 %4954 to i8
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4955, i8* %4956, align 1
  store %struct.Memory* %loadMem_46e6a5, %struct.Memory** %MEMORY
  %loadMem_46e6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 33
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4959 to i64*
  %4960 = load i64, i64* %PC.i385
  %4961 = add i64 %4960, 89
  %4962 = load i64, i64* %PC.i385
  %4963 = add i64 %4962, 6
  %4964 = load i64, i64* %PC.i385
  %4965 = add i64 %4964, 6
  store i64 %4965, i64* %PC.i385
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4967 = load i8, i8* %4966, align 1
  store i8 %4967, i8* %BRANCH_TAKEN, align 1
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4969 = icmp ne i8 %4967, 0
  %4970 = select i1 %4969, i64 %4961, i64 %4963
  store i64 %4970, i64* %4968, align 8
  store %struct.Memory* %loadMem_46e6a8, %struct.Memory** %MEMORY
  %loadBr_46e6a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e6a8 = icmp eq i8 %loadBr_46e6a8, 1
  br i1 %cmpBr_46e6a8, label %block_.L_46e701, label %block_46e6ae

block_46e6ae:                                     ; preds = %block_46e695
  %loadMem_46e6ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 33
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %4973 to i64*
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4975 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4974, i64 0, i64 0
  %YMM0.i384 = bitcast %union.VectorReg* %4975 to %"class.std::bitset"*
  %4976 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %4977 = load i64, i64* %PC.i383
  %4978 = add i64 %4977, ptrtoint (%G_0x74a56__rip__type* @G_0x74a56__rip_ to i64)
  %4979 = load i64, i64* %PC.i383
  %4980 = add i64 %4979, 8
  store i64 %4980, i64* %PC.i383
  %4981 = inttoptr i64 %4978 to float*
  %4982 = load float, float* %4981
  %4983 = bitcast i8* %4976 to float*
  store float %4982, float* %4983, align 1
  %4984 = getelementptr inbounds i8, i8* %4976, i64 4
  %4985 = bitcast i8* %4984 to float*
  store float 0.000000e+00, float* %4985, align 1
  %4986 = getelementptr inbounds i8, i8* %4976, i64 8
  %4987 = bitcast i8* %4986 to float*
  store float 0.000000e+00, float* %4987, align 1
  %4988 = getelementptr inbounds i8, i8* %4976, i64 12
  %4989 = bitcast i8* %4988 to float*
  store float 0.000000e+00, float* %4989, align 1
  store %struct.Memory* %loadMem_46e6ae, %struct.Memory** %MEMORY
  %loadMem_46e6b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 33
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4992 to i64*
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4994 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4993, i64 0, i64 1
  %YMM1.i382 = bitcast %union.VectorReg* %4994 to %"class.std::bitset"*
  %4995 = bitcast %"class.std::bitset"* %YMM1.i382 to i8*
  %4996 = load i64, i64* %PC.i381
  %4997 = add i64 %4996, ptrtoint (%G_0x74a76__rip__type* @G_0x74a76__rip_ to i64)
  %4998 = load i64, i64* %PC.i381
  %4999 = add i64 %4998, 8
  store i64 %4999, i64* %PC.i381
  %5000 = inttoptr i64 %4997 to float*
  %5001 = load float, float* %5000
  %5002 = bitcast i8* %4995 to float*
  store float %5001, float* %5002, align 1
  %5003 = getelementptr inbounds i8, i8* %4995, i64 4
  %5004 = bitcast i8* %5003 to float*
  store float 0.000000e+00, float* %5004, align 1
  %5005 = getelementptr inbounds i8, i8* %4995, i64 8
  %5006 = bitcast i8* %5005 to float*
  store float 0.000000e+00, float* %5006, align 1
  %5007 = getelementptr inbounds i8, i8* %4995, i64 12
  %5008 = bitcast i8* %5007 to float*
  store float 0.000000e+00, float* %5008, align 1
  store %struct.Memory* %loadMem_46e6b6, %struct.Memory** %MEMORY
  %loadMem_46e6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 33
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %5011 to i64*
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 15
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %5014 to i64*
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5016 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5015, i64 0, i64 1
  %YMM1.i380 = bitcast %union.VectorReg* %5016 to %"class.std::bitset"*
  %5017 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %5018 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %5019 = load i64, i64* %RBP.i379
  %5020 = sub i64 %5019, 1620
  %5021 = load i64, i64* %PC.i378
  %5022 = add i64 %5021, 8
  store i64 %5022, i64* %PC.i378
  %5023 = bitcast i8* %5018 to <2 x float>*
  %5024 = load <2 x float>, <2 x float>* %5023, align 1
  %5025 = getelementptr inbounds i8, i8* %5018, i64 8
  %5026 = bitcast i8* %5025 to <2 x i32>*
  %5027 = load <2 x i32>, <2 x i32>* %5026, align 1
  %5028 = inttoptr i64 %5020 to float*
  %5029 = load float, float* %5028
  %5030 = extractelement <2 x float> %5024, i32 0
  %5031 = fadd float %5030, %5029
  %5032 = bitcast i8* %5017 to float*
  store float %5031, float* %5032, align 1
  %5033 = bitcast <2 x float> %5024 to <2 x i32>
  %5034 = extractelement <2 x i32> %5033, i32 1
  %5035 = getelementptr inbounds i8, i8* %5017, i64 4
  %5036 = bitcast i8* %5035 to i32*
  store i32 %5034, i32* %5036, align 1
  %5037 = extractelement <2 x i32> %5027, i32 0
  %5038 = getelementptr inbounds i8, i8* %5017, i64 8
  %5039 = bitcast i8* %5038 to i32*
  store i32 %5037, i32* %5039, align 1
  %5040 = extractelement <2 x i32> %5027, i32 1
  %5041 = getelementptr inbounds i8, i8* %5017, i64 12
  %5042 = bitcast i8* %5041 to i32*
  store i32 %5040, i32* %5042, align 1
  store %struct.Memory* %loadMem_46e6be, %struct.Memory** %MEMORY
  %loadMem_46e6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 33
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %5045 to i64*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 15
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5050 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5049, i64 0, i64 1
  %XMM1.i377 = bitcast %union.VectorReg* %5050 to %union.vec128_t*
  %5051 = load i64, i64* %RBP.i376
  %5052 = sub i64 %5051, 1620
  %5053 = bitcast %union.vec128_t* %XMM1.i377 to i8*
  %5054 = load i64, i64* %PC.i375
  %5055 = add i64 %5054, 8
  store i64 %5055, i64* %PC.i375
  %5056 = bitcast i8* %5053 to <2 x float>*
  %5057 = load <2 x float>, <2 x float>* %5056, align 1
  %5058 = extractelement <2 x float> %5057, i32 0
  %5059 = inttoptr i64 %5052 to float*
  store float %5058, float* %5059
  store %struct.Memory* %loadMem_46e6c6, %struct.Memory** %MEMORY
  %loadMem_46e6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 33
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %5062 to i64*
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 1
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %5065 to i64*
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 15
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %5068 to i64*
  %5069 = load i64, i64* %RBP.i374
  %5070 = sub i64 %5069, 1680
  %5071 = load i64, i64* %PC.i372
  %5072 = add i64 %5071, 6
  store i64 %5072, i64* %PC.i372
  %5073 = inttoptr i64 %5070 to i32*
  %5074 = load i32, i32* %5073
  %5075 = zext i32 %5074 to i64
  store i64 %5075, i64* %RAX.i373, align 8
  store %struct.Memory* %loadMem_46e6ce, %struct.Memory** %MEMORY
  %loadMem_46e6d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 33
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %5078 to i64*
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 1
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %5081 to i64*
  %5082 = load i64, i64* %RAX.i371
  %5083 = load i64, i64* %PC.i370
  %5084 = add i64 %5083, 3
  store i64 %5084, i64* %PC.i370
  %5085 = trunc i64 %5082 to i32
  %5086 = add i32 2, %5085
  %5087 = zext i32 %5086 to i64
  store i64 %5087, i64* %RAX.i371, align 8
  %5088 = icmp ult i32 %5086, %5085
  %5089 = icmp ult i32 %5086, 2
  %5090 = or i1 %5088, %5089
  %5091 = zext i1 %5090 to i8
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5091, i8* %5092, align 1
  %5093 = and i32 %5086, 255
  %5094 = call i32 @llvm.ctpop.i32(i32 %5093)
  %5095 = trunc i32 %5094 to i8
  %5096 = and i8 %5095, 1
  %5097 = xor i8 %5096, 1
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5097, i8* %5098, align 1
  %5099 = xor i64 2, %5082
  %5100 = trunc i64 %5099 to i32
  %5101 = xor i32 %5100, %5086
  %5102 = lshr i32 %5101, 4
  %5103 = trunc i32 %5102 to i8
  %5104 = and i8 %5103, 1
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5104, i8* %5105, align 1
  %5106 = icmp eq i32 %5086, 0
  %5107 = zext i1 %5106 to i8
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5107, i8* %5108, align 1
  %5109 = lshr i32 %5086, 31
  %5110 = trunc i32 %5109 to i8
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5110, i8* %5111, align 1
  %5112 = lshr i32 %5085, 31
  %5113 = xor i32 %5109, %5112
  %5114 = add i32 %5113, %5109
  %5115 = icmp eq i32 %5114, 2
  %5116 = zext i1 %5115 to i8
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5116, i8* %5117, align 1
  store %struct.Memory* %loadMem_46e6d4, %struct.Memory** %MEMORY
  %loadMem_46e6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 33
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 1
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %EAX.i368 = bitcast %union.anon* %5123 to i32*
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 15
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %5126 to i64*
  %5127 = load i64, i64* %RBP.i369
  %5128 = sub i64 %5127, 1680
  %5129 = load i32, i32* %EAX.i368
  %5130 = zext i32 %5129 to i64
  %5131 = load i64, i64* %PC.i367
  %5132 = add i64 %5131, 6
  store i64 %5132, i64* %PC.i367
  %5133 = inttoptr i64 %5128 to i32*
  store i32 %5129, i32* %5133
  store %struct.Memory* %loadMem_46e6d7, %struct.Memory** %MEMORY
  %loadMem_46e6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 33
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %5136 to i64*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 15
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %5139 to i64*
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5141 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5140, i64 0, i64 0
  %YMM0.i366 = bitcast %union.VectorReg* %5141 to %"class.std::bitset"*
  %5142 = bitcast %"class.std::bitset"* %YMM0.i366 to i8*
  %5143 = bitcast %"class.std::bitset"* %YMM0.i366 to i8*
  %5144 = load i64, i64* %RBP.i365
  %5145 = sub i64 %5144, 1628
  %5146 = load i64, i64* %PC.i364
  %5147 = add i64 %5146, 8
  store i64 %5147, i64* %PC.i364
  %5148 = bitcast i8* %5143 to <2 x float>*
  %5149 = load <2 x float>, <2 x float>* %5148, align 1
  %5150 = getelementptr inbounds i8, i8* %5143, i64 8
  %5151 = bitcast i8* %5150 to <2 x i32>*
  %5152 = load <2 x i32>, <2 x i32>* %5151, align 1
  %5153 = inttoptr i64 %5145 to float*
  %5154 = load float, float* %5153
  %5155 = extractelement <2 x float> %5149, i32 0
  %5156 = fadd float %5155, %5154
  %5157 = bitcast i8* %5142 to float*
  store float %5156, float* %5157, align 1
  %5158 = bitcast <2 x float> %5149 to <2 x i32>
  %5159 = extractelement <2 x i32> %5158, i32 1
  %5160 = getelementptr inbounds i8, i8* %5142, i64 4
  %5161 = bitcast i8* %5160 to i32*
  store i32 %5159, i32* %5161, align 1
  %5162 = extractelement <2 x i32> %5152, i32 0
  %5163 = getelementptr inbounds i8, i8* %5142, i64 8
  %5164 = bitcast i8* %5163 to i32*
  store i32 %5162, i32* %5164, align 1
  %5165 = extractelement <2 x i32> %5152, i32 1
  %5166 = getelementptr inbounds i8, i8* %5142, i64 12
  %5167 = bitcast i8* %5166 to i32*
  store i32 %5165, i32* %5167, align 1
  store %struct.Memory* %loadMem_46e6dd, %struct.Memory** %MEMORY
  %loadMem_46e6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 33
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %5170 to i64*
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5172 = getelementptr inbounds %struct.GPR, %struct.GPR* %5171, i32 0, i32 15
  %5173 = getelementptr inbounds %struct.Reg, %struct.Reg* %5172, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %5173 to i64*
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5175 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5174, i64 0, i64 0
  %XMM0.i363 = bitcast %union.VectorReg* %5175 to %union.vec128_t*
  %5176 = load i64, i64* %RBP.i362
  %5177 = sub i64 %5176, 1628
  %5178 = bitcast %union.vec128_t* %XMM0.i363 to i8*
  %5179 = load i64, i64* %PC.i361
  %5180 = add i64 %5179, 8
  store i64 %5180, i64* %PC.i361
  %5181 = bitcast i8* %5178 to <2 x float>*
  %5182 = load <2 x float>, <2 x float>* %5181, align 1
  %5183 = extractelement <2 x float> %5182, i32 0
  %5184 = inttoptr i64 %5177 to float*
  store float %5183, float* %5184
  store %struct.Memory* %loadMem_46e6e5, %struct.Memory** %MEMORY
  %loadMem_46e6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 33
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %5187 to i64*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 1
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %5190 to i64*
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 15
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %5193 to i64*
  %5194 = load i64, i64* %RBP.i360
  %5195 = sub i64 %5194, 1684
  %5196 = load i64, i64* %PC.i358
  %5197 = add i64 %5196, 6
  store i64 %5197, i64* %PC.i358
  %5198 = inttoptr i64 %5195 to i32*
  %5199 = load i32, i32* %5198
  %5200 = zext i32 %5199 to i64
  store i64 %5200, i64* %RAX.i359, align 8
  store %struct.Memory* %loadMem_46e6ed, %struct.Memory** %MEMORY
  %loadMem_46e6f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 33
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %5203 to i64*
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 1
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %5206 to i64*
  %5207 = load i64, i64* %RAX.i357
  %5208 = load i64, i64* %PC.i356
  %5209 = add i64 %5208, 3
  store i64 %5209, i64* %PC.i356
  %5210 = trunc i64 %5207 to i32
  %5211 = add i32 1, %5210
  %5212 = zext i32 %5211 to i64
  store i64 %5212, i64* %RAX.i357, align 8
  %5213 = icmp ult i32 %5211, %5210
  %5214 = icmp ult i32 %5211, 1
  %5215 = or i1 %5213, %5214
  %5216 = zext i1 %5215 to i8
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5216, i8* %5217, align 1
  %5218 = and i32 %5211, 255
  %5219 = call i32 @llvm.ctpop.i32(i32 %5218)
  %5220 = trunc i32 %5219 to i8
  %5221 = and i8 %5220, 1
  %5222 = xor i8 %5221, 1
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5222, i8* %5223, align 1
  %5224 = xor i64 1, %5207
  %5225 = trunc i64 %5224 to i32
  %5226 = xor i32 %5225, %5211
  %5227 = lshr i32 %5226, 4
  %5228 = trunc i32 %5227 to i8
  %5229 = and i8 %5228, 1
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5229, i8* %5230, align 1
  %5231 = icmp eq i32 %5211, 0
  %5232 = zext i1 %5231 to i8
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5232, i8* %5233, align 1
  %5234 = lshr i32 %5211, 31
  %5235 = trunc i32 %5234 to i8
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5235, i8* %5236, align 1
  %5237 = lshr i32 %5210, 31
  %5238 = xor i32 %5234, %5237
  %5239 = add i32 %5238, %5234
  %5240 = icmp eq i32 %5239, 2
  %5241 = zext i1 %5240 to i8
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5241, i8* %5242, align 1
  store %struct.Memory* %loadMem_46e6f3, %struct.Memory** %MEMORY
  %loadMem_46e6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 33
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %5245 to i64*
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 1
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %EAX.i354 = bitcast %union.anon* %5248 to i32*
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 15
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %5251 to i64*
  %5252 = load i64, i64* %RBP.i355
  %5253 = sub i64 %5252, 1684
  %5254 = load i32, i32* %EAX.i354
  %5255 = zext i32 %5254 to i64
  %5256 = load i64, i64* %PC.i353
  %5257 = add i64 %5256, 6
  store i64 %5257, i64* %PC.i353
  %5258 = inttoptr i64 %5253 to i32*
  store i32 %5254, i32* %5258
  store %struct.Memory* %loadMem_46e6f6, %struct.Memory** %MEMORY
  %loadMem_46e6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 33
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %5261 to i64*
  %5262 = load i64, i64* %PC.i352
  %5263 = add i64 %5262, 44
  %5264 = load i64, i64* %PC.i352
  %5265 = add i64 %5264, 5
  store i64 %5265, i64* %PC.i352
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5263, i64* %5266, align 8
  store %struct.Memory* %loadMem_46e6fc, %struct.Memory** %MEMORY
  br label %block_.L_46e728

block_.L_46e701:                                  ; preds = %block_46e695
  %loadMem_46e701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 33
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5269 to i64*
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5270, i64 0, i64 0
  %YMM0.i351 = bitcast %union.VectorReg* %5271 to %"class.std::bitset"*
  %5272 = bitcast %"class.std::bitset"* %YMM0.i351 to i8*
  %5273 = load i64, i64* %PC.i350
  %5274 = add i64 %5273, ptrtoint (%G_0x74a03__rip__type* @G_0x74a03__rip_ to i64)
  %5275 = load i64, i64* %PC.i350
  %5276 = add i64 %5275, 8
  store i64 %5276, i64* %PC.i350
  %5277 = inttoptr i64 %5274 to float*
  %5278 = load float, float* %5277
  %5279 = bitcast i8* %5272 to float*
  store float %5278, float* %5279, align 1
  %5280 = getelementptr inbounds i8, i8* %5272, i64 4
  %5281 = bitcast i8* %5280 to float*
  store float 0.000000e+00, float* %5281, align 1
  %5282 = getelementptr inbounds i8, i8* %5272, i64 8
  %5283 = bitcast i8* %5282 to float*
  store float 0.000000e+00, float* %5283, align 1
  %5284 = getelementptr inbounds i8, i8* %5272, i64 12
  %5285 = bitcast i8* %5284 to float*
  store float 0.000000e+00, float* %5285, align 1
  store %struct.Memory* %loadMem_46e701, %struct.Memory** %MEMORY
  %loadMem_46e709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 33
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5288 to i64*
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 15
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %5291 to i64*
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5292, i64 0, i64 0
  %YMM0.i349 = bitcast %union.VectorReg* %5293 to %"class.std::bitset"*
  %5294 = bitcast %"class.std::bitset"* %YMM0.i349 to i8*
  %5295 = bitcast %"class.std::bitset"* %YMM0.i349 to i8*
  %5296 = load i64, i64* %RBP.i348
  %5297 = sub i64 %5296, 1632
  %5298 = load i64, i64* %PC.i347
  %5299 = add i64 %5298, 8
  store i64 %5299, i64* %PC.i347
  %5300 = bitcast i8* %5295 to <2 x float>*
  %5301 = load <2 x float>, <2 x float>* %5300, align 1
  %5302 = getelementptr inbounds i8, i8* %5295, i64 8
  %5303 = bitcast i8* %5302 to <2 x i32>*
  %5304 = load <2 x i32>, <2 x i32>* %5303, align 1
  %5305 = inttoptr i64 %5297 to float*
  %5306 = load float, float* %5305
  %5307 = extractelement <2 x float> %5301, i32 0
  %5308 = fadd float %5307, %5306
  %5309 = bitcast i8* %5294 to float*
  store float %5308, float* %5309, align 1
  %5310 = bitcast <2 x float> %5301 to <2 x i32>
  %5311 = extractelement <2 x i32> %5310, i32 1
  %5312 = getelementptr inbounds i8, i8* %5294, i64 4
  %5313 = bitcast i8* %5312 to i32*
  store i32 %5311, i32* %5313, align 1
  %5314 = extractelement <2 x i32> %5304, i32 0
  %5315 = getelementptr inbounds i8, i8* %5294, i64 8
  %5316 = bitcast i8* %5315 to i32*
  store i32 %5314, i32* %5316, align 1
  %5317 = extractelement <2 x i32> %5304, i32 1
  %5318 = getelementptr inbounds i8, i8* %5294, i64 12
  %5319 = bitcast i8* %5318 to i32*
  store i32 %5317, i32* %5319, align 1
  store %struct.Memory* %loadMem_46e709, %struct.Memory** %MEMORY
  %loadMem_46e711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 33
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %5322 to i64*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 15
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %5325 to i64*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5327 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5326, i64 0, i64 0
  %XMM0.i346 = bitcast %union.VectorReg* %5327 to %union.vec128_t*
  %5328 = load i64, i64* %RBP.i345
  %5329 = sub i64 %5328, 1632
  %5330 = bitcast %union.vec128_t* %XMM0.i346 to i8*
  %5331 = load i64, i64* %PC.i344
  %5332 = add i64 %5331, 8
  store i64 %5332, i64* %PC.i344
  %5333 = bitcast i8* %5330 to <2 x float>*
  %5334 = load <2 x float>, <2 x float>* %5333, align 1
  %5335 = extractelement <2 x float> %5334, i32 0
  %5336 = inttoptr i64 %5329 to float*
  store float %5335, float* %5336
  store %struct.Memory* %loadMem_46e711, %struct.Memory** %MEMORY
  %loadMem_46e719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 33
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %5339 to i64*
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 1
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %5342 to i64*
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 15
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %5345 to i64*
  %5346 = load i64, i64* %RBP.i343
  %5347 = sub i64 %5346, 1688
  %5348 = load i64, i64* %PC.i341
  %5349 = add i64 %5348, 6
  store i64 %5349, i64* %PC.i341
  %5350 = inttoptr i64 %5347 to i32*
  %5351 = load i32, i32* %5350
  %5352 = zext i32 %5351 to i64
  store i64 %5352, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_46e719, %struct.Memory** %MEMORY
  %loadMem_46e71f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 33
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5355 to i64*
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 1
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %5358 to i64*
  %5359 = load i64, i64* %RAX.i340
  %5360 = load i64, i64* %PC.i339
  %5361 = add i64 %5360, 3
  store i64 %5361, i64* %PC.i339
  %5362 = trunc i64 %5359 to i32
  %5363 = add i32 1, %5362
  %5364 = zext i32 %5363 to i64
  store i64 %5364, i64* %RAX.i340, align 8
  %5365 = icmp ult i32 %5363, %5362
  %5366 = icmp ult i32 %5363, 1
  %5367 = or i1 %5365, %5366
  %5368 = zext i1 %5367 to i8
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5368, i8* %5369, align 1
  %5370 = and i32 %5363, 255
  %5371 = call i32 @llvm.ctpop.i32(i32 %5370)
  %5372 = trunc i32 %5371 to i8
  %5373 = and i8 %5372, 1
  %5374 = xor i8 %5373, 1
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5374, i8* %5375, align 1
  %5376 = xor i64 1, %5359
  %5377 = trunc i64 %5376 to i32
  %5378 = xor i32 %5377, %5363
  %5379 = lshr i32 %5378, 4
  %5380 = trunc i32 %5379 to i8
  %5381 = and i8 %5380, 1
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5381, i8* %5382, align 1
  %5383 = icmp eq i32 %5363, 0
  %5384 = zext i1 %5383 to i8
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5384, i8* %5385, align 1
  %5386 = lshr i32 %5363, 31
  %5387 = trunc i32 %5386 to i8
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5387, i8* %5388, align 1
  %5389 = lshr i32 %5362, 31
  %5390 = xor i32 %5386, %5389
  %5391 = add i32 %5390, %5386
  %5392 = icmp eq i32 %5391, 2
  %5393 = zext i1 %5392 to i8
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5393, i8* %5394, align 1
  store %struct.Memory* %loadMem_46e71f, %struct.Memory** %MEMORY
  %loadMem_46e722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 33
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5397 to i64*
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 1
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %EAX.i337 = bitcast %union.anon* %5400 to i32*
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 15
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %5403 to i64*
  %5404 = load i64, i64* %RBP.i338
  %5405 = sub i64 %5404, 1688
  %5406 = load i32, i32* %EAX.i337
  %5407 = zext i32 %5406 to i64
  %5408 = load i64, i64* %PC.i336
  %5409 = add i64 %5408, 6
  store i64 %5409, i64* %PC.i336
  %5410 = inttoptr i64 %5405 to i32*
  store i32 %5406, i32* %5410
  store %struct.Memory* %loadMem_46e722, %struct.Memory** %MEMORY
  br label %block_.L_46e728

block_.L_46e728:                                  ; preds = %block_.L_46e701, %block_46e6ae
  %loadMem_46e728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 33
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5413 to i64*
  %5414 = load i64, i64* %PC.i335
  %5415 = add i64 %5414, 369
  %5416 = load i64, i64* %PC.i335
  %5417 = add i64 %5416, 5
  store i64 %5417, i64* %PC.i335
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5415, i64* %5418, align 8
  store %struct.Memory* %loadMem_46e728, %struct.Memory** %MEMORY
  br label %block_.L_46e899

block_.L_46e72d:                                  ; preds = %block_46e667
  %loadMem_46e72d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5420 = getelementptr inbounds %struct.GPR, %struct.GPR* %5419, i32 0, i32 33
  %5421 = getelementptr inbounds %struct.Reg, %struct.Reg* %5420, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5421 to i64*
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5423 = getelementptr inbounds %struct.GPR, %struct.GPR* %5422, i32 0, i32 1
  %5424 = getelementptr inbounds %struct.Reg, %struct.Reg* %5423, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %5424 to i64*
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5426 = getelementptr inbounds %struct.GPR, %struct.GPR* %5425, i32 0, i32 15
  %5427 = getelementptr inbounds %struct.Reg, %struct.Reg* %5426, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %5427 to i64*
  %5428 = load i64, i64* %RBP.i334
  %5429 = sub i64 %5428, 1644
  %5430 = load i64, i64* %PC.i332
  %5431 = add i64 %5430, 7
  store i64 %5431, i64* %PC.i332
  %5432 = inttoptr i64 %5429 to i32*
  %5433 = load i32, i32* %5432
  %5434 = sext i32 %5433 to i64
  store i64 %5434, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_46e72d, %struct.Memory** %MEMORY
  %loadMem_46e734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5436 = getelementptr inbounds %struct.GPR, %struct.GPR* %5435, i32 0, i32 33
  %5437 = getelementptr inbounds %struct.Reg, %struct.Reg* %5436, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5437 to i64*
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 1
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %5440 to i64*
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 5
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %5443 to i64*
  %5444 = load i64, i64* %RAX.i330
  %5445 = add i64 %5444, 12099168
  %5446 = load i64, i64* %PC.i329
  %5447 = add i64 %5446, 8
  store i64 %5447, i64* %PC.i329
  %5448 = inttoptr i64 %5445 to i8*
  %5449 = load i8, i8* %5448
  %5450 = zext i8 %5449 to i64
  store i64 %5450, i64* %RCX.i331, align 8
  store %struct.Memory* %loadMem_46e734, %struct.Memory** %MEMORY
  %loadMem_46e73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 33
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %5453 to i64*
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 5
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5456 to i32*
  %5457 = load i32, i32* %ECX.i
  %5458 = zext i32 %5457 to i64
  %5459 = load i64, i64* %PC.i328
  %5460 = add i64 %5459, 3
  store i64 %5460, i64* %PC.i328
  %5461 = sub i32 %5457, 1
  %5462 = icmp ult i32 %5457, 1
  %5463 = zext i1 %5462 to i8
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5463, i8* %5464, align 1
  %5465 = and i32 %5461, 255
  %5466 = call i32 @llvm.ctpop.i32(i32 %5465)
  %5467 = trunc i32 %5466 to i8
  %5468 = and i8 %5467, 1
  %5469 = xor i8 %5468, 1
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5469, i8* %5470, align 1
  %5471 = xor i64 1, %5458
  %5472 = trunc i64 %5471 to i32
  %5473 = xor i32 %5472, %5461
  %5474 = lshr i32 %5473, 4
  %5475 = trunc i32 %5474 to i8
  %5476 = and i8 %5475, 1
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5476, i8* %5477, align 1
  %5478 = icmp eq i32 %5461, 0
  %5479 = zext i1 %5478 to i8
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5479, i8* %5480, align 1
  %5481 = lshr i32 %5461, 31
  %5482 = trunc i32 %5481 to i8
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5482, i8* %5483, align 1
  %5484 = lshr i32 %5457, 31
  %5485 = xor i32 %5481, %5484
  %5486 = add i32 %5485, %5484
  %5487 = icmp eq i32 %5486, 2
  %5488 = zext i1 %5487 to i8
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5488, i8* %5489, align 1
  store %struct.Memory* %loadMem_46e73c, %struct.Memory** %MEMORY
  %loadMem_46e73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5491 = getelementptr inbounds %struct.GPR, %struct.GPR* %5490, i32 0, i32 33
  %5492 = getelementptr inbounds %struct.Reg, %struct.Reg* %5491, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %5492 to i64*
  %5493 = load i64, i64* %PC.i327
  %5494 = add i64 %5493, 118
  %5495 = load i64, i64* %PC.i327
  %5496 = add i64 %5495, 6
  %5497 = load i64, i64* %PC.i327
  %5498 = add i64 %5497, 6
  store i64 %5498, i64* %PC.i327
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5500 = load i8, i8* %5499, align 1
  %5501 = icmp eq i8 %5500, 0
  %5502 = zext i1 %5501 to i8
  store i8 %5502, i8* %BRANCH_TAKEN, align 1
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5504 = select i1 %5501, i64 %5494, i64 %5496
  store i64 %5504, i64* %5503, align 8
  store %struct.Memory* %loadMem_46e73f, %struct.Memory** %MEMORY
  %loadBr_46e73f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e73f = icmp eq i8 %loadBr_46e73f, 1
  br i1 %cmpBr_46e73f, label %block_.L_46e7b5, label %block_46e745

block_46e745:                                     ; preds = %block_.L_46e72d
  %loadMem_46e745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 33
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %5507 to i64*
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5509 = getelementptr inbounds %struct.GPR, %struct.GPR* %5508, i32 0, i32 9
  %5510 = getelementptr inbounds %struct.Reg, %struct.Reg* %5509, i32 0, i32 0
  %RSI.i326 = bitcast %union.anon* %5510 to i64*
  %5511 = load i64, i64* %PC.i325
  %5512 = add i64 %5511, 5
  store i64 %5512, i64* %PC.i325
  store i64 2, i64* %RSI.i326, align 8
  store %struct.Memory* %loadMem_46e745, %struct.Memory** %MEMORY
  %loadMem_46e74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 33
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %5515 to i64*
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 11
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %RDI.i323 = bitcast %union.anon* %5518 to i64*
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 15
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %5521 to i64*
  %5522 = load i64, i64* %RBP.i324
  %5523 = sub i64 %5522, 1644
  %5524 = load i64, i64* %PC.i322
  %5525 = add i64 %5524, 6
  store i64 %5525, i64* %PC.i322
  %5526 = inttoptr i64 %5523 to i32*
  %5527 = load i32, i32* %5526
  %5528 = zext i32 %5527 to i64
  store i64 %5528, i64* %RDI.i323, align 8
  store %struct.Memory* %loadMem_46e74a, %struct.Memory** %MEMORY
  %loadMem1_46e750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 33
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %5531 to i64*
  %5532 = load i64, i64* %PC.i321
  %5533 = add i64 %5532, -2352
  %5534 = load i64, i64* %PC.i321
  %5535 = add i64 %5534, 5
  %5536 = load i64, i64* %PC.i321
  %5537 = add i64 %5536, 5
  store i64 %5537, i64* %PC.i321
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5539 = load i64, i64* %5538, align 8
  %5540 = add i64 %5539, -8
  %5541 = inttoptr i64 %5540 to i64*
  store i64 %5535, i64* %5541
  store i64 %5540, i64* %5538, align 8
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5533, i64* %5542, align 8
  store %struct.Memory* %loadMem1_46e750, %struct.Memory** %MEMORY
  %loadMem2_46e750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e750 = load i64, i64* %3
  %call2_46e750 = call %struct.Memory* @sub_46de20.captured_territory(%struct.State* %0, i64 %loadPC_46e750, %struct.Memory* %loadMem2_46e750)
  store %struct.Memory* %call2_46e750, %struct.Memory** %MEMORY
  %loadMem_46e755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 33
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5545 to i64*
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 1
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %EAX.i320 = bitcast %union.anon* %5548 to i32*
  %5549 = load i32, i32* %EAX.i320
  %5550 = zext i32 %5549 to i64
  %5551 = load i64, i64* %PC.i319
  %5552 = add i64 %5551, 3
  store i64 %5552, i64* %PC.i319
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5553, align 1
  %5554 = and i32 %5549, 255
  %5555 = call i32 @llvm.ctpop.i32(i32 %5554)
  %5556 = trunc i32 %5555 to i8
  %5557 = and i8 %5556, 1
  %5558 = xor i8 %5557, 1
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5558, i8* %5559, align 1
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5560, align 1
  %5561 = icmp eq i32 %5549, 0
  %5562 = zext i1 %5561 to i8
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5562, i8* %5563, align 1
  %5564 = lshr i32 %5549, 31
  %5565 = trunc i32 %5564 to i8
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5565, i8* %5566, align 1
  %5567 = lshr i32 %5549, 31
  %5568 = xor i32 %5564, %5567
  %5569 = add i32 %5568, %5567
  %5570 = icmp eq i32 %5569, 2
  %5571 = zext i1 %5570 to i8
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5571, i8* %5572, align 1
  store %struct.Memory* %loadMem_46e755, %struct.Memory** %MEMORY
  %loadMem_46e758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5574 = getelementptr inbounds %struct.GPR, %struct.GPR* %5573, i32 0, i32 33
  %5575 = getelementptr inbounds %struct.Reg, %struct.Reg* %5574, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %5575 to i64*
  %5576 = load i64, i64* %PC.i318
  %5577 = add i64 %5576, 88
  %5578 = load i64, i64* %PC.i318
  %5579 = add i64 %5578, 6
  %5580 = load i64, i64* %PC.i318
  %5581 = add i64 %5580, 6
  store i64 %5581, i64* %PC.i318
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5583 = load i8, i8* %5582, align 1
  store i8 %5583, i8* %BRANCH_TAKEN, align 1
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5585 = icmp ne i8 %5583, 0
  %5586 = select i1 %5585, i64 %5577, i64 %5579
  store i64 %5586, i64* %5584, align 8
  store %struct.Memory* %loadMem_46e758, %struct.Memory** %MEMORY
  %loadBr_46e758 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e758 = icmp eq i8 %loadBr_46e758, 1
  br i1 %cmpBr_46e758, label %block_.L_46e7b0, label %block_46e75e

block_46e75e:                                     ; preds = %block_46e745
  %loadMem_46e75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5588 = getelementptr inbounds %struct.GPR, %struct.GPR* %5587, i32 0, i32 33
  %5589 = getelementptr inbounds %struct.Reg, %struct.Reg* %5588, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5589 to i64*
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5591 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5590, i64 0, i64 0
  %YMM0.i317 = bitcast %union.VectorReg* %5591 to %"class.std::bitset"*
  %5592 = bitcast %"class.std::bitset"* %YMM0.i317 to i8*
  %5593 = load i64, i64* %PC.i316
  %5594 = add i64 %5593, ptrtoint (%G_0x749a6__rip__type* @G_0x749a6__rip_ to i64)
  %5595 = load i64, i64* %PC.i316
  %5596 = add i64 %5595, 8
  store i64 %5596, i64* %PC.i316
  %5597 = inttoptr i64 %5594 to float*
  %5598 = load float, float* %5597
  %5599 = bitcast i8* %5592 to float*
  store float %5598, float* %5599, align 1
  %5600 = getelementptr inbounds i8, i8* %5592, i64 4
  %5601 = bitcast i8* %5600 to float*
  store float 0.000000e+00, float* %5601, align 1
  %5602 = getelementptr inbounds i8, i8* %5592, i64 8
  %5603 = bitcast i8* %5602 to float*
  store float 0.000000e+00, float* %5603, align 1
  %5604 = getelementptr inbounds i8, i8* %5592, i64 12
  %5605 = bitcast i8* %5604 to float*
  store float 0.000000e+00, float* %5605, align 1
  store %struct.Memory* %loadMem_46e75e, %struct.Memory** %MEMORY
  %loadMem_46e766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5607 = getelementptr inbounds %struct.GPR, %struct.GPR* %5606, i32 0, i32 33
  %5608 = getelementptr inbounds %struct.Reg, %struct.Reg* %5607, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5608 to i64*
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5610 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5609, i64 0, i64 1
  %YMM1.i315 = bitcast %union.VectorReg* %5610 to %"class.std::bitset"*
  %5611 = bitcast %"class.std::bitset"* %YMM1.i315 to i8*
  %5612 = load i64, i64* %PC.i314
  %5613 = add i64 %5612, ptrtoint (%G_0x749c6__rip__type* @G_0x749c6__rip_ to i64)
  %5614 = load i64, i64* %PC.i314
  %5615 = add i64 %5614, 8
  store i64 %5615, i64* %PC.i314
  %5616 = inttoptr i64 %5613 to float*
  %5617 = load float, float* %5616
  %5618 = bitcast i8* %5611 to float*
  store float %5617, float* %5618, align 1
  %5619 = getelementptr inbounds i8, i8* %5611, i64 4
  %5620 = bitcast i8* %5619 to float*
  store float 0.000000e+00, float* %5620, align 1
  %5621 = getelementptr inbounds i8, i8* %5611, i64 8
  %5622 = bitcast i8* %5621 to float*
  store float 0.000000e+00, float* %5622, align 1
  %5623 = getelementptr inbounds i8, i8* %5611, i64 12
  %5624 = bitcast i8* %5623 to float*
  store float 0.000000e+00, float* %5624, align 1
  store %struct.Memory* %loadMem_46e766, %struct.Memory** %MEMORY
  %loadMem_46e76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5626 = getelementptr inbounds %struct.GPR, %struct.GPR* %5625, i32 0, i32 33
  %5627 = getelementptr inbounds %struct.Reg, %struct.Reg* %5626, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5627 to i64*
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5629 = getelementptr inbounds %struct.GPR, %struct.GPR* %5628, i32 0, i32 15
  %5630 = getelementptr inbounds %struct.Reg, %struct.Reg* %5629, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %5630 to i64*
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5632 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5631, i64 0, i64 1
  %YMM1.i313 = bitcast %union.VectorReg* %5632 to %"class.std::bitset"*
  %5633 = bitcast %"class.std::bitset"* %YMM1.i313 to i8*
  %5634 = bitcast %"class.std::bitset"* %YMM1.i313 to i8*
  %5635 = load i64, i64* %RBP.i312
  %5636 = sub i64 %5635, 1624
  %5637 = load i64, i64* %PC.i311
  %5638 = add i64 %5637, 8
  store i64 %5638, i64* %PC.i311
  %5639 = bitcast i8* %5634 to <2 x float>*
  %5640 = load <2 x float>, <2 x float>* %5639, align 1
  %5641 = getelementptr inbounds i8, i8* %5634, i64 8
  %5642 = bitcast i8* %5641 to <2 x i32>*
  %5643 = load <2 x i32>, <2 x i32>* %5642, align 1
  %5644 = inttoptr i64 %5636 to float*
  %5645 = load float, float* %5644
  %5646 = extractelement <2 x float> %5640, i32 0
  %5647 = fadd float %5646, %5645
  %5648 = bitcast i8* %5633 to float*
  store float %5647, float* %5648, align 1
  %5649 = bitcast <2 x float> %5640 to <2 x i32>
  %5650 = extractelement <2 x i32> %5649, i32 1
  %5651 = getelementptr inbounds i8, i8* %5633, i64 4
  %5652 = bitcast i8* %5651 to i32*
  store i32 %5650, i32* %5652, align 1
  %5653 = extractelement <2 x i32> %5643, i32 0
  %5654 = getelementptr inbounds i8, i8* %5633, i64 8
  %5655 = bitcast i8* %5654 to i32*
  store i32 %5653, i32* %5655, align 1
  %5656 = extractelement <2 x i32> %5643, i32 1
  %5657 = getelementptr inbounds i8, i8* %5633, i64 12
  %5658 = bitcast i8* %5657 to i32*
  store i32 %5656, i32* %5658, align 1
  store %struct.Memory* %loadMem_46e76e, %struct.Memory** %MEMORY
  %loadMem_46e776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 33
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %5661 to i64*
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 15
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %5664 to i64*
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5666 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5665, i64 0, i64 1
  %XMM1.i310 = bitcast %union.VectorReg* %5666 to %union.vec128_t*
  %5667 = load i64, i64* %RBP.i309
  %5668 = sub i64 %5667, 1624
  %5669 = bitcast %union.vec128_t* %XMM1.i310 to i8*
  %5670 = load i64, i64* %PC.i308
  %5671 = add i64 %5670, 8
  store i64 %5671, i64* %PC.i308
  %5672 = bitcast i8* %5669 to <2 x float>*
  %5673 = load <2 x float>, <2 x float>* %5672, align 1
  %5674 = extractelement <2 x float> %5673, i32 0
  %5675 = inttoptr i64 %5668 to float*
  store float %5674, float* %5675
  store %struct.Memory* %loadMem_46e776, %struct.Memory** %MEMORY
  %loadMem_46e77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 33
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5678 to i64*
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5680 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5679, i64 0, i64 1
  %YMM1.i306 = bitcast %union.VectorReg* %5680 to %"class.std::bitset"*
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5682 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5681, i64 0, i64 0
  %XMM0.i307 = bitcast %union.VectorReg* %5682 to %union.vec128_t*
  %5683 = bitcast %"class.std::bitset"* %YMM1.i306 to i8*
  %5684 = bitcast %union.vec128_t* %XMM0.i307 to i8*
  %5685 = load i64, i64* %PC.i305
  %5686 = add i64 %5685, 3
  store i64 %5686, i64* %PC.i305
  %5687 = bitcast i8* %5684 to <2 x i32>*
  %5688 = load <2 x i32>, <2 x i32>* %5687, align 1
  %5689 = getelementptr inbounds i8, i8* %5684, i64 8
  %5690 = bitcast i8* %5689 to <2 x i32>*
  %5691 = load <2 x i32>, <2 x i32>* %5690, align 1
  %5692 = extractelement <2 x i32> %5688, i32 0
  %5693 = bitcast i8* %5683 to i32*
  store i32 %5692, i32* %5693, align 1
  %5694 = extractelement <2 x i32> %5688, i32 1
  %5695 = getelementptr inbounds i8, i8* %5683, i64 4
  %5696 = bitcast i8* %5695 to i32*
  store i32 %5694, i32* %5696, align 1
  %5697 = extractelement <2 x i32> %5691, i32 0
  %5698 = getelementptr inbounds i8, i8* %5683, i64 8
  %5699 = bitcast i8* %5698 to i32*
  store i32 %5697, i32* %5699, align 1
  %5700 = extractelement <2 x i32> %5691, i32 1
  %5701 = getelementptr inbounds i8, i8* %5683, i64 12
  %5702 = bitcast i8* %5701 to i32*
  store i32 %5700, i32* %5702, align 1
  store %struct.Memory* %loadMem_46e77e, %struct.Memory** %MEMORY
  %loadMem_46e781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5704 = getelementptr inbounds %struct.GPR, %struct.GPR* %5703, i32 0, i32 33
  %5705 = getelementptr inbounds %struct.Reg, %struct.Reg* %5704, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %5705 to i64*
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5707 = getelementptr inbounds %struct.GPR, %struct.GPR* %5706, i32 0, i32 15
  %5708 = getelementptr inbounds %struct.Reg, %struct.Reg* %5707, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %5708 to i64*
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5709, i64 0, i64 1
  %YMM1.i304 = bitcast %union.VectorReg* %5710 to %"class.std::bitset"*
  %5711 = bitcast %"class.std::bitset"* %YMM1.i304 to i8*
  %5712 = bitcast %"class.std::bitset"* %YMM1.i304 to i8*
  %5713 = load i64, i64* %RBP.i303
  %5714 = sub i64 %5713, 1632
  %5715 = load i64, i64* %PC.i302
  %5716 = add i64 %5715, 8
  store i64 %5716, i64* %PC.i302
  %5717 = bitcast i8* %5712 to <2 x float>*
  %5718 = load <2 x float>, <2 x float>* %5717, align 1
  %5719 = getelementptr inbounds i8, i8* %5712, i64 8
  %5720 = bitcast i8* %5719 to <2 x i32>*
  %5721 = load <2 x i32>, <2 x i32>* %5720, align 1
  %5722 = inttoptr i64 %5714 to float*
  %5723 = load float, float* %5722
  %5724 = extractelement <2 x float> %5718, i32 0
  %5725 = fadd float %5724, %5723
  %5726 = bitcast i8* %5711 to float*
  store float %5725, float* %5726, align 1
  %5727 = bitcast <2 x float> %5718 to <2 x i32>
  %5728 = extractelement <2 x i32> %5727, i32 1
  %5729 = getelementptr inbounds i8, i8* %5711, i64 4
  %5730 = bitcast i8* %5729 to i32*
  store i32 %5728, i32* %5730, align 1
  %5731 = extractelement <2 x i32> %5721, i32 0
  %5732 = getelementptr inbounds i8, i8* %5711, i64 8
  %5733 = bitcast i8* %5732 to i32*
  store i32 %5731, i32* %5733, align 1
  %5734 = extractelement <2 x i32> %5721, i32 1
  %5735 = getelementptr inbounds i8, i8* %5711, i64 12
  %5736 = bitcast i8* %5735 to i32*
  store i32 %5734, i32* %5736, align 1
  store %struct.Memory* %loadMem_46e781, %struct.Memory** %MEMORY
  %loadMem_46e789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5738 = getelementptr inbounds %struct.GPR, %struct.GPR* %5737, i32 0, i32 33
  %5739 = getelementptr inbounds %struct.Reg, %struct.Reg* %5738, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %5739 to i64*
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 15
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %5742 to i64*
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5744 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5743, i64 0, i64 1
  %XMM1.i301 = bitcast %union.VectorReg* %5744 to %union.vec128_t*
  %5745 = load i64, i64* %RBP.i300
  %5746 = sub i64 %5745, 1632
  %5747 = bitcast %union.vec128_t* %XMM1.i301 to i8*
  %5748 = load i64, i64* %PC.i299
  %5749 = add i64 %5748, 8
  store i64 %5749, i64* %PC.i299
  %5750 = bitcast i8* %5747 to <2 x float>*
  %5751 = load <2 x float>, <2 x float>* %5750, align 1
  %5752 = extractelement <2 x float> %5751, i32 0
  %5753 = inttoptr i64 %5746 to float*
  store float %5752, float* %5753
  store %struct.Memory* %loadMem_46e789, %struct.Memory** %MEMORY
  %loadMem_46e791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 33
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %5756 to i64*
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5758 = getelementptr inbounds %struct.GPR, %struct.GPR* %5757, i32 0, i32 1
  %5759 = getelementptr inbounds %struct.Reg, %struct.Reg* %5758, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %5759 to i64*
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 15
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %5762 to i64*
  %5763 = load i64, i64* %RBP.i298
  %5764 = sub i64 %5763, 1676
  %5765 = load i64, i64* %PC.i296
  %5766 = add i64 %5765, 6
  store i64 %5766, i64* %PC.i296
  %5767 = inttoptr i64 %5764 to i32*
  %5768 = load i32, i32* %5767
  %5769 = zext i32 %5768 to i64
  store i64 %5769, i64* %RAX.i297, align 8
  store %struct.Memory* %loadMem_46e791, %struct.Memory** %MEMORY
  %loadMem_46e797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5771 = getelementptr inbounds %struct.GPR, %struct.GPR* %5770, i32 0, i32 33
  %5772 = getelementptr inbounds %struct.Reg, %struct.Reg* %5771, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5772 to i64*
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 1
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %5775 to i64*
  %5776 = load i64, i64* %RAX.i295
  %5777 = load i64, i64* %PC.i294
  %5778 = add i64 %5777, 3
  store i64 %5778, i64* %PC.i294
  %5779 = trunc i64 %5776 to i32
  %5780 = add i32 2, %5779
  %5781 = zext i32 %5780 to i64
  store i64 %5781, i64* %RAX.i295, align 8
  %5782 = icmp ult i32 %5780, %5779
  %5783 = icmp ult i32 %5780, 2
  %5784 = or i1 %5782, %5783
  %5785 = zext i1 %5784 to i8
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5785, i8* %5786, align 1
  %5787 = and i32 %5780, 255
  %5788 = call i32 @llvm.ctpop.i32(i32 %5787)
  %5789 = trunc i32 %5788 to i8
  %5790 = and i8 %5789, 1
  %5791 = xor i8 %5790, 1
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5791, i8* %5792, align 1
  %5793 = xor i64 2, %5776
  %5794 = trunc i64 %5793 to i32
  %5795 = xor i32 %5794, %5780
  %5796 = lshr i32 %5795, 4
  %5797 = trunc i32 %5796 to i8
  %5798 = and i8 %5797, 1
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5798, i8* %5799, align 1
  %5800 = icmp eq i32 %5780, 0
  %5801 = zext i1 %5800 to i8
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5801, i8* %5802, align 1
  %5803 = lshr i32 %5780, 31
  %5804 = trunc i32 %5803 to i8
  %5805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5804, i8* %5805, align 1
  %5806 = lshr i32 %5779, 31
  %5807 = xor i32 %5803, %5806
  %5808 = add i32 %5807, %5803
  %5809 = icmp eq i32 %5808, 2
  %5810 = zext i1 %5809 to i8
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5810, i8* %5811, align 1
  store %struct.Memory* %loadMem_46e797, %struct.Memory** %MEMORY
  %loadMem_46e79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5813 = getelementptr inbounds %struct.GPR, %struct.GPR* %5812, i32 0, i32 33
  %5814 = getelementptr inbounds %struct.Reg, %struct.Reg* %5813, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5814 to i64*
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5816 = getelementptr inbounds %struct.GPR, %struct.GPR* %5815, i32 0, i32 1
  %5817 = getelementptr inbounds %struct.Reg, %struct.Reg* %5816, i32 0, i32 0
  %EAX.i292 = bitcast %union.anon* %5817 to i32*
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5819 = getelementptr inbounds %struct.GPR, %struct.GPR* %5818, i32 0, i32 15
  %5820 = getelementptr inbounds %struct.Reg, %struct.Reg* %5819, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %5820 to i64*
  %5821 = load i64, i64* %RBP.i293
  %5822 = sub i64 %5821, 1676
  %5823 = load i32, i32* %EAX.i292
  %5824 = zext i32 %5823 to i64
  %5825 = load i64, i64* %PC.i291
  %5826 = add i64 %5825, 6
  store i64 %5826, i64* %PC.i291
  %5827 = inttoptr i64 %5822 to i32*
  store i32 %5823, i32* %5827
  store %struct.Memory* %loadMem_46e79a, %struct.Memory** %MEMORY
  %loadMem_46e7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 33
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 15
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %5833 to i64*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5835 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5834, i64 0, i64 0
  %YMM0.i290 = bitcast %union.VectorReg* %5835 to %"class.std::bitset"*
  %5836 = bitcast %"class.std::bitset"* %YMM0.i290 to i8*
  %5837 = bitcast %"class.std::bitset"* %YMM0.i290 to i8*
  %5838 = load i64, i64* %RBP.i289
  %5839 = sub i64 %5838, 1632
  %5840 = load i64, i64* %PC.i288
  %5841 = add i64 %5840, 8
  store i64 %5841, i64* %PC.i288
  %5842 = bitcast i8* %5837 to <2 x float>*
  %5843 = load <2 x float>, <2 x float>* %5842, align 1
  %5844 = getelementptr inbounds i8, i8* %5837, i64 8
  %5845 = bitcast i8* %5844 to <2 x i32>*
  %5846 = load <2 x i32>, <2 x i32>* %5845, align 1
  %5847 = inttoptr i64 %5839 to float*
  %5848 = load float, float* %5847
  %5849 = extractelement <2 x float> %5843, i32 0
  %5850 = fadd float %5849, %5848
  %5851 = bitcast i8* %5836 to float*
  store float %5850, float* %5851, align 1
  %5852 = bitcast <2 x float> %5843 to <2 x i32>
  %5853 = extractelement <2 x i32> %5852, i32 1
  %5854 = getelementptr inbounds i8, i8* %5836, i64 4
  %5855 = bitcast i8* %5854 to i32*
  store i32 %5853, i32* %5855, align 1
  %5856 = extractelement <2 x i32> %5846, i32 0
  %5857 = getelementptr inbounds i8, i8* %5836, i64 8
  %5858 = bitcast i8* %5857 to i32*
  store i32 %5856, i32* %5858, align 1
  %5859 = extractelement <2 x i32> %5846, i32 1
  %5860 = getelementptr inbounds i8, i8* %5836, i64 12
  %5861 = bitcast i8* %5860 to i32*
  store i32 %5859, i32* %5861, align 1
  store %struct.Memory* %loadMem_46e7a0, %struct.Memory** %MEMORY
  %loadMem_46e7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5863 = getelementptr inbounds %struct.GPR, %struct.GPR* %5862, i32 0, i32 33
  %5864 = getelementptr inbounds %struct.Reg, %struct.Reg* %5863, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5864 to i64*
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5866 = getelementptr inbounds %struct.GPR, %struct.GPR* %5865, i32 0, i32 15
  %5867 = getelementptr inbounds %struct.Reg, %struct.Reg* %5866, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %5867 to i64*
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5869 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5868, i64 0, i64 0
  %XMM0.i287 = bitcast %union.VectorReg* %5869 to %union.vec128_t*
  %5870 = load i64, i64* %RBP.i286
  %5871 = sub i64 %5870, 1632
  %5872 = bitcast %union.vec128_t* %XMM0.i287 to i8*
  %5873 = load i64, i64* %PC.i285
  %5874 = add i64 %5873, 8
  store i64 %5874, i64* %PC.i285
  %5875 = bitcast i8* %5872 to <2 x float>*
  %5876 = load <2 x float>, <2 x float>* %5875, align 1
  %5877 = extractelement <2 x float> %5876, i32 0
  %5878 = inttoptr i64 %5871 to float*
  store float %5877, float* %5878
  store %struct.Memory* %loadMem_46e7a8, %struct.Memory** %MEMORY
  br label %block_.L_46e7b0

block_.L_46e7b0:                                  ; preds = %block_46e75e, %block_46e745
  %loadMem_46e7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5880 = getelementptr inbounds %struct.GPR, %struct.GPR* %5879, i32 0, i32 33
  %5881 = getelementptr inbounds %struct.Reg, %struct.Reg* %5880, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5881 to i64*
  %5882 = load i64, i64* %PC.i284
  %5883 = add i64 %5882, 228
  %5884 = load i64, i64* %PC.i284
  %5885 = add i64 %5884, 5
  store i64 %5885, i64* %PC.i284
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5883, i64* %5886, align 8
  store %struct.Memory* %loadMem_46e7b0, %struct.Memory** %MEMORY
  br label %block_.L_46e894

block_.L_46e7b5:                                  ; preds = %block_.L_46e72d
  %loadMem_46e7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 33
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %5889 to i64*
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5890, i64 0, i64 0
  %YMM0.i282 = bitcast %union.VectorReg* %5891 to %"class.std::bitset"*
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5893 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5892, i64 0, i64 0
  %XMM0.i283 = bitcast %union.VectorReg* %5893 to %union.vec128_t*
  %5894 = bitcast %"class.std::bitset"* %YMM0.i282 to i8*
  %5895 = bitcast %"class.std::bitset"* %YMM0.i282 to i8*
  %5896 = bitcast %union.vec128_t* %XMM0.i283 to i8*
  %5897 = load i64, i64* %PC.i281
  %5898 = add i64 %5897, 3
  store i64 %5898, i64* %PC.i281
  %5899 = bitcast i8* %5895 to i64*
  %5900 = load i64, i64* %5899, align 1
  %5901 = getelementptr inbounds i8, i8* %5895, i64 8
  %5902 = bitcast i8* %5901 to i64*
  %5903 = load i64, i64* %5902, align 1
  %5904 = bitcast i8* %5896 to i64*
  %5905 = load i64, i64* %5904, align 1
  %5906 = getelementptr inbounds i8, i8* %5896, i64 8
  %5907 = bitcast i8* %5906 to i64*
  %5908 = load i64, i64* %5907, align 1
  %5909 = xor i64 %5905, %5900
  %5910 = xor i64 %5908, %5903
  %5911 = trunc i64 %5909 to i32
  %5912 = lshr i64 %5909, 32
  %5913 = trunc i64 %5912 to i32
  %5914 = bitcast i8* %5894 to i32*
  store i32 %5911, i32* %5914, align 1
  %5915 = getelementptr inbounds i8, i8* %5894, i64 4
  %5916 = bitcast i8* %5915 to i32*
  store i32 %5913, i32* %5916, align 1
  %5917 = trunc i64 %5910 to i32
  %5918 = getelementptr inbounds i8, i8* %5894, i64 8
  %5919 = bitcast i8* %5918 to i32*
  store i32 %5917, i32* %5919, align 1
  %5920 = lshr i64 %5910, 32
  %5921 = trunc i64 %5920 to i32
  %5922 = getelementptr inbounds i8, i8* %5894, i64 12
  %5923 = bitcast i8* %5922 to i32*
  store i32 %5921, i32* %5923, align 1
  store %struct.Memory* %loadMem_46e7b5, %struct.Memory** %MEMORY
  %loadMem_46e7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5925 = getelementptr inbounds %struct.GPR, %struct.GPR* %5924, i32 0, i32 33
  %5926 = getelementptr inbounds %struct.Reg, %struct.Reg* %5925, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5926 to i64*
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5928 = getelementptr inbounds %struct.GPR, %struct.GPR* %5927, i32 0, i32 1
  %5929 = getelementptr inbounds %struct.Reg, %struct.Reg* %5928, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %5929 to i64*
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5931 = getelementptr inbounds %struct.GPR, %struct.GPR* %5930, i32 0, i32 15
  %5932 = getelementptr inbounds %struct.Reg, %struct.Reg* %5931, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %5932 to i64*
  %5933 = load i64, i64* %RBP.i280
  %5934 = sub i64 %5933, 1644
  %5935 = load i64, i64* %PC.i278
  %5936 = add i64 %5935, 7
  store i64 %5936, i64* %PC.i278
  %5937 = inttoptr i64 %5934 to i32*
  %5938 = load i32, i32* %5937
  %5939 = sext i32 %5938 to i64
  store i64 %5939, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_46e7b8, %struct.Memory** %MEMORY
  %loadMem_46e7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5941 = getelementptr inbounds %struct.GPR, %struct.GPR* %5940, i32 0, i32 33
  %5942 = getelementptr inbounds %struct.Reg, %struct.Reg* %5941, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5942 to i64*
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 1
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %5945 to i64*
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 15
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %5948 to i64*
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5949, i64 0, i64 1
  %YMM1.i277 = bitcast %union.VectorReg* %5950 to %"class.std::bitset"*
  %5951 = bitcast %"class.std::bitset"* %YMM1.i277 to i8*
  %5952 = load i64, i64* %RBP.i276
  %5953 = load i64, i64* %RAX.i275
  %5954 = mul i64 %5953, 4
  %5955 = add i64 %5952, -1616
  %5956 = add i64 %5955, %5954
  %5957 = load i64, i64* %PC.i274
  %5958 = add i64 %5957, 9
  store i64 %5958, i64* %PC.i274
  %5959 = inttoptr i64 %5956 to i32*
  %5960 = load i32, i32* %5959
  %5961 = sitofp i32 %5960 to double
  %5962 = bitcast i8* %5951 to double*
  store double %5961, double* %5962, align 1
  store %struct.Memory* %loadMem_46e7bf, %struct.Memory** %MEMORY
  %loadMem_46e7c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 33
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5965 to i64*
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5967 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5966, i64 0, i64 0
  %XMM0.i270 = bitcast %union.VectorReg* %5967 to %union.vec128_t*
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5969 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5968, i64 0, i64 1
  %XMM1.i271 = bitcast %union.VectorReg* %5969 to %union.vec128_t*
  %5970 = bitcast %union.vec128_t* %XMM1.i271 to i8*
  %5971 = bitcast %union.vec128_t* %XMM0.i270 to i8*
  %5972 = load i64, i64* %PC.i269
  %5973 = add i64 %5972, 4
  store i64 %5973, i64* %PC.i269
  %5974 = bitcast i8* %5970 to double*
  %5975 = load double, double* %5974, align 1
  %5976 = bitcast i8* %5971 to double*
  %5977 = load double, double* %5976, align 1
  %5978 = fcmp uno double %5975, %5977
  br i1 %5978, label %5979, label %5991

; <label>:5979:                                   ; preds = %block_.L_46e7b5
  %5980 = fadd double %5975, %5977
  %5981 = bitcast double %5980 to i64
  %5982 = and i64 %5981, 9221120237041090560
  %5983 = icmp eq i64 %5982, 9218868437227405312
  %5984 = and i64 %5981, 2251799813685247
  %5985 = icmp ne i64 %5984, 0
  %5986 = and i1 %5983, %5985
  br i1 %5986, label %5987, label %5997

; <label>:5987:                                   ; preds = %5979
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5989 = load i64, i64* %5988, align 8
  %5990 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5989, %struct.Memory* %loadMem_46e7c8)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:5991:                                   ; preds = %block_.L_46e7b5
  %5992 = fcmp ogt double %5975, %5977
  br i1 %5992, label %5997, label %5993

; <label>:5993:                                   ; preds = %5991
  %5994 = fcmp olt double %5975, %5977
  br i1 %5994, label %5997, label %5995

; <label>:5995:                                   ; preds = %5993
  %5996 = fcmp oeq double %5975, %5977
  br i1 %5996, label %5997, label %6004

; <label>:5997:                                   ; preds = %5995, %5993, %5991, %5979
  %5998 = phi i8 [ 0, %5991 ], [ 0, %5993 ], [ 1, %5995 ], [ 1, %5979 ]
  %5999 = phi i8 [ 0, %5991 ], [ 0, %5993 ], [ 0, %5995 ], [ 1, %5979 ]
  %6000 = phi i8 [ 0, %5991 ], [ 1, %5993 ], [ 0, %5995 ], [ 1, %5979 ]
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5998, i8* %6001, align 1
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5999, i8* %6002, align 1
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6000, i8* %6003, align 1
  br label %6004

; <label>:6004:                                   ; preds = %5997, %5995
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6005, align 1
  %6006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6006, align 1
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6007, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %5987, %6004
  %6008 = phi %struct.Memory* [ %5990, %5987 ], [ %loadMem_46e7c8, %6004 ]
  store %struct.Memory* %6008, %struct.Memory** %MEMORY
  %loadMem_46e7cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6010 = getelementptr inbounds %struct.GPR, %struct.GPR* %6009, i32 0, i32 33
  %6011 = getelementptr inbounds %struct.Reg, %struct.Reg* %6010, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %6011 to i64*
  %6012 = load i64, i64* %PC.i268
  %6013 = add i64 %6012, 88
  %6014 = load i64, i64* %PC.i268
  %6015 = add i64 %6014, 6
  %6016 = load i64, i64* %PC.i268
  %6017 = add i64 %6016, 6
  store i64 %6017, i64* %PC.i268
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6019 = load i8, i8* %6018, align 1
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6021 = load i8, i8* %6020, align 1
  %6022 = or i8 %6021, %6019
  %6023 = icmp ne i8 %6022, 0
  %6024 = zext i1 %6023 to i8
  store i8 %6024, i8* %BRANCH_TAKEN, align 1
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6026 = select i1 %6023, i64 %6013, i64 %6015
  store i64 %6026, i64* %6025, align 8
  store %struct.Memory* %loadMem_46e7cc, %struct.Memory** %MEMORY
  %loadBr_46e7cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e7cc = icmp eq i8 %loadBr_46e7cc, 1
  br i1 %cmpBr_46e7cc, label %block_.L_46e824, label %block_46e7d2

block_46e7d2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_46e7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 33
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %6029 to i64*
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6031 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6030, i64 0, i64 0
  %YMM0.i267 = bitcast %union.VectorReg* %6031 to %"class.std::bitset"*
  %6032 = bitcast %"class.std::bitset"* %YMM0.i267 to i8*
  %6033 = load i64, i64* %PC.i266
  %6034 = add i64 %6033, ptrtoint (%G_0x74932__rip__type* @G_0x74932__rip_ to i64)
  %6035 = load i64, i64* %PC.i266
  %6036 = add i64 %6035, 8
  store i64 %6036, i64* %PC.i266
  %6037 = inttoptr i64 %6034 to float*
  %6038 = load float, float* %6037
  %6039 = bitcast i8* %6032 to float*
  store float %6038, float* %6039, align 1
  %6040 = getelementptr inbounds i8, i8* %6032, i64 4
  %6041 = bitcast i8* %6040 to float*
  store float 0.000000e+00, float* %6041, align 1
  %6042 = getelementptr inbounds i8, i8* %6032, i64 8
  %6043 = bitcast i8* %6042 to float*
  store float 0.000000e+00, float* %6043, align 1
  %6044 = getelementptr inbounds i8, i8* %6032, i64 12
  %6045 = bitcast i8* %6044 to float*
  store float 0.000000e+00, float* %6045, align 1
  store %struct.Memory* %loadMem_46e7d2, %struct.Memory** %MEMORY
  %loadMem_46e7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6047 = getelementptr inbounds %struct.GPR, %struct.GPR* %6046, i32 0, i32 33
  %6048 = getelementptr inbounds %struct.Reg, %struct.Reg* %6047, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %6048 to i64*
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6050 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6049, i64 0, i64 1
  %YMM1.i264 = bitcast %union.VectorReg* %6050 to %"class.std::bitset"*
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6052 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6051, i64 0, i64 0
  %XMM0.i265 = bitcast %union.VectorReg* %6052 to %union.vec128_t*
  %6053 = bitcast %"class.std::bitset"* %YMM1.i264 to i8*
  %6054 = bitcast %union.vec128_t* %XMM0.i265 to i8*
  %6055 = load i64, i64* %PC.i263
  %6056 = add i64 %6055, 3
  store i64 %6056, i64* %PC.i263
  %6057 = bitcast i8* %6054 to <2 x i32>*
  %6058 = load <2 x i32>, <2 x i32>* %6057, align 1
  %6059 = getelementptr inbounds i8, i8* %6054, i64 8
  %6060 = bitcast i8* %6059 to <2 x i32>*
  %6061 = load <2 x i32>, <2 x i32>* %6060, align 1
  %6062 = extractelement <2 x i32> %6058, i32 0
  %6063 = bitcast i8* %6053 to i32*
  store i32 %6062, i32* %6063, align 1
  %6064 = extractelement <2 x i32> %6058, i32 1
  %6065 = getelementptr inbounds i8, i8* %6053, i64 4
  %6066 = bitcast i8* %6065 to i32*
  store i32 %6064, i32* %6066, align 1
  %6067 = extractelement <2 x i32> %6061, i32 0
  %6068 = getelementptr inbounds i8, i8* %6053, i64 8
  %6069 = bitcast i8* %6068 to i32*
  store i32 %6067, i32* %6069, align 1
  %6070 = extractelement <2 x i32> %6061, i32 1
  %6071 = getelementptr inbounds i8, i8* %6053, i64 12
  %6072 = bitcast i8* %6071 to i32*
  store i32 %6070, i32* %6072, align 1
  store %struct.Memory* %loadMem_46e7da, %struct.Memory** %MEMORY
  %loadMem_46e7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6074 = getelementptr inbounds %struct.GPR, %struct.GPR* %6073, i32 0, i32 33
  %6075 = getelementptr inbounds %struct.Reg, %struct.Reg* %6074, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %6075 to i64*
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6077 = getelementptr inbounds %struct.GPR, %struct.GPR* %6076, i32 0, i32 15
  %6078 = getelementptr inbounds %struct.Reg, %struct.Reg* %6077, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %6078 to i64*
  %6079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6080 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6079, i64 0, i64 1
  %YMM1.i262 = bitcast %union.VectorReg* %6080 to %"class.std::bitset"*
  %6081 = bitcast %"class.std::bitset"* %YMM1.i262 to i8*
  %6082 = bitcast %"class.std::bitset"* %YMM1.i262 to i8*
  %6083 = load i64, i64* %RBP.i261
  %6084 = sub i64 %6083, 1620
  %6085 = load i64, i64* %PC.i260
  %6086 = add i64 %6085, 8
  store i64 %6086, i64* %PC.i260
  %6087 = bitcast i8* %6082 to <2 x float>*
  %6088 = load <2 x float>, <2 x float>* %6087, align 1
  %6089 = getelementptr inbounds i8, i8* %6082, i64 8
  %6090 = bitcast i8* %6089 to <2 x i32>*
  %6091 = load <2 x i32>, <2 x i32>* %6090, align 1
  %6092 = inttoptr i64 %6084 to float*
  %6093 = load float, float* %6092
  %6094 = extractelement <2 x float> %6088, i32 0
  %6095 = fadd float %6094, %6093
  %6096 = bitcast i8* %6081 to float*
  store float %6095, float* %6096, align 1
  %6097 = bitcast <2 x float> %6088 to <2 x i32>
  %6098 = extractelement <2 x i32> %6097, i32 1
  %6099 = getelementptr inbounds i8, i8* %6081, i64 4
  %6100 = bitcast i8* %6099 to i32*
  store i32 %6098, i32* %6100, align 1
  %6101 = extractelement <2 x i32> %6091, i32 0
  %6102 = getelementptr inbounds i8, i8* %6081, i64 8
  %6103 = bitcast i8* %6102 to i32*
  store i32 %6101, i32* %6103, align 1
  %6104 = extractelement <2 x i32> %6091, i32 1
  %6105 = getelementptr inbounds i8, i8* %6081, i64 12
  %6106 = bitcast i8* %6105 to i32*
  store i32 %6104, i32* %6106, align 1
  store %struct.Memory* %loadMem_46e7dd, %struct.Memory** %MEMORY
  %loadMem_46e7e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 33
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %6109 to i64*
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 15
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %6112 to i64*
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6114 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6113, i64 0, i64 1
  %XMM1.i259 = bitcast %union.VectorReg* %6114 to %union.vec128_t*
  %6115 = load i64, i64* %RBP.i258
  %6116 = sub i64 %6115, 1620
  %6117 = bitcast %union.vec128_t* %XMM1.i259 to i8*
  %6118 = load i64, i64* %PC.i257
  %6119 = add i64 %6118, 8
  store i64 %6119, i64* %PC.i257
  %6120 = bitcast i8* %6117 to <2 x float>*
  %6121 = load <2 x float>, <2 x float>* %6120, align 1
  %6122 = extractelement <2 x float> %6121, i32 0
  %6123 = inttoptr i64 %6116 to float*
  store float %6122, float* %6123
  store %struct.Memory* %loadMem_46e7e5, %struct.Memory** %MEMORY
  %loadMem_46e7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6125 = getelementptr inbounds %struct.GPR, %struct.GPR* %6124, i32 0, i32 33
  %6126 = getelementptr inbounds %struct.Reg, %struct.Reg* %6125, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %6126 to i64*
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6128 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6127, i64 0, i64 1
  %YMM1.i255 = bitcast %union.VectorReg* %6128 to %"class.std::bitset"*
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6130 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6129, i64 0, i64 0
  %XMM0.i256 = bitcast %union.VectorReg* %6130 to %union.vec128_t*
  %6131 = bitcast %"class.std::bitset"* %YMM1.i255 to i8*
  %6132 = bitcast %union.vec128_t* %XMM0.i256 to i8*
  %6133 = load i64, i64* %PC.i254
  %6134 = add i64 %6133, 3
  store i64 %6134, i64* %PC.i254
  %6135 = bitcast i8* %6132 to <2 x i32>*
  %6136 = load <2 x i32>, <2 x i32>* %6135, align 1
  %6137 = getelementptr inbounds i8, i8* %6132, i64 8
  %6138 = bitcast i8* %6137 to <2 x i32>*
  %6139 = load <2 x i32>, <2 x i32>* %6138, align 1
  %6140 = extractelement <2 x i32> %6136, i32 0
  %6141 = bitcast i8* %6131 to i32*
  store i32 %6140, i32* %6141, align 1
  %6142 = extractelement <2 x i32> %6136, i32 1
  %6143 = getelementptr inbounds i8, i8* %6131, i64 4
  %6144 = bitcast i8* %6143 to i32*
  store i32 %6142, i32* %6144, align 1
  %6145 = extractelement <2 x i32> %6139, i32 0
  %6146 = getelementptr inbounds i8, i8* %6131, i64 8
  %6147 = bitcast i8* %6146 to i32*
  store i32 %6145, i32* %6147, align 1
  %6148 = extractelement <2 x i32> %6139, i32 1
  %6149 = getelementptr inbounds i8, i8* %6131, i64 12
  %6150 = bitcast i8* %6149 to i32*
  store i32 %6148, i32* %6150, align 1
  store %struct.Memory* %loadMem_46e7ed, %struct.Memory** %MEMORY
  %loadMem_46e7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 33
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 15
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %6156 to i64*
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6158 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6157, i64 0, i64 1
  %YMM1.i253 = bitcast %union.VectorReg* %6158 to %"class.std::bitset"*
  %6159 = bitcast %"class.std::bitset"* %YMM1.i253 to i8*
  %6160 = bitcast %"class.std::bitset"* %YMM1.i253 to i8*
  %6161 = load i64, i64* %RBP.i252
  %6162 = sub i64 %6161, 1628
  %6163 = load i64, i64* %PC.i251
  %6164 = add i64 %6163, 8
  store i64 %6164, i64* %PC.i251
  %6165 = bitcast i8* %6160 to <2 x float>*
  %6166 = load <2 x float>, <2 x float>* %6165, align 1
  %6167 = getelementptr inbounds i8, i8* %6160, i64 8
  %6168 = bitcast i8* %6167 to <2 x i32>*
  %6169 = load <2 x i32>, <2 x i32>* %6168, align 1
  %6170 = inttoptr i64 %6162 to float*
  %6171 = load float, float* %6170
  %6172 = extractelement <2 x float> %6166, i32 0
  %6173 = fadd float %6172, %6171
  %6174 = bitcast i8* %6159 to float*
  store float %6173, float* %6174, align 1
  %6175 = bitcast <2 x float> %6166 to <2 x i32>
  %6176 = extractelement <2 x i32> %6175, i32 1
  %6177 = getelementptr inbounds i8, i8* %6159, i64 4
  %6178 = bitcast i8* %6177 to i32*
  store i32 %6176, i32* %6178, align 1
  %6179 = extractelement <2 x i32> %6169, i32 0
  %6180 = getelementptr inbounds i8, i8* %6159, i64 8
  %6181 = bitcast i8* %6180 to i32*
  store i32 %6179, i32* %6181, align 1
  %6182 = extractelement <2 x i32> %6169, i32 1
  %6183 = getelementptr inbounds i8, i8* %6159, i64 12
  %6184 = bitcast i8* %6183 to i32*
  store i32 %6182, i32* %6184, align 1
  store %struct.Memory* %loadMem_46e7f0, %struct.Memory** %MEMORY
  %loadMem_46e7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6186 = getelementptr inbounds %struct.GPR, %struct.GPR* %6185, i32 0, i32 33
  %6187 = getelementptr inbounds %struct.Reg, %struct.Reg* %6186, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %6187 to i64*
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6189 = getelementptr inbounds %struct.GPR, %struct.GPR* %6188, i32 0, i32 15
  %6190 = getelementptr inbounds %struct.Reg, %struct.Reg* %6189, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %6190 to i64*
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6192 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6191, i64 0, i64 1
  %XMM1.i250 = bitcast %union.VectorReg* %6192 to %union.vec128_t*
  %6193 = load i64, i64* %RBP.i249
  %6194 = sub i64 %6193, 1628
  %6195 = bitcast %union.vec128_t* %XMM1.i250 to i8*
  %6196 = load i64, i64* %PC.i248
  %6197 = add i64 %6196, 8
  store i64 %6197, i64* %PC.i248
  %6198 = bitcast i8* %6195 to <2 x float>*
  %6199 = load <2 x float>, <2 x float>* %6198, align 1
  %6200 = extractelement <2 x float> %6199, i32 0
  %6201 = inttoptr i64 %6194 to float*
  store float %6200, float* %6201
  store %struct.Memory* %loadMem_46e7f8, %struct.Memory** %MEMORY
  %loadMem_46e800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6203 = getelementptr inbounds %struct.GPR, %struct.GPR* %6202, i32 0, i32 33
  %6204 = getelementptr inbounds %struct.Reg, %struct.Reg* %6203, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %6204 to i64*
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 1
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %6207 to i64*
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 15
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %6210 to i64*
  %6211 = load i64, i64* %RBP.i247
  %6212 = sub i64 %6211, 1680
  %6213 = load i64, i64* %PC.i245
  %6214 = add i64 %6213, 6
  store i64 %6214, i64* %PC.i245
  %6215 = inttoptr i64 %6212 to i32*
  %6216 = load i32, i32* %6215
  %6217 = zext i32 %6216 to i64
  store i64 %6217, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_46e800, %struct.Memory** %MEMORY
  %loadMem_46e806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 33
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %6220 to i64*
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 1
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %6223 to i64*
  %6224 = load i64, i64* %RAX.i244
  %6225 = load i64, i64* %PC.i243
  %6226 = add i64 %6225, 3
  store i64 %6226, i64* %PC.i243
  %6227 = trunc i64 %6224 to i32
  %6228 = add i32 1, %6227
  %6229 = zext i32 %6228 to i64
  store i64 %6229, i64* %RAX.i244, align 8
  %6230 = icmp ult i32 %6228, %6227
  %6231 = icmp ult i32 %6228, 1
  %6232 = or i1 %6230, %6231
  %6233 = zext i1 %6232 to i8
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6233, i8* %6234, align 1
  %6235 = and i32 %6228, 255
  %6236 = call i32 @llvm.ctpop.i32(i32 %6235)
  %6237 = trunc i32 %6236 to i8
  %6238 = and i8 %6237, 1
  %6239 = xor i8 %6238, 1
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6239, i8* %6240, align 1
  %6241 = xor i64 1, %6224
  %6242 = trunc i64 %6241 to i32
  %6243 = xor i32 %6242, %6228
  %6244 = lshr i32 %6243, 4
  %6245 = trunc i32 %6244 to i8
  %6246 = and i8 %6245, 1
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6246, i8* %6247, align 1
  %6248 = icmp eq i32 %6228, 0
  %6249 = zext i1 %6248 to i8
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6249, i8* %6250, align 1
  %6251 = lshr i32 %6228, 31
  %6252 = trunc i32 %6251 to i8
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6252, i8* %6253, align 1
  %6254 = lshr i32 %6227, 31
  %6255 = xor i32 %6251, %6254
  %6256 = add i32 %6255, %6251
  %6257 = icmp eq i32 %6256, 2
  %6258 = zext i1 %6257 to i8
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6258, i8* %6259, align 1
  store %struct.Memory* %loadMem_46e806, %struct.Memory** %MEMORY
  %loadMem_46e809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6261 = getelementptr inbounds %struct.GPR, %struct.GPR* %6260, i32 0, i32 33
  %6262 = getelementptr inbounds %struct.Reg, %struct.Reg* %6261, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %6262 to i64*
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6264 = getelementptr inbounds %struct.GPR, %struct.GPR* %6263, i32 0, i32 1
  %6265 = getelementptr inbounds %struct.Reg, %struct.Reg* %6264, i32 0, i32 0
  %EAX.i241 = bitcast %union.anon* %6265 to i32*
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 15
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %6268 to i64*
  %6269 = load i64, i64* %RBP.i242
  %6270 = sub i64 %6269, 1680
  %6271 = load i32, i32* %EAX.i241
  %6272 = zext i32 %6271 to i64
  %6273 = load i64, i64* %PC.i240
  %6274 = add i64 %6273, 6
  store i64 %6274, i64* %PC.i240
  %6275 = inttoptr i64 %6270 to i32*
  store i32 %6271, i32* %6275
  store %struct.Memory* %loadMem_46e809, %struct.Memory** %MEMORY
  %loadMem_46e80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 33
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %6278 to i64*
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 15
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %6281 to i64*
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6282, i64 0, i64 0
  %YMM0.i239 = bitcast %union.VectorReg* %6283 to %"class.std::bitset"*
  %6284 = bitcast %"class.std::bitset"* %YMM0.i239 to i8*
  %6285 = bitcast %"class.std::bitset"* %YMM0.i239 to i8*
  %6286 = load i64, i64* %RBP.i238
  %6287 = sub i64 %6286, 1628
  %6288 = load i64, i64* %PC.i237
  %6289 = add i64 %6288, 8
  store i64 %6289, i64* %PC.i237
  %6290 = bitcast i8* %6285 to <2 x float>*
  %6291 = load <2 x float>, <2 x float>* %6290, align 1
  %6292 = getelementptr inbounds i8, i8* %6285, i64 8
  %6293 = bitcast i8* %6292 to <2 x i32>*
  %6294 = load <2 x i32>, <2 x i32>* %6293, align 1
  %6295 = inttoptr i64 %6287 to float*
  %6296 = load float, float* %6295
  %6297 = extractelement <2 x float> %6291, i32 0
  %6298 = fadd float %6297, %6296
  %6299 = bitcast i8* %6284 to float*
  store float %6298, float* %6299, align 1
  %6300 = bitcast <2 x float> %6291 to <2 x i32>
  %6301 = extractelement <2 x i32> %6300, i32 1
  %6302 = getelementptr inbounds i8, i8* %6284, i64 4
  %6303 = bitcast i8* %6302 to i32*
  store i32 %6301, i32* %6303, align 1
  %6304 = extractelement <2 x i32> %6294, i32 0
  %6305 = getelementptr inbounds i8, i8* %6284, i64 8
  %6306 = bitcast i8* %6305 to i32*
  store i32 %6304, i32* %6306, align 1
  %6307 = extractelement <2 x i32> %6294, i32 1
  %6308 = getelementptr inbounds i8, i8* %6284, i64 12
  %6309 = bitcast i8* %6308 to i32*
  store i32 %6307, i32* %6309, align 1
  store %struct.Memory* %loadMem_46e80f, %struct.Memory** %MEMORY
  %loadMem_46e817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 33
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6312 to i64*
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6314 = getelementptr inbounds %struct.GPR, %struct.GPR* %6313, i32 0, i32 15
  %6315 = getelementptr inbounds %struct.Reg, %struct.Reg* %6314, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %6315 to i64*
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6316, i64 0, i64 0
  %XMM0.i236 = bitcast %union.VectorReg* %6317 to %union.vec128_t*
  %6318 = load i64, i64* %RBP.i235
  %6319 = sub i64 %6318, 1628
  %6320 = bitcast %union.vec128_t* %XMM0.i236 to i8*
  %6321 = load i64, i64* %PC.i234
  %6322 = add i64 %6321, 8
  store i64 %6322, i64* %PC.i234
  %6323 = bitcast i8* %6320 to <2 x float>*
  %6324 = load <2 x float>, <2 x float>* %6323, align 1
  %6325 = extractelement <2 x float> %6324, i32 0
  %6326 = inttoptr i64 %6319 to float*
  store float %6325, float* %6326
  store %struct.Memory* %loadMem_46e817, %struct.Memory** %MEMORY
  %loadMem_46e81f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6328 = getelementptr inbounds %struct.GPR, %struct.GPR* %6327, i32 0, i32 33
  %6329 = getelementptr inbounds %struct.Reg, %struct.Reg* %6328, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %6329 to i64*
  %6330 = load i64, i64* %PC.i233
  %6331 = add i64 %6330, 112
  %6332 = load i64, i64* %PC.i233
  %6333 = add i64 %6332, 5
  store i64 %6333, i64* %PC.i233
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6331, i64* %6334, align 8
  store %struct.Memory* %loadMem_46e81f, %struct.Memory** %MEMORY
  br label %block_.L_46e88f

block_.L_46e824:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_46e824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6336 = getelementptr inbounds %struct.GPR, %struct.GPR* %6335, i32 0, i32 33
  %6337 = getelementptr inbounds %struct.Reg, %struct.Reg* %6336, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %6337 to i64*
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6338, i64 0, i64 0
  %YMM0.i231 = bitcast %union.VectorReg* %6339 to %"class.std::bitset"*
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6341 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6340, i64 0, i64 0
  %XMM0.i232 = bitcast %union.VectorReg* %6341 to %union.vec128_t*
  %6342 = bitcast %"class.std::bitset"* %YMM0.i231 to i8*
  %6343 = bitcast %"class.std::bitset"* %YMM0.i231 to i8*
  %6344 = bitcast %union.vec128_t* %XMM0.i232 to i8*
  %6345 = load i64, i64* %PC.i230
  %6346 = add i64 %6345, 3
  store i64 %6346, i64* %PC.i230
  %6347 = bitcast i8* %6343 to i64*
  %6348 = load i64, i64* %6347, align 1
  %6349 = getelementptr inbounds i8, i8* %6343, i64 8
  %6350 = bitcast i8* %6349 to i64*
  %6351 = load i64, i64* %6350, align 1
  %6352 = bitcast i8* %6344 to i64*
  %6353 = load i64, i64* %6352, align 1
  %6354 = getelementptr inbounds i8, i8* %6344, i64 8
  %6355 = bitcast i8* %6354 to i64*
  %6356 = load i64, i64* %6355, align 1
  %6357 = xor i64 %6353, %6348
  %6358 = xor i64 %6356, %6351
  %6359 = trunc i64 %6357 to i32
  %6360 = lshr i64 %6357, 32
  %6361 = trunc i64 %6360 to i32
  %6362 = bitcast i8* %6342 to i32*
  store i32 %6359, i32* %6362, align 1
  %6363 = getelementptr inbounds i8, i8* %6342, i64 4
  %6364 = bitcast i8* %6363 to i32*
  store i32 %6361, i32* %6364, align 1
  %6365 = trunc i64 %6358 to i32
  %6366 = getelementptr inbounds i8, i8* %6342, i64 8
  %6367 = bitcast i8* %6366 to i32*
  store i32 %6365, i32* %6367, align 1
  %6368 = lshr i64 %6358, 32
  %6369 = trunc i64 %6368 to i32
  %6370 = getelementptr inbounds i8, i8* %6342, i64 12
  %6371 = bitcast i8* %6370 to i32*
  store i32 %6369, i32* %6371, align 1
  store %struct.Memory* %loadMem_46e824, %struct.Memory** %MEMORY
  %loadMem_46e827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6373 = getelementptr inbounds %struct.GPR, %struct.GPR* %6372, i32 0, i32 33
  %6374 = getelementptr inbounds %struct.Reg, %struct.Reg* %6373, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %6374 to i64*
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6376 = getelementptr inbounds %struct.GPR, %struct.GPR* %6375, i32 0, i32 1
  %6377 = getelementptr inbounds %struct.Reg, %struct.Reg* %6376, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %6377 to i64*
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6379 = getelementptr inbounds %struct.GPR, %struct.GPR* %6378, i32 0, i32 15
  %6380 = getelementptr inbounds %struct.Reg, %struct.Reg* %6379, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %6380 to i64*
  %6381 = load i64, i64* %RBP.i229
  %6382 = sub i64 %6381, 1644
  %6383 = load i64, i64* %PC.i227
  %6384 = add i64 %6383, 7
  store i64 %6384, i64* %PC.i227
  %6385 = inttoptr i64 %6382 to i32*
  %6386 = load i32, i32* %6385
  %6387 = sext i32 %6386 to i64
  store i64 %6387, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_46e827, %struct.Memory** %MEMORY
  %loadMem_46e82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6389 = getelementptr inbounds %struct.GPR, %struct.GPR* %6388, i32 0, i32 33
  %6390 = getelementptr inbounds %struct.Reg, %struct.Reg* %6389, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %6390 to i64*
  %6391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6392 = getelementptr inbounds %struct.GPR, %struct.GPR* %6391, i32 0, i32 1
  %6393 = getelementptr inbounds %struct.Reg, %struct.Reg* %6392, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %6393 to i64*
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6395 = getelementptr inbounds %struct.GPR, %struct.GPR* %6394, i32 0, i32 15
  %6396 = getelementptr inbounds %struct.Reg, %struct.Reg* %6395, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %6396 to i64*
  %6397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6398 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6397, i64 0, i64 1
  %YMM1.i226 = bitcast %union.VectorReg* %6398 to %"class.std::bitset"*
  %6399 = bitcast %"class.std::bitset"* %YMM1.i226 to i8*
  %6400 = load i64, i64* %RBP.i225
  %6401 = load i64, i64* %RAX.i224
  %6402 = mul i64 %6401, 4
  %6403 = add i64 %6400, -1616
  %6404 = add i64 %6403, %6402
  %6405 = load i64, i64* %PC.i223
  %6406 = add i64 %6405, 9
  store i64 %6406, i64* %PC.i223
  %6407 = inttoptr i64 %6404 to i32*
  %6408 = load i32, i32* %6407
  %6409 = sitofp i32 %6408 to double
  %6410 = bitcast i8* %6399 to double*
  store double %6409, double* %6410, align 1
  store %struct.Memory* %loadMem_46e82e, %struct.Memory** %MEMORY
  %loadMem_46e837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6412 = getelementptr inbounds %struct.GPR, %struct.GPR* %6411, i32 0, i32 33
  %6413 = getelementptr inbounds %struct.Reg, %struct.Reg* %6412, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6413 to i64*
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6414, i64 0, i64 0
  %XMM0.i218 = bitcast %union.VectorReg* %6415 to %union.vec128_t*
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6417 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6416, i64 0, i64 1
  %XMM1.i219 = bitcast %union.VectorReg* %6417 to %union.vec128_t*
  %6418 = bitcast %union.vec128_t* %XMM0.i218 to i8*
  %6419 = bitcast %union.vec128_t* %XMM1.i219 to i8*
  %6420 = load i64, i64* %PC.i217
  %6421 = add i64 %6420, 4
  store i64 %6421, i64* %PC.i217
  %6422 = bitcast i8* %6418 to double*
  %6423 = load double, double* %6422, align 1
  %6424 = bitcast i8* %6419 to double*
  %6425 = load double, double* %6424, align 1
  %6426 = fcmp uno double %6423, %6425
  br i1 %6426, label %6427, label %6439

; <label>:6427:                                   ; preds = %block_.L_46e824
  %6428 = fadd double %6423, %6425
  %6429 = bitcast double %6428 to i64
  %6430 = and i64 %6429, 9221120237041090560
  %6431 = icmp eq i64 %6430, 9218868437227405312
  %6432 = and i64 %6429, 2251799813685247
  %6433 = icmp ne i64 %6432, 0
  %6434 = and i1 %6431, %6433
  br i1 %6434, label %6435, label %6445

; <label>:6435:                                   ; preds = %6427
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6437 = load i64, i64* %6436, align 8
  %6438 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6437, %struct.Memory* %loadMem_46e837)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:6439:                                   ; preds = %block_.L_46e824
  %6440 = fcmp ogt double %6423, %6425
  br i1 %6440, label %6445, label %6441

; <label>:6441:                                   ; preds = %6439
  %6442 = fcmp olt double %6423, %6425
  br i1 %6442, label %6445, label %6443

; <label>:6443:                                   ; preds = %6441
  %6444 = fcmp oeq double %6423, %6425
  br i1 %6444, label %6445, label %6452

; <label>:6445:                                   ; preds = %6443, %6441, %6439, %6427
  %6446 = phi i8 [ 0, %6439 ], [ 0, %6441 ], [ 1, %6443 ], [ 1, %6427 ]
  %6447 = phi i8 [ 0, %6439 ], [ 0, %6441 ], [ 0, %6443 ], [ 1, %6427 ]
  %6448 = phi i8 [ 0, %6439 ], [ 1, %6441 ], [ 0, %6443 ], [ 1, %6427 ]
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6446, i8* %6449, align 1
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6447, i8* %6450, align 1
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6448, i8* %6451, align 1
  br label %6452

; <label>:6452:                                   ; preds = %6445, %6443
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6453, align 1
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6454, align 1
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6455, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %6435, %6452
  %6456 = phi %struct.Memory* [ %6438, %6435 ], [ %loadMem_46e837, %6452 ]
  store %struct.Memory* %6456, %struct.Memory** %MEMORY
  %loadMem_46e83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6458 = getelementptr inbounds %struct.GPR, %struct.GPR* %6457, i32 0, i32 33
  %6459 = getelementptr inbounds %struct.Reg, %struct.Reg* %6458, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6459 to i64*
  %6460 = load i64, i64* %PC.i216
  %6461 = add i64 %6460, 79
  %6462 = load i64, i64* %PC.i216
  %6463 = add i64 %6462, 6
  %6464 = load i64, i64* %PC.i216
  %6465 = add i64 %6464, 6
  store i64 %6465, i64* %PC.i216
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6467 = load i8, i8* %6466, align 1
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6469 = load i8, i8* %6468, align 1
  %6470 = or i8 %6469, %6467
  %6471 = icmp ne i8 %6470, 0
  %6472 = zext i1 %6471 to i8
  store i8 %6472, i8* %BRANCH_TAKEN, align 1
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6474 = select i1 %6471, i64 %6461, i64 %6463
  store i64 %6474, i64* %6473, align 8
  store %struct.Memory* %loadMem_46e83b, %struct.Memory** %MEMORY
  %loadBr_46e83b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e83b = icmp eq i8 %loadBr_46e83b, 1
  br i1 %cmpBr_46e83b, label %block_.L_46e88a, label %block_46e841

block_46e841:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_46e841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6476 = getelementptr inbounds %struct.GPR, %struct.GPR* %6475, i32 0, i32 33
  %6477 = getelementptr inbounds %struct.Reg, %struct.Reg* %6476, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %6477 to i64*
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6479 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6478, i64 0, i64 0
  %YMM0.i215 = bitcast %union.VectorReg* %6479 to %"class.std::bitset"*
  %6480 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %6481 = load i64, i64* %PC.i214
  %6482 = add i64 %6481, ptrtoint (%G_0x748c3__rip__type* @G_0x748c3__rip_ to i64)
  %6483 = load i64, i64* %PC.i214
  %6484 = add i64 %6483, 8
  store i64 %6484, i64* %PC.i214
  %6485 = inttoptr i64 %6482 to float*
  %6486 = load float, float* %6485
  %6487 = bitcast i8* %6480 to float*
  store float %6486, float* %6487, align 1
  %6488 = getelementptr inbounds i8, i8* %6480, i64 4
  %6489 = bitcast i8* %6488 to float*
  store float 0.000000e+00, float* %6489, align 1
  %6490 = getelementptr inbounds i8, i8* %6480, i64 8
  %6491 = bitcast i8* %6490 to float*
  store float 0.000000e+00, float* %6491, align 1
  %6492 = getelementptr inbounds i8, i8* %6480, i64 12
  %6493 = bitcast i8* %6492 to float*
  store float 0.000000e+00, float* %6493, align 1
  store %struct.Memory* %loadMem_46e841, %struct.Memory** %MEMORY
  %loadMem_46e849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6495 = getelementptr inbounds %struct.GPR, %struct.GPR* %6494, i32 0, i32 33
  %6496 = getelementptr inbounds %struct.Reg, %struct.Reg* %6495, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %6496 to i64*
  %6497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6497, i64 0, i64 1
  %YMM1.i212 = bitcast %union.VectorReg* %6498 to %"class.std::bitset"*
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6500 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6499, i64 0, i64 0
  %XMM0.i213 = bitcast %union.VectorReg* %6500 to %union.vec128_t*
  %6501 = bitcast %"class.std::bitset"* %YMM1.i212 to i8*
  %6502 = bitcast %union.vec128_t* %XMM0.i213 to i8*
  %6503 = load i64, i64* %PC.i211
  %6504 = add i64 %6503, 3
  store i64 %6504, i64* %PC.i211
  %6505 = bitcast i8* %6502 to <2 x i32>*
  %6506 = load <2 x i32>, <2 x i32>* %6505, align 1
  %6507 = getelementptr inbounds i8, i8* %6502, i64 8
  %6508 = bitcast i8* %6507 to <2 x i32>*
  %6509 = load <2 x i32>, <2 x i32>* %6508, align 1
  %6510 = extractelement <2 x i32> %6506, i32 0
  %6511 = bitcast i8* %6501 to i32*
  store i32 %6510, i32* %6511, align 1
  %6512 = extractelement <2 x i32> %6506, i32 1
  %6513 = getelementptr inbounds i8, i8* %6501, i64 4
  %6514 = bitcast i8* %6513 to i32*
  store i32 %6512, i32* %6514, align 1
  %6515 = extractelement <2 x i32> %6509, i32 0
  %6516 = getelementptr inbounds i8, i8* %6501, i64 8
  %6517 = bitcast i8* %6516 to i32*
  store i32 %6515, i32* %6517, align 1
  %6518 = extractelement <2 x i32> %6509, i32 1
  %6519 = getelementptr inbounds i8, i8* %6501, i64 12
  %6520 = bitcast i8* %6519 to i32*
  store i32 %6518, i32* %6520, align 1
  store %struct.Memory* %loadMem_46e849, %struct.Memory** %MEMORY
  %loadMem_46e84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 33
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %6523 to i64*
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 15
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %6526 to i64*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6528 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6527, i64 0, i64 1
  %YMM1.i210 = bitcast %union.VectorReg* %6528 to %"class.std::bitset"*
  %6529 = bitcast %"class.std::bitset"* %YMM1.i210 to i8*
  %6530 = bitcast %"class.std::bitset"* %YMM1.i210 to i8*
  %6531 = load i64, i64* %RBP.i209
  %6532 = sub i64 %6531, 1624
  %6533 = load i64, i64* %PC.i208
  %6534 = add i64 %6533, 8
  store i64 %6534, i64* %PC.i208
  %6535 = bitcast i8* %6530 to <2 x float>*
  %6536 = load <2 x float>, <2 x float>* %6535, align 1
  %6537 = getelementptr inbounds i8, i8* %6530, i64 8
  %6538 = bitcast i8* %6537 to <2 x i32>*
  %6539 = load <2 x i32>, <2 x i32>* %6538, align 1
  %6540 = inttoptr i64 %6532 to float*
  %6541 = load float, float* %6540
  %6542 = extractelement <2 x float> %6536, i32 0
  %6543 = fadd float %6542, %6541
  %6544 = bitcast i8* %6529 to float*
  store float %6543, float* %6544, align 1
  %6545 = bitcast <2 x float> %6536 to <2 x i32>
  %6546 = extractelement <2 x i32> %6545, i32 1
  %6547 = getelementptr inbounds i8, i8* %6529, i64 4
  %6548 = bitcast i8* %6547 to i32*
  store i32 %6546, i32* %6548, align 1
  %6549 = extractelement <2 x i32> %6539, i32 0
  %6550 = getelementptr inbounds i8, i8* %6529, i64 8
  %6551 = bitcast i8* %6550 to i32*
  store i32 %6549, i32* %6551, align 1
  %6552 = extractelement <2 x i32> %6539, i32 1
  %6553 = getelementptr inbounds i8, i8* %6529, i64 12
  %6554 = bitcast i8* %6553 to i32*
  store i32 %6552, i32* %6554, align 1
  store %struct.Memory* %loadMem_46e84c, %struct.Memory** %MEMORY
  %loadMem_46e854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6556 = getelementptr inbounds %struct.GPR, %struct.GPR* %6555, i32 0, i32 33
  %6557 = getelementptr inbounds %struct.Reg, %struct.Reg* %6556, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %6557 to i64*
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6559 = getelementptr inbounds %struct.GPR, %struct.GPR* %6558, i32 0, i32 15
  %6560 = getelementptr inbounds %struct.Reg, %struct.Reg* %6559, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %6560 to i64*
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6562 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6561, i64 0, i64 1
  %XMM1.i207 = bitcast %union.VectorReg* %6562 to %union.vec128_t*
  %6563 = load i64, i64* %RBP.i206
  %6564 = sub i64 %6563, 1624
  %6565 = bitcast %union.vec128_t* %XMM1.i207 to i8*
  %6566 = load i64, i64* %PC.i205
  %6567 = add i64 %6566, 8
  store i64 %6567, i64* %PC.i205
  %6568 = bitcast i8* %6565 to <2 x float>*
  %6569 = load <2 x float>, <2 x float>* %6568, align 1
  %6570 = extractelement <2 x float> %6569, i32 0
  %6571 = inttoptr i64 %6564 to float*
  store float %6570, float* %6571
  store %struct.Memory* %loadMem_46e854, %struct.Memory** %MEMORY
  %loadMem_46e85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6573 = getelementptr inbounds %struct.GPR, %struct.GPR* %6572, i32 0, i32 33
  %6574 = getelementptr inbounds %struct.Reg, %struct.Reg* %6573, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %6574 to i64*
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6576 = getelementptr inbounds %struct.GPR, %struct.GPR* %6575, i32 0, i32 15
  %6577 = getelementptr inbounds %struct.Reg, %struct.Reg* %6576, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %6577 to i64*
  %6578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6578, i64 0, i64 0
  %YMM0.i204 = bitcast %union.VectorReg* %6579 to %"class.std::bitset"*
  %6580 = bitcast %"class.std::bitset"* %YMM0.i204 to i8*
  %6581 = bitcast %"class.std::bitset"* %YMM0.i204 to i8*
  %6582 = load i64, i64* %RBP.i203
  %6583 = sub i64 %6582, 1632
  %6584 = load i64, i64* %PC.i202
  %6585 = add i64 %6584, 8
  store i64 %6585, i64* %PC.i202
  %6586 = bitcast i8* %6581 to <2 x float>*
  %6587 = load <2 x float>, <2 x float>* %6586, align 1
  %6588 = getelementptr inbounds i8, i8* %6581, i64 8
  %6589 = bitcast i8* %6588 to <2 x i32>*
  %6590 = load <2 x i32>, <2 x i32>* %6589, align 1
  %6591 = inttoptr i64 %6583 to float*
  %6592 = load float, float* %6591
  %6593 = extractelement <2 x float> %6587, i32 0
  %6594 = fadd float %6593, %6592
  %6595 = bitcast i8* %6580 to float*
  store float %6594, float* %6595, align 1
  %6596 = bitcast <2 x float> %6587 to <2 x i32>
  %6597 = extractelement <2 x i32> %6596, i32 1
  %6598 = getelementptr inbounds i8, i8* %6580, i64 4
  %6599 = bitcast i8* %6598 to i32*
  store i32 %6597, i32* %6599, align 1
  %6600 = extractelement <2 x i32> %6590, i32 0
  %6601 = getelementptr inbounds i8, i8* %6580, i64 8
  %6602 = bitcast i8* %6601 to i32*
  store i32 %6600, i32* %6602, align 1
  %6603 = extractelement <2 x i32> %6590, i32 1
  %6604 = getelementptr inbounds i8, i8* %6580, i64 12
  %6605 = bitcast i8* %6604 to i32*
  store i32 %6603, i32* %6605, align 1
  store %struct.Memory* %loadMem_46e85c, %struct.Memory** %MEMORY
  %loadMem_46e864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 33
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6608 to i64*
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 15
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %6611 to i64*
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6613 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6612, i64 0, i64 0
  %XMM0.i201 = bitcast %union.VectorReg* %6613 to %union.vec128_t*
  %6614 = load i64, i64* %RBP.i200
  %6615 = sub i64 %6614, 1632
  %6616 = bitcast %union.vec128_t* %XMM0.i201 to i8*
  %6617 = load i64, i64* %PC.i199
  %6618 = add i64 %6617, 8
  store i64 %6618, i64* %PC.i199
  %6619 = bitcast i8* %6616 to <2 x float>*
  %6620 = load <2 x float>, <2 x float>* %6619, align 1
  %6621 = extractelement <2 x float> %6620, i32 0
  %6622 = inttoptr i64 %6615 to float*
  store float %6621, float* %6622
  store %struct.Memory* %loadMem_46e864, %struct.Memory** %MEMORY
  %loadMem_46e86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6624 = getelementptr inbounds %struct.GPR, %struct.GPR* %6623, i32 0, i32 33
  %6625 = getelementptr inbounds %struct.Reg, %struct.Reg* %6624, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6625 to i64*
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6627 = getelementptr inbounds %struct.GPR, %struct.GPR* %6626, i32 0, i32 1
  %6628 = getelementptr inbounds %struct.Reg, %struct.Reg* %6627, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %6628 to i64*
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6630 = getelementptr inbounds %struct.GPR, %struct.GPR* %6629, i32 0, i32 15
  %6631 = getelementptr inbounds %struct.Reg, %struct.Reg* %6630, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %6631 to i64*
  %6632 = load i64, i64* %RBP.i198
  %6633 = sub i64 %6632, 1676
  %6634 = load i64, i64* %PC.i196
  %6635 = add i64 %6634, 6
  store i64 %6635, i64* %PC.i196
  %6636 = inttoptr i64 %6633 to i32*
  %6637 = load i32, i32* %6636
  %6638 = zext i32 %6637 to i64
  store i64 %6638, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_46e86c, %struct.Memory** %MEMORY
  %loadMem_46e872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 33
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %6641 to i64*
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6643 = getelementptr inbounds %struct.GPR, %struct.GPR* %6642, i32 0, i32 1
  %6644 = getelementptr inbounds %struct.Reg, %struct.Reg* %6643, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %6644 to i64*
  %6645 = load i64, i64* %RAX.i195
  %6646 = load i64, i64* %PC.i194
  %6647 = add i64 %6646, 3
  store i64 %6647, i64* %PC.i194
  %6648 = trunc i64 %6645 to i32
  %6649 = add i32 1, %6648
  %6650 = zext i32 %6649 to i64
  store i64 %6650, i64* %RAX.i195, align 8
  %6651 = icmp ult i32 %6649, %6648
  %6652 = icmp ult i32 %6649, 1
  %6653 = or i1 %6651, %6652
  %6654 = zext i1 %6653 to i8
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6654, i8* %6655, align 1
  %6656 = and i32 %6649, 255
  %6657 = call i32 @llvm.ctpop.i32(i32 %6656)
  %6658 = trunc i32 %6657 to i8
  %6659 = and i8 %6658, 1
  %6660 = xor i8 %6659, 1
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6660, i8* %6661, align 1
  %6662 = xor i64 1, %6645
  %6663 = trunc i64 %6662 to i32
  %6664 = xor i32 %6663, %6649
  %6665 = lshr i32 %6664, 4
  %6666 = trunc i32 %6665 to i8
  %6667 = and i8 %6666, 1
  %6668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6667, i8* %6668, align 1
  %6669 = icmp eq i32 %6649, 0
  %6670 = zext i1 %6669 to i8
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6670, i8* %6671, align 1
  %6672 = lshr i32 %6649, 31
  %6673 = trunc i32 %6672 to i8
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6673, i8* %6674, align 1
  %6675 = lshr i32 %6648, 31
  %6676 = xor i32 %6672, %6675
  %6677 = add i32 %6676, %6672
  %6678 = icmp eq i32 %6677, 2
  %6679 = zext i1 %6678 to i8
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6679, i8* %6680, align 1
  store %struct.Memory* %loadMem_46e872, %struct.Memory** %MEMORY
  %loadMem_46e875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6682 = getelementptr inbounds %struct.GPR, %struct.GPR* %6681, i32 0, i32 33
  %6683 = getelementptr inbounds %struct.Reg, %struct.Reg* %6682, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6683 to i64*
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6685 = getelementptr inbounds %struct.GPR, %struct.GPR* %6684, i32 0, i32 1
  %6686 = getelementptr inbounds %struct.Reg, %struct.Reg* %6685, i32 0, i32 0
  %EAX.i192 = bitcast %union.anon* %6686 to i32*
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6688 = getelementptr inbounds %struct.GPR, %struct.GPR* %6687, i32 0, i32 15
  %6689 = getelementptr inbounds %struct.Reg, %struct.Reg* %6688, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %6689 to i64*
  %6690 = load i64, i64* %RBP.i193
  %6691 = sub i64 %6690, 1676
  %6692 = load i32, i32* %EAX.i192
  %6693 = zext i32 %6692 to i64
  %6694 = load i64, i64* %PC.i191
  %6695 = add i64 %6694, 6
  store i64 %6695, i64* %PC.i191
  %6696 = inttoptr i64 %6691 to i32*
  store i32 %6692, i32* %6696
  store %struct.Memory* %loadMem_46e875, %struct.Memory** %MEMORY
  %loadMem_46e87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6698 = getelementptr inbounds %struct.GPR, %struct.GPR* %6697, i32 0, i32 33
  %6699 = getelementptr inbounds %struct.Reg, %struct.Reg* %6698, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6699 to i64*
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6701 = getelementptr inbounds %struct.GPR, %struct.GPR* %6700, i32 0, i32 1
  %6702 = getelementptr inbounds %struct.Reg, %struct.Reg* %6701, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %6702 to i64*
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 15
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %6705 to i64*
  %6706 = load i64, i64* %RBP.i190
  %6707 = sub i64 %6706, 1688
  %6708 = load i64, i64* %PC.i188
  %6709 = add i64 %6708, 6
  store i64 %6709, i64* %PC.i188
  %6710 = inttoptr i64 %6707 to i32*
  %6711 = load i32, i32* %6710
  %6712 = zext i32 %6711 to i64
  store i64 %6712, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_46e87b, %struct.Memory** %MEMORY
  %loadMem_46e881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6714 = getelementptr inbounds %struct.GPR, %struct.GPR* %6713, i32 0, i32 33
  %6715 = getelementptr inbounds %struct.Reg, %struct.Reg* %6714, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6715 to i64*
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6717 = getelementptr inbounds %struct.GPR, %struct.GPR* %6716, i32 0, i32 1
  %6718 = getelementptr inbounds %struct.Reg, %struct.Reg* %6717, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %6718 to i64*
  %6719 = load i64, i64* %RAX.i187
  %6720 = load i64, i64* %PC.i186
  %6721 = add i64 %6720, 3
  store i64 %6721, i64* %PC.i186
  %6722 = trunc i64 %6719 to i32
  %6723 = add i32 1, %6722
  %6724 = zext i32 %6723 to i64
  store i64 %6724, i64* %RAX.i187, align 8
  %6725 = icmp ult i32 %6723, %6722
  %6726 = icmp ult i32 %6723, 1
  %6727 = or i1 %6725, %6726
  %6728 = zext i1 %6727 to i8
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6728, i8* %6729, align 1
  %6730 = and i32 %6723, 255
  %6731 = call i32 @llvm.ctpop.i32(i32 %6730)
  %6732 = trunc i32 %6731 to i8
  %6733 = and i8 %6732, 1
  %6734 = xor i8 %6733, 1
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6734, i8* %6735, align 1
  %6736 = xor i64 1, %6719
  %6737 = trunc i64 %6736 to i32
  %6738 = xor i32 %6737, %6723
  %6739 = lshr i32 %6738, 4
  %6740 = trunc i32 %6739 to i8
  %6741 = and i8 %6740, 1
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6741, i8* %6742, align 1
  %6743 = icmp eq i32 %6723, 0
  %6744 = zext i1 %6743 to i8
  %6745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6744, i8* %6745, align 1
  %6746 = lshr i32 %6723, 31
  %6747 = trunc i32 %6746 to i8
  %6748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6747, i8* %6748, align 1
  %6749 = lshr i32 %6722, 31
  %6750 = xor i32 %6746, %6749
  %6751 = add i32 %6750, %6746
  %6752 = icmp eq i32 %6751, 2
  %6753 = zext i1 %6752 to i8
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6753, i8* %6754, align 1
  store %struct.Memory* %loadMem_46e881, %struct.Memory** %MEMORY
  %loadMem_46e884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6756 = getelementptr inbounds %struct.GPR, %struct.GPR* %6755, i32 0, i32 33
  %6757 = getelementptr inbounds %struct.Reg, %struct.Reg* %6756, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6757 to i64*
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 1
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %EAX.i184 = bitcast %union.anon* %6760 to i32*
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6762 = getelementptr inbounds %struct.GPR, %struct.GPR* %6761, i32 0, i32 15
  %6763 = getelementptr inbounds %struct.Reg, %struct.Reg* %6762, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %6763 to i64*
  %6764 = load i64, i64* %RBP.i185
  %6765 = sub i64 %6764, 1688
  %6766 = load i32, i32* %EAX.i184
  %6767 = zext i32 %6766 to i64
  %6768 = load i64, i64* %PC.i183
  %6769 = add i64 %6768, 6
  store i64 %6769, i64* %PC.i183
  %6770 = inttoptr i64 %6765 to i32*
  store i32 %6766, i32* %6770
  store %struct.Memory* %loadMem_46e884, %struct.Memory** %MEMORY
  br label %block_.L_46e88a

block_.L_46e88a:                                  ; preds = %block_46e841, %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_46e88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6772 = getelementptr inbounds %struct.GPR, %struct.GPR* %6771, i32 0, i32 33
  %6773 = getelementptr inbounds %struct.Reg, %struct.Reg* %6772, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %6773 to i64*
  %6774 = load i64, i64* %PC.i182
  %6775 = add i64 %6774, 5
  %6776 = load i64, i64* %PC.i182
  %6777 = add i64 %6776, 5
  store i64 %6777, i64* %PC.i182
  %6778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6775, i64* %6778, align 8
  store %struct.Memory* %loadMem_46e88a, %struct.Memory** %MEMORY
  br label %block_.L_46e88f

block_.L_46e88f:                                  ; preds = %block_.L_46e88a, %block_46e7d2
  %loadMem_46e88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6780 = getelementptr inbounds %struct.GPR, %struct.GPR* %6779, i32 0, i32 33
  %6781 = getelementptr inbounds %struct.Reg, %struct.Reg* %6780, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6781 to i64*
  %6782 = load i64, i64* %PC.i181
  %6783 = add i64 %6782, 5
  %6784 = load i64, i64* %PC.i181
  %6785 = add i64 %6784, 5
  store i64 %6785, i64* %PC.i181
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6783, i64* %6786, align 8
  store %struct.Memory* %loadMem_46e88f, %struct.Memory** %MEMORY
  br label %block_.L_46e894

block_.L_46e894:                                  ; preds = %block_.L_46e88f, %block_.L_46e7b0
  %loadMem_46e894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6788 = getelementptr inbounds %struct.GPR, %struct.GPR* %6787, i32 0, i32 33
  %6789 = getelementptr inbounds %struct.Reg, %struct.Reg* %6788, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %6789 to i64*
  %6790 = load i64, i64* %PC.i180
  %6791 = add i64 %6790, 5
  %6792 = load i64, i64* %PC.i180
  %6793 = add i64 %6792, 5
  store i64 %6793, i64* %PC.i180
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6791, i64* %6794, align 8
  store %struct.Memory* %loadMem_46e894, %struct.Memory** %MEMORY
  br label %block_.L_46e899

block_.L_46e899:                                  ; preds = %block_.L_46e894, %block_.L_46e728
  %loadMem_46e899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6796 = getelementptr inbounds %struct.GPR, %struct.GPR* %6795, i32 0, i32 33
  %6797 = getelementptr inbounds %struct.Reg, %struct.Reg* %6796, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %6797 to i64*
  %6798 = load i64, i64* %PC.i179
  %6799 = add i64 %6798, 5
  %6800 = load i64, i64* %PC.i179
  %6801 = add i64 %6800, 5
  store i64 %6801, i64* %PC.i179
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6799, i64* %6802, align 8
  store %struct.Memory* %loadMem_46e899, %struct.Memory** %MEMORY
  br label %block_.L_46e89e

block_.L_46e89e:                                  ; preds = %block_.L_46e899
  %loadMem_46e89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6804 = getelementptr inbounds %struct.GPR, %struct.GPR* %6803, i32 0, i32 33
  %6805 = getelementptr inbounds %struct.Reg, %struct.Reg* %6804, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6805 to i64*
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 1
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %6808 to i64*
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 15
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %6811 to i64*
  %6812 = load i64, i64* %RBP.i178
  %6813 = sub i64 %6812, 1640
  %6814 = load i64, i64* %PC.i176
  %6815 = add i64 %6814, 6
  store i64 %6815, i64* %PC.i176
  %6816 = inttoptr i64 %6813 to i32*
  %6817 = load i32, i32* %6816
  %6818 = zext i32 %6817 to i64
  store i64 %6818, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_46e89e, %struct.Memory** %MEMORY
  %loadMem_46e8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6820 = getelementptr inbounds %struct.GPR, %struct.GPR* %6819, i32 0, i32 33
  %6821 = getelementptr inbounds %struct.Reg, %struct.Reg* %6820, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6821 to i64*
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6823 = getelementptr inbounds %struct.GPR, %struct.GPR* %6822, i32 0, i32 1
  %6824 = getelementptr inbounds %struct.Reg, %struct.Reg* %6823, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %6824 to i64*
  %6825 = load i64, i64* %RAX.i175
  %6826 = load i64, i64* %PC.i174
  %6827 = add i64 %6826, 3
  store i64 %6827, i64* %PC.i174
  %6828 = trunc i64 %6825 to i32
  %6829 = add i32 1, %6828
  %6830 = zext i32 %6829 to i64
  store i64 %6830, i64* %RAX.i175, align 8
  %6831 = icmp ult i32 %6829, %6828
  %6832 = icmp ult i32 %6829, 1
  %6833 = or i1 %6831, %6832
  %6834 = zext i1 %6833 to i8
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6834, i8* %6835, align 1
  %6836 = and i32 %6829, 255
  %6837 = call i32 @llvm.ctpop.i32(i32 %6836)
  %6838 = trunc i32 %6837 to i8
  %6839 = and i8 %6838, 1
  %6840 = xor i8 %6839, 1
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6840, i8* %6841, align 1
  %6842 = xor i64 1, %6825
  %6843 = trunc i64 %6842 to i32
  %6844 = xor i32 %6843, %6829
  %6845 = lshr i32 %6844, 4
  %6846 = trunc i32 %6845 to i8
  %6847 = and i8 %6846, 1
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6847, i8* %6848, align 1
  %6849 = icmp eq i32 %6829, 0
  %6850 = zext i1 %6849 to i8
  %6851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6850, i8* %6851, align 1
  %6852 = lshr i32 %6829, 31
  %6853 = trunc i32 %6852 to i8
  %6854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6853, i8* %6854, align 1
  %6855 = lshr i32 %6828, 31
  %6856 = xor i32 %6852, %6855
  %6857 = add i32 %6856, %6852
  %6858 = icmp eq i32 %6857, 2
  %6859 = zext i1 %6858 to i8
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6859, i8* %6860, align 1
  store %struct.Memory* %loadMem_46e8a4, %struct.Memory** %MEMORY
  %loadMem_46e8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6862 = getelementptr inbounds %struct.GPR, %struct.GPR* %6861, i32 0, i32 33
  %6863 = getelementptr inbounds %struct.Reg, %struct.Reg* %6862, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6863 to i64*
  %6864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6865 = getelementptr inbounds %struct.GPR, %struct.GPR* %6864, i32 0, i32 1
  %6866 = getelementptr inbounds %struct.Reg, %struct.Reg* %6865, i32 0, i32 0
  %EAX.i172 = bitcast %union.anon* %6866 to i32*
  %6867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6868 = getelementptr inbounds %struct.GPR, %struct.GPR* %6867, i32 0, i32 15
  %6869 = getelementptr inbounds %struct.Reg, %struct.Reg* %6868, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %6869 to i64*
  %6870 = load i64, i64* %RBP.i173
  %6871 = sub i64 %6870, 1640
  %6872 = load i32, i32* %EAX.i172
  %6873 = zext i32 %6872 to i64
  %6874 = load i64, i64* %PC.i171
  %6875 = add i64 %6874, 6
  store i64 %6875, i64* %PC.i171
  %6876 = inttoptr i64 %6871 to i32*
  store i32 %6872, i32* %6876
  store %struct.Memory* %loadMem_46e8a7, %struct.Memory** %MEMORY
  %loadMem_46e8ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6878 = getelementptr inbounds %struct.GPR, %struct.GPR* %6877, i32 0, i32 33
  %6879 = getelementptr inbounds %struct.Reg, %struct.Reg* %6878, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %6879 to i64*
  %6880 = load i64, i64* %PC.i170
  %6881 = add i64 %6880, -601
  %6882 = load i64, i64* %PC.i170
  %6883 = add i64 %6882, 5
  store i64 %6883, i64* %PC.i170
  %6884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6881, i64* %6884, align 8
  store %struct.Memory* %loadMem_46e8ad, %struct.Memory** %MEMORY
  br label %block_.L_46e654

block_.L_46e8b2:                                  ; preds = %block_.L_46e654
  %loadMem_46e8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6886 = getelementptr inbounds %struct.GPR, %struct.GPR* %6885, i32 0, i32 33
  %6887 = getelementptr inbounds %struct.Reg, %struct.Reg* %6886, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6887 to i64*
  %6888 = load i64, i64* %PC.i169
  %6889 = add i64 %6888, 8
  store i64 %6889, i64* %PC.i169
  %6890 = load i32, i32* bitcast (%G_0xab0fc0_type* @G_0xab0fc0 to i32*)
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6891, align 1
  %6892 = and i32 %6890, 255
  %6893 = call i32 @llvm.ctpop.i32(i32 %6892)
  %6894 = trunc i32 %6893 to i8
  %6895 = and i8 %6894, 1
  %6896 = xor i8 %6895, 1
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6896, i8* %6897, align 1
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6898, align 1
  %6899 = icmp eq i32 %6890, 0
  %6900 = zext i1 %6899 to i8
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6900, i8* %6901, align 1
  %6902 = lshr i32 %6890, 31
  %6903 = trunc i32 %6902 to i8
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6903, i8* %6904, align 1
  %6905 = lshr i32 %6890, 31
  %6906 = xor i32 %6902, %6905
  %6907 = add i32 %6906, %6905
  %6908 = icmp eq i32 %6907, 2
  %6909 = zext i1 %6908 to i8
  %6910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6909, i8* %6910, align 1
  store %struct.Memory* %loadMem_46e8b2, %struct.Memory** %MEMORY
  %loadMem_46e8ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6912 = getelementptr inbounds %struct.GPR, %struct.GPR* %6911, i32 0, i32 33
  %6913 = getelementptr inbounds %struct.Reg, %struct.Reg* %6912, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6913 to i64*
  %6914 = load i64, i64* %PC.i168
  %6915 = add i64 %6914, 87
  %6916 = load i64, i64* %PC.i168
  %6917 = add i64 %6916, 6
  %6918 = load i64, i64* %PC.i168
  %6919 = add i64 %6918, 6
  store i64 %6919, i64* %PC.i168
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6921 = load i8, i8* %6920, align 1
  store i8 %6921, i8* %BRANCH_TAKEN, align 1
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6923 = icmp ne i8 %6921, 0
  %6924 = select i1 %6923, i64 %6915, i64 %6917
  store i64 %6924, i64* %6922, align 8
  store %struct.Memory* %loadMem_46e8ba, %struct.Memory** %MEMORY
  %loadBr_46e8ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e8ba = icmp eq i8 %loadBr_46e8ba, 1
  br i1 %cmpBr_46e8ba, label %block_.L_46e911, label %block_46e8c0

block_46e8c0:                                     ; preds = %block_.L_46e8b2
  %loadMem_46e8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6926 = getelementptr inbounds %struct.GPR, %struct.GPR* %6925, i32 0, i32 33
  %6927 = getelementptr inbounds %struct.Reg, %struct.Reg* %6926, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6927 to i64*
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6929 = getelementptr inbounds %struct.GPR, %struct.GPR* %6928, i32 0, i32 1
  %6930 = getelementptr inbounds %struct.Reg, %struct.Reg* %6929, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %6930 to i64*
  %6931 = load i64, i64* %PC.i166
  %6932 = add i64 %6931, 7
  store i64 %6932, i64* %PC.i166
  %6933 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %6934 = zext i32 %6933 to i64
  store i64 %6934, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_46e8c0, %struct.Memory** %MEMORY
  %loadMem_46e8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6936 = getelementptr inbounds %struct.GPR, %struct.GPR* %6935, i32 0, i32 33
  %6937 = getelementptr inbounds %struct.Reg, %struct.Reg* %6936, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6937 to i64*
  %6938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6939 = getelementptr inbounds %struct.GPR, %struct.GPR* %6938, i32 0, i32 1
  %6940 = getelementptr inbounds %struct.Reg, %struct.Reg* %6939, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %6940 to i64*
  %6941 = load i64, i64* %RAX.i165
  %6942 = load i64, i64* %PC.i164
  %6943 = add i64 %6942, 5
  store i64 %6943, i64* %PC.i164
  %6944 = and i64 65536, %6941
  %6945 = trunc i64 %6944 to i32
  store i64 %6944, i64* %RAX.i165, align 8
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6946, align 1
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6947, align 1
  %6948 = icmp eq i32 %6945, 0
  %6949 = zext i1 %6948 to i8
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6949, i8* %6950, align 1
  %6951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6951, align 1
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6952, align 1
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6953, align 1
  store %struct.Memory* %loadMem_46e8c7, %struct.Memory** %MEMORY
  %loadMem_46e8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6955 = getelementptr inbounds %struct.GPR, %struct.GPR* %6954, i32 0, i32 33
  %6956 = getelementptr inbounds %struct.Reg, %struct.Reg* %6955, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6956 to i64*
  %6957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6958 = getelementptr inbounds %struct.GPR, %struct.GPR* %6957, i32 0, i32 1
  %6959 = getelementptr inbounds %struct.Reg, %struct.Reg* %6958, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %6959 to i32*
  %6960 = load i32, i32* %EAX.i163
  %6961 = zext i32 %6960 to i64
  %6962 = load i64, i64* %PC.i162
  %6963 = add i64 %6962, 3
  store i64 %6963, i64* %PC.i162
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6964, align 1
  %6965 = and i32 %6960, 255
  %6966 = call i32 @llvm.ctpop.i32(i32 %6965)
  %6967 = trunc i32 %6966 to i8
  %6968 = and i8 %6967, 1
  %6969 = xor i8 %6968, 1
  %6970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6969, i8* %6970, align 1
  %6971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6971, align 1
  %6972 = icmp eq i32 %6960, 0
  %6973 = zext i1 %6972 to i8
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6973, i8* %6974, align 1
  %6975 = lshr i32 %6960, 31
  %6976 = trunc i32 %6975 to i8
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6976, i8* %6977, align 1
  %6978 = lshr i32 %6960, 31
  %6979 = xor i32 %6975, %6978
  %6980 = add i32 %6979, %6978
  %6981 = icmp eq i32 %6980, 2
  %6982 = zext i1 %6981 to i8
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6982, i8* %6983, align 1
  store %struct.Memory* %loadMem_46e8cc, %struct.Memory** %MEMORY
  %loadMem_46e8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6985 = getelementptr inbounds %struct.GPR, %struct.GPR* %6984, i32 0, i32 33
  %6986 = getelementptr inbounds %struct.Reg, %struct.Reg* %6985, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6986 to i64*
  %6987 = load i64, i64* %PC.i161
  %6988 = add i64 %6987, 11
  %6989 = load i64, i64* %PC.i161
  %6990 = add i64 %6989, 6
  %6991 = load i64, i64* %PC.i161
  %6992 = add i64 %6991, 6
  store i64 %6992, i64* %PC.i161
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6994 = load i8, i8* %6993, align 1
  %6995 = icmp eq i8 %6994, 0
  %6996 = zext i1 %6995 to i8
  store i8 %6996, i8* %BRANCH_TAKEN, align 1
  %6997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6998 = select i1 %6995, i64 %6988, i64 %6990
  store i64 %6998, i64* %6997, align 8
  store %struct.Memory* %loadMem_46e8cf, %struct.Memory** %MEMORY
  %loadBr_46e8cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e8cf = icmp eq i8 %loadBr_46e8cf, 1
  br i1 %cmpBr_46e8cf, label %block_.L_46e8da, label %block_46e8d5

block_46e8d5:                                     ; preds = %block_46e8c0
  %loadMem_46e8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7000 = getelementptr inbounds %struct.GPR, %struct.GPR* %6999, i32 0, i32 33
  %7001 = getelementptr inbounds %struct.Reg, %struct.Reg* %7000, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %7001 to i64*
  %7002 = load i64, i64* %PC.i160
  %7003 = add i64 %7002, 55
  %7004 = load i64, i64* %PC.i160
  %7005 = add i64 %7004, 5
  store i64 %7005, i64* %PC.i160
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7003, i64* %7006, align 8
  store %struct.Memory* %loadMem_46e8d5, %struct.Memory** %MEMORY
  br label %block_.L_46e90c

block_.L_46e8da:                                  ; preds = %block_46e8c0
  %loadMem_46e8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7008 = getelementptr inbounds %struct.GPR, %struct.GPR* %7007, i32 0, i32 33
  %7009 = getelementptr inbounds %struct.Reg, %struct.Reg* %7008, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %7009 to i64*
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7011 = getelementptr inbounds %struct.GPR, %struct.GPR* %7010, i32 0, i32 11
  %7012 = getelementptr inbounds %struct.Reg, %struct.Reg* %7011, i32 0, i32 0
  %RDI.i159 = bitcast %union.anon* %7012 to i64*
  %7013 = load i64, i64* %PC.i158
  %7014 = add i64 %7013, 10
  store i64 %7014, i64* %PC.i158
  store i64 ptrtoint (%G__0x58058f_type* @G__0x58058f to i64), i64* %RDI.i159, align 8
  store %struct.Memory* %loadMem_46e8da, %struct.Memory** %MEMORY
  %loadMem_46e8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7016 = getelementptr inbounds %struct.GPR, %struct.GPR* %7015, i32 0, i32 33
  %7017 = getelementptr inbounds %struct.Reg, %struct.Reg* %7016, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %7017 to i64*
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7019 = getelementptr inbounds %struct.GPR, %struct.GPR* %7018, i32 0, i32 1
  %7020 = getelementptr inbounds %struct.Reg, %struct.Reg* %7019, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %7020 to i64*
  %7021 = load i64, i64* %PC.i156
  %7022 = add i64 %7021, 7
  store i64 %7022, i64* %PC.i156
  %7023 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %7024 = zext i32 %7023 to i64
  store i64 %7024, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_46e8e4, %struct.Memory** %MEMORY
  %loadMem_46e8eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7026 = getelementptr inbounds %struct.GPR, %struct.GPR* %7025, i32 0, i32 33
  %7027 = getelementptr inbounds %struct.Reg, %struct.Reg* %7026, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %7027 to i64*
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7029 = getelementptr inbounds %struct.GPR, %struct.GPR* %7028, i32 0, i32 1
  %7030 = getelementptr inbounds %struct.Reg, %struct.Reg* %7029, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %7030 to i64*
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7032 = getelementptr inbounds %struct.GPR, %struct.GPR* %7031, i32 0, i32 15
  %7033 = getelementptr inbounds %struct.Reg, %struct.Reg* %7032, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %7033 to i64*
  %7034 = load i64, i64* %RAX.i154
  %7035 = load i64, i64* %RBP.i155
  %7036 = sub i64 %7035, 1636
  %7037 = load i64, i64* %PC.i153
  %7038 = add i64 %7037, 6
  store i64 %7038, i64* %PC.i153
  %7039 = trunc i64 %7034 to i32
  %7040 = inttoptr i64 %7036 to i32*
  %7041 = load i32, i32* %7040
  %7042 = sub i32 %7039, %7041
  %7043 = zext i32 %7042 to i64
  store i64 %7043, i64* %RAX.i154, align 8
  %7044 = icmp ult i32 %7039, %7041
  %7045 = zext i1 %7044 to i8
  %7046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7045, i8* %7046, align 1
  %7047 = and i32 %7042, 255
  %7048 = call i32 @llvm.ctpop.i32(i32 %7047)
  %7049 = trunc i32 %7048 to i8
  %7050 = and i8 %7049, 1
  %7051 = xor i8 %7050, 1
  %7052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7051, i8* %7052, align 1
  %7053 = xor i32 %7041, %7039
  %7054 = xor i32 %7053, %7042
  %7055 = lshr i32 %7054, 4
  %7056 = trunc i32 %7055 to i8
  %7057 = and i8 %7056, 1
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7057, i8* %7058, align 1
  %7059 = icmp eq i32 %7042, 0
  %7060 = zext i1 %7059 to i8
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7060, i8* %7061, align 1
  %7062 = lshr i32 %7042, 31
  %7063 = trunc i32 %7062 to i8
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7063, i8* %7064, align 1
  %7065 = lshr i32 %7039, 31
  %7066 = lshr i32 %7041, 31
  %7067 = xor i32 %7066, %7065
  %7068 = xor i32 %7062, %7065
  %7069 = add i32 %7068, %7067
  %7070 = icmp eq i32 %7069, 2
  %7071 = zext i1 %7070 to i8
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7071, i8* %7072, align 1
  store %struct.Memory* %loadMem_46e8eb, %struct.Memory** %MEMORY
  %loadMem_46e8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7074 = getelementptr inbounds %struct.GPR, %struct.GPR* %7073, i32 0, i32 33
  %7075 = getelementptr inbounds %struct.Reg, %struct.Reg* %7074, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %7075 to i64*
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7077 = getelementptr inbounds %struct.GPR, %struct.GPR* %7076, i32 0, i32 7
  %7078 = getelementptr inbounds %struct.Reg, %struct.Reg* %7077, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %7078 to i64*
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7080 = getelementptr inbounds %struct.GPR, %struct.GPR* %7079, i32 0, i32 15
  %7081 = getelementptr inbounds %struct.Reg, %struct.Reg* %7080, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %7081 to i64*
  %7082 = load i64, i64* %RBP.i152
  %7083 = sub i64 %7082, 1684
  %7084 = load i64, i64* %PC.i150
  %7085 = add i64 %7084, 6
  store i64 %7085, i64* %PC.i150
  %7086 = inttoptr i64 %7083 to i32*
  %7087 = load i32, i32* %7086
  %7088 = zext i32 %7087 to i64
  store i64 %7088, i64* %RDX.i151, align 8
  store %struct.Memory* %loadMem_46e8f1, %struct.Memory** %MEMORY
  %loadMem_46e8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7090 = getelementptr inbounds %struct.GPR, %struct.GPR* %7089, i32 0, i32 33
  %7091 = getelementptr inbounds %struct.Reg, %struct.Reg* %7090, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %7091 to i64*
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7093 = getelementptr inbounds %struct.GPR, %struct.GPR* %7092, i32 0, i32 5
  %7094 = getelementptr inbounds %struct.Reg, %struct.Reg* %7093, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %7094 to i64*
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7096 = getelementptr inbounds %struct.GPR, %struct.GPR* %7095, i32 0, i32 15
  %7097 = getelementptr inbounds %struct.Reg, %struct.Reg* %7096, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %7097 to i64*
  %7098 = load i64, i64* %RBP.i149
  %7099 = sub i64 %7098, 1688
  %7100 = load i64, i64* %PC.i147
  %7101 = add i64 %7100, 6
  store i64 %7101, i64* %PC.i147
  %7102 = inttoptr i64 %7099 to i32*
  %7103 = load i32, i32* %7102
  %7104 = zext i32 %7103 to i64
  store i64 %7104, i64* %RCX.i148, align 8
  store %struct.Memory* %loadMem_46e8f7, %struct.Memory** %MEMORY
  %loadMem_46e8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7106 = getelementptr inbounds %struct.GPR, %struct.GPR* %7105, i32 0, i32 33
  %7107 = getelementptr inbounds %struct.Reg, %struct.Reg* %7106, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %7107 to i64*
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7109 = getelementptr inbounds %struct.GPR, %struct.GPR* %7108, i32 0, i32 1
  %7110 = getelementptr inbounds %struct.Reg, %struct.Reg* %7109, i32 0, i32 0
  %EAX.i145 = bitcast %union.anon* %7110 to i32*
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7112 = getelementptr inbounds %struct.GPR, %struct.GPR* %7111, i32 0, i32 9
  %7113 = getelementptr inbounds %struct.Reg, %struct.Reg* %7112, i32 0, i32 0
  %RSI.i146 = bitcast %union.anon* %7113 to i64*
  %7114 = load i32, i32* %EAX.i145
  %7115 = zext i32 %7114 to i64
  %7116 = load i64, i64* %PC.i144
  %7117 = add i64 %7116, 2
  store i64 %7117, i64* %PC.i144
  %7118 = and i64 %7115, 4294967295
  store i64 %7118, i64* %RSI.i146, align 8
  store %struct.Memory* %loadMem_46e8fd, %struct.Memory** %MEMORY
  %loadMem_46e8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7120 = getelementptr inbounds %struct.GPR, %struct.GPR* %7119, i32 0, i32 33
  %7121 = getelementptr inbounds %struct.Reg, %struct.Reg* %7120, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %7121 to i64*
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7123 = getelementptr inbounds %struct.GPR, %struct.GPR* %7122, i32 0, i32 1
  %7124 = getelementptr inbounds %struct.Reg, %struct.Reg* %7123, i32 0, i32 0
  %7125 = bitcast %union.anon* %7124 to %struct.anon.2*
  %AL.i143 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7125, i32 0, i32 0
  %7126 = load i64, i64* %PC.i142
  %7127 = add i64 %7126, 2
  store i64 %7127, i64* %PC.i142
  store i8 0, i8* %AL.i143, align 1
  store %struct.Memory* %loadMem_46e8ff, %struct.Memory** %MEMORY
  %loadMem1_46e901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7129 = getelementptr inbounds %struct.GPR, %struct.GPR* %7128, i32 0, i32 33
  %7130 = getelementptr inbounds %struct.Reg, %struct.Reg* %7129, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %7130 to i64*
  %7131 = load i64, i64* %PC.i141
  %7132 = add i64 %7131, -117585
  %7133 = load i64, i64* %PC.i141
  %7134 = add i64 %7133, 5
  %7135 = load i64, i64* %PC.i141
  %7136 = add i64 %7135, 5
  store i64 %7136, i64* %PC.i141
  %7137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7138 = load i64, i64* %7137, align 8
  %7139 = add i64 %7138, -8
  %7140 = inttoptr i64 %7139 to i64*
  store i64 %7134, i64* %7140
  store i64 %7139, i64* %7137, align 8
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7132, i64* %7141, align 8
  store %struct.Memory* %loadMem1_46e901, %struct.Memory** %MEMORY
  %loadMem2_46e901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e901 = load i64, i64* %3
  %call2_46e901 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_46e901, %struct.Memory* %loadMem2_46e901)
  store %struct.Memory* %call2_46e901, %struct.Memory** %MEMORY
  %loadMem_46e906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7143 = getelementptr inbounds %struct.GPR, %struct.GPR* %7142, i32 0, i32 33
  %7144 = getelementptr inbounds %struct.Reg, %struct.Reg* %7143, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %7144 to i64*
  %7145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7146 = getelementptr inbounds %struct.GPR, %struct.GPR* %7145, i32 0, i32 1
  %7147 = getelementptr inbounds %struct.Reg, %struct.Reg* %7146, i32 0, i32 0
  %EAX.i139 = bitcast %union.anon* %7147 to i32*
  %7148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7149 = getelementptr inbounds %struct.GPR, %struct.GPR* %7148, i32 0, i32 15
  %7150 = getelementptr inbounds %struct.Reg, %struct.Reg* %7149, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %7150 to i64*
  %7151 = load i64, i64* %RBP.i140
  %7152 = sub i64 %7151, 1712
  %7153 = load i32, i32* %EAX.i139
  %7154 = zext i32 %7153 to i64
  %7155 = load i64, i64* %PC.i138
  %7156 = add i64 %7155, 6
  store i64 %7156, i64* %PC.i138
  %7157 = inttoptr i64 %7152 to i32*
  store i32 %7153, i32* %7157
  store %struct.Memory* %loadMem_46e906, %struct.Memory** %MEMORY
  br label %block_.L_46e90c

block_.L_46e90c:                                  ; preds = %block_.L_46e8da, %block_46e8d5
  %loadMem_46e90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7159 = getelementptr inbounds %struct.GPR, %struct.GPR* %7158, i32 0, i32 33
  %7160 = getelementptr inbounds %struct.Reg, %struct.Reg* %7159, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %7160 to i64*
  %7161 = load i64, i64* %PC.i137
  %7162 = add i64 %7161, 86
  %7163 = load i64, i64* %PC.i137
  %7164 = add i64 %7163, 5
  store i64 %7164, i64* %PC.i137
  %7165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7162, i64* %7165, align 8
  store %struct.Memory* %loadMem_46e90c, %struct.Memory** %MEMORY
  br label %block_.L_46e962

block_.L_46e911:                                  ; preds = %block_.L_46e8b2
  %loadMem_46e911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7167 = getelementptr inbounds %struct.GPR, %struct.GPR* %7166, i32 0, i32 33
  %7168 = getelementptr inbounds %struct.Reg, %struct.Reg* %7167, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %7168 to i64*
  %7169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7170 = getelementptr inbounds %struct.GPR, %struct.GPR* %7169, i32 0, i32 1
  %7171 = getelementptr inbounds %struct.Reg, %struct.Reg* %7170, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %7171 to i64*
  %7172 = load i64, i64* %PC.i135
  %7173 = add i64 %7172, 7
  store i64 %7173, i64* %PC.i135
  %7174 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %7175 = zext i32 %7174 to i64
  store i64 %7175, i64* %RAX.i136, align 8
  store %struct.Memory* %loadMem_46e911, %struct.Memory** %MEMORY
  %loadMem_46e918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7177 = getelementptr inbounds %struct.GPR, %struct.GPR* %7176, i32 0, i32 33
  %7178 = getelementptr inbounds %struct.Reg, %struct.Reg* %7177, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %7178 to i64*
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7180 = getelementptr inbounds %struct.GPR, %struct.GPR* %7179, i32 0, i32 1
  %7181 = getelementptr inbounds %struct.Reg, %struct.Reg* %7180, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %7181 to i64*
  %7182 = load i64, i64* %RAX.i134
  %7183 = load i64, i64* %PC.i133
  %7184 = add i64 %7183, 5
  store i64 %7184, i64* %PC.i133
  %7185 = and i64 65536, %7182
  %7186 = trunc i64 %7185 to i32
  store i64 %7185, i64* %RAX.i134, align 8
  %7187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7187, align 1
  %7188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7188, align 1
  %7189 = icmp eq i32 %7186, 0
  %7190 = zext i1 %7189 to i8
  %7191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7190, i8* %7191, align 1
  %7192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7192, align 1
  %7193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7193, align 1
  %7194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7194, align 1
  store %struct.Memory* %loadMem_46e918, %struct.Memory** %MEMORY
  %loadMem_46e91d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7196 = getelementptr inbounds %struct.GPR, %struct.GPR* %7195, i32 0, i32 33
  %7197 = getelementptr inbounds %struct.Reg, %struct.Reg* %7196, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %7197 to i64*
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7199 = getelementptr inbounds %struct.GPR, %struct.GPR* %7198, i32 0, i32 1
  %7200 = getelementptr inbounds %struct.Reg, %struct.Reg* %7199, i32 0, i32 0
  %EAX.i132 = bitcast %union.anon* %7200 to i32*
  %7201 = load i32, i32* %EAX.i132
  %7202 = zext i32 %7201 to i64
  %7203 = load i64, i64* %PC.i131
  %7204 = add i64 %7203, 3
  store i64 %7204, i64* %PC.i131
  %7205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7205, align 1
  %7206 = and i32 %7201, 255
  %7207 = call i32 @llvm.ctpop.i32(i32 %7206)
  %7208 = trunc i32 %7207 to i8
  %7209 = and i8 %7208, 1
  %7210 = xor i8 %7209, 1
  %7211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7210, i8* %7211, align 1
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7212, align 1
  %7213 = icmp eq i32 %7201, 0
  %7214 = zext i1 %7213 to i8
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7214, i8* %7215, align 1
  %7216 = lshr i32 %7201, 31
  %7217 = trunc i32 %7216 to i8
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7217, i8* %7218, align 1
  %7219 = lshr i32 %7201, 31
  %7220 = xor i32 %7216, %7219
  %7221 = add i32 %7220, %7219
  %7222 = icmp eq i32 %7221, 2
  %7223 = zext i1 %7222 to i8
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7223, i8* %7224, align 1
  store %struct.Memory* %loadMem_46e91d, %struct.Memory** %MEMORY
  %loadMem_46e920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7226 = getelementptr inbounds %struct.GPR, %struct.GPR* %7225, i32 0, i32 33
  %7227 = getelementptr inbounds %struct.Reg, %struct.Reg* %7226, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %7227 to i64*
  %7228 = load i64, i64* %PC.i130
  %7229 = add i64 %7228, 11
  %7230 = load i64, i64* %PC.i130
  %7231 = add i64 %7230, 6
  %7232 = load i64, i64* %PC.i130
  %7233 = add i64 %7232, 6
  store i64 %7233, i64* %PC.i130
  %7234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7235 = load i8, i8* %7234, align 1
  %7236 = icmp eq i8 %7235, 0
  %7237 = zext i1 %7236 to i8
  store i8 %7237, i8* %BRANCH_TAKEN, align 1
  %7238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7239 = select i1 %7236, i64 %7229, i64 %7231
  store i64 %7239, i64* %7238, align 8
  store %struct.Memory* %loadMem_46e920, %struct.Memory** %MEMORY
  %loadBr_46e920 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e920 = icmp eq i8 %loadBr_46e920, 1
  br i1 %cmpBr_46e920, label %block_.L_46e92b, label %block_46e926

block_46e926:                                     ; preds = %block_.L_46e911
  %loadMem_46e926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7241 = getelementptr inbounds %struct.GPR, %struct.GPR* %7240, i32 0, i32 33
  %7242 = getelementptr inbounds %struct.Reg, %struct.Reg* %7241, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %7242 to i64*
  %7243 = load i64, i64* %PC.i129
  %7244 = add i64 %7243, 55
  %7245 = load i64, i64* %PC.i129
  %7246 = add i64 %7245, 5
  store i64 %7246, i64* %PC.i129
  %7247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7244, i64* %7247, align 8
  store %struct.Memory* %loadMem_46e926, %struct.Memory** %MEMORY
  br label %block_.L_46e95d

block_.L_46e92b:                                  ; preds = %block_.L_46e911
  %loadMem_46e92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7249 = getelementptr inbounds %struct.GPR, %struct.GPR* %7248, i32 0, i32 33
  %7250 = getelementptr inbounds %struct.Reg, %struct.Reg* %7249, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %7250 to i64*
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7252 = getelementptr inbounds %struct.GPR, %struct.GPR* %7251, i32 0, i32 11
  %7253 = getelementptr inbounds %struct.Reg, %struct.Reg* %7252, i32 0, i32 0
  %RDI.i128 = bitcast %union.anon* %7253 to i64*
  %7254 = load i64, i64* %PC.i127
  %7255 = add i64 %7254, 10
  store i64 %7255, i64* %PC.i127
  store i64 ptrtoint (%G__0x5805b3_type* @G__0x5805b3 to i64), i64* %RDI.i128, align 8
  store %struct.Memory* %loadMem_46e92b, %struct.Memory** %MEMORY
  %loadMem_46e935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7257 = getelementptr inbounds %struct.GPR, %struct.GPR* %7256, i32 0, i32 33
  %7258 = getelementptr inbounds %struct.Reg, %struct.Reg* %7257, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %7258 to i64*
  %7259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7260 = getelementptr inbounds %struct.GPR, %struct.GPR* %7259, i32 0, i32 1
  %7261 = getelementptr inbounds %struct.Reg, %struct.Reg* %7260, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %7261 to i64*
  %7262 = load i64, i64* %PC.i125
  %7263 = add i64 %7262, 7
  store i64 %7263, i64* %PC.i125
  %7264 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %7265 = zext i32 %7264 to i64
  store i64 %7265, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_46e935, %struct.Memory** %MEMORY
  %loadMem_46e93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7267 = getelementptr inbounds %struct.GPR, %struct.GPR* %7266, i32 0, i32 33
  %7268 = getelementptr inbounds %struct.Reg, %struct.Reg* %7267, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7268 to i64*
  %7269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7270 = getelementptr inbounds %struct.GPR, %struct.GPR* %7269, i32 0, i32 1
  %7271 = getelementptr inbounds %struct.Reg, %struct.Reg* %7270, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %7271 to i64*
  %7272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7273 = getelementptr inbounds %struct.GPR, %struct.GPR* %7272, i32 0, i32 15
  %7274 = getelementptr inbounds %struct.Reg, %struct.Reg* %7273, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %7274 to i64*
  %7275 = load i64, i64* %RAX.i123
  %7276 = load i64, i64* %RBP.i124
  %7277 = sub i64 %7276, 1636
  %7278 = load i64, i64* %PC.i122
  %7279 = add i64 %7278, 6
  store i64 %7279, i64* %PC.i122
  %7280 = trunc i64 %7275 to i32
  %7281 = inttoptr i64 %7277 to i32*
  %7282 = load i32, i32* %7281
  %7283 = sub i32 %7280, %7282
  %7284 = zext i32 %7283 to i64
  store i64 %7284, i64* %RAX.i123, align 8
  %7285 = icmp ult i32 %7280, %7282
  %7286 = zext i1 %7285 to i8
  %7287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7286, i8* %7287, align 1
  %7288 = and i32 %7283, 255
  %7289 = call i32 @llvm.ctpop.i32(i32 %7288)
  %7290 = trunc i32 %7289 to i8
  %7291 = and i8 %7290, 1
  %7292 = xor i8 %7291, 1
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7292, i8* %7293, align 1
  %7294 = xor i32 %7282, %7280
  %7295 = xor i32 %7294, %7283
  %7296 = lshr i32 %7295, 4
  %7297 = trunc i32 %7296 to i8
  %7298 = and i8 %7297, 1
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7298, i8* %7299, align 1
  %7300 = icmp eq i32 %7283, 0
  %7301 = zext i1 %7300 to i8
  %7302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7301, i8* %7302, align 1
  %7303 = lshr i32 %7283, 31
  %7304 = trunc i32 %7303 to i8
  %7305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7304, i8* %7305, align 1
  %7306 = lshr i32 %7280, 31
  %7307 = lshr i32 %7282, 31
  %7308 = xor i32 %7307, %7306
  %7309 = xor i32 %7303, %7306
  %7310 = add i32 %7309, %7308
  %7311 = icmp eq i32 %7310, 2
  %7312 = zext i1 %7311 to i8
  %7313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7312, i8* %7313, align 1
  store %struct.Memory* %loadMem_46e93c, %struct.Memory** %MEMORY
  %loadMem_46e942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7315 = getelementptr inbounds %struct.GPR, %struct.GPR* %7314, i32 0, i32 33
  %7316 = getelementptr inbounds %struct.Reg, %struct.Reg* %7315, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7316 to i64*
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7318 = getelementptr inbounds %struct.GPR, %struct.GPR* %7317, i32 0, i32 7
  %7319 = getelementptr inbounds %struct.Reg, %struct.Reg* %7318, i32 0, i32 0
  %RDX.i120 = bitcast %union.anon* %7319 to i64*
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7321 = getelementptr inbounds %struct.GPR, %struct.GPR* %7320, i32 0, i32 15
  %7322 = getelementptr inbounds %struct.Reg, %struct.Reg* %7321, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %7322 to i64*
  %7323 = load i64, i64* %RBP.i121
  %7324 = sub i64 %7323, 1680
  %7325 = load i64, i64* %PC.i119
  %7326 = add i64 %7325, 6
  store i64 %7326, i64* %PC.i119
  %7327 = inttoptr i64 %7324 to i32*
  %7328 = load i32, i32* %7327
  %7329 = zext i32 %7328 to i64
  store i64 %7329, i64* %RDX.i120, align 8
  store %struct.Memory* %loadMem_46e942, %struct.Memory** %MEMORY
  %loadMem_46e948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7331 = getelementptr inbounds %struct.GPR, %struct.GPR* %7330, i32 0, i32 33
  %7332 = getelementptr inbounds %struct.Reg, %struct.Reg* %7331, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %7332 to i64*
  %7333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7334 = getelementptr inbounds %struct.GPR, %struct.GPR* %7333, i32 0, i32 5
  %7335 = getelementptr inbounds %struct.Reg, %struct.Reg* %7334, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7335 to i64*
  %7336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7337 = getelementptr inbounds %struct.GPR, %struct.GPR* %7336, i32 0, i32 15
  %7338 = getelementptr inbounds %struct.Reg, %struct.Reg* %7337, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %7338 to i64*
  %7339 = load i64, i64* %RBP.i118
  %7340 = sub i64 %7339, 1676
  %7341 = load i64, i64* %PC.i117
  %7342 = add i64 %7341, 6
  store i64 %7342, i64* %PC.i117
  %7343 = inttoptr i64 %7340 to i32*
  %7344 = load i32, i32* %7343
  %7345 = zext i32 %7344 to i64
  store i64 %7345, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_46e948, %struct.Memory** %MEMORY
  %loadMem_46e94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 33
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %7348 to i64*
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 1
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %EAX.i115 = bitcast %union.anon* %7351 to i32*
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7353 = getelementptr inbounds %struct.GPR, %struct.GPR* %7352, i32 0, i32 9
  %7354 = getelementptr inbounds %struct.Reg, %struct.Reg* %7353, i32 0, i32 0
  %RSI.i116 = bitcast %union.anon* %7354 to i64*
  %7355 = load i32, i32* %EAX.i115
  %7356 = zext i32 %7355 to i64
  %7357 = load i64, i64* %PC.i114
  %7358 = add i64 %7357, 2
  store i64 %7358, i64* %PC.i114
  %7359 = and i64 %7356, 4294967295
  store i64 %7359, i64* %RSI.i116, align 8
  store %struct.Memory* %loadMem_46e94e, %struct.Memory** %MEMORY
  %loadMem_46e950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7361 = getelementptr inbounds %struct.GPR, %struct.GPR* %7360, i32 0, i32 33
  %7362 = getelementptr inbounds %struct.Reg, %struct.Reg* %7361, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %7362 to i64*
  %7363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7364 = getelementptr inbounds %struct.GPR, %struct.GPR* %7363, i32 0, i32 1
  %7365 = getelementptr inbounds %struct.Reg, %struct.Reg* %7364, i32 0, i32 0
  %7366 = bitcast %union.anon* %7365 to %struct.anon.2*
  %AL.i113 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7366, i32 0, i32 0
  %7367 = load i64, i64* %PC.i112
  %7368 = add i64 %7367, 2
  store i64 %7368, i64* %PC.i112
  store i8 0, i8* %AL.i113, align 1
  store %struct.Memory* %loadMem_46e950, %struct.Memory** %MEMORY
  %loadMem1_46e952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7370 = getelementptr inbounds %struct.GPR, %struct.GPR* %7369, i32 0, i32 33
  %7371 = getelementptr inbounds %struct.Reg, %struct.Reg* %7370, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %7371 to i64*
  %7372 = load i64, i64* %PC.i111
  %7373 = add i64 %7372, -117666
  %7374 = load i64, i64* %PC.i111
  %7375 = add i64 %7374, 5
  %7376 = load i64, i64* %PC.i111
  %7377 = add i64 %7376, 5
  store i64 %7377, i64* %PC.i111
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7379 = load i64, i64* %7378, align 8
  %7380 = add i64 %7379, -8
  %7381 = inttoptr i64 %7380 to i64*
  store i64 %7375, i64* %7381
  store i64 %7380, i64* %7378, align 8
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7373, i64* %7382, align 8
  store %struct.Memory* %loadMem1_46e952, %struct.Memory** %MEMORY
  %loadMem2_46e952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e952 = load i64, i64* %3
  %call2_46e952 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_46e952, %struct.Memory* %loadMem2_46e952)
  store %struct.Memory* %call2_46e952, %struct.Memory** %MEMORY
  %loadMem_46e957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7384 = getelementptr inbounds %struct.GPR, %struct.GPR* %7383, i32 0, i32 33
  %7385 = getelementptr inbounds %struct.Reg, %struct.Reg* %7384, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %7385 to i64*
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7387 = getelementptr inbounds %struct.GPR, %struct.GPR* %7386, i32 0, i32 1
  %7388 = getelementptr inbounds %struct.Reg, %struct.Reg* %7387, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %7388 to i32*
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7390 = getelementptr inbounds %struct.GPR, %struct.GPR* %7389, i32 0, i32 15
  %7391 = getelementptr inbounds %struct.Reg, %struct.Reg* %7390, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %7391 to i64*
  %7392 = load i64, i64* %RBP.i110
  %7393 = sub i64 %7392, 1716
  %7394 = load i32, i32* %EAX.i109
  %7395 = zext i32 %7394 to i64
  %7396 = load i64, i64* %PC.i108
  %7397 = add i64 %7396, 6
  store i64 %7397, i64* %PC.i108
  %7398 = inttoptr i64 %7393 to i32*
  store i32 %7394, i32* %7398
  store %struct.Memory* %loadMem_46e957, %struct.Memory** %MEMORY
  br label %block_.L_46e95d

block_.L_46e95d:                                  ; preds = %block_.L_46e92b, %block_46e926
  %loadMem_46e95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7400 = getelementptr inbounds %struct.GPR, %struct.GPR* %7399, i32 0, i32 33
  %7401 = getelementptr inbounds %struct.Reg, %struct.Reg* %7400, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %7401 to i64*
  %7402 = load i64, i64* %PC.i107
  %7403 = add i64 %7402, 5
  %7404 = load i64, i64* %PC.i107
  %7405 = add i64 %7404, 5
  store i64 %7405, i64* %PC.i107
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7403, i64* %7406, align 8
  store %struct.Memory* %loadMem_46e95d, %struct.Memory** %MEMORY
  br label %block_.L_46e962

block_.L_46e962:                                  ; preds = %block_.L_46e95d, %block_.L_46e90c
  %loadMem_46e962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7408 = getelementptr inbounds %struct.GPR, %struct.GPR* %7407, i32 0, i32 33
  %7409 = getelementptr inbounds %struct.Reg, %struct.Reg* %7408, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %7409 to i64*
  %7410 = load i64, i64* %PC.i106
  %7411 = add i64 %7410, 5
  %7412 = load i64, i64* %PC.i106
  %7413 = add i64 %7412, 5
  store i64 %7413, i64* %PC.i106
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7411, i64* %7414, align 8
  store %struct.Memory* %loadMem_46e962, %struct.Memory** %MEMORY
  br label %block_.L_46e967

block_.L_46e967:                                  ; preds = %block_.L_46e962
  %loadMem_46e967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7416 = getelementptr inbounds %struct.GPR, %struct.GPR* %7415, i32 0, i32 33
  %7417 = getelementptr inbounds %struct.Reg, %struct.Reg* %7416, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %7417 to i64*
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7419 = getelementptr inbounds %struct.GPR, %struct.GPR* %7418, i32 0, i32 1
  %7420 = getelementptr inbounds %struct.Reg, %struct.Reg* %7419, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %7420 to i64*
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7422 = getelementptr inbounds %struct.GPR, %struct.GPR* %7421, i32 0, i32 15
  %7423 = getelementptr inbounds %struct.Reg, %struct.Reg* %7422, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %7423 to i64*
  %7424 = load i64, i64* %RBP.i105
  %7425 = sub i64 %7424, 1636
  %7426 = load i64, i64* %PC.i103
  %7427 = add i64 %7426, 6
  store i64 %7427, i64* %PC.i103
  %7428 = inttoptr i64 %7425 to i32*
  %7429 = load i32, i32* %7428
  %7430 = zext i32 %7429 to i64
  store i64 %7430, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_46e967, %struct.Memory** %MEMORY
  %loadMem_46e96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7432 = getelementptr inbounds %struct.GPR, %struct.GPR* %7431, i32 0, i32 33
  %7433 = getelementptr inbounds %struct.Reg, %struct.Reg* %7432, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %7433 to i64*
  %7434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7435 = getelementptr inbounds %struct.GPR, %struct.GPR* %7434, i32 0, i32 1
  %7436 = getelementptr inbounds %struct.Reg, %struct.Reg* %7435, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %7436 to i64*
  %7437 = load i64, i64* %RAX.i102
  %7438 = load i64, i64* %PC.i101
  %7439 = add i64 %7438, 3
  store i64 %7439, i64* %PC.i101
  %7440 = trunc i64 %7437 to i32
  %7441 = add i32 1, %7440
  %7442 = zext i32 %7441 to i64
  store i64 %7442, i64* %RAX.i102, align 8
  %7443 = icmp ult i32 %7441, %7440
  %7444 = icmp ult i32 %7441, 1
  %7445 = or i1 %7443, %7444
  %7446 = zext i1 %7445 to i8
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7446, i8* %7447, align 1
  %7448 = and i32 %7441, 255
  %7449 = call i32 @llvm.ctpop.i32(i32 %7448)
  %7450 = trunc i32 %7449 to i8
  %7451 = and i8 %7450, 1
  %7452 = xor i8 %7451, 1
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7452, i8* %7453, align 1
  %7454 = xor i64 1, %7437
  %7455 = trunc i64 %7454 to i32
  %7456 = xor i32 %7455, %7441
  %7457 = lshr i32 %7456, 4
  %7458 = trunc i32 %7457 to i8
  %7459 = and i8 %7458, 1
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7459, i8* %7460, align 1
  %7461 = icmp eq i32 %7441, 0
  %7462 = zext i1 %7461 to i8
  %7463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7462, i8* %7463, align 1
  %7464 = lshr i32 %7441, 31
  %7465 = trunc i32 %7464 to i8
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7465, i8* %7466, align 1
  %7467 = lshr i32 %7440, 31
  %7468 = xor i32 %7464, %7467
  %7469 = add i32 %7468, %7464
  %7470 = icmp eq i32 %7469, 2
  %7471 = zext i1 %7470 to i8
  %7472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7471, i8* %7472, align 1
  store %struct.Memory* %loadMem_46e96d, %struct.Memory** %MEMORY
  %loadMem_46e970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7474 = getelementptr inbounds %struct.GPR, %struct.GPR* %7473, i32 0, i32 33
  %7475 = getelementptr inbounds %struct.Reg, %struct.Reg* %7474, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %7475 to i64*
  %7476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7477 = getelementptr inbounds %struct.GPR, %struct.GPR* %7476, i32 0, i32 1
  %7478 = getelementptr inbounds %struct.Reg, %struct.Reg* %7477, i32 0, i32 0
  %EAX.i99 = bitcast %union.anon* %7478 to i32*
  %7479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7480 = getelementptr inbounds %struct.GPR, %struct.GPR* %7479, i32 0, i32 15
  %7481 = getelementptr inbounds %struct.Reg, %struct.Reg* %7480, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %7481 to i64*
  %7482 = load i64, i64* %RBP.i100
  %7483 = sub i64 %7482, 1636
  %7484 = load i32, i32* %EAX.i99
  %7485 = zext i32 %7484 to i64
  %7486 = load i64, i64* %PC.i98
  %7487 = add i64 %7486, 6
  store i64 %7487, i64* %PC.i98
  %7488 = inttoptr i64 %7483 to i32*
  store i32 %7484, i32* %7488
  store %struct.Memory* %loadMem_46e970, %struct.Memory** %MEMORY
  %loadMem_46e976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7490 = getelementptr inbounds %struct.GPR, %struct.GPR* %7489, i32 0, i32 33
  %7491 = getelementptr inbounds %struct.Reg, %struct.Reg* %7490, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %7491 to i64*
  %7492 = load i64, i64* %PC.i97
  %7493 = add i64 %7492, -871
  %7494 = load i64, i64* %PC.i97
  %7495 = add i64 %7494, 5
  store i64 %7495, i64* %PC.i97
  %7496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7493, i64* %7496, align 8
  store %struct.Memory* %loadMem_46e976, %struct.Memory** %MEMORY
  br label %block_.L_46e60f

block_.L_46e97b:                                  ; preds = %block_.L_46e60f
  %loadMem_46e97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7498 = getelementptr inbounds %struct.GPR, %struct.GPR* %7497, i32 0, i32 33
  %7499 = getelementptr inbounds %struct.Reg, %struct.Reg* %7498, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %7499 to i64*
  %7500 = load i64, i64* %PC.i96
  %7501 = add i64 %7500, 8
  store i64 %7501, i64* %PC.i96
  %7502 = load i32, i32* bitcast (%G_0xab0fc0_type* @G_0xab0fc0 to i32*)
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7503, align 1
  %7504 = and i32 %7502, 255
  %7505 = call i32 @llvm.ctpop.i32(i32 %7504)
  %7506 = trunc i32 %7505 to i8
  %7507 = and i8 %7506, 1
  %7508 = xor i8 %7507, 1
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7508, i8* %7509, align 1
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7510, align 1
  %7511 = icmp eq i32 %7502, 0
  %7512 = zext i1 %7511 to i8
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7512, i8* %7513, align 1
  %7514 = lshr i32 %7502, 31
  %7515 = trunc i32 %7514 to i8
  %7516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7515, i8* %7516, align 1
  %7517 = lshr i32 %7502, 31
  %7518 = xor i32 %7514, %7517
  %7519 = add i32 %7518, %7517
  %7520 = icmp eq i32 %7519, 2
  %7521 = zext i1 %7520 to i8
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7521, i8* %7522, align 1
  store %struct.Memory* %loadMem_46e97b, %struct.Memory** %MEMORY
  %loadMem_46e983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7524 = getelementptr inbounds %struct.GPR, %struct.GPR* %7523, i32 0, i32 33
  %7525 = getelementptr inbounds %struct.Reg, %struct.Reg* %7524, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %7525 to i64*
  %7526 = load i64, i64* %PC.i95
  %7527 = add i64 %7526, 44
  %7528 = load i64, i64* %PC.i95
  %7529 = add i64 %7528, 6
  %7530 = load i64, i64* %PC.i95
  %7531 = add i64 %7530, 6
  store i64 %7531, i64* %PC.i95
  %7532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7533 = load i8, i8* %7532, align 1
  store i8 %7533, i8* %BRANCH_TAKEN, align 1
  %7534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7535 = icmp ne i8 %7533, 0
  %7536 = select i1 %7535, i64 %7527, i64 %7529
  store i64 %7536, i64* %7534, align 8
  store %struct.Memory* %loadMem_46e983, %struct.Memory** %MEMORY
  %loadBr_46e983 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e983 = icmp eq i8 %loadBr_46e983, 1
  br i1 %cmpBr_46e983, label %block_.L_46e9af, label %block_46e989

block_46e989:                                     ; preds = %block_.L_46e97b
  %loadMem_46e989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7538 = getelementptr inbounds %struct.GPR, %struct.GPR* %7537, i32 0, i32 33
  %7539 = getelementptr inbounds %struct.Reg, %struct.Reg* %7538, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %7539 to i64*
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7541 = getelementptr inbounds %struct.GPR, %struct.GPR* %7540, i32 0, i32 15
  %7542 = getelementptr inbounds %struct.Reg, %struct.Reg* %7541, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %7542 to i64*
  %7543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7543, i64 0, i64 0
  %YMM0.i94 = bitcast %union.VectorReg* %7544 to %"class.std::bitset"*
  %7545 = bitcast %"class.std::bitset"* %YMM0.i94 to i8*
  %7546 = load i64, i64* %RBP.i93
  %7547 = sub i64 %7546, 1628
  %7548 = load i64, i64* %PC.i92
  %7549 = add i64 %7548, 8
  store i64 %7549, i64* %PC.i92
  %7550 = inttoptr i64 %7547 to float*
  %7551 = load float, float* %7550
  %7552 = bitcast i8* %7545 to float*
  store float %7551, float* %7552, align 1
  %7553 = getelementptr inbounds i8, i8* %7545, i64 4
  %7554 = bitcast i8* %7553 to float*
  store float 0.000000e+00, float* %7554, align 1
  %7555 = getelementptr inbounds i8, i8* %7545, i64 8
  %7556 = bitcast i8* %7555 to float*
  store float 0.000000e+00, float* %7556, align 1
  %7557 = getelementptr inbounds i8, i8* %7545, i64 12
  %7558 = bitcast i8* %7557 to float*
  store float 0.000000e+00, float* %7558, align 1
  store %struct.Memory* %loadMem_46e989, %struct.Memory** %MEMORY
  %loadMem_46e991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7560 = getelementptr inbounds %struct.GPR, %struct.GPR* %7559, i32 0, i32 33
  %7561 = getelementptr inbounds %struct.Reg, %struct.Reg* %7560, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %7561 to i64*
  %7562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7563 = getelementptr inbounds %struct.GPR, %struct.GPR* %7562, i32 0, i32 15
  %7564 = getelementptr inbounds %struct.Reg, %struct.Reg* %7563, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %7564 to i64*
  %7565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7566 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7565, i64 0, i64 0
  %YMM0.i91 = bitcast %union.VectorReg* %7566 to %"class.std::bitset"*
  %7567 = bitcast %"class.std::bitset"* %YMM0.i91 to i8*
  %7568 = bitcast %"class.std::bitset"* %YMM0.i91 to i8*
  %7569 = load i64, i64* %RBP.i90
  %7570 = sub i64 %7569, 1632
  %7571 = load i64, i64* %PC.i89
  %7572 = add i64 %7571, 8
  store i64 %7572, i64* %PC.i89
  %7573 = bitcast i8* %7568 to <2 x float>*
  %7574 = load <2 x float>, <2 x float>* %7573, align 1
  %7575 = getelementptr inbounds i8, i8* %7568, i64 8
  %7576 = bitcast i8* %7575 to <2 x i32>*
  %7577 = load <2 x i32>, <2 x i32>* %7576, align 1
  %7578 = inttoptr i64 %7570 to float*
  %7579 = load float, float* %7578
  %7580 = extractelement <2 x float> %7574, i32 0
  %7581 = fsub float %7580, %7579
  %7582 = bitcast i8* %7567 to float*
  store float %7581, float* %7582, align 1
  %7583 = bitcast <2 x float> %7574 to <2 x i32>
  %7584 = extractelement <2 x i32> %7583, i32 1
  %7585 = getelementptr inbounds i8, i8* %7567, i64 4
  %7586 = bitcast i8* %7585 to i32*
  store i32 %7584, i32* %7586, align 1
  %7587 = extractelement <2 x i32> %7577, i32 0
  %7588 = getelementptr inbounds i8, i8* %7567, i64 8
  %7589 = bitcast i8* %7588 to i32*
  store i32 %7587, i32* %7589, align 1
  %7590 = extractelement <2 x i32> %7577, i32 1
  %7591 = getelementptr inbounds i8, i8* %7567, i64 12
  %7592 = bitcast i8* %7591 to i32*
  store i32 %7590, i32* %7592, align 1
  store %struct.Memory* %loadMem_46e991, %struct.Memory** %MEMORY
  %loadMem_46e999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7594 = getelementptr inbounds %struct.GPR, %struct.GPR* %7593, i32 0, i32 33
  %7595 = getelementptr inbounds %struct.Reg, %struct.Reg* %7594, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %7595 to i64*
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7597 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7596, i64 0, i64 0
  %YMM0.i88 = bitcast %union.VectorReg* %7597 to %"class.std::bitset"*
  %7598 = bitcast %"class.std::bitset"* %YMM0.i88 to i8*
  %7599 = bitcast %"class.std::bitset"* %YMM0.i88 to i8*
  %7600 = load i64, i64* %PC.i87
  %7601 = add i64 %7600, 9
  store i64 %7601, i64* %PC.i87
  %7602 = bitcast i8* %7599 to <2 x float>*
  %7603 = load <2 x float>, <2 x float>* %7602, align 1
  %7604 = getelementptr inbounds i8, i8* %7599, i64 8
  %7605 = bitcast i8* %7604 to <2 x i32>*
  %7606 = load <2 x i32>, <2 x i32>* %7605, align 1
  %7607 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*)
  %7608 = extractelement <2 x float> %7603, i32 0
  %7609 = fadd float %7608, %7607
  %7610 = bitcast i8* %7598 to float*
  store float %7609, float* %7610, align 1
  %7611 = bitcast <2 x float> %7603 to <2 x i32>
  %7612 = extractelement <2 x i32> %7611, i32 1
  %7613 = getelementptr inbounds i8, i8* %7598, i64 4
  %7614 = bitcast i8* %7613 to i32*
  store i32 %7612, i32* %7614, align 1
  %7615 = extractelement <2 x i32> %7606, i32 0
  %7616 = getelementptr inbounds i8, i8* %7598, i64 8
  %7617 = bitcast i8* %7616 to i32*
  store i32 %7615, i32* %7617, align 1
  %7618 = extractelement <2 x i32> %7606, i32 1
  %7619 = getelementptr inbounds i8, i8* %7598, i64 12
  %7620 = bitcast i8* %7619 to i32*
  store i32 %7618, i32* %7620, align 1
  store %struct.Memory* %loadMem_46e999, %struct.Memory** %MEMORY
  %loadMem_46e9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7622 = getelementptr inbounds %struct.GPR, %struct.GPR* %7621, i32 0, i32 33
  %7623 = getelementptr inbounds %struct.Reg, %struct.Reg* %7622, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7623 to i64*
  %7624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7625 = getelementptr inbounds %struct.GPR, %struct.GPR* %7624, i32 0, i32 15
  %7626 = getelementptr inbounds %struct.Reg, %struct.Reg* %7625, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %7626 to i64*
  %7627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7628 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7627, i64 0, i64 0
  %XMM0.i86 = bitcast %union.VectorReg* %7628 to %union.vec128_t*
  %7629 = load i64, i64* %RBP.i85
  %7630 = sub i64 %7629, 1652
  %7631 = bitcast %union.vec128_t* %XMM0.i86 to i8*
  %7632 = load i64, i64* %PC.i84
  %7633 = add i64 %7632, 8
  store i64 %7633, i64* %PC.i84
  %7634 = bitcast i8* %7631 to <2 x float>*
  %7635 = load <2 x float>, <2 x float>* %7634, align 1
  %7636 = extractelement <2 x float> %7635, i32 0
  %7637 = inttoptr i64 %7630 to float*
  store float %7636, float* %7637
  store %struct.Memory* %loadMem_46e9a2, %struct.Memory** %MEMORY
  %loadMem_46e9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7639 = getelementptr inbounds %struct.GPR, %struct.GPR* %7638, i32 0, i32 33
  %7640 = getelementptr inbounds %struct.Reg, %struct.Reg* %7639, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %7640 to i64*
  %7641 = load i64, i64* %PC.i83
  %7642 = add i64 %7641, 136
  %7643 = load i64, i64* %PC.i83
  %7644 = add i64 %7643, 5
  store i64 %7644, i64* %PC.i83
  %7645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7642, i64* %7645, align 8
  store %struct.Memory* %loadMem_46e9aa, %struct.Memory** %MEMORY
  br label %block_.L_46ea32

block_.L_46e9af:                                  ; preds = %block_.L_46e97b
  %loadMem_46e9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7647 = getelementptr inbounds %struct.GPR, %struct.GPR* %7646, i32 0, i32 33
  %7648 = getelementptr inbounds %struct.Reg, %struct.Reg* %7647, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %7648 to i64*
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7650 = getelementptr inbounds %struct.GPR, %struct.GPR* %7649, i32 0, i32 1
  %7651 = getelementptr inbounds %struct.Reg, %struct.Reg* %7650, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %7651 to i64*
  %7652 = load i64, i64* %PC.i81
  %7653 = add i64 %7652, 7
  store i64 %7653, i64* %PC.i81
  %7654 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %7655 = zext i32 %7654 to i64
  store i64 %7655, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_46e9af, %struct.Memory** %MEMORY
  %loadMem_46e9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7657 = getelementptr inbounds %struct.GPR, %struct.GPR* %7656, i32 0, i32 33
  %7658 = getelementptr inbounds %struct.Reg, %struct.Reg* %7657, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %7658 to i64*
  %7659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7660 = getelementptr inbounds %struct.GPR, %struct.GPR* %7659, i32 0, i32 1
  %7661 = getelementptr inbounds %struct.Reg, %struct.Reg* %7660, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %7661 to i64*
  %7662 = load i64, i64* %RAX.i80
  %7663 = load i64, i64* %PC.i79
  %7664 = add i64 %7663, 5
  store i64 %7664, i64* %PC.i79
  %7665 = and i64 65536, %7662
  %7666 = trunc i64 %7665 to i32
  store i64 %7665, i64* %RAX.i80, align 8
  %7667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7667, align 1
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7668, align 1
  %7669 = icmp eq i32 %7666, 0
  %7670 = zext i1 %7669 to i8
  %7671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7670, i8* %7671, align 1
  %7672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7672, align 1
  %7673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7673, align 1
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7674, align 1
  store %struct.Memory* %loadMem_46e9b6, %struct.Memory** %MEMORY
  %loadMem_46e9bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7676 = getelementptr inbounds %struct.GPR, %struct.GPR* %7675, i32 0, i32 33
  %7677 = getelementptr inbounds %struct.Reg, %struct.Reg* %7676, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %7677 to i64*
  %7678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7679 = getelementptr inbounds %struct.GPR, %struct.GPR* %7678, i32 0, i32 1
  %7680 = getelementptr inbounds %struct.Reg, %struct.Reg* %7679, i32 0, i32 0
  %EAX.i78 = bitcast %union.anon* %7680 to i32*
  %7681 = load i32, i32* %EAX.i78
  %7682 = zext i32 %7681 to i64
  %7683 = load i64, i64* %PC.i77
  %7684 = add i64 %7683, 3
  store i64 %7684, i64* %PC.i77
  %7685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7685, align 1
  %7686 = and i32 %7681, 255
  %7687 = call i32 @llvm.ctpop.i32(i32 %7686)
  %7688 = trunc i32 %7687 to i8
  %7689 = and i8 %7688, 1
  %7690 = xor i8 %7689, 1
  %7691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7690, i8* %7691, align 1
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7692, align 1
  %7693 = icmp eq i32 %7681, 0
  %7694 = zext i1 %7693 to i8
  %7695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7694, i8* %7695, align 1
  %7696 = lshr i32 %7681, 31
  %7697 = trunc i32 %7696 to i8
  %7698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7697, i8* %7698, align 1
  %7699 = lshr i32 %7681, 31
  %7700 = xor i32 %7696, %7699
  %7701 = add i32 %7700, %7699
  %7702 = icmp eq i32 %7701, 2
  %7703 = zext i1 %7702 to i8
  %7704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7703, i8* %7704, align 1
  store %struct.Memory* %loadMem_46e9bb, %struct.Memory** %MEMORY
  %loadMem_46e9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7706 = getelementptr inbounds %struct.GPR, %struct.GPR* %7705, i32 0, i32 33
  %7707 = getelementptr inbounds %struct.Reg, %struct.Reg* %7706, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %7707 to i64*
  %7708 = load i64, i64* %PC.i76
  %7709 = add i64 %7708, 11
  %7710 = load i64, i64* %PC.i76
  %7711 = add i64 %7710, 6
  %7712 = load i64, i64* %PC.i76
  %7713 = add i64 %7712, 6
  store i64 %7713, i64* %PC.i76
  %7714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7715 = load i8, i8* %7714, align 1
  %7716 = icmp eq i8 %7715, 0
  %7717 = zext i1 %7716 to i8
  store i8 %7717, i8* %BRANCH_TAKEN, align 1
  %7718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7719 = select i1 %7716, i64 %7709, i64 %7711
  store i64 %7719, i64* %7718, align 8
  store %struct.Memory* %loadMem_46e9be, %struct.Memory** %MEMORY
  %loadBr_46e9be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e9be = icmp eq i8 %loadBr_46e9be, 1
  br i1 %cmpBr_46e9be, label %block_.L_46e9c9, label %block_46e9c4

block_46e9c4:                                     ; preds = %block_.L_46e9af
  %loadMem_46e9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7721 = getelementptr inbounds %struct.GPR, %struct.GPR* %7720, i32 0, i32 33
  %7722 = getelementptr inbounds %struct.Reg, %struct.Reg* %7721, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7722 to i64*
  %7723 = load i64, i64* %PC.i75
  %7724 = add i64 %7723, 51
  %7725 = load i64, i64* %PC.i75
  %7726 = add i64 %7725, 5
  store i64 %7726, i64* %PC.i75
  %7727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7724, i64* %7727, align 8
  store %struct.Memory* %loadMem_46e9c4, %struct.Memory** %MEMORY
  br label %block_.L_46e9f7

block_.L_46e9c9:                                  ; preds = %block_.L_46e9af
  %loadMem_46e9c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7729 = getelementptr inbounds %struct.GPR, %struct.GPR* %7728, i32 0, i32 33
  %7730 = getelementptr inbounds %struct.Reg, %struct.Reg* %7729, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7730 to i64*
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7732 = getelementptr inbounds %struct.GPR, %struct.GPR* %7731, i32 0, i32 11
  %7733 = getelementptr inbounds %struct.Reg, %struct.Reg* %7732, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7733 to i64*
  %7734 = load i64, i64* %PC.i74
  %7735 = add i64 %7734, 10
  store i64 %7735, i64* %PC.i74
  store i64 ptrtoint (%G__0x5805dc_type* @G__0x5805dc to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_46e9c9, %struct.Memory** %MEMORY
  %loadMem_46e9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7737 = getelementptr inbounds %struct.GPR, %struct.GPR* %7736, i32 0, i32 33
  %7738 = getelementptr inbounds %struct.Reg, %struct.Reg* %7737, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %7738 to i64*
  %7739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7740 = getelementptr inbounds %struct.GPR, %struct.GPR* %7739, i32 0, i32 9
  %7741 = getelementptr inbounds %struct.Reg, %struct.Reg* %7740, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7741 to i64*
  %7742 = load i64, i64* %PC.i73
  %7743 = add i64 %7742, 7
  store i64 %7743, i64* %PC.i73
  %7744 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*)
  %7745 = zext i32 %7744 to i64
  store i64 %7745, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_46e9d3, %struct.Memory** %MEMORY
  %loadMem_46e9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %7746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7747 = getelementptr inbounds %struct.GPR, %struct.GPR* %7746, i32 0, i32 33
  %7748 = getelementptr inbounds %struct.Reg, %struct.Reg* %7747, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7748 to i64*
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7750 = getelementptr inbounds %struct.GPR, %struct.GPR* %7749, i32 0, i32 7
  %7751 = getelementptr inbounds %struct.Reg, %struct.Reg* %7750, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7751 to i64*
  %7752 = load i64, i64* %PC.i72
  %7753 = add i64 %7752, 7
  store i64 %7753, i64* %PC.i72
  %7754 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*)
  %7755 = zext i32 %7754 to i64
  store i64 %7755, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_46e9da, %struct.Memory** %MEMORY
  %loadMem_46e9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7757 = getelementptr inbounds %struct.GPR, %struct.GPR* %7756, i32 0, i32 33
  %7758 = getelementptr inbounds %struct.Reg, %struct.Reg* %7757, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7758 to i64*
  %7759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7760 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7759, i64 0, i64 0
  %YMM0.i71 = bitcast %union.VectorReg* %7760 to %"class.std::bitset"*
  %7761 = bitcast %"class.std::bitset"* %YMM0.i71 to i8*
  %7762 = load i64, i64* %PC.i70
  %7763 = add i64 %7762, 9
  store i64 %7763, i64* %PC.i70
  %7764 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*)
  %7765 = fpext float %7764 to double
  %7766 = bitcast i8* %7761 to double*
  store double %7765, double* %7766, align 1
  store %struct.Memory* %loadMem_46e9e1, %struct.Memory** %MEMORY
  %loadMem_46e9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %7767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7768 = getelementptr inbounds %struct.GPR, %struct.GPR* %7767, i32 0, i32 33
  %7769 = getelementptr inbounds %struct.Reg, %struct.Reg* %7768, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7769 to i64*
  %7770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7771 = getelementptr inbounds %struct.GPR, %struct.GPR* %7770, i32 0, i32 1
  %7772 = getelementptr inbounds %struct.Reg, %struct.Reg* %7771, i32 0, i32 0
  %7773 = bitcast %union.anon* %7772 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7773, i32 0, i32 0
  %7774 = load i64, i64* %PC.i69
  %7775 = add i64 %7774, 2
  store i64 %7775, i64* %PC.i69
  store i8 1, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_46e9ea, %struct.Memory** %MEMORY
  %loadMem1_46e9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %7776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7777 = getelementptr inbounds %struct.GPR, %struct.GPR* %7776, i32 0, i32 33
  %7778 = getelementptr inbounds %struct.Reg, %struct.Reg* %7777, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %7778 to i64*
  %7779 = load i64, i64* %PC.i68
  %7780 = add i64 %7779, -117820
  %7781 = load i64, i64* %PC.i68
  %7782 = add i64 %7781, 5
  %7783 = load i64, i64* %PC.i68
  %7784 = add i64 %7783, 5
  store i64 %7784, i64* %PC.i68
  %7785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7786 = load i64, i64* %7785, align 8
  %7787 = add i64 %7786, -8
  %7788 = inttoptr i64 %7787 to i64*
  store i64 %7782, i64* %7788
  store i64 %7787, i64* %7785, align 8
  %7789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7780, i64* %7789, align 8
  store %struct.Memory* %loadMem1_46e9ec, %struct.Memory** %MEMORY
  %loadMem2_46e9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e9ec = load i64, i64* %3
  %call2_46e9ec = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_46e9ec, %struct.Memory* %loadMem2_46e9ec)
  store %struct.Memory* %call2_46e9ec, %struct.Memory** %MEMORY
  %loadMem_46e9f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7791 = getelementptr inbounds %struct.GPR, %struct.GPR* %7790, i32 0, i32 33
  %7792 = getelementptr inbounds %struct.Reg, %struct.Reg* %7791, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7792 to i64*
  %7793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7794 = getelementptr inbounds %struct.GPR, %struct.GPR* %7793, i32 0, i32 1
  %7795 = getelementptr inbounds %struct.Reg, %struct.Reg* %7794, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7795 to i32*
  %7796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7797 = getelementptr inbounds %struct.GPR, %struct.GPR* %7796, i32 0, i32 15
  %7798 = getelementptr inbounds %struct.Reg, %struct.Reg* %7797, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %7798 to i64*
  %7799 = load i64, i64* %RBP.i67
  %7800 = sub i64 %7799, 1720
  %7801 = load i32, i32* %EAX.i
  %7802 = zext i32 %7801 to i64
  %7803 = load i64, i64* %PC.i66
  %7804 = add i64 %7803, 6
  store i64 %7804, i64* %PC.i66
  %7805 = inttoptr i64 %7800 to i32*
  store i32 %7801, i32* %7805
  store %struct.Memory* %loadMem_46e9f1, %struct.Memory** %MEMORY
  br label %block_.L_46e9f7

block_.L_46e9f7:                                  ; preds = %block_.L_46e9c9, %block_46e9c4
  %loadMem_46e9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7807 = getelementptr inbounds %struct.GPR, %struct.GPR* %7806, i32 0, i32 33
  %7808 = getelementptr inbounds %struct.Reg, %struct.Reg* %7807, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7808 to i64*
  %7809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7810 = getelementptr inbounds %struct.GPR, %struct.GPR* %7809, i32 0, i32 15
  %7811 = getelementptr inbounds %struct.Reg, %struct.Reg* %7810, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %7811 to i64*
  %7812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7813 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7812, i64 0, i64 0
  %YMM0.i65 = bitcast %union.VectorReg* %7813 to %"class.std::bitset"*
  %7814 = bitcast %"class.std::bitset"* %YMM0.i65 to i8*
  %7815 = load i64, i64* %RBP.i64
  %7816 = sub i64 %7815, 1620
  %7817 = load i64, i64* %PC.i63
  %7818 = add i64 %7817, 8
  store i64 %7818, i64* %PC.i63
  %7819 = inttoptr i64 %7816 to float*
  %7820 = load float, float* %7819
  %7821 = bitcast i8* %7814 to float*
  store float %7820, float* %7821, align 1
  %7822 = getelementptr inbounds i8, i8* %7814, i64 4
  %7823 = bitcast i8* %7822 to float*
  store float 0.000000e+00, float* %7823, align 1
  %7824 = getelementptr inbounds i8, i8* %7814, i64 8
  %7825 = bitcast i8* %7824 to float*
  store float 0.000000e+00, float* %7825, align 1
  %7826 = getelementptr inbounds i8, i8* %7814, i64 12
  %7827 = bitcast i8* %7826 to float*
  store float 0.000000e+00, float* %7827, align 1
  store %struct.Memory* %loadMem_46e9f7, %struct.Memory** %MEMORY
  %loadMem_46e9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7829 = getelementptr inbounds %struct.GPR, %struct.GPR* %7828, i32 0, i32 33
  %7830 = getelementptr inbounds %struct.Reg, %struct.Reg* %7829, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %7830 to i64*
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7832 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7831, i64 0, i64 1
  %YMM1.i62 = bitcast %union.VectorReg* %7832 to %"class.std::bitset"*
  %7833 = bitcast %"class.std::bitset"* %YMM1.i62 to i8*
  %7834 = load i64, i64* %PC.i61
  %7835 = add i64 %7834, 9
  store i64 %7835, i64* %PC.i61
  %7836 = bitcast i8* %7833 to <2 x i32>*
  %7837 = load <2 x i32>, <2 x i32>* %7836, align 1
  %7838 = getelementptr inbounds i8, i8* %7833, i64 8
  %7839 = bitcast i8* %7838 to <2 x i32>*
  %7840 = load <2 x i32>, <2 x i32>* %7839, align 1
  %7841 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*)
  %7842 = sitofp i32 %7841 to float
  %7843 = bitcast i8* %7833 to float*
  store float %7842, float* %7843, align 1
  %7844 = extractelement <2 x i32> %7837, i32 1
  %7845 = getelementptr inbounds i8, i8* %7833, i64 4
  %7846 = bitcast i8* %7845 to i32*
  store i32 %7844, i32* %7846, align 1
  %7847 = extractelement <2 x i32> %7840, i32 0
  %7848 = bitcast i8* %7838 to i32*
  store i32 %7847, i32* %7848, align 1
  %7849 = extractelement <2 x i32> %7840, i32 1
  %7850 = getelementptr inbounds i8, i8* %7833, i64 12
  %7851 = bitcast i8* %7850 to i32*
  store i32 %7849, i32* %7851, align 1
  store %struct.Memory* %loadMem_46e9ff, %struct.Memory** %MEMORY
  %loadMem_46ea08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7853 = getelementptr inbounds %struct.GPR, %struct.GPR* %7852, i32 0, i32 33
  %7854 = getelementptr inbounds %struct.Reg, %struct.Reg* %7853, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7854 to i64*
  %7855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7856 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7855, i64 0, i64 0
  %YMM0.i59 = bitcast %union.VectorReg* %7856 to %"class.std::bitset"*
  %7857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7858 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7857, i64 0, i64 1
  %XMM1.i60 = bitcast %union.VectorReg* %7858 to %union.vec128_t*
  %7859 = bitcast %"class.std::bitset"* %YMM0.i59 to i8*
  %7860 = bitcast %"class.std::bitset"* %YMM0.i59 to i8*
  %7861 = bitcast %union.vec128_t* %XMM1.i60 to i8*
  %7862 = load i64, i64* %PC.i58
  %7863 = add i64 %7862, 4
  store i64 %7863, i64* %PC.i58
  %7864 = bitcast i8* %7860 to <2 x float>*
  %7865 = load <2 x float>, <2 x float>* %7864, align 1
  %7866 = getelementptr inbounds i8, i8* %7860, i64 8
  %7867 = bitcast i8* %7866 to <2 x i32>*
  %7868 = load <2 x i32>, <2 x i32>* %7867, align 1
  %7869 = bitcast i8* %7861 to <2 x float>*
  %7870 = load <2 x float>, <2 x float>* %7869, align 1
  %7871 = extractelement <2 x float> %7865, i32 0
  %7872 = extractelement <2 x float> %7870, i32 0
  %7873 = fadd float %7871, %7872
  %7874 = bitcast i8* %7859 to float*
  store float %7873, float* %7874, align 1
  %7875 = bitcast <2 x float> %7865 to <2 x i32>
  %7876 = extractelement <2 x i32> %7875, i32 1
  %7877 = getelementptr inbounds i8, i8* %7859, i64 4
  %7878 = bitcast i8* %7877 to i32*
  store i32 %7876, i32* %7878, align 1
  %7879 = extractelement <2 x i32> %7868, i32 0
  %7880 = getelementptr inbounds i8, i8* %7859, i64 8
  %7881 = bitcast i8* %7880 to i32*
  store i32 %7879, i32* %7881, align 1
  %7882 = extractelement <2 x i32> %7868, i32 1
  %7883 = getelementptr inbounds i8, i8* %7859, i64 12
  %7884 = bitcast i8* %7883 to i32*
  store i32 %7882, i32* %7884, align 1
  store %struct.Memory* %loadMem_46ea08, %struct.Memory** %MEMORY
  %loadMem_46ea0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7886 = getelementptr inbounds %struct.GPR, %struct.GPR* %7885, i32 0, i32 33
  %7887 = getelementptr inbounds %struct.Reg, %struct.Reg* %7886, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7887 to i64*
  %7888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7889 = getelementptr inbounds %struct.GPR, %struct.GPR* %7888, i32 0, i32 15
  %7890 = getelementptr inbounds %struct.Reg, %struct.Reg* %7889, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %7890 to i64*
  %7891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7892 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7891, i64 0, i64 0
  %YMM0.i57 = bitcast %union.VectorReg* %7892 to %"class.std::bitset"*
  %7893 = bitcast %"class.std::bitset"* %YMM0.i57 to i8*
  %7894 = bitcast %"class.std::bitset"* %YMM0.i57 to i8*
  %7895 = load i64, i64* %RBP.i56
  %7896 = sub i64 %7895, 1624
  %7897 = load i64, i64* %PC.i55
  %7898 = add i64 %7897, 8
  store i64 %7898, i64* %PC.i55
  %7899 = bitcast i8* %7894 to <2 x float>*
  %7900 = load <2 x float>, <2 x float>* %7899, align 1
  %7901 = getelementptr inbounds i8, i8* %7894, i64 8
  %7902 = bitcast i8* %7901 to <2 x i32>*
  %7903 = load <2 x i32>, <2 x i32>* %7902, align 1
  %7904 = inttoptr i64 %7896 to float*
  %7905 = load float, float* %7904
  %7906 = extractelement <2 x float> %7900, i32 0
  %7907 = fsub float %7906, %7905
  %7908 = bitcast i8* %7893 to float*
  store float %7907, float* %7908, align 1
  %7909 = bitcast <2 x float> %7900 to <2 x i32>
  %7910 = extractelement <2 x i32> %7909, i32 1
  %7911 = getelementptr inbounds i8, i8* %7893, i64 4
  %7912 = bitcast i8* %7911 to i32*
  store i32 %7910, i32* %7912, align 1
  %7913 = extractelement <2 x i32> %7903, i32 0
  %7914 = getelementptr inbounds i8, i8* %7893, i64 8
  %7915 = bitcast i8* %7914 to i32*
  store i32 %7913, i32* %7915, align 1
  %7916 = extractelement <2 x i32> %7903, i32 1
  %7917 = getelementptr inbounds i8, i8* %7893, i64 12
  %7918 = bitcast i8* %7917 to i32*
  store i32 %7916, i32* %7918, align 1
  store %struct.Memory* %loadMem_46ea0c, %struct.Memory** %MEMORY
  %loadMem_46ea14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7920 = getelementptr inbounds %struct.GPR, %struct.GPR* %7919, i32 0, i32 33
  %7921 = getelementptr inbounds %struct.Reg, %struct.Reg* %7920, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7921 to i64*
  %7922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7922, i64 0, i64 1
  %YMM1.i54 = bitcast %union.VectorReg* %7923 to %"class.std::bitset"*
  %7924 = bitcast %"class.std::bitset"* %YMM1.i54 to i8*
  %7925 = load i64, i64* %PC.i53
  %7926 = add i64 %7925, 9
  store i64 %7926, i64* %PC.i53
  %7927 = bitcast i8* %7924 to <2 x i32>*
  %7928 = load <2 x i32>, <2 x i32>* %7927, align 1
  %7929 = getelementptr inbounds i8, i8* %7924, i64 8
  %7930 = bitcast i8* %7929 to <2 x i32>*
  %7931 = load <2 x i32>, <2 x i32>* %7930, align 1
  %7932 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*)
  %7933 = sitofp i32 %7932 to float
  %7934 = bitcast i8* %7924 to float*
  store float %7933, float* %7934, align 1
  %7935 = extractelement <2 x i32> %7928, i32 1
  %7936 = getelementptr inbounds i8, i8* %7924, i64 4
  %7937 = bitcast i8* %7936 to i32*
  store i32 %7935, i32* %7937, align 1
  %7938 = extractelement <2 x i32> %7931, i32 0
  %7939 = bitcast i8* %7929 to i32*
  store i32 %7938, i32* %7939, align 1
  %7940 = extractelement <2 x i32> %7931, i32 1
  %7941 = getelementptr inbounds i8, i8* %7924, i64 12
  %7942 = bitcast i8* %7941 to i32*
  store i32 %7940, i32* %7942, align 1
  store %struct.Memory* %loadMem_46ea14, %struct.Memory** %MEMORY
  %loadMem_46ea1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7944 = getelementptr inbounds %struct.GPR, %struct.GPR* %7943, i32 0, i32 33
  %7945 = getelementptr inbounds %struct.Reg, %struct.Reg* %7944, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %7945 to i64*
  %7946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7947 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7946, i64 0, i64 0
  %YMM0.i51 = bitcast %union.VectorReg* %7947 to %"class.std::bitset"*
  %7948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7949 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7948, i64 0, i64 1
  %XMM1.i52 = bitcast %union.VectorReg* %7949 to %union.vec128_t*
  %7950 = bitcast %"class.std::bitset"* %YMM0.i51 to i8*
  %7951 = bitcast %"class.std::bitset"* %YMM0.i51 to i8*
  %7952 = bitcast %union.vec128_t* %XMM1.i52 to i8*
  %7953 = load i64, i64* %PC.i50
  %7954 = add i64 %7953, 4
  store i64 %7954, i64* %PC.i50
  %7955 = bitcast i8* %7951 to <2 x float>*
  %7956 = load <2 x float>, <2 x float>* %7955, align 1
  %7957 = getelementptr inbounds i8, i8* %7951, i64 8
  %7958 = bitcast i8* %7957 to <2 x i32>*
  %7959 = load <2 x i32>, <2 x i32>* %7958, align 1
  %7960 = bitcast i8* %7952 to <2 x float>*
  %7961 = load <2 x float>, <2 x float>* %7960, align 1
  %7962 = extractelement <2 x float> %7956, i32 0
  %7963 = extractelement <2 x float> %7961, i32 0
  %7964 = fsub float %7962, %7963
  %7965 = bitcast i8* %7950 to float*
  store float %7964, float* %7965, align 1
  %7966 = bitcast <2 x float> %7956 to <2 x i32>
  %7967 = extractelement <2 x i32> %7966, i32 1
  %7968 = getelementptr inbounds i8, i8* %7950, i64 4
  %7969 = bitcast i8* %7968 to i32*
  store i32 %7967, i32* %7969, align 1
  %7970 = extractelement <2 x i32> %7959, i32 0
  %7971 = getelementptr inbounds i8, i8* %7950, i64 8
  %7972 = bitcast i8* %7971 to i32*
  store i32 %7970, i32* %7972, align 1
  %7973 = extractelement <2 x i32> %7959, i32 1
  %7974 = getelementptr inbounds i8, i8* %7950, i64 12
  %7975 = bitcast i8* %7974 to i32*
  store i32 %7973, i32* %7975, align 1
  store %struct.Memory* %loadMem_46ea1d, %struct.Memory** %MEMORY
  %loadMem_46ea21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7977 = getelementptr inbounds %struct.GPR, %struct.GPR* %7976, i32 0, i32 33
  %7978 = getelementptr inbounds %struct.Reg, %struct.Reg* %7977, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7978 to i64*
  %7979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7979, i64 0, i64 0
  %YMM0.i49 = bitcast %union.VectorReg* %7980 to %"class.std::bitset"*
  %7981 = bitcast %"class.std::bitset"* %YMM0.i49 to i8*
  %7982 = bitcast %"class.std::bitset"* %YMM0.i49 to i8*
  %7983 = load i64, i64* %PC.i48
  %7984 = add i64 %7983, 9
  store i64 %7984, i64* %PC.i48
  %7985 = bitcast i8* %7982 to <2 x float>*
  %7986 = load <2 x float>, <2 x float>* %7985, align 1
  %7987 = getelementptr inbounds i8, i8* %7982, i64 8
  %7988 = bitcast i8* %7987 to <2 x i32>*
  %7989 = load <2 x i32>, <2 x i32>* %7988, align 1
  %7990 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*)
  %7991 = extractelement <2 x float> %7986, i32 0
  %7992 = fadd float %7991, %7990
  %7993 = bitcast i8* %7981 to float*
  store float %7992, float* %7993, align 1
  %7994 = bitcast <2 x float> %7986 to <2 x i32>
  %7995 = extractelement <2 x i32> %7994, i32 1
  %7996 = getelementptr inbounds i8, i8* %7981, i64 4
  %7997 = bitcast i8* %7996 to i32*
  store i32 %7995, i32* %7997, align 1
  %7998 = extractelement <2 x i32> %7989, i32 0
  %7999 = getelementptr inbounds i8, i8* %7981, i64 8
  %8000 = bitcast i8* %7999 to i32*
  store i32 %7998, i32* %8000, align 1
  %8001 = extractelement <2 x i32> %7989, i32 1
  %8002 = getelementptr inbounds i8, i8* %7981, i64 12
  %8003 = bitcast i8* %8002 to i32*
  store i32 %8001, i32* %8003, align 1
  store %struct.Memory* %loadMem_46ea21, %struct.Memory** %MEMORY
  %loadMem_46ea2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8005 = getelementptr inbounds %struct.GPR, %struct.GPR* %8004, i32 0, i32 33
  %8006 = getelementptr inbounds %struct.Reg, %struct.Reg* %8005, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %8006 to i64*
  %8007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8008 = getelementptr inbounds %struct.GPR, %struct.GPR* %8007, i32 0, i32 15
  %8009 = getelementptr inbounds %struct.Reg, %struct.Reg* %8008, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %8009 to i64*
  %8010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8011 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8010, i64 0, i64 0
  %XMM0.i47 = bitcast %union.VectorReg* %8011 to %union.vec128_t*
  %8012 = load i64, i64* %RBP.i46
  %8013 = sub i64 %8012, 1652
  %8014 = bitcast %union.vec128_t* %XMM0.i47 to i8*
  %8015 = load i64, i64* %PC.i45
  %8016 = add i64 %8015, 8
  store i64 %8016, i64* %PC.i45
  %8017 = bitcast i8* %8014 to <2 x float>*
  %8018 = load <2 x float>, <2 x float>* %8017, align 1
  %8019 = extractelement <2 x float> %8018, i32 0
  %8020 = inttoptr i64 %8013 to float*
  store float %8019, float* %8020
  store %struct.Memory* %loadMem_46ea2a, %struct.Memory** %MEMORY
  br label %block_.L_46ea32

block_.L_46ea32:                                  ; preds = %block_.L_46e9f7, %block_46e989
  %loadMem_46ea32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8022 = getelementptr inbounds %struct.GPR, %struct.GPR* %8021, i32 0, i32 33
  %8023 = getelementptr inbounds %struct.Reg, %struct.Reg* %8022, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %8023 to i64*
  %8024 = load i64, i64* %PC.i44
  %8025 = add i64 %8024, 21
  %8026 = load i64, i64* %PC.i44
  %8027 = add i64 %8026, 5
  store i64 %8027, i64* %PC.i44
  %8028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8025, i64* %8028, align 8
  store %struct.Memory* %loadMem_46ea32, %struct.Memory** %MEMORY
  br label %block_.L_46ea47

block_.L_46ea37:                                  ; preds = %block_.L_46e5a8
  %loadMem_46ea37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8030 = getelementptr inbounds %struct.GPR, %struct.GPR* %8029, i32 0, i32 33
  %8031 = getelementptr inbounds %struct.Reg, %struct.Reg* %8030, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %8031 to i64*
  %8032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8033 = getelementptr inbounds %struct.GPR, %struct.GPR* %8032, i32 0, i32 15
  %8034 = getelementptr inbounds %struct.Reg, %struct.Reg* %8033, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %8034 to i64*
  %8035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8036 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8035, i64 0, i64 0
  %YMM0.i43 = bitcast %union.VectorReg* %8036 to %"class.std::bitset"*
  %8037 = bitcast %"class.std::bitset"* %YMM0.i43 to i8*
  %8038 = load i64, i64* %RBP.i42
  %8039 = sub i64 %8038, 1648
  %8040 = load i64, i64* %PC.i41
  %8041 = add i64 %8040, 8
  store i64 %8041, i64* %PC.i41
  %8042 = inttoptr i64 %8039 to float*
  %8043 = load float, float* %8042
  %8044 = bitcast i8* %8037 to float*
  store float %8043, float* %8044, align 1
  %8045 = getelementptr inbounds i8, i8* %8037, i64 4
  %8046 = bitcast i8* %8045 to float*
  store float 0.000000e+00, float* %8046, align 1
  %8047 = getelementptr inbounds i8, i8* %8037, i64 8
  %8048 = bitcast i8* %8047 to float*
  store float 0.000000e+00, float* %8048, align 1
  %8049 = getelementptr inbounds i8, i8* %8037, i64 12
  %8050 = bitcast i8* %8049 to float*
  store float 0.000000e+00, float* %8050, align 1
  store %struct.Memory* %loadMem_46ea37, %struct.Memory** %MEMORY
  %loadMem_46ea3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8052 = getelementptr inbounds %struct.GPR, %struct.GPR* %8051, i32 0, i32 33
  %8053 = getelementptr inbounds %struct.Reg, %struct.Reg* %8052, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %8053 to i64*
  %8054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8055 = getelementptr inbounds %struct.GPR, %struct.GPR* %8054, i32 0, i32 15
  %8056 = getelementptr inbounds %struct.Reg, %struct.Reg* %8055, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %8056 to i64*
  %8057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8058 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8057, i64 0, i64 0
  %XMM0.i40 = bitcast %union.VectorReg* %8058 to %union.vec128_t*
  %8059 = load i64, i64* %RBP.i39
  %8060 = sub i64 %8059, 1652
  %8061 = bitcast %union.vec128_t* %XMM0.i40 to i8*
  %8062 = load i64, i64* %PC.i38
  %8063 = add i64 %8062, 8
  store i64 %8063, i64* %PC.i38
  %8064 = bitcast i8* %8061 to <2 x float>*
  %8065 = load <2 x float>, <2 x float>* %8064, align 1
  %8066 = extractelement <2 x float> %8065, i32 0
  %8067 = inttoptr i64 %8060 to float*
  store float %8066, float* %8067
  store %struct.Memory* %loadMem_46ea3f, %struct.Memory** %MEMORY
  br label %block_.L_46ea47

block_.L_46ea47:                                  ; preds = %block_.L_46ea37, %block_.L_46ea32
  %loadMem_46ea47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8069 = getelementptr inbounds %struct.GPR, %struct.GPR* %8068, i32 0, i32 33
  %8070 = getelementptr inbounds %struct.Reg, %struct.Reg* %8069, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %8070 to i64*
  %8071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8072 = getelementptr inbounds %struct.GPR, %struct.GPR* %8071, i32 0, i32 15
  %8073 = getelementptr inbounds %struct.Reg, %struct.Reg* %8072, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %8073 to i64*
  %8074 = load i64, i64* %RBP.i37
  %8075 = sub i64 %8074, 8
  %8076 = load i64, i64* %PC.i36
  %8077 = add i64 %8076, 5
  store i64 %8077, i64* %PC.i36
  %8078 = inttoptr i64 %8075 to i64*
  %8079 = load i64, i64* %8078
  %8080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8080, align 1
  %8081 = trunc i64 %8079 to i32
  %8082 = and i32 %8081, 255
  %8083 = call i32 @llvm.ctpop.i32(i32 %8082)
  %8084 = trunc i32 %8083 to i8
  %8085 = and i8 %8084, 1
  %8086 = xor i8 %8085, 1
  %8087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8086, i8* %8087, align 1
  %8088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8088, align 1
  %8089 = icmp eq i64 %8079, 0
  %8090 = zext i1 %8089 to i8
  %8091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8090, i8* %8091, align 1
  %8092 = lshr i64 %8079, 63
  %8093 = trunc i64 %8092 to i8
  %8094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8093, i8* %8094, align 1
  %8095 = lshr i64 %8079, 63
  %8096 = xor i64 %8092, %8095
  %8097 = add i64 %8096, %8095
  %8098 = icmp eq i64 %8097, 2
  %8099 = zext i1 %8098 to i8
  %8100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8099, i8* %8100, align 1
  store %struct.Memory* %loadMem_46ea47, %struct.Memory** %MEMORY
  %loadMem_46ea4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8102 = getelementptr inbounds %struct.GPR, %struct.GPR* %8101, i32 0, i32 33
  %8103 = getelementptr inbounds %struct.Reg, %struct.Reg* %8102, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %8103 to i64*
  %8104 = load i64, i64* %PC.i35
  %8105 = add i64 %8104, 22
  %8106 = load i64, i64* %PC.i35
  %8107 = add i64 %8106, 6
  %8108 = load i64, i64* %PC.i35
  %8109 = add i64 %8108, 6
  store i64 %8109, i64* %PC.i35
  %8110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8111 = load i8, i8* %8110, align 1
  store i8 %8111, i8* %BRANCH_TAKEN, align 1
  %8112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8113 = icmp ne i8 %8111, 0
  %8114 = select i1 %8113, i64 %8105, i64 %8107
  store i64 %8114, i64* %8112, align 8
  store %struct.Memory* %loadMem_46ea4c, %struct.Memory** %MEMORY
  %loadBr_46ea4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ea4c = icmp eq i8 %loadBr_46ea4c, 1
  br i1 %cmpBr_46ea4c, label %block_.L_46ea62, label %block_46ea52

block_46ea52:                                     ; preds = %block_.L_46ea47
  %loadMem_46ea52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8116 = getelementptr inbounds %struct.GPR, %struct.GPR* %8115, i32 0, i32 33
  %8117 = getelementptr inbounds %struct.Reg, %struct.Reg* %8116, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %8117 to i64*
  %8118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8119 = getelementptr inbounds %struct.GPR, %struct.GPR* %8118, i32 0, i32 15
  %8120 = getelementptr inbounds %struct.Reg, %struct.Reg* %8119, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %8120 to i64*
  %8121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8121, i64 0, i64 0
  %YMM0.i34 = bitcast %union.VectorReg* %8122 to %"class.std::bitset"*
  %8123 = bitcast %"class.std::bitset"* %YMM0.i34 to i8*
  %8124 = load i64, i64* %RBP.i33
  %8125 = sub i64 %8124, 1648
  %8126 = load i64, i64* %PC.i32
  %8127 = add i64 %8126, 8
  store i64 %8127, i64* %PC.i32
  %8128 = inttoptr i64 %8125 to float*
  %8129 = load float, float* %8128
  %8130 = bitcast i8* %8123 to float*
  store float %8129, float* %8130, align 1
  %8131 = getelementptr inbounds i8, i8* %8123, i64 4
  %8132 = bitcast i8* %8131 to float*
  store float 0.000000e+00, float* %8132, align 1
  %8133 = getelementptr inbounds i8, i8* %8123, i64 8
  %8134 = bitcast i8* %8133 to float*
  store float 0.000000e+00, float* %8134, align 1
  %8135 = getelementptr inbounds i8, i8* %8123, i64 12
  %8136 = bitcast i8* %8135 to float*
  store float 0.000000e+00, float* %8136, align 1
  store %struct.Memory* %loadMem_46ea52, %struct.Memory** %MEMORY
  %loadMem_46ea5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8138 = getelementptr inbounds %struct.GPR, %struct.GPR* %8137, i32 0, i32 33
  %8139 = getelementptr inbounds %struct.Reg, %struct.Reg* %8138, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %8139 to i64*
  %8140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8141 = getelementptr inbounds %struct.GPR, %struct.GPR* %8140, i32 0, i32 1
  %8142 = getelementptr inbounds %struct.Reg, %struct.Reg* %8141, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %8142 to i64*
  %8143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8144 = getelementptr inbounds %struct.GPR, %struct.GPR* %8143, i32 0, i32 15
  %8145 = getelementptr inbounds %struct.Reg, %struct.Reg* %8144, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %8145 to i64*
  %8146 = load i64, i64* %RBP.i31
  %8147 = sub i64 %8146, 8
  %8148 = load i64, i64* %PC.i29
  %8149 = add i64 %8148, 4
  store i64 %8149, i64* %PC.i29
  %8150 = inttoptr i64 %8147 to i64*
  %8151 = load i64, i64* %8150
  store i64 %8151, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_46ea5a, %struct.Memory** %MEMORY
  %loadMem_46ea5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8153 = getelementptr inbounds %struct.GPR, %struct.GPR* %8152, i32 0, i32 33
  %8154 = getelementptr inbounds %struct.Reg, %struct.Reg* %8153, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %8154 to i64*
  %8155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8156 = getelementptr inbounds %struct.GPR, %struct.GPR* %8155, i32 0, i32 1
  %8157 = getelementptr inbounds %struct.Reg, %struct.Reg* %8156, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %8157 to i64*
  %8158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8159 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8158, i64 0, i64 0
  %XMM0.i28 = bitcast %union.VectorReg* %8159 to %union.vec128_t*
  %8160 = load i64, i64* %RAX.i27
  %8161 = bitcast %union.vec128_t* %XMM0.i28 to i8*
  %8162 = load i64, i64* %PC.i26
  %8163 = add i64 %8162, 4
  store i64 %8163, i64* %PC.i26
  %8164 = bitcast i8* %8161 to <2 x float>*
  %8165 = load <2 x float>, <2 x float>* %8164, align 1
  %8166 = extractelement <2 x float> %8165, i32 0
  %8167 = inttoptr i64 %8160 to float*
  store float %8166, float* %8167
  store %struct.Memory* %loadMem_46ea5e, %struct.Memory** %MEMORY
  br label %block_.L_46ea62

block_.L_46ea62:                                  ; preds = %block_46ea52, %block_.L_46ea47
  %loadMem_46ea62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8169 = getelementptr inbounds %struct.GPR, %struct.GPR* %8168, i32 0, i32 33
  %8170 = getelementptr inbounds %struct.Reg, %struct.Reg* %8169, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %8170 to i64*
  %8171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8172 = getelementptr inbounds %struct.GPR, %struct.GPR* %8171, i32 0, i32 15
  %8173 = getelementptr inbounds %struct.Reg, %struct.Reg* %8172, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %8173 to i64*
  %8174 = load i64, i64* %RBP.i25
  %8175 = sub i64 %8174, 16
  %8176 = load i64, i64* %PC.i24
  %8177 = add i64 %8176, 5
  store i64 %8177, i64* %PC.i24
  %8178 = inttoptr i64 %8175 to i64*
  %8179 = load i64, i64* %8178
  %8180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8180, align 1
  %8181 = trunc i64 %8179 to i32
  %8182 = and i32 %8181, 255
  %8183 = call i32 @llvm.ctpop.i32(i32 %8182)
  %8184 = trunc i32 %8183 to i8
  %8185 = and i8 %8184, 1
  %8186 = xor i8 %8185, 1
  %8187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8186, i8* %8187, align 1
  %8188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8188, align 1
  %8189 = icmp eq i64 %8179, 0
  %8190 = zext i1 %8189 to i8
  %8191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8190, i8* %8191, align 1
  %8192 = lshr i64 %8179, 63
  %8193 = trunc i64 %8192 to i8
  %8194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8193, i8* %8194, align 1
  %8195 = lshr i64 %8179, 63
  %8196 = xor i64 %8192, %8195
  %8197 = add i64 %8196, %8195
  %8198 = icmp eq i64 %8197, 2
  %8199 = zext i1 %8198 to i8
  %8200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8199, i8* %8200, align 1
  store %struct.Memory* %loadMem_46ea62, %struct.Memory** %MEMORY
  %loadMem_46ea67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8202 = getelementptr inbounds %struct.GPR, %struct.GPR* %8201, i32 0, i32 33
  %8203 = getelementptr inbounds %struct.Reg, %struct.Reg* %8202, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8203 to i64*
  %8204 = load i64, i64* %PC.i23
  %8205 = add i64 %8204, 22
  %8206 = load i64, i64* %PC.i23
  %8207 = add i64 %8206, 6
  %8208 = load i64, i64* %PC.i23
  %8209 = add i64 %8208, 6
  store i64 %8209, i64* %PC.i23
  %8210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8211 = load i8, i8* %8210, align 1
  store i8 %8211, i8* %BRANCH_TAKEN, align 1
  %8212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8213 = icmp ne i8 %8211, 0
  %8214 = select i1 %8213, i64 %8205, i64 %8207
  store i64 %8214, i64* %8212, align 8
  store %struct.Memory* %loadMem_46ea67, %struct.Memory** %MEMORY
  %loadBr_46ea67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ea67 = icmp eq i8 %loadBr_46ea67, 1
  br i1 %cmpBr_46ea67, label %block_.L_46ea7d, label %block_46ea6d

block_46ea6d:                                     ; preds = %block_.L_46ea62
  %loadMem_46ea6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8216 = getelementptr inbounds %struct.GPR, %struct.GPR* %8215, i32 0, i32 33
  %8217 = getelementptr inbounds %struct.Reg, %struct.Reg* %8216, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8217 to i64*
  %8218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8219 = getelementptr inbounds %struct.GPR, %struct.GPR* %8218, i32 0, i32 15
  %8220 = getelementptr inbounds %struct.Reg, %struct.Reg* %8219, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %8220 to i64*
  %8221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8221, i64 0, i64 0
  %YMM0.i22 = bitcast %union.VectorReg* %8222 to %"class.std::bitset"*
  %8223 = bitcast %"class.std::bitset"* %YMM0.i22 to i8*
  %8224 = load i64, i64* %RBP.i21
  %8225 = sub i64 %8224, 1652
  %8226 = load i64, i64* %PC.i20
  %8227 = add i64 %8226, 8
  store i64 %8227, i64* %PC.i20
  %8228 = inttoptr i64 %8225 to float*
  %8229 = load float, float* %8228
  %8230 = bitcast i8* %8223 to float*
  store float %8229, float* %8230, align 1
  %8231 = getelementptr inbounds i8, i8* %8223, i64 4
  %8232 = bitcast i8* %8231 to float*
  store float 0.000000e+00, float* %8232, align 1
  %8233 = getelementptr inbounds i8, i8* %8223, i64 8
  %8234 = bitcast i8* %8233 to float*
  store float 0.000000e+00, float* %8234, align 1
  %8235 = getelementptr inbounds i8, i8* %8223, i64 12
  %8236 = bitcast i8* %8235 to float*
  store float 0.000000e+00, float* %8236, align 1
  store %struct.Memory* %loadMem_46ea6d, %struct.Memory** %MEMORY
  %loadMem_46ea75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8238 = getelementptr inbounds %struct.GPR, %struct.GPR* %8237, i32 0, i32 33
  %8239 = getelementptr inbounds %struct.Reg, %struct.Reg* %8238, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %8239 to i64*
  %8240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8241 = getelementptr inbounds %struct.GPR, %struct.GPR* %8240, i32 0, i32 1
  %8242 = getelementptr inbounds %struct.Reg, %struct.Reg* %8241, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %8242 to i64*
  %8243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8244 = getelementptr inbounds %struct.GPR, %struct.GPR* %8243, i32 0, i32 15
  %8245 = getelementptr inbounds %struct.Reg, %struct.Reg* %8244, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %8245 to i64*
  %8246 = load i64, i64* %RBP.i19
  %8247 = sub i64 %8246, 16
  %8248 = load i64, i64* %PC.i17
  %8249 = add i64 %8248, 4
  store i64 %8249, i64* %PC.i17
  %8250 = inttoptr i64 %8247 to i64*
  %8251 = load i64, i64* %8250
  store i64 %8251, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_46ea75, %struct.Memory** %MEMORY
  %loadMem_46ea79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8253 = getelementptr inbounds %struct.GPR, %struct.GPR* %8252, i32 0, i32 33
  %8254 = getelementptr inbounds %struct.Reg, %struct.Reg* %8253, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %8254 to i64*
  %8255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8256 = getelementptr inbounds %struct.GPR, %struct.GPR* %8255, i32 0, i32 1
  %8257 = getelementptr inbounds %struct.Reg, %struct.Reg* %8256, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8257 to i64*
  %8258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8258, i64 0, i64 0
  %XMM0.i16 = bitcast %union.VectorReg* %8259 to %union.vec128_t*
  %8260 = load i64, i64* %RAX.i
  %8261 = bitcast %union.vec128_t* %XMM0.i16 to i8*
  %8262 = load i64, i64* %PC.i15
  %8263 = add i64 %8262, 4
  store i64 %8263, i64* %PC.i15
  %8264 = bitcast i8* %8261 to <2 x float>*
  %8265 = load <2 x float>, <2 x float>* %8264, align 1
  %8266 = extractelement <2 x float> %8265, i32 0
  %8267 = inttoptr i64 %8260 to float*
  store float %8266, float* %8267
  store %struct.Memory* %loadMem_46ea79, %struct.Memory** %MEMORY
  br label %block_.L_46ea7d

block_.L_46ea7d:                                  ; preds = %block_46ea6d, %block_.L_46ea62
  %loadMem_46ea7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8269 = getelementptr inbounds %struct.GPR, %struct.GPR* %8268, i32 0, i32 33
  %8270 = getelementptr inbounds %struct.Reg, %struct.Reg* %8269, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8270 to i64*
  %8271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8272 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8271, i64 0, i64 0
  %YMM0.i14 = bitcast %union.VectorReg* %8272 to %"class.std::bitset"*
  %8273 = bitcast %"class.std::bitset"* %YMM0.i14 to i8*
  %8274 = load i64, i64* %PC.i13
  %8275 = add i64 %8274, ptrtoint (%G_0x746af__rip__type* @G_0x746af__rip_ to i64)
  %8276 = load i64, i64* %PC.i13
  %8277 = add i64 %8276, 8
  store i64 %8277, i64* %PC.i13
  %8278 = inttoptr i64 %8275 to float*
  %8279 = load float, float* %8278
  %8280 = bitcast i8* %8273 to float*
  store float %8279, float* %8280, align 1
  %8281 = getelementptr inbounds i8, i8* %8273, i64 4
  %8282 = bitcast i8* %8281 to float*
  store float 0.000000e+00, float* %8282, align 1
  %8283 = getelementptr inbounds i8, i8* %8273, i64 8
  %8284 = bitcast i8* %8283 to float*
  store float 0.000000e+00, float* %8284, align 1
  %8285 = getelementptr inbounds i8, i8* %8273, i64 12
  %8286 = bitcast i8* %8285 to float*
  store float 0.000000e+00, float* %8286, align 1
  store %struct.Memory* %loadMem_46ea7d, %struct.Memory** %MEMORY
  %loadMem_46ea85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8288 = getelementptr inbounds %struct.GPR, %struct.GPR* %8287, i32 0, i32 33
  %8289 = getelementptr inbounds %struct.Reg, %struct.Reg* %8288, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8289 to i64*
  %8290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8291 = getelementptr inbounds %struct.GPR, %struct.GPR* %8290, i32 0, i32 15
  %8292 = getelementptr inbounds %struct.Reg, %struct.Reg* %8291, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %8292 to i64*
  %8293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8294 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8293, i64 0, i64 1
  %YMM1.i12 = bitcast %union.VectorReg* %8294 to %"class.std::bitset"*
  %8295 = bitcast %"class.std::bitset"* %YMM1.i12 to i8*
  %8296 = load i64, i64* %RBP.i11
  %8297 = sub i64 %8296, 1648
  %8298 = load i64, i64* %PC.i10
  %8299 = add i64 %8298, 8
  store i64 %8299, i64* %PC.i10
  %8300 = inttoptr i64 %8297 to float*
  %8301 = load float, float* %8300
  %8302 = bitcast i8* %8295 to float*
  store float %8301, float* %8302, align 1
  %8303 = getelementptr inbounds i8, i8* %8295, i64 4
  %8304 = bitcast i8* %8303 to float*
  store float 0.000000e+00, float* %8304, align 1
  %8305 = getelementptr inbounds i8, i8* %8295, i64 8
  %8306 = bitcast i8* %8305 to float*
  store float 0.000000e+00, float* %8306, align 1
  %8307 = getelementptr inbounds i8, i8* %8295, i64 12
  %8308 = bitcast i8* %8307 to float*
  store float 0.000000e+00, float* %8308, align 1
  store %struct.Memory* %loadMem_46ea85, %struct.Memory** %MEMORY
  %loadMem_46ea8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8310 = getelementptr inbounds %struct.GPR, %struct.GPR* %8309, i32 0, i32 33
  %8311 = getelementptr inbounds %struct.Reg, %struct.Reg* %8310, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %8311 to i64*
  %8312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8313 = getelementptr inbounds %struct.GPR, %struct.GPR* %8312, i32 0, i32 15
  %8314 = getelementptr inbounds %struct.Reg, %struct.Reg* %8313, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %8314 to i64*
  %8315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8315, i64 0, i64 1
  %YMM1.i9 = bitcast %union.VectorReg* %8316 to %"class.std::bitset"*
  %8317 = bitcast %"class.std::bitset"* %YMM1.i9 to i8*
  %8318 = bitcast %"class.std::bitset"* %YMM1.i9 to i8*
  %8319 = load i64, i64* %RBP.i8
  %8320 = sub i64 %8319, 1652
  %8321 = load i64, i64* %PC.i7
  %8322 = add i64 %8321, 8
  store i64 %8322, i64* %PC.i7
  %8323 = bitcast i8* %8318 to <2 x float>*
  %8324 = load <2 x float>, <2 x float>* %8323, align 1
  %8325 = getelementptr inbounds i8, i8* %8318, i64 8
  %8326 = bitcast i8* %8325 to <2 x i32>*
  %8327 = load <2 x i32>, <2 x i32>* %8326, align 1
  %8328 = inttoptr i64 %8320 to float*
  %8329 = load float, float* %8328
  %8330 = extractelement <2 x float> %8324, i32 0
  %8331 = fadd float %8330, %8329
  %8332 = bitcast i8* %8317 to float*
  store float %8331, float* %8332, align 1
  %8333 = bitcast <2 x float> %8324 to <2 x i32>
  %8334 = extractelement <2 x i32> %8333, i32 1
  %8335 = getelementptr inbounds i8, i8* %8317, i64 4
  %8336 = bitcast i8* %8335 to i32*
  store i32 %8334, i32* %8336, align 1
  %8337 = extractelement <2 x i32> %8327, i32 0
  %8338 = getelementptr inbounds i8, i8* %8317, i64 8
  %8339 = bitcast i8* %8338 to i32*
  store i32 %8337, i32* %8339, align 1
  %8340 = extractelement <2 x i32> %8327, i32 1
  %8341 = getelementptr inbounds i8, i8* %8317, i64 12
  %8342 = bitcast i8* %8341 to i32*
  store i32 %8340, i32* %8342, align 1
  store %struct.Memory* %loadMem_46ea8d, %struct.Memory** %MEMORY
  %loadMem_46ea95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8344 = getelementptr inbounds %struct.GPR, %struct.GPR* %8343, i32 0, i32 33
  %8345 = getelementptr inbounds %struct.Reg, %struct.Reg* %8344, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8345 to i64*
  %8346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8347 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8346, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %8347 to %"class.std::bitset"*
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8349 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8348, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %8349 to %union.vec128_t*
  %8350 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %8351 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %8352 = bitcast %union.vec128_t* %XMM0.i to i8*
  %8353 = load i64, i64* %PC.i6
  %8354 = add i64 %8353, 4
  store i64 %8354, i64* %PC.i6
  %8355 = bitcast i8* %8351 to <2 x float>*
  %8356 = load <2 x float>, <2 x float>* %8355, align 1
  %8357 = getelementptr inbounds i8, i8* %8351, i64 8
  %8358 = bitcast i8* %8357 to <2 x i32>*
  %8359 = load <2 x i32>, <2 x i32>* %8358, align 1
  %8360 = bitcast i8* %8352 to <2 x float>*
  %8361 = load <2 x float>, <2 x float>* %8360, align 1
  %8362 = extractelement <2 x float> %8356, i32 0
  %8363 = extractelement <2 x float> %8361, i32 0
  %8364 = fdiv float %8362, %8363
  %8365 = bitcast i8* %8350 to float*
  store float %8364, float* %8365, align 1
  %8366 = bitcast <2 x float> %8356 to <2 x i32>
  %8367 = extractelement <2 x i32> %8366, i32 1
  %8368 = getelementptr inbounds i8, i8* %8350, i64 4
  %8369 = bitcast i8* %8368 to i32*
  store i32 %8367, i32* %8369, align 1
  %8370 = extractelement <2 x i32> %8359, i32 0
  %8371 = getelementptr inbounds i8, i8* %8350, i64 8
  %8372 = bitcast i8* %8371 to i32*
  store i32 %8370, i32* %8372, align 1
  %8373 = extractelement <2 x i32> %8359, i32 1
  %8374 = getelementptr inbounds i8, i8* %8350, i64 12
  %8375 = bitcast i8* %8374 to i32*
  store i32 %8373, i32* %8375, align 1
  store %struct.Memory* %loadMem_46ea95, %struct.Memory** %MEMORY
  %loadMem_46ea99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8377 = getelementptr inbounds %struct.GPR, %struct.GPR* %8376, i32 0, i32 33
  %8378 = getelementptr inbounds %struct.Reg, %struct.Reg* %8377, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8378 to i64*
  %8379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8380 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8379, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %8380 to %"class.std::bitset"*
  %8381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8382 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8381, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %8382 to %union.vec128_t*
  %8383 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %8384 = bitcast %union.vec128_t* %XMM1.i to i8*
  %8385 = load i64, i64* %PC.i5
  %8386 = add i64 %8385, 3
  store i64 %8386, i64* %PC.i5
  %8387 = bitcast i8* %8384 to <2 x i32>*
  %8388 = load <2 x i32>, <2 x i32>* %8387, align 1
  %8389 = getelementptr inbounds i8, i8* %8384, i64 8
  %8390 = bitcast i8* %8389 to <2 x i32>*
  %8391 = load <2 x i32>, <2 x i32>* %8390, align 1
  %8392 = extractelement <2 x i32> %8388, i32 0
  %8393 = bitcast i8* %8383 to i32*
  store i32 %8392, i32* %8393, align 1
  %8394 = extractelement <2 x i32> %8388, i32 1
  %8395 = getelementptr inbounds i8, i8* %8383, i64 4
  %8396 = bitcast i8* %8395 to i32*
  store i32 %8394, i32* %8396, align 1
  %8397 = extractelement <2 x i32> %8391, i32 0
  %8398 = getelementptr inbounds i8, i8* %8383, i64 8
  %8399 = bitcast i8* %8398 to i32*
  store i32 %8397, i32* %8399, align 1
  %8400 = extractelement <2 x i32> %8391, i32 1
  %8401 = getelementptr inbounds i8, i8* %8383, i64 12
  %8402 = bitcast i8* %8401 to i32*
  store i32 %8400, i32* %8402, align 1
  store %struct.Memory* %loadMem_46ea99, %struct.Memory** %MEMORY
  %loadMem_46ea9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8404 = getelementptr inbounds %struct.GPR, %struct.GPR* %8403, i32 0, i32 33
  %8405 = getelementptr inbounds %struct.Reg, %struct.Reg* %8404, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8405 to i64*
  %8406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8407 = getelementptr inbounds %struct.GPR, %struct.GPR* %8406, i32 0, i32 13
  %8408 = getelementptr inbounds %struct.Reg, %struct.Reg* %8407, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8408 to i64*
  %8409 = load i64, i64* %RSP.i
  %8410 = load i64, i64* %PC.i4
  %8411 = add i64 %8410, 7
  store i64 %8411, i64* %PC.i4
  %8412 = add i64 1728, %8409
  store i64 %8412, i64* %RSP.i, align 8
  %8413 = icmp ult i64 %8412, %8409
  %8414 = icmp ult i64 %8412, 1728
  %8415 = or i1 %8413, %8414
  %8416 = zext i1 %8415 to i8
  %8417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8416, i8* %8417, align 1
  %8418 = trunc i64 %8412 to i32
  %8419 = and i32 %8418, 255
  %8420 = call i32 @llvm.ctpop.i32(i32 %8419)
  %8421 = trunc i32 %8420 to i8
  %8422 = and i8 %8421, 1
  %8423 = xor i8 %8422, 1
  %8424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8423, i8* %8424, align 1
  %8425 = xor i64 1728, %8409
  %8426 = xor i64 %8425, %8412
  %8427 = lshr i64 %8426, 4
  %8428 = trunc i64 %8427 to i8
  %8429 = and i8 %8428, 1
  %8430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8429, i8* %8430, align 1
  %8431 = icmp eq i64 %8412, 0
  %8432 = zext i1 %8431 to i8
  %8433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8432, i8* %8433, align 1
  %8434 = lshr i64 %8412, 63
  %8435 = trunc i64 %8434 to i8
  %8436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8435, i8* %8436, align 1
  %8437 = lshr i64 %8409, 63
  %8438 = xor i64 %8434, %8437
  %8439 = add i64 %8438, %8434
  %8440 = icmp eq i64 %8439, 2
  %8441 = zext i1 %8440 to i8
  %8442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8441, i8* %8442, align 1
  store %struct.Memory* %loadMem_46ea9c, %struct.Memory** %MEMORY
  %loadMem_46eaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8444 = getelementptr inbounds %struct.GPR, %struct.GPR* %8443, i32 0, i32 33
  %8445 = getelementptr inbounds %struct.Reg, %struct.Reg* %8444, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8445 to i64*
  %8446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8447 = getelementptr inbounds %struct.GPR, %struct.GPR* %8446, i32 0, i32 15
  %8448 = getelementptr inbounds %struct.Reg, %struct.Reg* %8447, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8448 to i64*
  %8449 = load i64, i64* %PC.i2
  %8450 = add i64 %8449, 1
  store i64 %8450, i64* %PC.i2
  %8451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8452 = load i64, i64* %8451, align 8
  %8453 = add i64 %8452, 8
  %8454 = inttoptr i64 %8452 to i64*
  %8455 = load i64, i64* %8454
  store i64 %8455, i64* %RBP.i3, align 8
  store i64 %8453, i64* %8451, align 8
  store %struct.Memory* %loadMem_46eaa3, %struct.Memory** %MEMORY
  %loadMem_46eaa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8457 = getelementptr inbounds %struct.GPR, %struct.GPR* %8456, i32 0, i32 33
  %8458 = getelementptr inbounds %struct.Reg, %struct.Reg* %8457, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8458 to i64*
  %8459 = load i64, i64* %PC.i1
  %8460 = add i64 %8459, 1
  store i64 %8460, i64* %PC.i1
  %8461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8463 = load i64, i64* %8462, align 8
  %8464 = inttoptr i64 %8463 to i64*
  %8465 = load i64, i64* %8464
  store i64 %8465, i64* %8461, align 8
  %8466 = add i64 %8463, 8
  store i64 %8466, i64* %8462, align 8
  store %struct.Memory* %loadMem_46eaa4, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_46eaa4
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

define %struct.Memory* @routine_subq__0x6c0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 1728
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 1728
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
  %23 = xor i64 1728, %9
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

define %struct.Memory* @routine_movl__0x15___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 21, i64* %RCX, align 8
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

define %struct.Memory* @routine_leaq_MINUS0x650__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr inbounds i8, i8* %12, i64 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 1
  %25 = xor i64 %21, %16
  %26 = xor i64 %24, %19
  %27 = trunc i64 %25 to i32
  %28 = lshr i64 %25, 32
  %29 = trunc i64 %28 to i32
  %30 = bitcast i8* %10 to i32*
  store i32 %27, i32* %30, align 1
  %31 = getelementptr inbounds i8, i8* %10, i64 4
  %32 = bitcast i8* %31 to i32*
  store i32 %29, i32* %32, align 1
  %33 = trunc i64 %26 to i32
  %34 = getelementptr inbounds i8, i8* %10, i64 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = lshr i64 %26, 32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds i8, i8* %10, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x654__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 1620
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x658__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 1624
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x65c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 1628
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 1632
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
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

define %struct.Memory* @routine_movl__edx__MINUS0x69c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1692
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x69c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.dilate_erode(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_leaq_MINUS0x650__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x678__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1656
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.close_bubbles(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_andl__0x10000___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 65536, %9
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

define %struct.Memory* @routine_je_.L_46e157(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.print_regions(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_46e4f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x0__MINUS0x67c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x680__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1664
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x684__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1668
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x688__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1672
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movl_MINUS0x668__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_46e428(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_imull__0x14__MINUS0x664__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x668__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1640
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

define %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1644
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

define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_46e27f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x66c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1644
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.captured_territory(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_46e253(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x74f04__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74f04__rip__type* @G_0x74f04__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x74f24__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74f24__rip__type* @G_0x74f24__rip_ to i64)
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

define %struct.Memory* @routine_addss_MINUS0x654__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1620
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x654__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 1620
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1628
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x680__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x680__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1664
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x684__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1668
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

define %struct.Memory* @routine_movl__eax__MINUS0x684__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1668
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e27a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0x74eb1__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74eb1__rip__type* @G_0x74eb1__rip_ to i64)
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

define %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1632
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x688__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1672
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x688__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1672
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e40f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1644
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

define %struct.Memory* @routine_jne_.L_46e32f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_46e303(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x74e54__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74e54__rip__type* @G_0x74e54__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x74e74__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74e74__rip__type* @G_0x74e74__rip_ to i64)
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

define %struct.Memory* @routine_addss_MINUS0x658__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1624
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x658__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 1624
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
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

define %struct.Memory* @routine_jmpq_.L_46e32a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0x74e01__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74e01__rip__type* @G_0x74e01__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_46e40a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x650__rbp__rax_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1616
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = sitofp i32 %23 to double
  %25 = bitcast i8* %14 to double*
  store double %24, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jbe_.L_46e39a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x74db8__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74db8__rip__type* @G_0x74db8__rip_ to i64)
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

define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_jmpq_.L_46e405(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jbe_.L_46e400(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x74d4d__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74d4d__rip__type* @G_0x74d4d__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_46e414(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x668__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1640
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e1a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0xab0fc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0fc0_type* @G_0xab0fc0 to i32*)
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

define %struct.Memory* @routine_je_.L_46e487(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_46e450(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_46e482(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x58058f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58058f_type* @G__0x58058f to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_subl_MINUS0x664__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1636
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

define %struct.Memory* @routine_movl_MINUS0x684__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x688__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1672
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x6a0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1696
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e4d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_46e4a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_46e4d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x5805b3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5805b3_type* @G__0x5805b3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x680__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x67c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1660
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6a4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1700
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e4dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46e161(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_46e525(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_MINUS0x65c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1628
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_subss_MINUS0x660__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1632
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fsub float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_0xb454f8___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*)
  %18 = extractelement <2 x float> %13, i32 0
  %19 = fadd float %18, %17
  %20 = bitcast i8* %8 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %13 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %8, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %16, i32 0
  %26 = getelementptr inbounds i8, i8* %8, i64 8
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x670__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 1648
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e5a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_46e53f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_46e56d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x5805dc___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5805dc_type* @G__0x5805dc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb8c040___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb38cb0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0xb454f8___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*)
  %12 = fpext float %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
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

define %struct.Memory* @routine_movl__eax__MINUS0x6a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1704
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x654__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_cvtsi2ssl_0xb8c040___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*)
  %17 = sitofp i32 %16 to float
  %18 = bitcast i8* %8 to float*
  store float %17, float* %18, align 1
  %19 = extractelement <2 x i32> %12, i32 1
  %20 = getelementptr inbounds i8, i8* %8, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  %22 = extractelement <2 x i32> %15, i32 0
  %23 = bitcast i8* %13 to i32*
  store i32 %22, i32* %23, align 1
  %24 = extractelement <2 x i32> %15, i32 1
  %25 = getelementptr inbounds i8, i8* %8, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fadd float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss_MINUS0x658__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1624
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fsub float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl_0xb38cb0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*)
  %17 = sitofp i32 %16 to float
  %18 = bitcast i8* %8 to float*
  store float %17, float* %18, align 1
  %19 = extractelement <2 x i32> %12, i32 1
  %20 = getelementptr inbounds i8, i8* %8, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  %22 = extractelement <2 x i32> %15, i32 0
  %23 = bitcast i8* %13 to i32*
  store i32 %22, i32* %23, align 1
  %24 = extractelement <2 x i32> %15, i32 1
  %25 = getelementptr inbounds i8, i8* %8, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fsub float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x678__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1656
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

define %struct.Memory* @routine_je_.L_46ea37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x15___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 21, i64* %RSI, align 8
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

define %struct.Memory* @routine_leaq_MINUS0x650__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6ac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1708
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_46e97b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x0__MINUS0x68c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1676
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x690__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1680
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x694__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1684
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x698__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1688
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_46e8b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_46e72d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_46e701(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x74a56__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74a56__rip__type* @G_0x74a56__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x74a76__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74a76__rip__type* @G_0x74a76__rip_ to i64)
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

define %struct.Memory* @routine_movl_MINUS0x690__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x690__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1680
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x694__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x694__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1684
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e728(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0x74a03__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74a03__rip__type* @G_0x74a03__rip_ to i64)
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

define %struct.Memory* @routine_movl_MINUS0x698__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x698__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1688
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e899(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_46e7b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_46e7b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x749a6__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x749a6__rip__type* @G_0x749a6__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x749c6__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x749c6__rip__type* @G_0x749c6__rip_ to i64)
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

define %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1632
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x660__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 1632
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x68c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x68c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1676
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e894(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jbe_.L_46e824(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x74932__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x74932__rip__type* @G_0x74932__rip_ to i64)
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

define %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1628
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x65c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 1628
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e88f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jbe_.L_46e88a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x748c3__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x748c3__rip__type* @G_0x748c3__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_46e89e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46e654(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_46e911(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_46e8da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_46e90c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x694__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x698__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6b0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1712
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e962(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_46e92b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_46e95d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x690__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x68c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6b4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1716
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46e967(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46e60f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_46e9af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x674__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 1652
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46ea32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_46e9c9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_46e9f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x6b8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1720
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46ea47(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x670__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_46ea62(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* %RAX
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = extractelement <2 x float> %16, i32 0
  %18 = inttoptr i64 %11 to float*
  store float %17, float* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_46ea7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_MINUS0x674__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1652
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movss_0x746af__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x746af__rip__type* @G_0x746af__rip_ to i64)
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

define %struct.Memory* @routine_movss_MINUS0x670__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_addss_MINUS0x674__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1652
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
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

define %struct.Memory* @routine_addq__0x6c0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1728, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1728
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
  %25 = xor i64 1728, %9
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
