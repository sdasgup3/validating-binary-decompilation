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
%G_0x99c080_type = type <{ [8 x i8] }>
%G_0x99c090_type = type <{ [8 x i8] }>
%G_0xaf274c_type = type <{ [4 x i8] }>
%G__0x5856fa_type = type <{ [8 x i8] }>
%G__0x585d0e_type = type <{ [8 x i8] }>
%G__0x585ed3_type = type <{ [8 x i8] }>
%G__0x585eee_type = type <{ [8 x i8] }>
%G__0x585f20_type = type <{ [8 x i8] }>
%G__0x585f54_type = type <{ [8 x i8] }>
%G__0x585f74_type = type <{ [8 x i8] }>
%G__0x585f79_type = type <{ [8 x i8] }>
%G__0x585f7f_type = type <{ [8 x i8] }>
%G__0x585fbf_type = type <{ [8 x i8] }>
%G__0x585ffa_type = type <{ [8 x i8] }>
%G__0x586031_type = type <{ [8 x i8] }>
%G__0x58605d_type = type <{ [8 x i8] }>
%G__0x586075_type = type <{ [8 x i8] }>
%G__0x5860b3_type = type <{ [8 x i8] }>
%G__0x5860ef_type = type <{ [8 x i8] }>
%G__0x58612b_type = type <{ [8 x i8] }>
%G__0x586147_type = type <{ [8 x i8] }>
%G__0x58617f_type = type <{ [8 x i8] }>
%G__0x5861ab_type = type <{ [8 x i8] }>
%G__0x58730e_type = type <{ [8 x i8] }>
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
@G_0x99c080 = global %G_0x99c080_type zeroinitializer
@G_0x99c090 = global %G_0x99c090_type zeroinitializer
@G_0xaf274c = global %G_0xaf274c_type zeroinitializer
@G__0x5856fa = global %G__0x5856fa_type zeroinitializer
@G__0x585d0e = global %G__0x585d0e_type zeroinitializer
@G__0x585ed3 = global %G__0x585ed3_type zeroinitializer
@G__0x585eee = global %G__0x585eee_type zeroinitializer
@G__0x585f20 = global %G__0x585f20_type zeroinitializer
@G__0x585f54 = global %G__0x585f54_type zeroinitializer
@G__0x585f74 = global %G__0x585f74_type zeroinitializer
@G__0x585f79 = global %G__0x585f79_type zeroinitializer
@G__0x585f7f = global %G__0x585f7f_type zeroinitializer
@G__0x585fbf = global %G__0x585fbf_type zeroinitializer
@G__0x585ffa = global %G__0x585ffa_type zeroinitializer
@G__0x586031 = global %G__0x586031_type zeroinitializer
@G__0x58605d = global %G__0x58605d_type zeroinitializer
@G__0x586075 = global %G__0x586075_type zeroinitializer
@G__0x5860b3 = global %G__0x5860b3_type zeroinitializer
@G__0x5860ef = global %G__0x5860ef_type zeroinitializer
@G__0x58612b = global %G__0x58612b_type zeroinitializer
@G__0x586147 = global %G__0x586147_type zeroinitializer
@G__0x58617f = global %G__0x58617f_type zeroinitializer
@G__0x5861ab = global %G__0x5861ab_type zeroinitializer
@G__0x58730e = global %G__0x58730e_type zeroinitializer

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

declare %struct.Memory* @sub_490320.ascii_showboard(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4010a0.fgets_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401200.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401100.tolower_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4527f0.string_to_location(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4232e0.dragon_status(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4770c0.change_dragon_status(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42ebb0.gnugo_who_wins(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @endgame(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_491f50 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_491f50, %struct.Memory** %MEMORY
  %loadMem_491f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i62 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i62
  %27 = load i64, i64* %PC.i61
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i61
  store i64 %26, i64* %RBP.i63, align 8
  store %struct.Memory* %loadMem_491f51, %struct.Memory** %MEMORY
  %loadMem_491f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i105 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i105
  %36 = load i64, i64* %PC.i104
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i104
  %38 = sub i64 %35, 112
  store i64 %38, i64* %RSP.i105, align 8
  %39 = icmp ult i64 %35, 112
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
  %49 = xor i64 112, %35
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
  store %struct.Memory* %loadMem_491f54, %struct.Memory** %MEMORY
  %loadMem_491f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i114
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i114
  store i64 ptrtoint (%G__0x585ed3_type* @G__0x585ed3 to i64), i64* %RAX.i115, align 8
  store %struct.Memory* %loadMem_491f58, %struct.Memory** %MEMORY
  %loadMem_491f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RDI.i125 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i126
  %85 = sub i64 %84, 8
  %86 = load i64, i64* %RDI.i125
  %87 = load i64, i64* %PC.i124
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i124
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  store %struct.Memory* %loadMem_491f62, %struct.Memory** %MEMORY
  %loadMem_491f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 15
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %95 to i64*
  %96 = load i64, i64* %RBP.i143
  %97 = sub i64 %96, 24
  %98 = load i64, i64* %PC.i142
  %99 = add i64 %98, 7
  store i64 %99, i64* %PC.i142
  %100 = inttoptr i64 %97 to i32*
  store i32 0, i32* %100
  store %struct.Memory* %loadMem_491f66, %struct.Memory** %MEMORY
  %loadMem_491f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i153
  %108 = sub i64 %107, 36
  %109 = load i64, i64* %PC.i152
  %110 = add i64 %109, 7
  store i64 %110, i64* %PC.i152
  %111 = inttoptr i64 %108 to i32*
  store i32 1, i32* %111
  store %struct.Memory* %loadMem_491f6d, %struct.Memory** %MEMORY
  %loadMem_491f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 11
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RDI.i164 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %RAX.i163
  %122 = load i64, i64* %PC.i162
  %123 = add i64 %122, 3
  store i64 %123, i64* %PC.i162
  store i64 %121, i64* %RDI.i164, align 8
  store %struct.Memory* %loadMem_491f74, %struct.Memory** %MEMORY
  %loadMem_491f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 33
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %130 = bitcast %union.anon* %129 to %struct.anon.2*
  %AL.i174 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %130, i32 0, i32 0
  %131 = load i64, i64* %PC.i173
  %132 = add i64 %131, 2
  store i64 %132, i64* %PC.i173
  store i8 0, i8* %AL.i174, align 1
  store %struct.Memory* %loadMem_491f77, %struct.Memory** %MEMORY
  %loadMem1_491f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 33
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %135 to i64*
  %136 = load i64, i64* %PC.i192
  %137 = add i64 %136, -593721
  %138 = load i64, i64* %PC.i192
  %139 = add i64 %138, 5
  %140 = load i64, i64* %PC.i192
  %141 = add i64 %140, 5
  store i64 %141, i64* %PC.i192
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, -8
  %145 = inttoptr i64 %144 to i64*
  store i64 %139, i64* %145
  store i64 %144, i64* %142, align 8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %137, i64* %146, align 8
  store %struct.Memory* %loadMem1_491f79, %struct.Memory** %MEMORY
  %loadMem2_491f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491f79 = load i64, i64* %3
  %147 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_491f79)
  store %struct.Memory* %147, %struct.Memory** %MEMORY
  %loadMem_491f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %PC.i204
  %152 = add i64 %151, 11
  store i64 %152, i64* %PC.i204
  store i32 1, i32* bitcast (%G_0xaf274c_type* @G_0xaf274c to i32*)
  store %struct.Memory* %loadMem_491f7e, %struct.Memory** %MEMORY
  %loadMem_491f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %158 to i32*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %RBP.i215
  %163 = sub i64 %162, 44
  %164 = load i32, i32* %EAX.i214
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC.i213
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i213
  %168 = inttoptr i64 %163 to i32*
  store i32 %164, i32* %168
  store %struct.Memory* %loadMem_491f89, %struct.Memory** %MEMORY
  %loadMem1_491f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %171 to i64*
  %172 = load i64, i64* %PC.i224
  %173 = add i64 %172, -7276
  %174 = load i64, i64* %PC.i224
  %175 = add i64 %174, 5
  %176 = load i64, i64* %PC.i224
  %177 = add i64 %176, 5
  store i64 %177, i64* %PC.i224
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, -8
  %181 = inttoptr i64 %180 to i64*
  store i64 %175, i64* %181
  store i64 %180, i64* %178, align 8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %173, i64* %182, align 8
  store %struct.Memory* %loadMem1_491f8c, %struct.Memory** %MEMORY
  %loadMem2_491f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491f8c = load i64, i64* %3
  %call2_491f8c = call %struct.Memory* @sub_490320.ascii_showboard(%struct.State* %0, i64 %loadPC_491f8c, %struct.Memory* %loadMem2_491f8c)
  store %struct.Memory* %call2_491f8c, %struct.Memory** %MEMORY
  br label %block_.L_491f91

block_.L_491f91:                                  ; preds = %block_.L_4922f9, %entry
  %loadMem_491f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 33
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 15
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RBP.i234
  %190 = sub i64 %189, 24
  %191 = load i64, i64* %PC.i233
  %192 = add i64 %191, 4
  store i64 %192, i64* %PC.i233
  %193 = inttoptr i64 %190 to i32*
  %194 = load i32, i32* %193
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %195, align 1
  %196 = and i32 %194, 255
  %197 = call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %200, i8* %201, align 1
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %202, align 1
  %203 = icmp eq i32 %194, 0
  %204 = zext i1 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %204, i8* %205, align 1
  %206 = lshr i32 %194, 31
  %207 = trunc i32 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %207, i8* %208, align 1
  %209 = lshr i32 %194, 31
  %210 = xor i32 %206, %209
  %211 = add i32 %210, %209
  %212 = icmp eq i32 %211, 2
  %213 = zext i1 %212 to i8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %213, i8* %214, align 1
  store %struct.Memory* %loadMem_491f91, %struct.Memory** %MEMORY
  %loadMem_491f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %221 = bitcast %union.anon* %220 to %struct.anon.2*
  %AL.i244 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %221, i32 0, i32 0
  %222 = load i64, i64* %PC.i243
  %223 = add i64 %222, 3
  store i64 %223, i64* %PC.i243
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %225 = load i8, i8* %224, align 1
  %226 = icmp eq i8 %225, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %AL.i244, align 1
  store %struct.Memory* %loadMem_491f95, %struct.Memory** %MEMORY
  %loadMem_491f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %234 = bitcast %union.anon* %233 to %struct.anon.2*
  %AL.i257 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %234, i32 0, i32 0
  %235 = load i8, i8* %AL.i257
  %236 = zext i8 %235 to i64
  %237 = load i64, i64* %PC.i256
  %238 = add i64 %237, 2
  store i64 %238, i64* %PC.i256
  %239 = xor i64 255, %236
  %240 = trunc i64 %239 to i8
  store i8 %240, i8* %AL.i257, align 1
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %241, align 1
  %242 = trunc i64 %239 to i32
  %243 = and i32 %242, 255
  %244 = call i32 @llvm.ctpop.i32(i32 %243)
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %247, i8* %248, align 1
  %249 = icmp eq i8 %240, 0
  %250 = zext i1 %249 to i8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %250, i8* %251, align 1
  %252 = lshr i8 %240, 7
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %252, i8* %253, align 1
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %254, align 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %255, align 1
  store %struct.Memory* %loadMem_491f98, %struct.Memory** %MEMORY
  %loadMem_491f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %262 = bitcast %union.anon* %261 to %struct.anon.2*
  %AL.i274 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %262, i32 0, i32 0
  %263 = load i8, i8* %AL.i274
  %264 = zext i8 %263 to i64
  %265 = load i64, i64* %PC.i273
  %266 = add i64 %265, 2
  store i64 %266, i64* %PC.i273
  %267 = and i64 1, %264
  %268 = trunc i64 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %269, align 1
  %270 = trunc i64 %267 to i32
  %271 = and i32 %270, 255
  %272 = call i32 @llvm.ctpop.i32(i32 %271)
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %275, i8* %276, align 1
  %277 = icmp eq i8 %268, 0
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %278, i8* %279, align 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %280, align 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %281, align 1
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %282, align 1
  store %struct.Memory* %loadMem_491f9a, %struct.Memory** %MEMORY
  %loadMem_491f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %PC.i292
  %287 = add i64 %286, 11
  %288 = load i64, i64* %PC.i292
  %289 = add i64 %288, 6
  %290 = load i64, i64* %PC.i292
  %291 = add i64 %290, 6
  store i64 %291, i64* %PC.i292
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %293 = load i8, i8* %292, align 1
  %294 = icmp eq i8 %293, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %BRANCH_TAKEN, align 1
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %297 = select i1 %294, i64 %287, i64 %289
  store i64 %297, i64* %296, align 8
  store %struct.Memory* %loadMem_491f9c, %struct.Memory** %MEMORY
  %loadBr_491f9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491f9c = icmp eq i8 %loadBr_491f9c, 1
  br i1 %cmpBr_491f9c, label %block_.L_491fa7, label %block_491fa2

block_491fa2:                                     ; preds = %block_.L_491f91
  %loadMem_491fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %300 to i64*
  %301 = load i64, i64* %PC.i388
  %302 = add i64 %301, 860
  %303 = load i64, i64* %PC.i388
  %304 = add i64 %303, 5
  store i64 %304, i64* %PC.i388
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %302, i64* %305, align 8
  store %struct.Memory* %loadMem_491fa2, %struct.Memory** %MEMORY
  br label %block_.L_4922fe

block_.L_491fa7:                                  ; preds = %block_.L_491f91
  %loadMem_491fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 11
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RDI.i398 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %PC.i397
  %313 = add i64 %312, 10
  store i64 %313, i64* %PC.i397
  store i64 ptrtoint (%G__0x585eee_type* @G__0x585eee to i64), i64* %RDI.i398, align 8
  store %struct.Memory* %loadMem_491fa7, %struct.Memory** %MEMORY
  %loadMem_491fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %320 = bitcast %union.anon* %319 to %struct.anon.2*
  %AL.i408 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %320, i32 0, i32 0
  %321 = load i64, i64* %PC.i407
  %322 = add i64 %321, 2
  store i64 %322, i64* %PC.i407
  store i8 0, i8* %AL.i408, align 1
  store %struct.Memory* %loadMem_491fb1, %struct.Memory** %MEMORY
  %loadMem1_491fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 33
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %325 to i64*
  %326 = load i64, i64* %PC.i409
  %327 = add i64 %326, -593779
  %328 = load i64, i64* %PC.i409
  %329 = add i64 %328, 5
  %330 = load i64, i64* %PC.i409
  %331 = add i64 %330, 5
  store i64 %331, i64* %PC.i409
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = add i64 %333, -8
  %335 = inttoptr i64 %334 to i64*
  store i64 %329, i64* %335
  store i64 %334, i64* %332, align 8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %327, i64* %336, align 8
  store %struct.Memory* %loadMem1_491fb3, %struct.Memory** %MEMORY
  %loadMem2_491fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491fb3 = load i64, i64* %3
  %337 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_491fb3)
  store %struct.Memory* %337, %struct.Memory** %MEMORY
  %loadMem_491fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 33
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 11
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RDI.i406 = bitcast %union.anon* %343 to i64*
  %344 = load i64, i64* %PC.i405
  %345 = add i64 %344, 10
  store i64 %345, i64* %PC.i405
  store i64 ptrtoint (%G__0x585f20_type* @G__0x585f20 to i64), i64* %RDI.i406, align 8
  store %struct.Memory* %loadMem_491fb8, %struct.Memory** %MEMORY
  %loadMem_491fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %EAX.i403 = bitcast %union.anon* %351 to i32*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 15
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %354 to i64*
  %355 = load i64, i64* %RBP.i404
  %356 = sub i64 %355, 48
  %357 = load i32, i32* %EAX.i403
  %358 = zext i32 %357 to i64
  %359 = load i64, i64* %PC.i402
  %360 = add i64 %359, 3
  store i64 %360, i64* %PC.i402
  %361 = inttoptr i64 %356 to i32*
  store i32 %357, i32* %361
  store %struct.Memory* %loadMem_491fc2, %struct.Memory** %MEMORY
  %loadMem_491fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 33
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %368 = bitcast %union.anon* %367 to %struct.anon.2*
  %AL.i401 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %368, i32 0, i32 0
  %369 = load i64, i64* %PC.i400
  %370 = add i64 %369, 2
  store i64 %370, i64* %PC.i400
  store i8 0, i8* %AL.i401, align 1
  store %struct.Memory* %loadMem_491fc5, %struct.Memory** %MEMORY
  %loadMem1_491fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %373 to i64*
  %374 = load i64, i64* %PC.i399
  %375 = add i64 %374, -593799
  %376 = load i64, i64* %PC.i399
  %377 = add i64 %376, 5
  %378 = load i64, i64* %PC.i399
  %379 = add i64 %378, 5
  store i64 %379, i64* %PC.i399
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = add i64 %381, -8
  %383 = inttoptr i64 %382 to i64*
  store i64 %377, i64* %383
  store i64 %382, i64* %380, align 8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %375, i64* %384, align 8
  store %struct.Memory* %loadMem1_491fc7, %struct.Memory** %MEMORY
  %loadMem2_491fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491fc7 = load i64, i64* %3
  %385 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_491fc7)
  store %struct.Memory* %385, %struct.Memory** %MEMORY
  %loadMem_491fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 11
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RDI.i396 = bitcast %union.anon* %391 to i64*
  %392 = load i64, i64* %PC.i395
  %393 = add i64 %392, 10
  store i64 %393, i64* %PC.i395
  store i64 ptrtoint (%G__0x585f54_type* @G__0x585f54 to i64), i64* %RDI.i396, align 8
  store %struct.Memory* %loadMem_491fcc, %struct.Memory** %MEMORY
  %loadMem_491fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %EAX.i393 = bitcast %union.anon* %399 to i32*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 15
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %RBP.i394
  %404 = sub i64 %403, 52
  %405 = load i32, i32* %EAX.i393
  %406 = zext i32 %405 to i64
  %407 = load i64, i64* %PC.i392
  %408 = add i64 %407, 3
  store i64 %408, i64* %PC.i392
  %409 = inttoptr i64 %404 to i32*
  store i32 %405, i32* %409
  store %struct.Memory* %loadMem_491fd6, %struct.Memory** %MEMORY
  %loadMem_491fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 33
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %416 = bitcast %union.anon* %415 to %struct.anon.2*
  %AL.i391 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %416, i32 0, i32 0
  %417 = load i64, i64* %PC.i390
  %418 = add i64 %417, 2
  store i64 %418, i64* %PC.i390
  store i8 0, i8* %AL.i391, align 1
  store %struct.Memory* %loadMem_491fd9, %struct.Memory** %MEMORY
  %loadMem1_491fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %PC.i389
  %423 = add i64 %422, -593819
  %424 = load i64, i64* %PC.i389
  %425 = add i64 %424, 5
  %426 = load i64, i64* %PC.i389
  %427 = add i64 %426, 5
  store i64 %427, i64* %PC.i389
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = add i64 %429, -8
  %431 = inttoptr i64 %430 to i64*
  store i64 %425, i64* %431
  store i64 %430, i64* %428, align 8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %423, i64* %432, align 8
  store %struct.Memory* %loadMem1_491fdb, %struct.Memory** %MEMORY
  %loadMem2_491fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491fdb = load i64, i64* %3
  %433 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_491fdb)
  store %struct.Memory* %433, %struct.Memory** %MEMORY
  %loadMem_491fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 9
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RSI.i387 = bitcast %union.anon* %439 to i64*
  %440 = load i64, i64* %PC.i386
  %441 = add i64 %440, 5
  store i64 %441, i64* %PC.i386
  store i64 12, i64* %RSI.i387, align 8
  store %struct.Memory* %loadMem_491fe0, %struct.Memory** %MEMORY
  %loadMem_491fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 33
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %444 to i64*
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 11
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %RDI.i384 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 15
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %450 to i64*
  %451 = load i64, i64* %RBP.i385
  %452 = sub i64 %451, 20
  %453 = load i64, i64* %PC.i383
  %454 = add i64 %453, 4
  store i64 %454, i64* %PC.i383
  store i64 %452, i64* %RDI.i384, align 8
  store %struct.Memory* %loadMem_491fe5, %struct.Memory** %MEMORY
  %loadMem_491fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 33
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 7
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RDX.i382 = bitcast %union.anon* %460 to i64*
  %461 = load i64, i64* %PC.i381
  %462 = add i64 %461, 8
  store i64 %462, i64* %PC.i381
  %463 = load i64, i64* bitcast (%G_0x99c090_type* @G_0x99c090 to i64*)
  store i64 %463, i64* %RDX.i382, align 8
  store %struct.Memory* %loadMem_491fe9, %struct.Memory** %MEMORY
  %loadMem_491ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %EAX.i379 = bitcast %union.anon* %469 to i32*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 15
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %472 to i64*
  %473 = load i64, i64* %RBP.i380
  %474 = sub i64 %473, 56
  %475 = load i32, i32* %EAX.i379
  %476 = zext i32 %475 to i64
  %477 = load i64, i64* %PC.i378
  %478 = add i64 %477, 3
  store i64 %478, i64* %PC.i378
  %479 = inttoptr i64 %474 to i32*
  store i32 %475, i32* %479
  store %struct.Memory* %loadMem_491ff1, %struct.Memory** %MEMORY
  %loadMem1_491ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 33
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %482 to i64*
  %483 = load i64, i64* %PC.i377
  %484 = add i64 %483, -593748
  %485 = load i64, i64* %PC.i377
  %486 = add i64 %485, 5
  %487 = load i64, i64* %PC.i377
  %488 = add i64 %487, 5
  store i64 %488, i64* %PC.i377
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = add i64 %490, -8
  %492 = inttoptr i64 %491 to i64*
  store i64 %486, i64* %492
  store i64 %491, i64* %489, align 8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %484, i64* %493, align 8
  store %struct.Memory* %loadMem1_491ff4, %struct.Memory** %MEMORY
  %loadMem2_491ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491ff4 = load i64, i64* %3
  %call2_491ff4 = call %struct.Memory* @sub_4010a0.fgets_plt(%struct.State* %0, i64 %loadPC_491ff4, %struct.Memory* %loadMem2_491ff4)
  store %struct.Memory* %call2_491ff4, %struct.Memory** %MEMORY
  %loadMem_491ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 33
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %RAX.i376
  %501 = load i64, i64* %PC.i375
  %502 = add i64 %501, 4
  store i64 %502, i64* %PC.i375
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %503, align 1
  %504 = trunc i64 %500 to i32
  %505 = and i32 %504, 255
  %506 = call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %509, i8* %510, align 1
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %511, align 1
  %512 = icmp eq i64 %500, 0
  %513 = zext i1 %512 to i8
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %513, i8* %514, align 1
  %515 = lshr i64 %500, 63
  %516 = trunc i64 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %516, i8* %517, align 1
  %518 = lshr i64 %500, 63
  %519 = xor i64 %515, %518
  %520 = add i64 %519, %518
  %521 = icmp eq i64 %520, 2
  %522 = zext i1 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %522, i8* %523, align 1
  store %struct.Memory* %loadMem_491ff9, %struct.Memory** %MEMORY
  %loadMem_491ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %526 to i64*
  %527 = load i64, i64* %PC.i374
  %528 = add i64 %527, 11
  %529 = load i64, i64* %PC.i374
  %530 = add i64 %529, 6
  %531 = load i64, i64* %PC.i374
  %532 = add i64 %531, 6
  store i64 %532, i64* %PC.i374
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %534 = load i8, i8* %533, align 1
  %535 = icmp eq i8 %534, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %BRANCH_TAKEN, align 1
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %538 = select i1 %535, i64 %528, i64 %530
  store i64 %538, i64* %537, align 8
  store %struct.Memory* %loadMem_491ffd, %struct.Memory** %MEMORY
  %loadBr_491ffd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491ffd = icmp eq i8 %loadBr_491ffd, 1
  br i1 %cmpBr_491ffd, label %block_.L_492008, label %block_492003

block_492003:                                     ; preds = %block_.L_491fa7
  %loadMem_492003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %PC.i373
  %543 = add i64 %542, 783
  %544 = load i64, i64* %PC.i373
  %545 = add i64 %544, 5
  store i64 %545, i64* %PC.i373
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %543, i64* %546, align 8
  store %struct.Memory* %loadMem_492003, %struct.Memory** %MEMORY
  br label %block_.L_492312

block_.L_492008:                                  ; preds = %block_.L_491fa7
  %loadMem_492008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 33
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 15
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %RBP.i372
  %554 = sub i64 %553, 28
  %555 = load i64, i64* %PC.i371
  %556 = add i64 %555, 7
  store i64 %556, i64* %PC.i371
  %557 = inttoptr i64 %554 to i32*
  store i32 0, i32* %557
  store %struct.Memory* %loadMem_492008, %struct.Memory** %MEMORY
  br label %block_.L_49200f

block_.L_49200f:                                  ; preds = %block_.L_492062, %block_.L_492008
  %loadMem_49200f = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 15
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %RBP.i370
  %565 = sub i64 %564, 28
  %566 = load i64, i64* %PC.i369
  %567 = add i64 %566, 4
  store i64 %567, i64* %PC.i369
  %568 = inttoptr i64 %565 to i32*
  %569 = load i32, i32* %568
  %570 = sub i32 %569, 12
  %571 = icmp ult i32 %569, 12
  %572 = zext i1 %571 to i8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %572, i8* %573, align 1
  %574 = and i32 %570, 255
  %575 = call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %578, i8* %579, align 1
  %580 = xor i32 %569, 12
  %581 = xor i32 %580, %570
  %582 = lshr i32 %581, 4
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %584, i8* %585, align 1
  %586 = icmp eq i32 %570, 0
  %587 = zext i1 %586 to i8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %587, i8* %588, align 1
  %589 = lshr i32 %570, 31
  %590 = trunc i32 %589 to i8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %590, i8* %591, align 1
  %592 = lshr i32 %569, 31
  %593 = xor i32 %589, %592
  %594 = add i32 %593, %592
  %595 = icmp eq i32 %594, 2
  %596 = zext i1 %595 to i8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %596, i8* %597, align 1
  store %struct.Memory* %loadMem_49200f, %struct.Memory** %MEMORY
  %loadMem_492013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 33
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %600 to i64*
  %601 = load i64, i64* %PC.i368
  %602 = add i64 %601, 106
  %603 = load i64, i64* %PC.i368
  %604 = add i64 %603, 6
  %605 = load i64, i64* %PC.i368
  %606 = add i64 %605, 6
  store i64 %606, i64* %PC.i368
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %608 = load i8, i8* %607, align 1
  %609 = icmp ne i8 %608, 0
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %611 = load i8, i8* %610, align 1
  %612 = icmp ne i8 %611, 0
  %613 = xor i1 %609, %612
  %614 = xor i1 %613, true
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %BRANCH_TAKEN, align 1
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %617 = select i1 %613, i64 %604, i64 %602
  store i64 %617, i64* %616, align 8
  store %struct.Memory* %loadMem_492013, %struct.Memory** %MEMORY
  %loadBr_492013 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492013 = icmp eq i8 %loadBr_492013, 1
  br i1 %cmpBr_492013, label %block_.L_49207d, label %block_492019

block_492019:                                     ; preds = %block_.L_49200f
  %loadMem1_492019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 33
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %620 to i64*
  %621 = load i64, i64* %PC.i367
  %622 = add i64 %621, -593433
  %623 = load i64, i64* %PC.i367
  %624 = add i64 %623, 5
  %625 = load i64, i64* %PC.i367
  %626 = add i64 %625, 5
  store i64 %626, i64* %PC.i367
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %628 = load i64, i64* %627, align 8
  %629 = add i64 %628, -8
  %630 = inttoptr i64 %629 to i64*
  store i64 %624, i64* %630
  store i64 %629, i64* %627, align 8
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %622, i64* %631, align 8
  store %struct.Memory* %loadMem1_492019, %struct.Memory** %MEMORY
  %loadMem2_492019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492019 = load i64, i64* %3
  %call2_492019 = call %struct.Memory* @sub_401200.__ctype_b_loc_plt(%struct.State* %0, i64 %loadPC_492019, %struct.Memory* %loadMem2_492019)
  store %struct.Memory* %call2_492019, %struct.Memory** %MEMORY
  %loadMem_49201e = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 1
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RAX.i366
  %639 = load i64, i64* %PC.i365
  %640 = add i64 %639, 3
  store i64 %640, i64* %PC.i365
  %641 = inttoptr i64 %638 to i64*
  %642 = load i64, i64* %641
  store i64 %642, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_49201e, %struct.Memory** %MEMORY
  %loadMem_492021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 5
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 15
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %651 to i64*
  %652 = load i64, i64* %RBP.i364
  %653 = sub i64 %652, 28
  %654 = load i64, i64* %PC.i362
  %655 = add i64 %654, 4
  store i64 %655, i64* %PC.i362
  %656 = inttoptr i64 %653 to i32*
  %657 = load i32, i32* %656
  %658 = sext i32 %657 to i64
  store i64 %658, i64* %RCX.i363, align 8
  store %struct.Memory* %loadMem_492021, %struct.Memory** %MEMORY
  %loadMem_492025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 33
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 5
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 7
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 15
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %670 to i64*
  %671 = load i64, i64* %RBP.i361
  %672 = load i64, i64* %RCX.i359
  %673 = add i64 %671, -20
  %674 = add i64 %673, %672
  %675 = load i64, i64* %PC.i358
  %676 = add i64 %675, 5
  store i64 %676, i64* %PC.i358
  %677 = inttoptr i64 %674 to i8*
  %678 = load i8, i8* %677
  %679 = sext i8 %678 to i64
  %680 = and i64 %679, 4294967295
  store i64 %680, i64* %RDX.i360, align 8
  store %struct.Memory* %loadMem_492025, %struct.Memory** %MEMORY
  %loadMem_49202a = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 7
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %EDX.i356 = bitcast %union.anon* %686 to i32*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 5
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %689 to i64*
  %690 = load i32, i32* %EDX.i356
  %691 = zext i32 %690 to i64
  %692 = load i64, i64* %PC.i355
  %693 = add i64 %692, 3
  store i64 %693, i64* %PC.i355
  %694 = shl i64 %691, 32
  %695 = ashr exact i64 %694, 32
  store i64 %695, i64* %RCX.i357, align 8
  store %struct.Memory* %loadMem_49202a, %struct.Memory** %MEMORY
  %loadMem_49202d = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 1
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 5
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 7
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %RDX.i354 = bitcast %union.anon* %707 to i64*
  %708 = load i64, i64* %RAX.i352
  %709 = load i64, i64* %RCX.i353
  %710 = mul i64 %709, 2
  %711 = add i64 %710, %708
  %712 = load i64, i64* %PC.i351
  %713 = add i64 %712, 4
  store i64 %713, i64* %PC.i351
  %714 = inttoptr i64 %711 to i16*
  %715 = load i16, i16* %714
  %716 = zext i16 %715 to i64
  store i64 %716, i64* %RDX.i354, align 8
  store %struct.Memory* %loadMem_49202d, %struct.Memory** %MEMORY
  %loadMem_492031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 7
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RDX.i350
  %724 = load i64, i64* %PC.i349
  %725 = add i64 %724, 6
  store i64 %725, i64* %PC.i349
  %726 = and i64 256, %723
  %727 = trunc i64 %726 to i32
  store i64 %726, i64* %RDX.i350, align 8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %728, align 1
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %729, align 1
  %730 = icmp eq i32 %727, 0
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %731, i8* %732, align 1
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %733, align 1
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %734, align 1
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %735, align 1
  store %struct.Memory* %loadMem_492031, %struct.Memory** %MEMORY
  %loadMem_492037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 7
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %741 to i32*
  %742 = load i32, i32* %EDX.i
  %743 = zext i32 %742 to i64
  %744 = load i64, i64* %PC.i348
  %745 = add i64 %744, 3
  store i64 %745, i64* %PC.i348
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %746, align 1
  %747 = and i32 %742, 255
  %748 = call i32 @llvm.ctpop.i32(i32 %747)
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  %751 = xor i8 %750, 1
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %751, i8* %752, align 1
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %753, align 1
  %754 = icmp eq i32 %742, 0
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %755, i8* %756, align 1
  %757 = lshr i32 %742, 31
  %758 = trunc i32 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %758, i8* %759, align 1
  %760 = lshr i32 %742, 31
  %761 = xor i32 %757, %760
  %762 = add i32 %761, %760
  %763 = icmp eq i32 %762, 2
  %764 = zext i1 %763 to i8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %764, i8* %765, align 1
  store %struct.Memory* %loadMem_492037, %struct.Memory** %MEMORY
  %loadMem_49203a = load %struct.Memory*, %struct.Memory** %MEMORY
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 33
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %768 to i64*
  %769 = load i64, i64* %PC.i347
  %770 = add i64 %769, 28
  %771 = load i64, i64* %PC.i347
  %772 = add i64 %771, 6
  %773 = load i64, i64* %PC.i347
  %774 = add i64 %773, 6
  store i64 %774, i64* %PC.i347
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %776 = load i8, i8* %775, align 1
  store i8 %776, i8* %BRANCH_TAKEN, align 1
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %778 = icmp ne i8 %776, 0
  %779 = select i1 %778, i64 %770, i64 %772
  store i64 %779, i64* %777, align 8
  store %struct.Memory* %loadMem_49203a, %struct.Memory** %MEMORY
  %loadBr_49203a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49203a = icmp eq i8 %loadBr_49203a, 1
  br i1 %cmpBr_49203a, label %block_.L_492056, label %block_492040

block_492040:                                     ; preds = %block_492019
  %loadMem_492040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 33
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %782 to i64*
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 1
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 15
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %788 to i64*
  %789 = load i64, i64* %RBP.i346
  %790 = sub i64 %789, 28
  %791 = load i64, i64* %PC.i344
  %792 = add i64 %791, 4
  store i64 %792, i64* %PC.i344
  %793 = inttoptr i64 %790 to i32*
  %794 = load i32, i32* %793
  %795 = sext i32 %794 to i64
  store i64 %795, i64* %RAX.i345, align 8
  store %struct.Memory* %loadMem_492040, %struct.Memory** %MEMORY
  %loadMem_492044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 1
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 11
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RDI.i342 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 15
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %807 to i64*
  %808 = load i64, i64* %RBP.i343
  %809 = load i64, i64* %RAX.i341
  %810 = add i64 %808, -20
  %811 = add i64 %810, %809
  %812 = load i64, i64* %PC.i340
  %813 = add i64 %812, 5
  store i64 %813, i64* %PC.i340
  %814 = inttoptr i64 %811 to i8*
  %815 = load i8, i8* %814
  %816 = sext i8 %815 to i64
  %817 = and i64 %816, 4294967295
  store i64 %817, i64* %RDI.i342, align 8
  store %struct.Memory* %loadMem_492044, %struct.Memory** %MEMORY
  %loadMem1_492049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %PC.i339
  %822 = add i64 %821, -593737
  %823 = load i64, i64* %PC.i339
  %824 = add i64 %823, 5
  %825 = load i64, i64* %PC.i339
  %826 = add i64 %825, 5
  store i64 %826, i64* %PC.i339
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %828 = load i64, i64* %827, align 8
  %829 = add i64 %828, -8
  %830 = inttoptr i64 %829 to i64*
  store i64 %824, i64* %830
  store i64 %829, i64* %827, align 8
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %822, i64* %831, align 8
  store %struct.Memory* %loadMem1_492049, %struct.Memory** %MEMORY
  %loadMem2_492049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492049 = load i64, i64* %3
  %call2_492049 = call %struct.Memory* @sub_401100.tolower_plt(%struct.State* %0, i64 %loadPC_492049, %struct.Memory* %loadMem2_492049)
  store %struct.Memory* %call2_492049, %struct.Memory** %MEMORY
  %loadMem_49204e = load %struct.Memory*, %struct.Memory** %MEMORY
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 33
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 1
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %EAX.i337 = bitcast %union.anon* %837 to i32*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 15
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %840 to i64*
  %841 = load i64, i64* %RBP.i338
  %842 = sub i64 %841, 60
  %843 = load i32, i32* %EAX.i337
  %844 = zext i32 %843 to i64
  %845 = load i64, i64* %PC.i336
  %846 = add i64 %845, 3
  store i64 %846, i64* %PC.i336
  %847 = inttoptr i64 %842 to i32*
  store i32 %843, i32* %847
  store %struct.Memory* %loadMem_49204e, %struct.Memory** %MEMORY
  %loadMem_492051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %850 to i64*
  %851 = load i64, i64* %PC.i335
  %852 = add i64 %851, 17
  %853 = load i64, i64* %PC.i335
  %854 = add i64 %853, 5
  store i64 %854, i64* %PC.i335
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %852, i64* %855, align 8
  store %struct.Memory* %loadMem_492051, %struct.Memory** %MEMORY
  br label %block_.L_492062

block_.L_492056:                                  ; preds = %block_492019
  %loadMem_492056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 1
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 15
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %864 to i64*
  %865 = load i64, i64* %RBP.i334
  %866 = sub i64 %865, 28
  %867 = load i64, i64* %PC.i332
  %868 = add i64 %867, 4
  store i64 %868, i64* %PC.i332
  %869 = inttoptr i64 %866 to i32*
  %870 = load i32, i32* %869
  %871 = sext i32 %870 to i64
  store i64 %871, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_492056, %struct.Memory** %MEMORY
  %loadMem_49205a = load %struct.Memory*, %struct.Memory** %MEMORY
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 33
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 1
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 5
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 15
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %883 to i64*
  %884 = load i64, i64* %RBP.i331
  %885 = load i64, i64* %RAX.i329
  %886 = add i64 %884, -20
  %887 = add i64 %886, %885
  %888 = load i64, i64* %PC.i328
  %889 = add i64 %888, 5
  store i64 %889, i64* %PC.i328
  %890 = inttoptr i64 %887 to i8*
  %891 = load i8, i8* %890
  %892 = sext i8 %891 to i64
  %893 = and i64 %892, 4294967295
  store i64 %893, i64* %RCX.i330, align 8
  store %struct.Memory* %loadMem_49205a, %struct.Memory** %MEMORY
  %loadMem_49205f = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 5
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %ECX.i326 = bitcast %union.anon* %899 to i32*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 15
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %RBP.i327
  %904 = sub i64 %903, 60
  %905 = load i32, i32* %ECX.i326
  %906 = zext i32 %905 to i64
  %907 = load i64, i64* %PC.i325
  %908 = add i64 %907, 3
  store i64 %908, i64* %PC.i325
  %909 = inttoptr i64 %904 to i32*
  store i32 %905, i32* %909
  store %struct.Memory* %loadMem_49205f, %struct.Memory** %MEMORY
  br label %block_.L_492062

block_.L_492062:                                  ; preds = %block_.L_492056, %block_492040
  %loadMem_492062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 1
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 15
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %RBP.i324
  %920 = sub i64 %919, 60
  %921 = load i64, i64* %PC.i322
  %922 = add i64 %921, 3
  store i64 %922, i64* %PC.i322
  %923 = inttoptr i64 %920 to i32*
  %924 = load i32, i32* %923
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_492062, %struct.Memory** %MEMORY
  %loadMem_492065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 1
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %932 = bitcast %union.anon* %931 to %struct.anon.2*
  %AL.i320 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %932, i32 0, i32 0
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 5
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %936 = bitcast %union.anon* %935 to %struct.anon.2*
  %CL.i321 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %936, i32 0, i32 0
  %937 = load i8, i8* %AL.i320
  %938 = zext i8 %937 to i64
  %939 = load i64, i64* %PC.i319
  %940 = add i64 %939, 2
  store i64 %940, i64* %PC.i319
  store i8 %937, i8* %CL.i321, align 1
  store %struct.Memory* %loadMem_492065, %struct.Memory** %MEMORY
  %loadMem_492067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 33
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %943 to i64*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 7
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %RDX.i317 = bitcast %union.anon* %946 to i64*
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 15
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %949 to i64*
  %950 = load i64, i64* %RBP.i318
  %951 = sub i64 %950, 28
  %952 = load i64, i64* %PC.i316
  %953 = add i64 %952, 4
  store i64 %953, i64* %PC.i316
  %954 = inttoptr i64 %951 to i32*
  %955 = load i32, i32* %954
  %956 = sext i32 %955 to i64
  store i64 %956, i64* %RDX.i317, align 8
  store %struct.Memory* %loadMem_492067, %struct.Memory** %MEMORY
  %loadMem_49206b = load %struct.Memory*, %struct.Memory** %MEMORY
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 33
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 5
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %963 = bitcast %union.anon* %962 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %963, i32 0, i32 0
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 7
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %966 to i64*
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 15
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %969 to i64*
  %970 = load i64, i64* %RBP.i315
  %971 = load i64, i64* %RDX.i314
  %972 = add i64 %970, -20
  %973 = add i64 %972, %971
  %974 = load i8, i8* %CL.i
  %975 = zext i8 %974 to i64
  %976 = load i64, i64* %PC.i313
  %977 = add i64 %976, 4
  store i64 %977, i64* %PC.i313
  %978 = inttoptr i64 %973 to i8*
  store i8 %974, i8* %978
  store %struct.Memory* %loadMem_49206b, %struct.Memory** %MEMORY
  %loadMem_49206f = load %struct.Memory*, %struct.Memory** %MEMORY
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 33
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 1
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %984 to i64*
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 15
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %987 to i64*
  %988 = load i64, i64* %RBP.i312
  %989 = sub i64 %988, 28
  %990 = load i64, i64* %PC.i310
  %991 = add i64 %990, 3
  store i64 %991, i64* %PC.i310
  %992 = inttoptr i64 %989 to i32*
  %993 = load i32, i32* %992
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RAX.i311, align 8
  store %struct.Memory* %loadMem_49206f, %struct.Memory** %MEMORY
  %loadMem_492072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 1
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %RAX.i309
  %1002 = load i64, i64* %PC.i308
  %1003 = add i64 %1002, 3
  store i64 %1003, i64* %PC.i308
  %1004 = trunc i64 %1001 to i32
  %1005 = add i32 1, %1004
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RAX.i309, align 8
  %1007 = icmp ult i32 %1005, %1004
  %1008 = icmp ult i32 %1005, 1
  %1009 = or i1 %1007, %1008
  %1010 = zext i1 %1009 to i8
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1010, i8* %1011, align 1
  %1012 = and i32 %1005, 255
  %1013 = call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1016, i8* %1017, align 1
  %1018 = xor i64 1, %1001
  %1019 = trunc i64 %1018 to i32
  %1020 = xor i32 %1019, %1005
  %1021 = lshr i32 %1020, 4
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1023, i8* %1024, align 1
  %1025 = icmp eq i32 %1005, 0
  %1026 = zext i1 %1025 to i8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1026, i8* %1027, align 1
  %1028 = lshr i32 %1005, 31
  %1029 = trunc i32 %1028 to i8
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1029, i8* %1030, align 1
  %1031 = lshr i32 %1004, 31
  %1032 = xor i32 %1028, %1031
  %1033 = add i32 %1032, %1028
  %1034 = icmp eq i32 %1033, 2
  %1035 = zext i1 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1035, i8* %1036, align 1
  store %struct.Memory* %loadMem_492072, %struct.Memory** %MEMORY
  %loadMem_492075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 33
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 1
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %EAX.i306 = bitcast %union.anon* %1042 to i32*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 15
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %1045 to i64*
  %1046 = load i64, i64* %RBP.i307
  %1047 = sub i64 %1046, 28
  %1048 = load i32, i32* %EAX.i306
  %1049 = zext i32 %1048 to i64
  %1050 = load i64, i64* %PC.i305
  %1051 = add i64 %1050, 3
  store i64 %1051, i64* %PC.i305
  %1052 = inttoptr i64 %1047 to i32*
  store i32 %1048, i32* %1052
  store %struct.Memory* %loadMem_492075, %struct.Memory** %MEMORY
  %loadMem_492078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1055 to i64*
  %1056 = load i64, i64* %PC.i304
  %1057 = add i64 %1056, -105
  %1058 = load i64, i64* %PC.i304
  %1059 = add i64 %1058, 5
  store i64 %1059, i64* %PC.i304
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1057, i64* %1060, align 8
  store %struct.Memory* %loadMem_492078, %struct.Memory** %MEMORY
  br label %block_.L_49200f

block_.L_49207d:                                  ; preds = %block_.L_49200f
  %loadMem_49207d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 9
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RSI.i303 = bitcast %union.anon* %1066 to i64*
  %1067 = load i64, i64* %PC.i302
  %1068 = add i64 %1067, 10
  store i64 %1068, i64* %PC.i302
  store i64 ptrtoint (%G__0x585d0e_type* @G__0x585d0e to i64), i64* %RSI.i303, align 8
  store %struct.Memory* %loadMem_49207d, %struct.Memory** %MEMORY
  %loadMem_492087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 33
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1071 to i64*
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 1
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %1074 to i64*
  %1075 = load i64, i64* %PC.i300
  %1076 = add i64 %1075, 5
  store i64 %1076, i64* %PC.i300
  store i64 4, i64* %RAX.i301, align 8
  store %struct.Memory* %loadMem_492087, %struct.Memory** %MEMORY
  %loadMem_49208c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 33
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 1
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %EAX.i298 = bitcast %union.anon* %1082 to i32*
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 7
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %1085 to i64*
  %1086 = load i32, i32* %EAX.i298
  %1087 = zext i32 %1086 to i64
  %1088 = load i64, i64* %PC.i297
  %1089 = add i64 %1088, 2
  store i64 %1089, i64* %PC.i297
  %1090 = and i64 %1087, 4294967295
  store i64 %1090, i64* %RDX.i299, align 8
  store %struct.Memory* %loadMem_49208c, %struct.Memory** %MEMORY
  %loadMem_49208e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 11
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RDI.i295 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 15
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %1099 to i64*
  %1100 = load i64, i64* %RBP.i296
  %1101 = sub i64 %1100, 20
  %1102 = load i64, i64* %PC.i294
  %1103 = add i64 %1102, 4
  store i64 %1103, i64* %PC.i294
  store i64 %1101, i64* %RDI.i295, align 8
  store %struct.Memory* %loadMem_49208e, %struct.Memory** %MEMORY
  %loadMem1_492092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1106 to i64*
  %1107 = load i64, i64* %PC.i293
  %1108 = add i64 %1107, -594146
  %1109 = load i64, i64* %PC.i293
  %1110 = add i64 %1109, 5
  %1111 = load i64, i64* %PC.i293
  %1112 = add i64 %1111, 5
  store i64 %1112, i64* %PC.i293
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1114 = load i64, i64* %1113, align 8
  %1115 = add i64 %1114, -8
  %1116 = inttoptr i64 %1115 to i64*
  store i64 %1110, i64* %1116
  store i64 %1115, i64* %1113, align 8
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1108, i64* %1117, align 8
  store %struct.Memory* %loadMem1_492092, %struct.Memory** %MEMORY
  %loadMem2_492092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492092 = load i64, i64* %3
  %1118 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_492092)
  store %struct.Memory* %1118, %struct.Memory** %MEMORY
  %loadMem_492097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 1
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %EAX.i291 = bitcast %union.anon* %1124 to i32*
  %1125 = load i32, i32* %EAX.i291
  %1126 = zext i32 %1125 to i64
  %1127 = load i64, i64* %PC.i290
  %1128 = add i64 %1127, 3
  store i64 %1128, i64* %PC.i290
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1129, align 1
  %1130 = and i32 %1125, 255
  %1131 = call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1134, i8* %1135, align 1
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1136, align 1
  %1137 = icmp eq i32 %1125, 0
  %1138 = zext i1 %1137 to i8
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1138, i8* %1139, align 1
  %1140 = lshr i32 %1125, 31
  %1141 = trunc i32 %1140 to i8
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1141, i8* %1142, align 1
  %1143 = lshr i32 %1125, 31
  %1144 = xor i32 %1140, %1143
  %1145 = add i32 %1144, %1143
  %1146 = icmp eq i32 %1145, 2
  %1147 = zext i1 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1147, i8* %1148, align 1
  store %struct.Memory* %loadMem_492097, %struct.Memory** %MEMORY
  %loadMem_49209a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %1151 to i64*
  %1152 = load i64, i64* %PC.i289
  %1153 = add i64 %1152, 18
  %1154 = load i64, i64* %PC.i289
  %1155 = add i64 %1154, 6
  %1156 = load i64, i64* %PC.i289
  %1157 = add i64 %1156, 6
  store i64 %1157, i64* %PC.i289
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1159 = load i8, i8* %1158, align 1
  %1160 = icmp eq i8 %1159, 0
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %BRANCH_TAKEN, align 1
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1163 = select i1 %1160, i64 %1153, i64 %1155
  store i64 %1163, i64* %1162, align 8
  store %struct.Memory* %loadMem_49209a, %struct.Memory** %MEMORY
  %loadBr_49209a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49209a = icmp eq i8 %loadBr_49209a, 1
  br i1 %cmpBr_49209a, label %block_.L_4920ac, label %block_4920a0

block_4920a0:                                     ; preds = %block_.L_49207d
  %loadMem_4920a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 15
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %RBP.i288
  %1171 = sub i64 %1170, 24
  %1172 = load i64, i64* %PC.i287
  %1173 = add i64 %1172, 7
  store i64 %1173, i64* %PC.i287
  %1174 = inttoptr i64 %1171 to i32*
  store i32 1, i32* %1174
  store %struct.Memory* %loadMem_4920a0, %struct.Memory** %MEMORY
  %loadMem_4920a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1177 to i64*
  %1178 = load i64, i64* %PC.i286
  %1179 = add i64 %1178, 594
  %1180 = load i64, i64* %PC.i286
  %1181 = add i64 %1180, 5
  store i64 %1181, i64* %PC.i286
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1179, i64* %1182, align 8
  store %struct.Memory* %loadMem_4920a7, %struct.Memory** %MEMORY
  br label %block_.L_4922f9

block_.L_4920ac:                                  ; preds = %block_.L_49207d
  %loadMem_4920ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 33
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1185 to i64*
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 9
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %RSI.i285 = bitcast %union.anon* %1188 to i64*
  %1189 = load i64, i64* %PC.i284
  %1190 = add i64 %1189, 10
  store i64 %1190, i64* %PC.i284
  store i64 ptrtoint (%G__0x585f74_type* @G__0x585f74 to i64), i64* %RSI.i285, align 8
  store %struct.Memory* %loadMem_4920ac, %struct.Memory** %MEMORY
  %loadMem_4920b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 33
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 1
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %1196 to i64*
  %1197 = load i64, i64* %PC.i282
  %1198 = add i64 %1197, 5
  store i64 %1198, i64* %PC.i282
  store i64 4, i64* %RAX.i283, align 8
  store %struct.Memory* %loadMem_4920b6, %struct.Memory** %MEMORY
  %loadMem_4920bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 1
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %EAX.i280 = bitcast %union.anon* %1204 to i32*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 7
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %1207 to i64*
  %1208 = load i32, i32* %EAX.i280
  %1209 = zext i32 %1208 to i64
  %1210 = load i64, i64* %PC.i279
  %1211 = add i64 %1210, 2
  store i64 %1211, i64* %PC.i279
  %1212 = and i64 %1209, 4294967295
  store i64 %1212, i64* %RDX.i281, align 8
  store %struct.Memory* %loadMem_4920bb, %struct.Memory** %MEMORY
  %loadMem_4920bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 33
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %1215 to i64*
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 11
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %RDI.i277 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 15
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %1221 to i64*
  %1222 = load i64, i64* %RBP.i278
  %1223 = sub i64 %1222, 20
  %1224 = load i64, i64* %PC.i276
  %1225 = add i64 %1224, 4
  store i64 %1225, i64* %PC.i276
  store i64 %1223, i64* %RDI.i277, align 8
  store %struct.Memory* %loadMem_4920bd, %struct.Memory** %MEMORY
  %loadMem1_4920c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 33
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1228 to i64*
  %1229 = load i64, i64* %PC.i275
  %1230 = add i64 %1229, -594193
  %1231 = load i64, i64* %PC.i275
  %1232 = add i64 %1231, 5
  %1233 = load i64, i64* %PC.i275
  %1234 = add i64 %1233, 5
  store i64 %1234, i64* %PC.i275
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1236 = load i64, i64* %1235, align 8
  %1237 = add i64 %1236, -8
  %1238 = inttoptr i64 %1237 to i64*
  store i64 %1232, i64* %1238
  store i64 %1237, i64* %1235, align 8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1230, i64* %1239, align 8
  store %struct.Memory* %loadMem1_4920c1, %struct.Memory** %MEMORY
  %loadMem2_4920c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4920c1 = load i64, i64* %3
  %1240 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_4920c1)
  store %struct.Memory* %1240, %struct.Memory** %MEMORY
  %loadMem_4920c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 33
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 1
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %EAX.i272 = bitcast %union.anon* %1246 to i32*
  %1247 = load i32, i32* %EAX.i272
  %1248 = zext i32 %1247 to i64
  %1249 = load i64, i64* %PC.i271
  %1250 = add i64 %1249, 3
  store i64 %1250, i64* %PC.i271
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1251, align 1
  %1252 = and i32 %1247, 255
  %1253 = call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1256, i8* %1257, align 1
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1258, align 1
  %1259 = icmp eq i32 %1247, 0
  %1260 = zext i1 %1259 to i8
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1260, i8* %1261, align 1
  %1262 = lshr i32 %1247, 31
  %1263 = trunc i32 %1262 to i8
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1263, i8* %1264, align 1
  %1265 = lshr i32 %1247, 31
  %1266 = xor i32 %1262, %1265
  %1267 = add i32 %1266, %1265
  %1268 = icmp eq i32 %1267, 2
  %1269 = zext i1 %1268 to i8
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1269, i8* %1270, align 1
  store %struct.Memory* %loadMem_4920c6, %struct.Memory** %MEMORY
  %loadMem_4920c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %PC.i270
  %1275 = add i64 %1274, 11
  %1276 = load i64, i64* %PC.i270
  %1277 = add i64 %1276, 6
  %1278 = load i64, i64* %PC.i270
  %1279 = add i64 %1278, 6
  store i64 %1279, i64* %PC.i270
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1281 = load i8, i8* %1280, align 1
  %1282 = icmp eq i8 %1281, 0
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %BRANCH_TAKEN, align 1
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1285 = select i1 %1282, i64 %1275, i64 %1277
  store i64 %1285, i64* %1284, align 8
  store %struct.Memory* %loadMem_4920c9, %struct.Memory** %MEMORY
  %loadBr_4920c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4920c9 = icmp eq i8 %loadBr_4920c9, 1
  br i1 %cmpBr_4920c9, label %block_.L_4920d4, label %block_4920cf

block_4920cf:                                     ; preds = %block_.L_4920ac
  %loadMem_4920cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %PC.i269
  %1290 = add i64 %1289, 579
  %1291 = load i64, i64* %PC.i269
  %1292 = add i64 %1291, 5
  store i64 %1292, i64* %PC.i269
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1290, i64* %1293, align 8
  store %struct.Memory* %loadMem_4920cf, %struct.Memory** %MEMORY
  br label %block_.L_492312

block_.L_4920d4:                                  ; preds = %block_.L_4920ac
  %loadMem_4920d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 9
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RSI.i268 = bitcast %union.anon* %1299 to i64*
  %1300 = load i64, i64* %PC.i267
  %1301 = add i64 %1300, 10
  store i64 %1301, i64* %PC.i267
  store i64 ptrtoint (%G__0x585f79_type* @G__0x585f79 to i64), i64* %RSI.i268, align 8
  store %struct.Memory* %loadMem_4920d4, %struct.Memory** %MEMORY
  %loadMem_4920de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 33
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1304 to i64*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 1
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %1307 to i64*
  %1308 = load i64, i64* %PC.i265
  %1309 = add i64 %1308, 5
  store i64 %1309, i64* %PC.i265
  store i64 5, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_4920de, %struct.Memory** %MEMORY
  %loadMem_4920e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 1
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %EAX.i263 = bitcast %union.anon* %1315 to i32*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 7
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %RDX.i264 = bitcast %union.anon* %1318 to i64*
  %1319 = load i32, i32* %EAX.i263
  %1320 = zext i32 %1319 to i64
  %1321 = load i64, i64* %PC.i262
  %1322 = add i64 %1321, 2
  store i64 %1322, i64* %PC.i262
  %1323 = and i64 %1320, 4294967295
  store i64 %1323, i64* %RDX.i264, align 8
  store %struct.Memory* %loadMem_4920e3, %struct.Memory** %MEMORY
  %loadMem_4920e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 11
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RDI.i260 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 15
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1332 to i64*
  %1333 = load i64, i64* %RBP.i261
  %1334 = sub i64 %1333, 20
  %1335 = load i64, i64* %PC.i259
  %1336 = add i64 %1335, 4
  store i64 %1336, i64* %PC.i259
  store i64 %1334, i64* %RDI.i260, align 8
  store %struct.Memory* %loadMem_4920e5, %struct.Memory** %MEMORY
  %loadMem1_4920e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 33
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1339 to i64*
  %1340 = load i64, i64* %PC.i258
  %1341 = add i64 %1340, -594233
  %1342 = load i64, i64* %PC.i258
  %1343 = add i64 %1342, 5
  %1344 = load i64, i64* %PC.i258
  %1345 = add i64 %1344, 5
  store i64 %1345, i64* %PC.i258
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1347 = load i64, i64* %1346, align 8
  %1348 = add i64 %1347, -8
  %1349 = inttoptr i64 %1348 to i64*
  store i64 %1343, i64* %1349
  store i64 %1348, i64* %1346, align 8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1341, i64* %1350, align 8
  store %struct.Memory* %loadMem1_4920e9, %struct.Memory** %MEMORY
  %loadMem2_4920e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4920e9 = load i64, i64* %3
  %1351 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_4920e9)
  store %struct.Memory* %1351, %struct.Memory** %MEMORY
  %loadMem_4920ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 1
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %EAX.i255 = bitcast %union.anon* %1357 to i32*
  %1358 = load i32, i32* %EAX.i255
  %1359 = zext i32 %1358 to i64
  %1360 = load i64, i64* %PC.i254
  %1361 = add i64 %1360, 3
  store i64 %1361, i64* %PC.i254
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1362, align 1
  %1363 = and i32 %1358, 255
  %1364 = call i32 @llvm.ctpop.i32(i32 %1363)
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  %1367 = xor i8 %1366, 1
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1367, i8* %1368, align 1
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1369, align 1
  %1370 = icmp eq i32 %1358, 0
  %1371 = zext i1 %1370 to i8
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1371, i8* %1372, align 1
  %1373 = lshr i32 %1358, 31
  %1374 = trunc i32 %1373 to i8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1374, i8* %1375, align 1
  %1376 = lshr i32 %1358, 31
  %1377 = xor i32 %1373, %1376
  %1378 = add i32 %1377, %1376
  %1379 = icmp eq i32 %1378, 2
  %1380 = zext i1 %1379 to i8
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1380, i8* %1381, align 1
  store %struct.Memory* %loadMem_4920ee, %struct.Memory** %MEMORY
  %loadMem_4920f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1384 to i64*
  %1385 = load i64, i64* %PC.i253
  %1386 = add i64 %1385, 160
  %1387 = load i64, i64* %PC.i253
  %1388 = add i64 %1387, 6
  %1389 = load i64, i64* %PC.i253
  %1390 = add i64 %1389, 6
  store i64 %1390, i64* %PC.i253
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1392 = load i8, i8* %1391, align 1
  %1393 = icmp eq i8 %1392, 0
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %BRANCH_TAKEN, align 1
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1396 = select i1 %1393, i64 %1386, i64 %1388
  store i64 %1396, i64* %1395, align 8
  store %struct.Memory* %loadMem_4920f1, %struct.Memory** %MEMORY
  %loadBr_4920f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4920f1 = icmp eq i8 %loadBr_4920f1, 1
  br i1 %cmpBr_4920f1, label %block_.L_492191, label %block_4920f7

block_4920f7:                                     ; preds = %block_.L_4920d4
  %loadMem_4920f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 15
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %1402 to i64*
  %1403 = load i64, i64* %RBP.i252
  %1404 = sub i64 %1403, 36
  %1405 = load i64, i64* %PC.i251
  %1406 = add i64 %1405, 4
  store i64 %1406, i64* %PC.i251
  %1407 = inttoptr i64 %1404 to i32*
  %1408 = load i32, i32* %1407
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1409, align 1
  %1410 = and i32 %1408, 255
  %1411 = call i32 @llvm.ctpop.i32(i32 %1410)
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = xor i8 %1413, 1
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1414, i8* %1415, align 1
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1416, align 1
  %1417 = icmp eq i32 %1408, 0
  %1418 = zext i1 %1417 to i8
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1418, i8* %1419, align 1
  %1420 = lshr i32 %1408, 31
  %1421 = trunc i32 %1420 to i8
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1421, i8* %1422, align 1
  %1423 = lshr i32 %1408, 31
  %1424 = xor i32 %1420, %1423
  %1425 = add i32 %1424, %1423
  %1426 = icmp eq i32 %1425, 2
  %1427 = zext i1 %1426 to i8
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1427, i8* %1428, align 1
  store %struct.Memory* %loadMem_4920f7, %struct.Memory** %MEMORY
  %loadMem_4920fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1431 to i64*
  %1432 = load i64, i64* %PC.i250
  %1433 = add i64 %1432, 118
  %1434 = load i64, i64* %PC.i250
  %1435 = add i64 %1434, 6
  %1436 = load i64, i64* %PC.i250
  %1437 = add i64 %1436, 6
  store i64 %1437, i64* %PC.i250
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1439 = load i8, i8* %1438, align 1
  store i8 %1439, i8* %BRANCH_TAKEN, align 1
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1441 = icmp ne i8 %1439, 0
  %1442 = select i1 %1441, i64 %1433, i64 %1435
  store i64 %1442, i64* %1440, align 8
  store %struct.Memory* %loadMem_4920fb, %struct.Memory** %MEMORY
  %loadBr_4920fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4920fb = icmp eq i8 %loadBr_4920fb, 1
  br i1 %cmpBr_4920fb, label %block_.L_492171, label %block_492101

block_492101:                                     ; preds = %block_4920f7
  %loadMem_492101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 33
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 11
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RDI.i249 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %PC.i248
  %1450 = add i64 %1449, 10
  store i64 %1450, i64* %PC.i248
  store i64 ptrtoint (%G__0x585f7f_type* @G__0x585f7f to i64), i64* %RDI.i249, align 8
  store %struct.Memory* %loadMem_492101, %struct.Memory** %MEMORY
  %loadMem_49210b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 1
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %1457 = bitcast %union.anon* %1456 to %struct.anon.2*
  %AL.i247 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1457, i32 0, i32 0
  %1458 = load i64, i64* %PC.i246
  %1459 = add i64 %1458, 2
  store i64 %1459, i64* %PC.i246
  store i8 0, i8* %AL.i247, align 1
  store %struct.Memory* %loadMem_49210b, %struct.Memory** %MEMORY
  %loadMem1_49210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 33
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %PC.i245
  %1464 = add i64 %1463, -594125
  %1465 = load i64, i64* %PC.i245
  %1466 = add i64 %1465, 5
  %1467 = load i64, i64* %PC.i245
  %1468 = add i64 %1467, 5
  store i64 %1468, i64* %PC.i245
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1470 = load i64, i64* %1469, align 8
  %1471 = add i64 %1470, -8
  %1472 = inttoptr i64 %1471 to i64*
  store i64 %1466, i64* %1472
  store i64 %1471, i64* %1469, align 8
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1464, i64* %1473, align 8
  store %struct.Memory* %loadMem1_49210d, %struct.Memory** %MEMORY
  %loadMem2_49210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49210d = load i64, i64* %3
  %1474 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_49210d)
  store %struct.Memory* %1474, %struct.Memory** %MEMORY
  %loadMem_492112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 33
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 11
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RDI.i242 = bitcast %union.anon* %1480 to i64*
  %1481 = load i64, i64* %PC.i241
  %1482 = add i64 %1481, 10
  store i64 %1482, i64* %PC.i241
  store i64 ptrtoint (%G__0x585fbf_type* @G__0x585fbf to i64), i64* %RDI.i242, align 8
  store %struct.Memory* %loadMem_492112, %struct.Memory** %MEMORY
  %loadMem_49211c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 1
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %EAX.i239 = bitcast %union.anon* %1488 to i32*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 15
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %RBP.i240
  %1493 = sub i64 %1492, 64
  %1494 = load i32, i32* %EAX.i239
  %1495 = zext i32 %1494 to i64
  %1496 = load i64, i64* %PC.i238
  %1497 = add i64 %1496, 3
  store i64 %1497, i64* %PC.i238
  %1498 = inttoptr i64 %1493 to i32*
  store i32 %1494, i32* %1498
  store %struct.Memory* %loadMem_49211c, %struct.Memory** %MEMORY
  %loadMem_49211f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 33
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 1
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %1505 = bitcast %union.anon* %1504 to %struct.anon.2*
  %AL.i237 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1505, i32 0, i32 0
  %1506 = load i64, i64* %PC.i236
  %1507 = add i64 %1506, 2
  store i64 %1507, i64* %PC.i236
  store i8 0, i8* %AL.i237, align 1
  store %struct.Memory* %loadMem_49211f, %struct.Memory** %MEMORY
  %loadMem1_492121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 33
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1510 to i64*
  %1511 = load i64, i64* %PC.i235
  %1512 = add i64 %1511, -594145
  %1513 = load i64, i64* %PC.i235
  %1514 = add i64 %1513, 5
  %1515 = load i64, i64* %PC.i235
  %1516 = add i64 %1515, 5
  store i64 %1516, i64* %PC.i235
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1518 = load i64, i64* %1517, align 8
  %1519 = add i64 %1518, -8
  %1520 = inttoptr i64 %1519 to i64*
  store i64 %1514, i64* %1520
  store i64 %1519, i64* %1517, align 8
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1512, i64* %1521, align 8
  store %struct.Memory* %loadMem1_492121, %struct.Memory** %MEMORY
  %loadMem2_492121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492121 = load i64, i64* %3
  %1522 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_492121)
  store %struct.Memory* %1522, %struct.Memory** %MEMORY
  %loadMem_492126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 11
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RDI.i232 = bitcast %union.anon* %1528 to i64*
  %1529 = load i64, i64* %PC.i231
  %1530 = add i64 %1529, 10
  store i64 %1530, i64* %PC.i231
  store i64 ptrtoint (%G__0x585ffa_type* @G__0x585ffa to i64), i64* %RDI.i232, align 8
  store %struct.Memory* %loadMem_492126, %struct.Memory** %MEMORY
  %loadMem_492130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 1
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %EAX.i229 = bitcast %union.anon* %1536 to i32*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 15
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %1539 to i64*
  %1540 = load i64, i64* %RBP.i230
  %1541 = sub i64 %1540, 68
  %1542 = load i32, i32* %EAX.i229
  %1543 = zext i32 %1542 to i64
  %1544 = load i64, i64* %PC.i228
  %1545 = add i64 %1544, 3
  store i64 %1545, i64* %PC.i228
  %1546 = inttoptr i64 %1541 to i32*
  store i32 %1542, i32* %1546
  store %struct.Memory* %loadMem_492130, %struct.Memory** %MEMORY
  %loadMem_492133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 33
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 1
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %1553 = bitcast %union.anon* %1552 to %struct.anon.2*
  %AL.i227 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1553, i32 0, i32 0
  %1554 = load i64, i64* %PC.i226
  %1555 = add i64 %1554, 2
  store i64 %1555, i64* %PC.i226
  store i8 0, i8* %AL.i227, align 1
  store %struct.Memory* %loadMem_492133, %struct.Memory** %MEMORY
  %loadMem1_492135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1558 to i64*
  %1559 = load i64, i64* %PC.i225
  %1560 = add i64 %1559, -594165
  %1561 = load i64, i64* %PC.i225
  %1562 = add i64 %1561, 5
  %1563 = load i64, i64* %PC.i225
  %1564 = add i64 %1563, 5
  store i64 %1564, i64* %PC.i225
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1566 = load i64, i64* %1565, align 8
  %1567 = add i64 %1566, -8
  %1568 = inttoptr i64 %1567 to i64*
  store i64 %1562, i64* %1568
  store i64 %1567, i64* %1565, align 8
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1560, i64* %1569, align 8
  store %struct.Memory* %loadMem1_492135, %struct.Memory** %MEMORY
  %loadMem2_492135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492135 = load i64, i64* %3
  %1570 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_492135)
  store %struct.Memory* %1570, %struct.Memory** %MEMORY
  %loadMem_49213a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 11
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RDI.i223 = bitcast %union.anon* %1576 to i64*
  %1577 = load i64, i64* %PC.i222
  %1578 = add i64 %1577, 10
  store i64 %1578, i64* %PC.i222
  store i64 ptrtoint (%G__0x586031_type* @G__0x586031 to i64), i64* %RDI.i223, align 8
  store %struct.Memory* %loadMem_49213a, %struct.Memory** %MEMORY
  %loadMem_492144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 33
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 1
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %EAX.i220 = bitcast %union.anon* %1584 to i32*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 15
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %1587 to i64*
  %1588 = load i64, i64* %RBP.i221
  %1589 = sub i64 %1588, 72
  %1590 = load i32, i32* %EAX.i220
  %1591 = zext i32 %1590 to i64
  %1592 = load i64, i64* %PC.i219
  %1593 = add i64 %1592, 3
  store i64 %1593, i64* %PC.i219
  %1594 = inttoptr i64 %1589 to i32*
  store i32 %1590, i32* %1594
  store %struct.Memory* %loadMem_492144, %struct.Memory** %MEMORY
  %loadMem_492147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 1
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %1601 = bitcast %union.anon* %1600 to %struct.anon.2*
  %AL.i218 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1601, i32 0, i32 0
  %1602 = load i64, i64* %PC.i217
  %1603 = add i64 %1602, 2
  store i64 %1603, i64* %PC.i217
  store i8 0, i8* %AL.i218, align 1
  store %struct.Memory* %loadMem_492147, %struct.Memory** %MEMORY
  %loadMem1_492149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1606 to i64*
  %1607 = load i64, i64* %PC.i216
  %1608 = add i64 %1607, -594185
  %1609 = load i64, i64* %PC.i216
  %1610 = add i64 %1609, 5
  %1611 = load i64, i64* %PC.i216
  %1612 = add i64 %1611, 5
  store i64 %1612, i64* %PC.i216
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1614 = load i64, i64* %1613, align 8
  %1615 = add i64 %1614, -8
  %1616 = inttoptr i64 %1615 to i64*
  store i64 %1610, i64* %1616
  store i64 %1615, i64* %1613, align 8
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1608, i64* %1617, align 8
  store %struct.Memory* %loadMem1_492149, %struct.Memory** %MEMORY
  %loadMem2_492149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492149 = load i64, i64* %3
  %1618 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_492149)
  store %struct.Memory* %1618, %struct.Memory** %MEMORY
  %loadMem_49214e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 33
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 11
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RDI.i212 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %PC.i211
  %1626 = add i64 %1625, 10
  store i64 %1626, i64* %PC.i211
  store i64 ptrtoint (%G__0x58605d_type* @G__0x58605d to i64), i64* %RDI.i212, align 8
  store %struct.Memory* %loadMem_49214e, %struct.Memory** %MEMORY
  %loadMem_492158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 33
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 1
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %1632 to i32*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 15
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %1635 to i64*
  %1636 = load i64, i64* %RBP.i210
  %1637 = sub i64 %1636, 76
  %1638 = load i32, i32* %EAX.i209
  %1639 = zext i32 %1638 to i64
  %1640 = load i64, i64* %PC.i208
  %1641 = add i64 %1640, 3
  store i64 %1641, i64* %PC.i208
  %1642 = inttoptr i64 %1637 to i32*
  store i32 %1638, i32* %1642
  store %struct.Memory* %loadMem_492158, %struct.Memory** %MEMORY
  %loadMem_49215b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 33
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 1
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %1649 = bitcast %union.anon* %1648 to %struct.anon.2*
  %AL.i207 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1649, i32 0, i32 0
  %1650 = load i64, i64* %PC.i206
  %1651 = add i64 %1650, 2
  store i64 %1651, i64* %PC.i206
  store i8 0, i8* %AL.i207, align 1
  store %struct.Memory* %loadMem_49215b, %struct.Memory** %MEMORY
  %loadMem1_49215d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1654 to i64*
  %1655 = load i64, i64* %PC.i205
  %1656 = add i64 %1655, -594205
  %1657 = load i64, i64* %PC.i205
  %1658 = add i64 %1657, 5
  %1659 = load i64, i64* %PC.i205
  %1660 = add i64 %1659, 5
  store i64 %1660, i64* %PC.i205
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1662 = load i64, i64* %1661, align 8
  %1663 = add i64 %1662, -8
  %1664 = inttoptr i64 %1663 to i64*
  store i64 %1658, i64* %1664
  store i64 %1663, i64* %1661, align 8
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1656, i64* %1665, align 8
  store %struct.Memory* %loadMem1_49215d, %struct.Memory** %MEMORY
  %loadMem2_49215d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49215d = load i64, i64* %3
  %1666 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_49215d)
  store %struct.Memory* %1666, %struct.Memory** %MEMORY
  %loadMem_492162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 33
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 15
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %1672 to i64*
  %1673 = load i64, i64* %RBP.i203
  %1674 = sub i64 %1673, 36
  %1675 = load i64, i64* %PC.i202
  %1676 = add i64 %1675, 7
  store i64 %1676, i64* %PC.i202
  %1677 = inttoptr i64 %1674 to i32*
  store i32 0, i32* %1677
  store %struct.Memory* %loadMem_492162, %struct.Memory** %MEMORY
  %loadMem_492169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 1
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %EAX.i200 = bitcast %union.anon* %1683 to i32*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 15
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %1686 to i64*
  %1687 = load i64, i64* %RBP.i201
  %1688 = sub i64 %1687, 80
  %1689 = load i32, i32* %EAX.i200
  %1690 = zext i32 %1689 to i64
  %1691 = load i64, i64* %PC.i199
  %1692 = add i64 %1691, 3
  store i64 %1692, i64* %PC.i199
  %1693 = inttoptr i64 %1688 to i32*
  store i32 %1689, i32* %1693
  store %struct.Memory* %loadMem_492169, %struct.Memory** %MEMORY
  %loadMem_49216c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %1696 to i64*
  %1697 = load i64, i64* %PC.i198
  %1698 = add i64 %1697, 32
  %1699 = load i64, i64* %PC.i198
  %1700 = add i64 %1699, 5
  store i64 %1700, i64* %PC.i198
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1698, i64* %1701, align 8
  store %struct.Memory* %loadMem_49216c, %struct.Memory** %MEMORY
  br label %block_.L_49218c

block_.L_492171:                                  ; preds = %block_4920f7
  %loadMem_492171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 11
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RDI.i197 = bitcast %union.anon* %1707 to i64*
  %1708 = load i64, i64* %PC.i196
  %1709 = add i64 %1708, 10
  store i64 %1709, i64* %PC.i196
  store i64 ptrtoint (%G__0x586075_type* @G__0x586075 to i64), i64* %RDI.i197, align 8
  store %struct.Memory* %loadMem_492171, %struct.Memory** %MEMORY
  %loadMem_49217b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 33
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 1
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %1716 = bitcast %union.anon* %1715 to %struct.anon.2*
  %AL.i195 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1716, i32 0, i32 0
  %1717 = load i64, i64* %PC.i194
  %1718 = add i64 %1717, 2
  store i64 %1718, i64* %PC.i194
  store i8 0, i8* %AL.i195, align 1
  store %struct.Memory* %loadMem_49217b, %struct.Memory** %MEMORY
  %loadMem1_49217d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %PC.i193
  %1723 = add i64 %1722, -594237
  %1724 = load i64, i64* %PC.i193
  %1725 = add i64 %1724, 5
  %1726 = load i64, i64* %PC.i193
  %1727 = add i64 %1726, 5
  store i64 %1727, i64* %PC.i193
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1729 = load i64, i64* %1728, align 8
  %1730 = add i64 %1729, -8
  %1731 = inttoptr i64 %1730 to i64*
  store i64 %1725, i64* %1731
  store i64 %1730, i64* %1728, align 8
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1723, i64* %1732, align 8
  store %struct.Memory* %loadMem1_49217d, %struct.Memory** %MEMORY
  %loadMem2_49217d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49217d = load i64, i64* %3
  %1733 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_49217d)
  store %struct.Memory* %1733, %struct.Memory** %MEMORY
  %loadMem_492182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 33
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1736 to i64*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 15
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %1739 to i64*
  %1740 = load i64, i64* %RBP.i191
  %1741 = sub i64 %1740, 36
  %1742 = load i64, i64* %PC.i190
  %1743 = add i64 %1742, 7
  store i64 %1743, i64* %PC.i190
  %1744 = inttoptr i64 %1741 to i32*
  store i32 1, i32* %1744
  store %struct.Memory* %loadMem_492182, %struct.Memory** %MEMORY
  %loadMem_492189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 1
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %EAX.i188 = bitcast %union.anon* %1750 to i32*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 15
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %1753 to i64*
  %1754 = load i64, i64* %RBP.i189
  %1755 = sub i64 %1754, 84
  %1756 = load i32, i32* %EAX.i188
  %1757 = zext i32 %1756 to i64
  %1758 = load i64, i64* %PC.i187
  %1759 = add i64 %1758, 3
  store i64 %1759, i64* %PC.i187
  %1760 = inttoptr i64 %1755 to i32*
  store i32 %1756, i32* %1760
  store %struct.Memory* %loadMem_492189, %struct.Memory** %MEMORY
  br label %block_.L_49218c

block_.L_49218c:                                  ; preds = %block_.L_492171, %block_492101
  %loadMem_49218c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 33
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %1763 to i64*
  %1764 = load i64, i64* %PC.i186
  %1765 = add i64 %1764, 355
  %1766 = load i64, i64* %PC.i186
  %1767 = add i64 %1766, 5
  store i64 %1767, i64* %PC.i186
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1765, i64* %1768, align 8
  store %struct.Memory* %loadMem_49218c, %struct.Memory** %MEMORY
  br label %block_.L_4922ef

block_.L_492191:                                  ; preds = %block_.L_4920d4
  %loadMem_492191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 9
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RSI.i185 = bitcast %union.anon* %1774 to i64*
  %1775 = load i64, i64* %PC.i184
  %1776 = add i64 %1775, 10
  store i64 %1776, i64* %PC.i184
  store i64 ptrtoint (%G__0x5856fa_type* @G__0x5856fa to i64), i64* %RSI.i185, align 8
  store %struct.Memory* %loadMem_492191, %struct.Memory** %MEMORY
  %loadMem_49219b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 33
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 1
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %1782 to i64*
  %1783 = load i64, i64* %PC.i182
  %1784 = add i64 %1783, 5
  store i64 %1784, i64* %PC.i182
  store i64 4, i64* %RAX.i183, align 8
  store %struct.Memory* %loadMem_49219b, %struct.Memory** %MEMORY
  %loadMem_4921a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 33
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1787 to i64*
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 1
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %1790 to i32*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 7
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %1793 to i64*
  %1794 = load i32, i32* %EAX.i180
  %1795 = zext i32 %1794 to i64
  %1796 = load i64, i64* %PC.i179
  %1797 = add i64 %1796, 2
  store i64 %1797, i64* %PC.i179
  %1798 = and i64 %1795, 4294967295
  store i64 %1798, i64* %RDX.i181, align 8
  store %struct.Memory* %loadMem_4921a0, %struct.Memory** %MEMORY
  %loadMem_4921a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 33
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 11
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %RDI.i177 = bitcast %union.anon* %1804 to i64*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 15
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %1807 to i64*
  %1808 = load i64, i64* %RBP.i178
  %1809 = sub i64 %1808, 20
  %1810 = load i64, i64* %PC.i176
  %1811 = add i64 %1810, 4
  store i64 %1811, i64* %PC.i176
  store i64 %1809, i64* %RDI.i177, align 8
  store %struct.Memory* %loadMem_4921a2, %struct.Memory** %MEMORY
  %loadMem1_4921a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1814 to i64*
  %1815 = load i64, i64* %PC.i175
  %1816 = add i64 %1815, -594422
  %1817 = load i64, i64* %PC.i175
  %1818 = add i64 %1817, 5
  %1819 = load i64, i64* %PC.i175
  %1820 = add i64 %1819, 5
  store i64 %1820, i64* %PC.i175
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1822 = load i64, i64* %1821, align 8
  %1823 = add i64 %1822, -8
  %1824 = inttoptr i64 %1823 to i64*
  store i64 %1818, i64* %1824
  store i64 %1823, i64* %1821, align 8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1816, i64* %1825, align 8
  store %struct.Memory* %loadMem1_4921a6, %struct.Memory** %MEMORY
  %loadMem2_4921a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4921a6 = load i64, i64* %3
  %1826 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_4921a6)
  store %struct.Memory* %1826, %struct.Memory** %MEMORY
  %loadMem_4921ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 33
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 1
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %EAX.i172 = bitcast %union.anon* %1832 to i32*
  %1833 = load i32, i32* %EAX.i172
  %1834 = zext i32 %1833 to i64
  %1835 = load i64, i64* %PC.i171
  %1836 = add i64 %1835, 3
  store i64 %1836, i64* %PC.i171
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1837, align 1
  %1838 = and i32 %1833, 255
  %1839 = call i32 @llvm.ctpop.i32(i32 %1838)
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  %1842 = xor i8 %1841, 1
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1842, i8* %1843, align 1
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1844, align 1
  %1845 = icmp eq i32 %1833, 0
  %1846 = zext i1 %1845 to i8
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1846, i8* %1847, align 1
  %1848 = lshr i32 %1833, 31
  %1849 = trunc i32 %1848 to i8
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1849, i8* %1850, align 1
  %1851 = lshr i32 %1833, 31
  %1852 = xor i32 %1848, %1851
  %1853 = add i32 %1852, %1851
  %1854 = icmp eq i32 %1853, 2
  %1855 = zext i1 %1854 to i8
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1855, i8* %1856, align 1
  store %struct.Memory* %loadMem_4921ab, %struct.Memory** %MEMORY
  %loadMem_4921ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 33
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %PC.i170
  %1861 = add i64 %1860, 71
  %1862 = load i64, i64* %PC.i170
  %1863 = add i64 %1862, 6
  %1864 = load i64, i64* %PC.i170
  %1865 = add i64 %1864, 6
  store i64 %1865, i64* %PC.i170
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1867 = load i8, i8* %1866, align 1
  %1868 = icmp eq i8 %1867, 0
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %BRANCH_TAKEN, align 1
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1871 = select i1 %1868, i64 %1861, i64 %1863
  store i64 %1871, i64* %1870, align 8
  store %struct.Memory* %loadMem_4921ae, %struct.Memory** %MEMORY
  %loadBr_4921ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4921ae = icmp eq i8 %loadBr_4921ae, 1
  br i1 %cmpBr_4921ae, label %block_.L_4921f5, label %block_4921b4

block_4921b4:                                     ; preds = %block_.L_492191
  %loadMem_4921b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 33
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 11
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %RDI.i169 = bitcast %union.anon* %1877 to i64*
  %1878 = load i64, i64* %PC.i168
  %1879 = add i64 %1878, 10
  store i64 %1879, i64* %PC.i168
  store i64 ptrtoint (%G__0x5860b3_type* @G__0x5860b3 to i64), i64* %RDI.i169, align 8
  store %struct.Memory* %loadMem_4921b4, %struct.Memory** %MEMORY
  %loadMem_4921be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 1
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %1886 = bitcast %union.anon* %1885 to %struct.anon.2*
  %AL.i167 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1886, i32 0, i32 0
  %1887 = load i64, i64* %PC.i166
  %1888 = add i64 %1887, 2
  store i64 %1888, i64* %PC.i166
  store i8 0, i8* %AL.i167, align 1
  store %struct.Memory* %loadMem_4921be, %struct.Memory** %MEMORY
  %loadMem1_4921c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 33
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %1891 to i64*
  %1892 = load i64, i64* %PC.i165
  %1893 = add i64 %1892, -594304
  %1894 = load i64, i64* %PC.i165
  %1895 = add i64 %1894, 5
  %1896 = load i64, i64* %PC.i165
  %1897 = add i64 %1896, 5
  store i64 %1897, i64* %PC.i165
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1899 = load i64, i64* %1898, align 8
  %1900 = add i64 %1899, -8
  %1901 = inttoptr i64 %1900 to i64*
  store i64 %1895, i64* %1901
  store i64 %1900, i64* %1898, align 8
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1893, i64* %1902, align 8
  store %struct.Memory* %loadMem1_4921c0, %struct.Memory** %MEMORY
  %loadMem2_4921c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4921c0 = load i64, i64* %3
  %1903 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4921c0)
  store %struct.Memory* %1903, %struct.Memory** %MEMORY
  %loadMem_4921c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 33
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 11
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RDI.i161 = bitcast %union.anon* %1909 to i64*
  %1910 = load i64, i64* %PC.i160
  %1911 = add i64 %1910, 10
  store i64 %1911, i64* %PC.i160
  store i64 ptrtoint (%G__0x5860ef_type* @G__0x5860ef to i64), i64* %RDI.i161, align 8
  store %struct.Memory* %loadMem_4921c5, %struct.Memory** %MEMORY
  %loadMem_4921cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 1
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %EAX.i158 = bitcast %union.anon* %1917 to i32*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 15
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %1920 to i64*
  %1921 = load i64, i64* %RBP.i159
  %1922 = sub i64 %1921, 88
  %1923 = load i32, i32* %EAX.i158
  %1924 = zext i32 %1923 to i64
  %1925 = load i64, i64* %PC.i157
  %1926 = add i64 %1925, 3
  store i64 %1926, i64* %PC.i157
  %1927 = inttoptr i64 %1922 to i32*
  store i32 %1923, i32* %1927
  store %struct.Memory* %loadMem_4921cf, %struct.Memory** %MEMORY
  %loadMem_4921d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 33
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 1
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %1934 = bitcast %union.anon* %1933 to %struct.anon.2*
  %AL.i156 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1934, i32 0, i32 0
  %1935 = load i64, i64* %PC.i155
  %1936 = add i64 %1935, 2
  store i64 %1936, i64* %PC.i155
  store i8 0, i8* %AL.i156, align 1
  store %struct.Memory* %loadMem_4921d2, %struct.Memory** %MEMORY
  %loadMem1_4921d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 33
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %PC.i154
  %1941 = add i64 %1940, -594324
  %1942 = load i64, i64* %PC.i154
  %1943 = add i64 %1942, 5
  %1944 = load i64, i64* %PC.i154
  %1945 = add i64 %1944, 5
  store i64 %1945, i64* %PC.i154
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1947 = load i64, i64* %1946, align 8
  %1948 = add i64 %1947, -8
  %1949 = inttoptr i64 %1948 to i64*
  store i64 %1943, i64* %1949
  store i64 %1948, i64* %1946, align 8
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1941, i64* %1950, align 8
  store %struct.Memory* %loadMem1_4921d4, %struct.Memory** %MEMORY
  %loadMem2_4921d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4921d4 = load i64, i64* %3
  %1951 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4921d4)
  store %struct.Memory* %1951, %struct.Memory** %MEMORY
  %loadMem_4921d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 33
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 11
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %RDI.i151 = bitcast %union.anon* %1957 to i64*
  %1958 = load i64, i64* %PC.i150
  %1959 = add i64 %1958, 10
  store i64 %1959, i64* %PC.i150
  store i64 ptrtoint (%G__0x58612b_type* @G__0x58612b to i64), i64* %RDI.i151, align 8
  store %struct.Memory* %loadMem_4921d9, %struct.Memory** %MEMORY
  %loadMem_4921e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 33
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 1
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %EAX.i148 = bitcast %union.anon* %1965 to i32*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 15
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %1968 to i64*
  %1969 = load i64, i64* %RBP.i149
  %1970 = sub i64 %1969, 92
  %1971 = load i32, i32* %EAX.i148
  %1972 = zext i32 %1971 to i64
  %1973 = load i64, i64* %PC.i147
  %1974 = add i64 %1973, 3
  store i64 %1974, i64* %PC.i147
  %1975 = inttoptr i64 %1970 to i32*
  store i32 %1971, i32* %1975
  store %struct.Memory* %loadMem_4921e3, %struct.Memory** %MEMORY
  %loadMem_4921e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 1
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %1982 = bitcast %union.anon* %1981 to %struct.anon.2*
  %AL.i146 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1982, i32 0, i32 0
  %1983 = load i64, i64* %PC.i145
  %1984 = add i64 %1983, 2
  store i64 %1984, i64* %PC.i145
  store i8 0, i8* %AL.i146, align 1
  store %struct.Memory* %loadMem_4921e6, %struct.Memory** %MEMORY
  %loadMem1_4921e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %PC.i144
  %1989 = add i64 %1988, -594344
  %1990 = load i64, i64* %PC.i144
  %1991 = add i64 %1990, 5
  %1992 = load i64, i64* %PC.i144
  %1993 = add i64 %1992, 5
  store i64 %1993, i64* %PC.i144
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1995 = load i64, i64* %1994, align 8
  %1996 = add i64 %1995, -8
  %1997 = inttoptr i64 %1996 to i64*
  store i64 %1991, i64* %1997
  store i64 %1996, i64* %1994, align 8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1989, i64* %1998, align 8
  store %struct.Memory* %loadMem1_4921e8, %struct.Memory** %MEMORY
  %loadMem2_4921e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4921e8 = load i64, i64* %3
  %1999 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4921e8)
  store %struct.Memory* %1999, %struct.Memory** %MEMORY
  %loadMem_4921ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 33
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 1
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %EAX.i140 = bitcast %union.anon* %2005 to i32*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 15
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %2008 to i64*
  %2009 = load i64, i64* %RBP.i141
  %2010 = sub i64 %2009, 96
  %2011 = load i32, i32* %EAX.i140
  %2012 = zext i32 %2011 to i64
  %2013 = load i64, i64* %PC.i139
  %2014 = add i64 %2013, 3
  store i64 %2014, i64* %PC.i139
  %2015 = inttoptr i64 %2010 to i32*
  store i32 %2011, i32* %2015
  store %struct.Memory* %loadMem_4921ed, %struct.Memory** %MEMORY
  %loadMem_4921f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 33
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2018 to i64*
  %2019 = load i64, i64* %PC.i138
  %2020 = add i64 %2019, 250
  %2021 = load i64, i64* %PC.i138
  %2022 = add i64 %2021, 5
  store i64 %2022, i64* %PC.i138
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2020, i64* %2023, align 8
  store %struct.Memory* %loadMem_4921f0, %struct.Memory** %MEMORY
  br label %block_.L_4922ea

block_.L_4921f5:                                  ; preds = %block_.L_492191
  %loadMem_4921f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 33
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2026 to i64*
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 9
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %RSI.i137 = bitcast %union.anon* %2029 to i64*
  %2030 = load i64, i64* %PC.i136
  %2031 = add i64 %2030, 10
  store i64 %2031, i64* %PC.i136
  store i64 ptrtoint (%G__0x58730e_type* @G__0x58730e to i64), i64* %RSI.i137, align 8
  store %struct.Memory* %loadMem_4921f5, %struct.Memory** %MEMORY
  %loadMem_4921ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 1
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %2037 to i64*
  %2038 = load i64, i64* %PC.i134
  %2039 = add i64 %2038, 5
  store i64 %2039, i64* %PC.i134
  store i64 4, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_4921ff, %struct.Memory** %MEMORY
  %loadMem_492204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 33
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 1
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %EAX.i132 = bitcast %union.anon* %2045 to i32*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 7
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RDX.i133 = bitcast %union.anon* %2048 to i64*
  %2049 = load i32, i32* %EAX.i132
  %2050 = zext i32 %2049 to i64
  %2051 = load i64, i64* %PC.i131
  %2052 = add i64 %2051, 2
  store i64 %2052, i64* %PC.i131
  %2053 = and i64 %2050, 4294967295
  store i64 %2053, i64* %RDX.i133, align 8
  store %struct.Memory* %loadMem_492204, %struct.Memory** %MEMORY
  %loadMem_492206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 33
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2056 to i64*
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 11
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %RDI.i129 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 15
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %2062 to i64*
  %2063 = load i64, i64* %RBP.i130
  %2064 = sub i64 %2063, 20
  %2065 = load i64, i64* %PC.i128
  %2066 = add i64 %2065, 4
  store i64 %2066, i64* %PC.i128
  store i64 %2064, i64* %RDI.i129, align 8
  store %struct.Memory* %loadMem_492206, %struct.Memory** %MEMORY
  %loadMem1_49220a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2069 to i64*
  %2070 = load i64, i64* %PC.i127
  %2071 = add i64 %2070, -594522
  %2072 = load i64, i64* %PC.i127
  %2073 = add i64 %2072, 5
  %2074 = load i64, i64* %PC.i127
  %2075 = add i64 %2074, 5
  store i64 %2075, i64* %PC.i127
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2077 = load i64, i64* %2076, align 8
  %2078 = add i64 %2077, -8
  %2079 = inttoptr i64 %2078 to i64*
  store i64 %2073, i64* %2079
  store i64 %2078, i64* %2076, align 8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2071, i64* %2080, align 8
  store %struct.Memory* %loadMem1_49220a, %struct.Memory** %MEMORY
  %loadMem2_49220a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49220a = load i64, i64* %3
  %2081 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_49220a)
  store %struct.Memory* %2081, %struct.Memory** %MEMORY
  %loadMem_49220f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 1
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %2087 to i32*
  %2088 = load i32, i32* %EAX.i123
  %2089 = zext i32 %2088 to i64
  %2090 = load i64, i64* %PC.i122
  %2091 = add i64 %2090, 3
  store i64 %2091, i64* %PC.i122
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2092, align 1
  %2093 = and i32 %2088, 255
  %2094 = call i32 @llvm.ctpop.i32(i32 %2093)
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = xor i8 %2096, 1
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2097, i8* %2098, align 1
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2099, align 1
  %2100 = icmp eq i32 %2088, 0
  %2101 = zext i1 %2100 to i8
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2101, i8* %2102, align 1
  %2103 = lshr i32 %2088, 31
  %2104 = trunc i32 %2103 to i8
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2104, i8* %2105, align 1
  %2106 = lshr i32 %2088, 31
  %2107 = xor i32 %2103, %2106
  %2108 = add i32 %2107, %2106
  %2109 = icmp eq i32 %2108, 2
  %2110 = zext i1 %2109 to i8
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2110, i8* %2111, align 1
  store %struct.Memory* %loadMem_49220f, %struct.Memory** %MEMORY
  %loadMem_492212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2114 to i64*
  %2115 = load i64, i64* %PC.i121
  %2116 = add i64 %2115, 56
  %2117 = load i64, i64* %PC.i121
  %2118 = add i64 %2117, 6
  %2119 = load i64, i64* %PC.i121
  %2120 = add i64 %2119, 6
  store i64 %2120, i64* %PC.i121
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2122 = load i8, i8* %2121, align 1
  %2123 = icmp eq i8 %2122, 0
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %BRANCH_TAKEN, align 1
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2126 = select i1 %2123, i64 %2116, i64 %2118
  store i64 %2126, i64* %2125, align 8
  store %struct.Memory* %loadMem_492212, %struct.Memory** %MEMORY
  %loadBr_492212 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492212 = icmp eq i8 %loadBr_492212, 1
  br i1 %cmpBr_492212, label %block_.L_49224a, label %block_492218

block_492218:                                     ; preds = %block_.L_4921f5
  %loadMem_492218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 33
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 11
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RDI.i120 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %PC.i119
  %2134 = add i64 %2133, 10
  store i64 %2134, i64* %PC.i119
  store i64 ptrtoint (%G__0x586147_type* @G__0x586147 to i64), i64* %RDI.i120, align 8
  store %struct.Memory* %loadMem_492218, %struct.Memory** %MEMORY
  %loadMem_492222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 1
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %2141 = bitcast %union.anon* %2140 to %struct.anon.2*
  %AL.i118 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2141, i32 0, i32 0
  %2142 = load i64, i64* %PC.i117
  %2143 = add i64 %2142, 2
  store i64 %2143, i64* %PC.i117
  store i8 0, i8* %AL.i118, align 1
  store %struct.Memory* %loadMem_492222, %struct.Memory** %MEMORY
  %loadMem1_492224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 33
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2146 to i64*
  %2147 = load i64, i64* %PC.i116
  %2148 = add i64 %2147, -594404
  %2149 = load i64, i64* %PC.i116
  %2150 = add i64 %2149, 5
  %2151 = load i64, i64* %PC.i116
  %2152 = add i64 %2151, 5
  store i64 %2152, i64* %PC.i116
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2154 = load i64, i64* %2153, align 8
  %2155 = add i64 %2154, -8
  %2156 = inttoptr i64 %2155 to i64*
  store i64 %2150, i64* %2156
  store i64 %2155, i64* %2153, align 8
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2148, i64* %2157, align 8
  store %struct.Memory* %loadMem1_492224, %struct.Memory** %MEMORY
  %loadMem2_492224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492224 = load i64, i64* %3
  %2158 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_492224)
  store %struct.Memory* %2158, %struct.Memory** %MEMORY
  %loadMem_492229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 11
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RDI.i113 = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %PC.i112
  %2166 = add i64 %2165, 10
  store i64 %2166, i64* %PC.i112
  store i64 ptrtoint (%G__0x58617f_type* @G__0x58617f to i64), i64* %RDI.i113, align 8
  store %struct.Memory* %loadMem_492229, %struct.Memory** %MEMORY
  %loadMem_492233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 1
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %EAX.i110 = bitcast %union.anon* %2172 to i32*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 15
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %2175 to i64*
  %2176 = load i64, i64* %RBP.i111
  %2177 = sub i64 %2176, 100
  %2178 = load i32, i32* %EAX.i110
  %2179 = zext i32 %2178 to i64
  %2180 = load i64, i64* %PC.i109
  %2181 = add i64 %2180, 3
  store i64 %2181, i64* %PC.i109
  %2182 = inttoptr i64 %2177 to i32*
  store i32 %2178, i32* %2182
  store %struct.Memory* %loadMem_492233, %struct.Memory** %MEMORY
  %loadMem_492236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 33
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2185 to i64*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 1
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %2189 = bitcast %union.anon* %2188 to %struct.anon.2*
  %AL.i108 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2189, i32 0, i32 0
  %2190 = load i64, i64* %PC.i107
  %2191 = add i64 %2190, 2
  store i64 %2191, i64* %PC.i107
  store i8 0, i8* %AL.i108, align 1
  store %struct.Memory* %loadMem_492236, %struct.Memory** %MEMORY
  %loadMem1_492238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 33
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2194 to i64*
  %2195 = load i64, i64* %PC.i106
  %2196 = add i64 %2195, -594424
  %2197 = load i64, i64* %PC.i106
  %2198 = add i64 %2197, 5
  %2199 = load i64, i64* %PC.i106
  %2200 = add i64 %2199, 5
  store i64 %2200, i64* %PC.i106
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2202 = load i64, i64* %2201, align 8
  %2203 = add i64 %2202, -8
  %2204 = inttoptr i64 %2203 to i64*
  store i64 %2198, i64* %2204
  store i64 %2203, i64* %2201, align 8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2196, i64* %2205, align 8
  store %struct.Memory* %loadMem1_492238, %struct.Memory** %MEMORY
  %loadMem2_492238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492238 = load i64, i64* %3
  %2206 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_492238)
  store %struct.Memory* %2206, %struct.Memory** %MEMORY
  %loadMem_49223d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 1
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %EAX.i102 = bitcast %union.anon* %2212 to i32*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 15
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %2215 to i64*
  %2216 = load i64, i64* %RBP.i103
  %2217 = sub i64 %2216, 104
  %2218 = load i32, i32* %EAX.i102
  %2219 = zext i32 %2218 to i64
  %2220 = load i64, i64* %PC.i101
  %2221 = add i64 %2220, 3
  store i64 %2221, i64* %PC.i101
  %2222 = inttoptr i64 %2217 to i32*
  store i32 %2218, i32* %2222
  store %struct.Memory* %loadMem_49223d, %struct.Memory** %MEMORY
  %loadMem1_492240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2225 to i64*
  %2226 = load i64, i64* %PC.i100
  %2227 = add i64 %2226, -7968
  %2228 = load i64, i64* %PC.i100
  %2229 = add i64 %2228, 5
  %2230 = load i64, i64* %PC.i100
  %2231 = add i64 %2230, 5
  store i64 %2231, i64* %PC.i100
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2233 = load i64, i64* %2232, align 8
  %2234 = add i64 %2233, -8
  %2235 = inttoptr i64 %2234 to i64*
  store i64 %2229, i64* %2235
  store i64 %2234, i64* %2232, align 8
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2227, i64* %2236, align 8
  store %struct.Memory* %loadMem1_492240, %struct.Memory** %MEMORY
  %loadMem2_492240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492240 = load i64, i64* %3
  %call2_492240 = call %struct.Memory* @sub_490320.ascii_showboard(%struct.State* %0, i64 %loadPC_492240, %struct.Memory* %loadMem2_492240)
  store %struct.Memory* %call2_492240, %struct.Memory** %MEMORY
  %loadMem_492245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 33
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2239 to i64*
  %2240 = load i64, i64* %PC.i99
  %2241 = add i64 %2240, 160
  %2242 = load i64, i64* %PC.i99
  %2243 = add i64 %2242, 5
  store i64 %2243, i64* %PC.i99
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2241, i64* %2244, align 8
  store %struct.Memory* %loadMem_492245, %struct.Memory** %MEMORY
  br label %block_.L_4922e5

block_.L_49224a:                                  ; preds = %block_.L_4921f5
  %loadMem_49224a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 33
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 7
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2250 to i64*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 15
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %2253 to i64*
  %2254 = load i64, i64* %RBP.i98
  %2255 = sub i64 %2254, 28
  %2256 = load i64, i64* %PC.i97
  %2257 = add i64 %2256, 4
  store i64 %2257, i64* %PC.i97
  store i64 %2255, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_49224a, %struct.Memory** %MEMORY
  %loadMem_49224e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 33
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 5
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %2263 to i64*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 15
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %2266 to i64*
  %2267 = load i64, i64* %RBP.i96
  %2268 = sub i64 %2267, 32
  %2269 = load i64, i64* %PC.i94
  %2270 = add i64 %2269, 4
  store i64 %2270, i64* %PC.i94
  store i64 %2268, i64* %RCX.i95, align 8
  store %struct.Memory* %loadMem_49224e, %struct.Memory** %MEMORY
  %loadMem_492252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 33
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 9
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RSI.i92 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 15
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %2279 to i64*
  %2280 = load i64, i64* %RBP.i93
  %2281 = sub i64 %2280, 20
  %2282 = load i64, i64* %PC.i91
  %2283 = add i64 %2282, 4
  store i64 %2283, i64* %PC.i91
  store i64 %2281, i64* %RSI.i92, align 8
  store %struct.Memory* %loadMem_492252, %struct.Memory** %MEMORY
  %loadMem_492256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 33
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2286 to i64*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 11
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RDI.i90 = bitcast %union.anon* %2289 to i64*
  %2290 = load i64, i64* %PC.i89
  %2291 = add i64 %2290, 7
  store i64 %2291, i64* %PC.i89
  %2292 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %2293 = zext i32 %2292 to i64
  store i64 %2293, i64* %RDI.i90, align 8
  store %struct.Memory* %loadMem_492256, %struct.Memory** %MEMORY
  %loadMem1_49225d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 33
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %2296 to i64*
  %2297 = load i64, i64* %PC.i88
  %2298 = add i64 %2297, -260717
  %2299 = load i64, i64* %PC.i88
  %2300 = add i64 %2299, 5
  %2301 = load i64, i64* %PC.i88
  %2302 = add i64 %2301, 5
  store i64 %2302, i64* %PC.i88
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2304 = load i64, i64* %2303, align 8
  %2305 = add i64 %2304, -8
  %2306 = inttoptr i64 %2305 to i64*
  store i64 %2300, i64* %2306
  store i64 %2305, i64* %2303, align 8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2298, i64* %2307, align 8
  store %struct.Memory* %loadMem1_49225d, %struct.Memory** %MEMORY
  %loadMem2_49225d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49225d = load i64, i64* %3
  %call2_49225d = call %struct.Memory* @sub_4527f0.string_to_location(%struct.State* %0, i64 %loadPC_49225d, %struct.Memory* %loadMem2_49225d)
  store %struct.Memory* %call2_49225d, %struct.Memory** %MEMORY
  %loadMem_492262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 33
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 1
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %EAX.i87 = bitcast %union.anon* %2313 to i32*
  %2314 = load i32, i32* %EAX.i87
  %2315 = zext i32 %2314 to i64
  %2316 = load i64, i64* %PC.i86
  %2317 = add i64 %2316, 3
  store i64 %2317, i64* %PC.i86
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2318, align 1
  %2319 = and i32 %2314, 255
  %2320 = call i32 @llvm.ctpop.i32(i32 %2319)
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = xor i8 %2322, 1
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2323, i8* %2324, align 1
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2325, align 1
  %2326 = icmp eq i32 %2314, 0
  %2327 = zext i1 %2326 to i8
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2327, i8* %2328, align 1
  %2329 = lshr i32 %2314, 31
  %2330 = trunc i32 %2329 to i8
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2330, i8* %2331, align 1
  %2332 = lshr i32 %2314, 31
  %2333 = xor i32 %2329, %2332
  %2334 = add i32 %2333, %2332
  %2335 = icmp eq i32 %2334, 2
  %2336 = zext i1 %2335 to i8
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2336, i8* %2337, align 1
  store %struct.Memory* %loadMem_492262, %struct.Memory** %MEMORY
  %loadMem_492265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %PC.i85
  %2342 = add i64 %2341, 36
  %2343 = load i64, i64* %PC.i85
  %2344 = add i64 %2343, 6
  %2345 = load i64, i64* %PC.i85
  %2346 = add i64 %2345, 6
  store i64 %2346, i64* %PC.i85
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2348 = load i8, i8* %2347, align 1
  store i8 %2348, i8* %BRANCH_TAKEN, align 1
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2350 = icmp ne i8 %2348, 0
  %2351 = select i1 %2350, i64 %2342, i64 %2344
  store i64 %2351, i64* %2349, align 8
  store %struct.Memory* %loadMem_492265, %struct.Memory** %MEMORY
  %loadBr_492265 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492265 = icmp eq i8 %loadBr_492265, 1
  br i1 %cmpBr_492265, label %block_.L_492289, label %block_49226b

block_49226b:                                     ; preds = %block_.L_49224a
  %loadMem_49226b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 15
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %2360 to i64*
  %2361 = load i64, i64* %RBP.i84
  %2362 = sub i64 %2361, 28
  %2363 = load i64, i64* %PC.i82
  %2364 = add i64 %2363, 4
  store i64 %2364, i64* %PC.i82
  %2365 = inttoptr i64 %2362 to i32*
  %2366 = load i32, i32* %2365
  %2367 = sext i32 %2366 to i64
  %2368 = mul i64 %2367, 20
  %2369 = trunc i64 %2368 to i32
  %2370 = and i64 %2368, 4294967295
  store i64 %2370, i64* %RAX.i83, align 8
  %2371 = shl i64 %2368, 32
  %2372 = ashr exact i64 %2371, 32
  %2373 = icmp ne i64 %2372, %2368
  %2374 = zext i1 %2373 to i8
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2374, i8* %2375, align 1
  %2376 = and i32 %2369, 255
  %2377 = call i32 @llvm.ctpop.i32(i32 %2376)
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = xor i8 %2379, 1
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2380, i8* %2381, align 1
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2382, align 1
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2383, align 1
  %2384 = lshr i32 %2369, 31
  %2385 = trunc i32 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2385, i8* %2386, align 1
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2374, i8* %2387, align 1
  store %struct.Memory* %loadMem_49226b, %struct.Memory** %MEMORY
  %loadMem_49226f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 33
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 1
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %2393 to i64*
  %2394 = load i64, i64* %RAX.i81
  %2395 = load i64, i64* %PC.i80
  %2396 = add i64 %2395, 3
  store i64 %2396, i64* %PC.i80
  %2397 = trunc i64 %2394 to i32
  %2398 = add i32 21, %2397
  %2399 = zext i32 %2398 to i64
  store i64 %2399, i64* %RAX.i81, align 8
  %2400 = icmp ult i32 %2398, %2397
  %2401 = icmp ult i32 %2398, 21
  %2402 = or i1 %2400, %2401
  %2403 = zext i1 %2402 to i8
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2403, i8* %2404, align 1
  %2405 = and i32 %2398, 255
  %2406 = call i32 @llvm.ctpop.i32(i32 %2405)
  %2407 = trunc i32 %2406 to i8
  %2408 = and i8 %2407, 1
  %2409 = xor i8 %2408, 1
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2409, i8* %2410, align 1
  %2411 = xor i64 21, %2394
  %2412 = trunc i64 %2411 to i32
  %2413 = xor i32 %2412, %2398
  %2414 = lshr i32 %2413, 4
  %2415 = trunc i32 %2414 to i8
  %2416 = and i8 %2415, 1
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2416, i8* %2417, align 1
  %2418 = icmp eq i32 %2398, 0
  %2419 = zext i1 %2418 to i8
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2419, i8* %2420, align 1
  %2421 = lshr i32 %2398, 31
  %2422 = trunc i32 %2421 to i8
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2422, i8* %2423, align 1
  %2424 = lshr i32 %2397, 31
  %2425 = xor i32 %2421, %2424
  %2426 = add i32 %2425, %2421
  %2427 = icmp eq i32 %2426, 2
  %2428 = zext i1 %2427 to i8
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2428, i8* %2429, align 1
  store %struct.Memory* %loadMem_49226f, %struct.Memory** %MEMORY
  %loadMem_492272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 33
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2432 to i64*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 1
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %2435 to i64*
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 15
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %2438 to i64*
  %2439 = load i64, i64* %RAX.i78
  %2440 = load i64, i64* %RBP.i79
  %2441 = sub i64 %2440, 32
  %2442 = load i64, i64* %PC.i77
  %2443 = add i64 %2442, 3
  store i64 %2443, i64* %PC.i77
  %2444 = trunc i64 %2439 to i32
  %2445 = inttoptr i64 %2441 to i32*
  %2446 = load i32, i32* %2445
  %2447 = add i32 %2446, %2444
  %2448 = zext i32 %2447 to i64
  store i64 %2448, i64* %RAX.i78, align 8
  %2449 = icmp ult i32 %2447, %2444
  %2450 = icmp ult i32 %2447, %2446
  %2451 = or i1 %2449, %2450
  %2452 = zext i1 %2451 to i8
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2452, i8* %2453, align 1
  %2454 = and i32 %2447, 255
  %2455 = call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2458, i8* %2459, align 1
  %2460 = xor i32 %2446, %2444
  %2461 = xor i32 %2460, %2447
  %2462 = lshr i32 %2461, 4
  %2463 = trunc i32 %2462 to i8
  %2464 = and i8 %2463, 1
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2464, i8* %2465, align 1
  %2466 = icmp eq i32 %2447, 0
  %2467 = zext i1 %2466 to i8
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2467, i8* %2468, align 1
  %2469 = lshr i32 %2447, 31
  %2470 = trunc i32 %2469 to i8
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2470, i8* %2471, align 1
  %2472 = lshr i32 %2444, 31
  %2473 = lshr i32 %2446, 31
  %2474 = xor i32 %2469, %2472
  %2475 = xor i32 %2469, %2473
  %2476 = add i32 %2474, %2475
  %2477 = icmp eq i32 %2476, 2
  %2478 = zext i1 %2477 to i8
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2478, i8* %2479, align 1
  store %struct.Memory* %loadMem_492272, %struct.Memory** %MEMORY
  %loadMem_492275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 1
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %EAX.i75 = bitcast %union.anon* %2485 to i32*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 5
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %2488 to i64*
  %2489 = load i32, i32* %EAX.i75
  %2490 = zext i32 %2489 to i64
  %2491 = load i64, i64* %PC.i74
  %2492 = add i64 %2491, 3
  store i64 %2492, i64* %PC.i74
  %2493 = shl i64 %2490, 32
  %2494 = ashr exact i64 %2493, 32
  store i64 %2494, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_492275, %struct.Memory** %MEMORY
  %loadMem_492278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 1
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 5
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %2503 to i64*
  %2504 = load i64, i64* %RCX.i73
  %2505 = add i64 %2504, 12099168
  %2506 = load i64, i64* %PC.i71
  %2507 = add i64 %2506, 8
  store i64 %2507, i64* %PC.i71
  %2508 = inttoptr i64 %2505 to i8*
  %2509 = load i8, i8* %2508
  %2510 = zext i8 %2509 to i64
  store i64 %2510, i64* %RAX.i72, align 8
  store %struct.Memory* %loadMem_492278, %struct.Memory** %MEMORY
  %loadMem_492280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 33
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2513 to i64*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 1
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %EAX.i70 = bitcast %union.anon* %2516 to i32*
  %2517 = load i32, i32* %EAX.i70
  %2518 = zext i32 %2517 to i64
  %2519 = load i64, i64* %PC.i69
  %2520 = add i64 %2519, 3
  store i64 %2520, i64* %PC.i69
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2521, align 1
  %2522 = and i32 %2517, 255
  %2523 = call i32 @llvm.ctpop.i32(i32 %2522)
  %2524 = trunc i32 %2523 to i8
  %2525 = and i8 %2524, 1
  %2526 = xor i8 %2525, 1
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2526, i8* %2527, align 1
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2528, align 1
  %2529 = icmp eq i32 %2517, 0
  %2530 = zext i1 %2529 to i8
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2530, i8* %2531, align 1
  %2532 = lshr i32 %2517, 31
  %2533 = trunc i32 %2532 to i8
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2533, i8* %2534, align 1
  %2535 = lshr i32 %2517, 31
  %2536 = xor i32 %2532, %2535
  %2537 = add i32 %2536, %2535
  %2538 = icmp eq i32 %2537, 2
  %2539 = zext i1 %2538 to i8
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2539, i8* %2540, align 1
  store %struct.Memory* %loadMem_492280, %struct.Memory** %MEMORY
  %loadMem_492283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %2543 to i64*
  %2544 = load i64, i64* %PC.i68
  %2545 = add i64 %2544, 31
  %2546 = load i64, i64* %PC.i68
  %2547 = add i64 %2546, 6
  %2548 = load i64, i64* %PC.i68
  %2549 = add i64 %2548, 6
  store i64 %2549, i64* %PC.i68
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2551 = load i8, i8* %2550, align 1
  %2552 = icmp eq i8 %2551, 0
  %2553 = zext i1 %2552 to i8
  store i8 %2553, i8* %BRANCH_TAKEN, align 1
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2555 = select i1 %2552, i64 %2545, i64 %2547
  store i64 %2555, i64* %2554, align 8
  store %struct.Memory* %loadMem_492283, %struct.Memory** %MEMORY
  %loadBr_492283 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492283 = icmp eq i8 %loadBr_492283, 1
  br i1 %cmpBr_492283, label %block_.L_4922a2, label %block_.L_492289

block_.L_492289:                                  ; preds = %block_49226b, %block_.L_49224a
  %loadMem_492289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 11
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RDI.i67 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %PC.i66
  %2563 = add i64 %2562, 10
  store i64 %2563, i64* %PC.i66
  store i64 ptrtoint (%G__0x5861ab_type* @G__0x5861ab to i64), i64* %RDI.i67, align 8
  store %struct.Memory* %loadMem_492289, %struct.Memory** %MEMORY
  %loadMem_492293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 1
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %2570 = bitcast %union.anon* %2569 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2570, i32 0, i32 0
  %2571 = load i64, i64* %PC.i65
  %2572 = add i64 %2571, 2
  store i64 %2572, i64* %PC.i65
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_492293, %struct.Memory** %MEMORY
  %loadMem1_492295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 33
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2575 to i64*
  %2576 = load i64, i64* %PC.i64
  %2577 = add i64 %2576, -594517
  %2578 = load i64, i64* %PC.i64
  %2579 = add i64 %2578, 5
  %2580 = load i64, i64* %PC.i64
  %2581 = add i64 %2580, 5
  store i64 %2581, i64* %PC.i64
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2583 = load i64, i64* %2582, align 8
  %2584 = add i64 %2583, -8
  %2585 = inttoptr i64 %2584 to i64*
  store i64 %2579, i64* %2585
  store i64 %2584, i64* %2582, align 8
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2577, i64* %2586, align 8
  store %struct.Memory* %loadMem1_492295, %struct.Memory** %MEMORY
  %loadMem2_492295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492295 = load i64, i64* %3
  %2587 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_492295)
  store %struct.Memory* %2587, %struct.Memory** %MEMORY
  %loadMem_49229a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 33
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 1
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %EAX.i59 = bitcast %union.anon* %2593 to i32*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 15
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %2596 to i64*
  %2597 = load i64, i64* %RBP.i60
  %2598 = sub i64 %2597, 108
  %2599 = load i32, i32* %EAX.i59
  %2600 = zext i32 %2599 to i64
  %2601 = load i64, i64* %PC.i58
  %2602 = add i64 %2601, 3
  store i64 %2602, i64* %PC.i58
  %2603 = inttoptr i64 %2598 to i32*
  store i32 %2599, i32* %2603
  store %struct.Memory* %loadMem_49229a, %struct.Memory** %MEMORY
  %loadMem_49229d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %2606 to i64*
  %2607 = load i64, i64* %PC.i57
  %2608 = add i64 %2607, 67
  %2609 = load i64, i64* %PC.i57
  %2610 = add i64 %2609, 5
  store i64 %2610, i64* %PC.i57
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2608, i64* %2611, align 8
  store %struct.Memory* %loadMem_49229d, %struct.Memory** %MEMORY
  br label %block_.L_4922e0

block_.L_4922a2:                                  ; preds = %block_49226b
  %loadMem_4922a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 33
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 1
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 15
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %2620 to i64*
  %2621 = load i64, i64* %RBP.i56
  %2622 = sub i64 %2621, 28
  %2623 = load i64, i64* %PC.i54
  %2624 = add i64 %2623, 4
  store i64 %2624, i64* %PC.i54
  %2625 = inttoptr i64 %2622 to i32*
  %2626 = load i32, i32* %2625
  %2627 = sext i32 %2626 to i64
  %2628 = mul i64 %2627, 20
  %2629 = trunc i64 %2628 to i32
  %2630 = and i64 %2628, 4294967295
  store i64 %2630, i64* %RAX.i55, align 8
  %2631 = shl i64 %2628, 32
  %2632 = ashr exact i64 %2631, 32
  %2633 = icmp ne i64 %2632, %2628
  %2634 = zext i1 %2633 to i8
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2634, i8* %2635, align 1
  %2636 = and i32 %2629, 255
  %2637 = call i32 @llvm.ctpop.i32(i32 %2636)
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = xor i8 %2639, 1
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2640, i8* %2641, align 1
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2642, align 1
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2643, align 1
  %2644 = lshr i32 %2629, 31
  %2645 = trunc i32 %2644 to i8
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2645, i8* %2646, align 1
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2634, i8* %2647, align 1
  store %struct.Memory* %loadMem_4922a2, %struct.Memory** %MEMORY
  %loadMem_4922a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 1
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %2653 to i64*
  %2654 = load i64, i64* %RAX.i53
  %2655 = load i64, i64* %PC.i52
  %2656 = add i64 %2655, 3
  store i64 %2656, i64* %PC.i52
  %2657 = trunc i64 %2654 to i32
  %2658 = add i32 21, %2657
  %2659 = zext i32 %2658 to i64
  store i64 %2659, i64* %RAX.i53, align 8
  %2660 = icmp ult i32 %2658, %2657
  %2661 = icmp ult i32 %2658, 21
  %2662 = or i1 %2660, %2661
  %2663 = zext i1 %2662 to i8
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2663, i8* %2664, align 1
  %2665 = and i32 %2658, 255
  %2666 = call i32 @llvm.ctpop.i32(i32 %2665)
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = xor i8 %2668, 1
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2669, i8* %2670, align 1
  %2671 = xor i64 21, %2654
  %2672 = trunc i64 %2671 to i32
  %2673 = xor i32 %2672, %2658
  %2674 = lshr i32 %2673, 4
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2676, i8* %2677, align 1
  %2678 = icmp eq i32 %2658, 0
  %2679 = zext i1 %2678 to i8
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2679, i8* %2680, align 1
  %2681 = lshr i32 %2658, 31
  %2682 = trunc i32 %2681 to i8
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2682, i8* %2683, align 1
  %2684 = lshr i32 %2657, 31
  %2685 = xor i32 %2681, %2684
  %2686 = add i32 %2685, %2681
  %2687 = icmp eq i32 %2686, 2
  %2688 = zext i1 %2687 to i8
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2688, i8* %2689, align 1
  store %struct.Memory* %loadMem_4922a6, %struct.Memory** %MEMORY
  %loadMem_4922a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 1
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 15
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %2698 to i64*
  %2699 = load i64, i64* %RAX.i50
  %2700 = load i64, i64* %RBP.i51
  %2701 = sub i64 %2700, 32
  %2702 = load i64, i64* %PC.i49
  %2703 = add i64 %2702, 3
  store i64 %2703, i64* %PC.i49
  %2704 = trunc i64 %2699 to i32
  %2705 = inttoptr i64 %2701 to i32*
  %2706 = load i32, i32* %2705
  %2707 = add i32 %2706, %2704
  %2708 = zext i32 %2707 to i64
  store i64 %2708, i64* %RAX.i50, align 8
  %2709 = icmp ult i32 %2707, %2704
  %2710 = icmp ult i32 %2707, %2706
  %2711 = or i1 %2709, %2710
  %2712 = zext i1 %2711 to i8
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2712, i8* %2713, align 1
  %2714 = and i32 %2707, 255
  %2715 = call i32 @llvm.ctpop.i32(i32 %2714)
  %2716 = trunc i32 %2715 to i8
  %2717 = and i8 %2716, 1
  %2718 = xor i8 %2717, 1
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2718, i8* %2719, align 1
  %2720 = xor i32 %2706, %2704
  %2721 = xor i32 %2720, %2707
  %2722 = lshr i32 %2721, 4
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2724, i8* %2725, align 1
  %2726 = icmp eq i32 %2707, 0
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2727, i8* %2728, align 1
  %2729 = lshr i32 %2707, 31
  %2730 = trunc i32 %2729 to i8
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2730, i8* %2731, align 1
  %2732 = lshr i32 %2704, 31
  %2733 = lshr i32 %2706, 31
  %2734 = xor i32 %2729, %2732
  %2735 = xor i32 %2729, %2733
  %2736 = add i32 %2734, %2735
  %2737 = icmp eq i32 %2736, 2
  %2738 = zext i1 %2737 to i8
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2738, i8* %2739, align 1
  store %struct.Memory* %loadMem_4922a9, %struct.Memory** %MEMORY
  %loadMem_4922ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 33
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 1
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %EAX.i47 = bitcast %union.anon* %2745 to i32*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 11
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RDI.i48 = bitcast %union.anon* %2748 to i64*
  %2749 = load i32, i32* %EAX.i47
  %2750 = zext i32 %2749 to i64
  %2751 = load i64, i64* %PC.i46
  %2752 = add i64 %2751, 2
  store i64 %2752, i64* %PC.i46
  %2753 = and i64 %2750, 4294967295
  store i64 %2753, i64* %RDI.i48, align 8
  store %struct.Memory* %loadMem_4922ac, %struct.Memory** %MEMORY
  %loadMem1_4922ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %2756 to i64*
  %2757 = load i64, i64* %PC.i45
  %2758 = add i64 %2757, -454606
  %2759 = load i64, i64* %PC.i45
  %2760 = add i64 %2759, 5
  %2761 = load i64, i64* %PC.i45
  %2762 = add i64 %2761, 5
  store i64 %2762, i64* %PC.i45
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2764 = load i64, i64* %2763, align 8
  %2765 = add i64 %2764, -8
  %2766 = inttoptr i64 %2765 to i64*
  store i64 %2760, i64* %2766
  store i64 %2765, i64* %2763, align 8
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2758, i64* %2767, align 8
  store %struct.Memory* %loadMem1_4922ae, %struct.Memory** %MEMORY
  %loadMem2_4922ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4922ae = load i64, i64* %3
  %call2_4922ae = call %struct.Memory* @sub_4232e0.dragon_status(%struct.State* %0, i64 %loadPC_4922ae, %struct.Memory* %loadMem2_4922ae)
  store %struct.Memory* %call2_4922ae, %struct.Memory** %MEMORY
  %loadMem_4922b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 33
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 11
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %EDI.i43 = bitcast %union.anon* %2773 to i32*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 11
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RDI.i44 = bitcast %union.anon* %2776 to i64*
  %2777 = load i64, i64* %RDI.i44
  %2778 = load i32, i32* %EDI.i43
  %2779 = zext i32 %2778 to i64
  %2780 = load i64, i64* %PC.i42
  %2781 = add i64 %2780, 2
  store i64 %2781, i64* %PC.i42
  %2782 = xor i64 %2779, %2777
  %2783 = trunc i64 %2782 to i32
  %2784 = and i64 %2782, 4294967295
  store i64 %2784, i64* %RDI.i44, align 8
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2785, align 1
  %2786 = and i32 %2783, 255
  %2787 = call i32 @llvm.ctpop.i32(i32 %2786)
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  %2790 = xor i8 %2789, 1
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2790, i8* %2791, align 1
  %2792 = icmp eq i32 %2783, 0
  %2793 = zext i1 %2792 to i8
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2793, i8* %2794, align 1
  %2795 = lshr i32 %2783, 31
  %2796 = trunc i32 %2795 to i8
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2796, i8* %2797, align 1
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2798, align 1
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2799, align 1
  store %struct.Memory* %loadMem_4922b3, %struct.Memory** %MEMORY
  %loadMem_4922b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 33
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %2802 to i64*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 5
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2805 to i64*
  %2806 = load i64, i64* %PC.i41
  %2807 = add i64 %2806, 5
  store i64 %2807, i64* %PC.i41
  store i64 1, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_4922b5, %struct.Memory** %MEMORY
  %loadMem_4922ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 33
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 1
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %EAX.i39 = bitcast %union.anon* %2813 to i32*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 15
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %2816 to i64*
  %2817 = load i64, i64* %RBP.i40
  %2818 = sub i64 %2817, 40
  %2819 = load i32, i32* %EAX.i39
  %2820 = zext i32 %2819 to i64
  %2821 = load i64, i64* %PC.i38
  %2822 = add i64 %2821, 3
  store i64 %2822, i64* %PC.i38
  %2823 = inttoptr i64 %2818 to i32*
  store i32 %2819, i32* %2823
  store %struct.Memory* %loadMem_4922ba, %struct.Memory** %MEMORY
  %loadMem_4922bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 15
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %2829 to i64*
  %2830 = load i64, i64* %RBP.i37
  %2831 = sub i64 %2830, 40
  %2832 = load i64, i64* %PC.i36
  %2833 = add i64 %2832, 4
  store i64 %2833, i64* %PC.i36
  %2834 = inttoptr i64 %2831 to i32*
  %2835 = load i32, i32* %2834
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2836, align 1
  %2837 = and i32 %2835, 255
  %2838 = call i32 @llvm.ctpop.i32(i32 %2837)
  %2839 = trunc i32 %2838 to i8
  %2840 = and i8 %2839, 1
  %2841 = xor i8 %2840, 1
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2841, i8* %2842, align 1
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2843, align 1
  %2844 = icmp eq i32 %2835, 0
  %2845 = zext i1 %2844 to i8
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2845, i8* %2846, align 1
  %2847 = lshr i32 %2835, 31
  %2848 = trunc i32 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2848, i8* %2849, align 1
  %2850 = lshr i32 %2835, 31
  %2851 = xor i32 %2847, %2850
  %2852 = add i32 %2851, %2850
  %2853 = icmp eq i32 %2852, 2
  %2854 = zext i1 %2853 to i8
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2854, i8* %2855, align 1
  store %struct.Memory* %loadMem_4922bd, %struct.Memory** %MEMORY
  %loadMem_4922c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 5
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2861 to i32*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 11
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %RDI.i35 = bitcast %union.anon* %2864 to i64*
  %2865 = load i32, i32* %ECX.i
  %2866 = zext i32 %2865 to i64
  %2867 = load i64, i64* %PC.i34
  %2868 = add i64 %2867, 3
  store i64 %2868, i64* %PC.i34
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2870 = load i8, i8* %2869, align 1
  %2871 = icmp ne i8 %2870, 0
  %2872 = load i64, i64* %RDI.i35, align 8
  %2873 = select i1 %2871, i64 %2866, i64 %2872
  %2874 = and i64 %2873, 4294967295
  store i64 %2874, i64* %RDI.i35, align 8
  store %struct.Memory* %loadMem_4922c1, %struct.Memory** %MEMORY
  %loadMem_4922c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 11
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2880 to i32*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 15
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %RBP.i33
  %2885 = sub i64 %2884, 40
  %2886 = load i32, i32* %EDI.i
  %2887 = zext i32 %2886 to i64
  %2888 = load i64, i64* %PC.i32
  %2889 = add i64 %2888, 3
  store i64 %2889, i64* %PC.i32
  %2890 = inttoptr i64 %2885 to i32*
  store i32 %2886, i32* %2890
  store %struct.Memory* %loadMem_4922c4, %struct.Memory** %MEMORY
  %loadMem_4922c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 33
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2893 to i64*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 1
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 15
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %2899 to i64*
  %2900 = load i64, i64* %RBP.i31
  %2901 = sub i64 %2900, 28
  %2902 = load i64, i64* %PC.i29
  %2903 = add i64 %2902, 4
  store i64 %2903, i64* %PC.i29
  %2904 = inttoptr i64 %2901 to i32*
  %2905 = load i32, i32* %2904
  %2906 = sext i32 %2905 to i64
  %2907 = mul i64 %2906, 20
  %2908 = trunc i64 %2907 to i32
  %2909 = and i64 %2907, 4294967295
  store i64 %2909, i64* %RAX.i30, align 8
  %2910 = shl i64 %2907, 32
  %2911 = ashr exact i64 %2910, 32
  %2912 = icmp ne i64 %2911, %2907
  %2913 = zext i1 %2912 to i8
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2913, i8* %2914, align 1
  %2915 = and i32 %2908, 255
  %2916 = call i32 @llvm.ctpop.i32(i32 %2915)
  %2917 = trunc i32 %2916 to i8
  %2918 = and i8 %2917, 1
  %2919 = xor i8 %2918, 1
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2919, i8* %2920, align 1
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2921, align 1
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2922, align 1
  %2923 = lshr i32 %2908, 31
  %2924 = trunc i32 %2923 to i8
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2924, i8* %2925, align 1
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2913, i8* %2926, align 1
  store %struct.Memory* %loadMem_4922c7, %struct.Memory** %MEMORY
  %loadMem_4922cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 33
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 1
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %2932 to i64*
  %2933 = load i64, i64* %RAX.i28
  %2934 = load i64, i64* %PC.i27
  %2935 = add i64 %2934, 3
  store i64 %2935, i64* %PC.i27
  %2936 = trunc i64 %2933 to i32
  %2937 = add i32 21, %2936
  %2938 = zext i32 %2937 to i64
  store i64 %2938, i64* %RAX.i28, align 8
  %2939 = icmp ult i32 %2937, %2936
  %2940 = icmp ult i32 %2937, 21
  %2941 = or i1 %2939, %2940
  %2942 = zext i1 %2941 to i8
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2942, i8* %2943, align 1
  %2944 = and i32 %2937, 255
  %2945 = call i32 @llvm.ctpop.i32(i32 %2944)
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  %2948 = xor i8 %2947, 1
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2948, i8* %2949, align 1
  %2950 = xor i64 21, %2933
  %2951 = trunc i64 %2950 to i32
  %2952 = xor i32 %2951, %2937
  %2953 = lshr i32 %2952, 4
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2955, i8* %2956, align 1
  %2957 = icmp eq i32 %2937, 0
  %2958 = zext i1 %2957 to i8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2958, i8* %2959, align 1
  %2960 = lshr i32 %2937, 31
  %2961 = trunc i32 %2960 to i8
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2961, i8* %2962, align 1
  %2963 = lshr i32 %2936, 31
  %2964 = xor i32 %2960, %2963
  %2965 = add i32 %2964, %2960
  %2966 = icmp eq i32 %2965, 2
  %2967 = zext i1 %2966 to i8
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2967, i8* %2968, align 1
  store %struct.Memory* %loadMem_4922cb, %struct.Memory** %MEMORY
  %loadMem_4922ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 33
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 1
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 15
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %2977 to i64*
  %2978 = load i64, i64* %RAX.i25
  %2979 = load i64, i64* %RBP.i26
  %2980 = sub i64 %2979, 32
  %2981 = load i64, i64* %PC.i24
  %2982 = add i64 %2981, 3
  store i64 %2982, i64* %PC.i24
  %2983 = trunc i64 %2978 to i32
  %2984 = inttoptr i64 %2980 to i32*
  %2985 = load i32, i32* %2984
  %2986 = add i32 %2985, %2983
  %2987 = zext i32 %2986 to i64
  store i64 %2987, i64* %RAX.i25, align 8
  %2988 = icmp ult i32 %2986, %2983
  %2989 = icmp ult i32 %2986, %2985
  %2990 = or i1 %2988, %2989
  %2991 = zext i1 %2990 to i8
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2991, i8* %2992, align 1
  %2993 = and i32 %2986, 255
  %2994 = call i32 @llvm.ctpop.i32(i32 %2993)
  %2995 = trunc i32 %2994 to i8
  %2996 = and i8 %2995, 1
  %2997 = xor i8 %2996, 1
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2997, i8* %2998, align 1
  %2999 = xor i32 %2985, %2983
  %3000 = xor i32 %2999, %2986
  %3001 = lshr i32 %3000, 4
  %3002 = trunc i32 %3001 to i8
  %3003 = and i8 %3002, 1
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3003, i8* %3004, align 1
  %3005 = icmp eq i32 %2986, 0
  %3006 = zext i1 %3005 to i8
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3006, i8* %3007, align 1
  %3008 = lshr i32 %2986, 31
  %3009 = trunc i32 %3008 to i8
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3009, i8* %3010, align 1
  %3011 = lshr i32 %2983, 31
  %3012 = lshr i32 %2985, 31
  %3013 = xor i32 %3008, %3011
  %3014 = xor i32 %3008, %3012
  %3015 = add i32 %3013, %3014
  %3016 = icmp eq i32 %3015, 2
  %3017 = zext i1 %3016 to i8
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3017, i8* %3018, align 1
  store %struct.Memory* %loadMem_4922ce, %struct.Memory** %MEMORY
  %loadMem_4922d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 9
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RSI.i22 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 15
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %3027 to i64*
  %3028 = load i64, i64* %RBP.i23
  %3029 = sub i64 %3028, 40
  %3030 = load i64, i64* %PC.i21
  %3031 = add i64 %3030, 3
  store i64 %3031, i64* %PC.i21
  %3032 = inttoptr i64 %3029 to i32*
  %3033 = load i32, i32* %3032
  %3034 = zext i32 %3033 to i64
  store i64 %3034, i64* %RSI.i22, align 8
  store %struct.Memory* %loadMem_4922d1, %struct.Memory** %MEMORY
  %loadMem_4922d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 33
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 1
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3040 to i32*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 11
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %RDI.i20 = bitcast %union.anon* %3043 to i64*
  %3044 = load i32, i32* %EAX.i
  %3045 = zext i32 %3044 to i64
  %3046 = load i64, i64* %PC.i19
  %3047 = add i64 %3046, 2
  store i64 %3047, i64* %PC.i19
  %3048 = and i64 %3045, 4294967295
  store i64 %3048, i64* %RDI.i20, align 8
  store %struct.Memory* %loadMem_4922d4, %struct.Memory** %MEMORY
  %loadMem1_4922d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 33
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3051 to i64*
  %3052 = load i64, i64* %PC.i18
  %3053 = add i64 %3052, -111126
  %3054 = load i64, i64* %PC.i18
  %3055 = add i64 %3054, 5
  %3056 = load i64, i64* %PC.i18
  %3057 = add i64 %3056, 5
  store i64 %3057, i64* %PC.i18
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3059 = load i64, i64* %3058, align 8
  %3060 = add i64 %3059, -8
  %3061 = inttoptr i64 %3060 to i64*
  store i64 %3055, i64* %3061
  store i64 %3060, i64* %3058, align 8
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3053, i64* %3062, align 8
  store %struct.Memory* %loadMem1_4922d6, %struct.Memory** %MEMORY
  %loadMem2_4922d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4922d6 = load i64, i64* %3
  %call2_4922d6 = call %struct.Memory* @sub_4770c0.change_dragon_status(%struct.State* %0, i64 %loadPC_4922d6, %struct.Memory* %loadMem2_4922d6)
  store %struct.Memory* %call2_4922d6, %struct.Memory** %MEMORY
  %loadMem1_4922db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %PC.i17
  %3067 = add i64 %3066, -8123
  %3068 = load i64, i64* %PC.i17
  %3069 = add i64 %3068, 5
  %3070 = load i64, i64* %PC.i17
  %3071 = add i64 %3070, 5
  store i64 %3071, i64* %PC.i17
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3073 = load i64, i64* %3072, align 8
  %3074 = add i64 %3073, -8
  %3075 = inttoptr i64 %3074 to i64*
  store i64 %3069, i64* %3075
  store i64 %3074, i64* %3072, align 8
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3067, i64* %3076, align 8
  store %struct.Memory* %loadMem1_4922db, %struct.Memory** %MEMORY
  %loadMem2_4922db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4922db = load i64, i64* %3
  %call2_4922db = call %struct.Memory* @sub_490320.ascii_showboard(%struct.State* %0, i64 %loadPC_4922db, %struct.Memory* %loadMem2_4922db)
  store %struct.Memory* %call2_4922db, %struct.Memory** %MEMORY
  br label %block_.L_4922e0

block_.L_4922e0:                                  ; preds = %block_.L_4922a2, %block_.L_492289
  %loadMem_4922e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3079 to i64*
  %3080 = load i64, i64* %PC.i16
  %3081 = add i64 %3080, 5
  %3082 = load i64, i64* %PC.i16
  %3083 = add i64 %3082, 5
  store i64 %3083, i64* %PC.i16
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3081, i64* %3084, align 8
  store %struct.Memory* %loadMem_4922e0, %struct.Memory** %MEMORY
  br label %block_.L_4922e5

block_.L_4922e5:                                  ; preds = %block_.L_4922e0, %block_492218
  %loadMem_4922e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 33
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %PC.i15
  %3089 = add i64 %3088, 5
  %3090 = load i64, i64* %PC.i15
  %3091 = add i64 %3090, 5
  store i64 %3091, i64* %PC.i15
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3089, i64* %3092, align 8
  store %struct.Memory* %loadMem_4922e5, %struct.Memory** %MEMORY
  br label %block_.L_4922ea

block_.L_4922ea:                                  ; preds = %block_.L_4922e5, %block_4921b4
  %loadMem_4922ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3095 to i64*
  %3096 = load i64, i64* %PC.i14
  %3097 = add i64 %3096, 5
  %3098 = load i64, i64* %PC.i14
  %3099 = add i64 %3098, 5
  store i64 %3099, i64* %PC.i14
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3097, i64* %3100, align 8
  store %struct.Memory* %loadMem_4922ea, %struct.Memory** %MEMORY
  br label %block_.L_4922ef

block_.L_4922ef:                                  ; preds = %block_.L_4922ea, %block_.L_49218c
  %loadMem_4922ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3103 to i64*
  %3104 = load i64, i64* %PC.i13
  %3105 = add i64 %3104, 5
  %3106 = load i64, i64* %PC.i13
  %3107 = add i64 %3106, 5
  store i64 %3107, i64* %PC.i13
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3105, i64* %3108, align 8
  store %struct.Memory* %loadMem_4922ef, %struct.Memory** %MEMORY
  br label %block_.L_4922f4

block_.L_4922f4:                                  ; preds = %block_.L_4922ef
  %loadMem_4922f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 33
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3111 to i64*
  %3112 = load i64, i64* %PC.i12
  %3113 = add i64 %3112, 5
  %3114 = load i64, i64* %PC.i12
  %3115 = add i64 %3114, 5
  store i64 %3115, i64* %PC.i12
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3113, i64* %3116, align 8
  store %struct.Memory* %loadMem_4922f4, %struct.Memory** %MEMORY
  br label %block_.L_4922f9

block_.L_4922f9:                                  ; preds = %block_.L_4922f4, %block_4920a0
  %loadMem_4922f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3119 to i64*
  %3120 = load i64, i64* %PC.i11
  %3121 = add i64 %3120, -872
  %3122 = load i64, i64* %PC.i11
  %3123 = add i64 %3122, 5
  store i64 %3123, i64* %PC.i11
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3121, i64* %3124, align 8
  store %struct.Memory* %loadMem_4922f9, %struct.Memory** %MEMORY
  br label %block_.L_491f91

block_.L_4922fe:                                  ; preds = %block_491fa2
  %loadMem_4922fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 33
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3127 to i64*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 1
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %3130 to i64*
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 15
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %3133 to i64*
  %3134 = load i64, i64* %RBP.i10
  %3135 = sub i64 %3134, 8
  %3136 = load i64, i64* %PC.i8
  %3137 = add i64 %3136, 4
  store i64 %3137, i64* %PC.i8
  %3138 = inttoptr i64 %3135 to i64*
  %3139 = load i64, i64* %3138
  store i64 %3139, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_4922fe, %struct.Memory** %MEMORY
  %loadMem_492302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 1
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 11
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %RAX.i
  %3150 = add i64 %3149, 24
  %3151 = load i64, i64* %PC.i7
  %3152 = add i64 %3151, 3
  store i64 %3152, i64* %PC.i7
  %3153 = inttoptr i64 %3150 to i32*
  %3154 = load i32, i32* %3153
  %3155 = zext i32 %3154 to i64
  store i64 %3155, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_492302, %struct.Memory** %MEMORY
  %loadMem_492305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 33
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 9
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3161 to i64*
  %3162 = load i64, i64* %PC.i6
  %3163 = add i64 %3162, 8
  store i64 %3163, i64* %PC.i6
  %3164 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*)
  store i64 %3164, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_492305, %struct.Memory** %MEMORY
  %loadMem1_49230d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 33
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3167 to i64*
  %3168 = load i64, i64* %PC.i5
  %3169 = add i64 %3168, -407389
  %3170 = load i64, i64* %PC.i5
  %3171 = add i64 %3170, 5
  %3172 = load i64, i64* %PC.i5
  %3173 = add i64 %3172, 5
  store i64 %3173, i64* %PC.i5
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3175 = load i64, i64* %3174, align 8
  %3176 = add i64 %3175, -8
  %3177 = inttoptr i64 %3176 to i64*
  store i64 %3171, i64* %3177
  store i64 %3176, i64* %3174, align 8
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3169, i64* %3178, align 8
  store %struct.Memory* %loadMem1_49230d, %struct.Memory** %MEMORY
  %loadMem2_49230d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49230d = load i64, i64* %3
  %call2_49230d = call %struct.Memory* @sub_42ebb0.gnugo_who_wins(%struct.State* %0, i64 %loadPC_49230d, %struct.Memory* %loadMem2_49230d)
  store %struct.Memory* %call2_49230d, %struct.Memory** %MEMORY
  br label %block_.L_492312

block_.L_492312:                                  ; preds = %block_.L_4922fe, %block_4920cf, %block_492003
  %loadMem_492312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 33
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3181 to i64*
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 13
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3184 to i64*
  %3185 = load i64, i64* %RSP.i
  %3186 = load i64, i64* %PC.i4
  %3187 = add i64 %3186, 4
  store i64 %3187, i64* %PC.i4
  %3188 = add i64 112, %3185
  store i64 %3188, i64* %RSP.i, align 8
  %3189 = icmp ult i64 %3188, %3185
  %3190 = icmp ult i64 %3188, 112
  %3191 = or i1 %3189, %3190
  %3192 = zext i1 %3191 to i8
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3192, i8* %3193, align 1
  %3194 = trunc i64 %3188 to i32
  %3195 = and i32 %3194, 255
  %3196 = call i32 @llvm.ctpop.i32(i32 %3195)
  %3197 = trunc i32 %3196 to i8
  %3198 = and i8 %3197, 1
  %3199 = xor i8 %3198, 1
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3199, i8* %3200, align 1
  %3201 = xor i64 112, %3185
  %3202 = xor i64 %3201, %3188
  %3203 = lshr i64 %3202, 4
  %3204 = trunc i64 %3203 to i8
  %3205 = and i8 %3204, 1
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3205, i8* %3206, align 1
  %3207 = icmp eq i64 %3188, 0
  %3208 = zext i1 %3207 to i8
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3208, i8* %3209, align 1
  %3210 = lshr i64 %3188, 63
  %3211 = trunc i64 %3210 to i8
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3211, i8* %3212, align 1
  %3213 = lshr i64 %3185, 63
  %3214 = xor i64 %3210, %3213
  %3215 = add i64 %3214, %3210
  %3216 = icmp eq i64 %3215, 2
  %3217 = zext i1 %3216 to i8
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3217, i8* %3218, align 1
  store %struct.Memory* %loadMem_492312, %struct.Memory** %MEMORY
  %loadMem_492316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 15
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3224 to i64*
  %3225 = load i64, i64* %PC.i2
  %3226 = add i64 %3225, 1
  store i64 %3226, i64* %PC.i2
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3228 = load i64, i64* %3227, align 8
  %3229 = add i64 %3228, 8
  %3230 = inttoptr i64 %3228 to i64*
  %3231 = load i64, i64* %3230
  store i64 %3231, i64* %RBP.i3, align 8
  store i64 %3229, i64* %3227, align 8
  store %struct.Memory* %loadMem_492316, %struct.Memory** %MEMORY
  %loadMem_492317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 33
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %PC.i1
  %3236 = add i64 %3235, 1
  store i64 %3236, i64* %PC.i1
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3239 = load i64, i64* %3238, align 8
  %3240 = inttoptr i64 %3239 to i64*
  %3241 = load i64, i64* %3240
  store i64 %3241, i64* %3237, align 8
  %3242 = add i64 %3239, 8
  store i64 %3242, i64* %3238, align 8
  store %struct.Memory* %loadMem_492317, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_492317
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

define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 112
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 112
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
  %23 = xor i64 112, %9
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

define %struct.Memory* @routine_movq__0x585ed3___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585ed3_type* @G__0x585ed3 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x1__0xaf274c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 1, i32* bitcast (%G_0xaf274c_type* @G_0xaf274c to i32*)
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

define %struct.Memory* @routine_callq_.ascii_showboard(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_setne__al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorb__0xff___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = xor i64 255, %11
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
  %27 = lshr i8 %15, 7
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_491fa7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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

define %struct.Memory* @routine_jmpq_.L_4922fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x585eee___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585eee_type* @G__0x585eee to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x585f20___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585f20_type* @G__0x585f20 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x585f54___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585f54_type* @G__0x585f54 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0xc___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x99c090___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x99c090_type* @G_0x99c090 to i64*)
  store i64 %11, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.fgets_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_492008(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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

define %struct.Memory* @routine_jmpq_.L_492312(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xc__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 12
  %16 = icmp ult i32 %14, 12
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
  %25 = xor i32 %14, 12
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

define %struct.Memory* @routine_jge_.L_49207d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsbl_MINUS0x14__rbp__rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = add i64 %15, -20
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  %23 = zext i16 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x100___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 256, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_492056(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x14__rbp__rax_1____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = add i64 %15, -20
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.tolower_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_492062(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsbl_MINUS0x14__rbp__rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %15, -20
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0x14__rbp__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RDX
  %18 = add i64 %16, -20
  %19 = add i64 %18, %17
  %20 = load i8, i8* %CL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i8*
  store i8 %20, i8* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
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

define %struct.Memory* @routine_jmpq_.L_49200f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x585d0e___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585d0e_type* @G__0x585d0e to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_4920ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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

define %struct.Memory* @routine_jmpq_.L_4922f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x585f74___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585f74_type* @G__0x585f74 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4920d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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

define %struct.Memory* @routine_movq__0x585f79___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585f79_type* @G__0x585f79 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_jne_.L_492191(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
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

define %struct.Memory* @routine_je_.L_492171(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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

define %struct.Memory* @routine_movq__0x585f7f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585f7f_type* @G__0x585f7f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x585fbf___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585fbf_type* @G__0x585fbf to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x585ffa___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585ffa_type* @G__0x585ffa to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x586031___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586031_type* @G__0x586031 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x58605d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58605d_type* @G__0x58605d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jmpq_.L_49218c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x586075___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586075_type* @G__0x586075 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_4922ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x5856fa___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5856fa_type* @G__0x5856fa to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4921f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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

define %struct.Memory* @routine_movq__0x5860b3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5860b3_type* @G__0x5860b3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x5860ef___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5860ef_type* @G__0x5860ef to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x58612b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58612b_type* @G__0x58612b to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_4922ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x58730e___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58730e_type* @G__0x58730e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_49224a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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

define %struct.Memory* @routine_movq__0x586147___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586147_type* @G__0x586147 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x58617f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58617f_type* @G__0x58617f to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_4922e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x7ae438___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.string_to_location(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_492289(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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

define %struct.Memory* @routine_imull__0x14__MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
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

define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
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

define %struct.Memory* @routine_jne_.L_4922a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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

define %struct.Memory* @routine_movq__0x5861ab___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5861ab_type* @G__0x5861ab to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_4922e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.dragon_status(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmovel__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  %19 = load i64, i64* %RDI, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.change_dragon_status(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_4922f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_491f91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x18__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x99c080___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*)
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gnugo_who_wins(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 112, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 112
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
  %25 = xor i64 112, %9
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
