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
%G_0x6cb900_type = type <{ [8 x i8] }>
%G__0x4c2411_type = type <{ [8 x i8] }>
%G__0x4c242b_type = type <{ [8 x i8] }>
%G__0x4c2445_type = type <{ [8 x i8] }>
%G__0x4c2456_type = type <{ [8 x i8] }>
%G__0x4c2471_type = type <{ [8 x i8] }>
%G__0x4c248c_type = type <{ [8 x i8] }>
%G__0x4c24a7_type = type <{ [8 x i8] }>
%G__0x4c24c2_type = type <{ [8 x i8] }>
%G__0x4c24db_type = type <{ [8 x i8] }>
%G__0x4c24ea_type = type <{ [8 x i8] }>
%G__0x4c2504_type = type <{ [8 x i8] }>
%G__0x4c251b_type = type <{ [8 x i8] }>
%G__0x4c2537_type = type <{ [8 x i8] }>
%G__0x4c2552_type = type <{ [8 x i8] }>
%G__0x4c256f_type = type <{ [8 x i8] }>
%G__0x4c2591_type = type <{ [8 x i8] }>
%G__0x4c25b6_type = type <{ [8 x i8] }>
%G__0x4c25d9_type = type <{ [8 x i8] }>
%G__0x4c25f8_type = type <{ [8 x i8] }>
%G__0x4c2610_type = type <{ [8 x i8] }>
%G__0x4c2637_type = type <{ [8 x i8] }>
%G__0x4c265d_type = type <{ [8 x i8] }>
%G__0x4c2679_type = type <{ [8 x i8] }>
%G__0x4c269d_type = type <{ [8 x i8] }>
%G__0x4c26c8_type = type <{ [8 x i8] }>
%G__0x4c26e2_type = type <{ [8 x i8] }>
%G__0x4c26f6_type = type <{ [8 x i8] }>
%G__0x4c2720_type = type <{ [8 x i8] }>
%G__0x4c273d_type = type <{ [8 x i8] }>
%G__0x4c2761_type = type <{ [8 x i8] }>
%G__0x4c277a_type = type <{ [8 x i8] }>
%G__0x4c279c_type = type <{ [8 x i8] }>
%G__0x4c27bb_type = type <{ [8 x i8] }>
%G__0x4c27d4_type = type <{ [8 x i8] }>
%G__0x4c27f9_type = type <{ [8 x i8] }>
%G__0x4c281f_type = type <{ [8 x i8] }>
%G__0x4c2843_type = type <{ [8 x i8] }>
%G__0x4c286a_type = type <{ [8 x i8] }>
%G__0x6d1f9c_type = type <{ [8 x i8] }>
%G__0x6d1fc0_type = type <{ [8 x i8] }>
%G__0x6d4520_type = type <{ [8 x i8] }>
%G__0x6f6e20_type = type <{ [8 x i8] }>
%G__0x711780_type = type <{ [8 x i8] }>
%G__0x721ca0_type = type <{ [8 x i8] }>
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
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G__0x4c2411 = global %G__0x4c2411_type zeroinitializer
@G__0x4c242b = global %G__0x4c242b_type zeroinitializer
@G__0x4c2445 = global %G__0x4c2445_type zeroinitializer
@G__0x4c2456 = global %G__0x4c2456_type zeroinitializer
@G__0x4c2471 = global %G__0x4c2471_type zeroinitializer
@G__0x4c248c = global %G__0x4c248c_type zeroinitializer
@G__0x4c24a7 = global %G__0x4c24a7_type zeroinitializer
@G__0x4c24c2 = global %G__0x4c24c2_type zeroinitializer
@G__0x4c24db = global %G__0x4c24db_type zeroinitializer
@G__0x4c24ea = global %G__0x4c24ea_type zeroinitializer
@G__0x4c2504 = global %G__0x4c2504_type zeroinitializer
@G__0x4c251b = global %G__0x4c251b_type zeroinitializer
@G__0x4c2537 = global %G__0x4c2537_type zeroinitializer
@G__0x4c2552 = global %G__0x4c2552_type zeroinitializer
@G__0x4c256f = global %G__0x4c256f_type zeroinitializer
@G__0x4c2591 = global %G__0x4c2591_type zeroinitializer
@G__0x4c25b6 = global %G__0x4c25b6_type zeroinitializer
@G__0x4c25d9 = global %G__0x4c25d9_type zeroinitializer
@G__0x4c25f8 = global %G__0x4c25f8_type zeroinitializer
@G__0x4c2610 = global %G__0x4c2610_type zeroinitializer
@G__0x4c2637 = global %G__0x4c2637_type zeroinitializer
@G__0x4c265d = global %G__0x4c265d_type zeroinitializer
@G__0x4c2679 = global %G__0x4c2679_type zeroinitializer
@G__0x4c269d = global %G__0x4c269d_type zeroinitializer
@G__0x4c26c8 = global %G__0x4c26c8_type zeroinitializer
@G__0x4c26e2 = global %G__0x4c26e2_type zeroinitializer
@G__0x4c26f6 = global %G__0x4c26f6_type zeroinitializer
@G__0x4c2720 = global %G__0x4c2720_type zeroinitializer
@G__0x4c273d = global %G__0x4c273d_type zeroinitializer
@G__0x4c2761 = global %G__0x4c2761_type zeroinitializer
@G__0x4c277a = global %G__0x4c277a_type zeroinitializer
@G__0x4c279c = global %G__0x4c279c_type zeroinitializer
@G__0x4c27bb = global %G__0x4c27bb_type zeroinitializer
@G__0x4c27d4 = global %G__0x4c27d4_type zeroinitializer
@G__0x4c27f9 = global %G__0x4c27f9_type zeroinitializer
@G__0x4c281f = global %G__0x4c281f_type zeroinitializer
@G__0x4c2843 = global %G__0x4c2843_type zeroinitializer
@G__0x4c286a = global %G__0x4c286a_type zeroinitializer
@G__0x6d1f9c = global %G__0x6d1f9c_type zeroinitializer
@G__0x6d1fc0 = global %G__0x6d1fc0_type zeroinitializer
@G__0x6d4520 = global %G__0x6d4520_type zeroinitializer
@G__0x6f6e20 = global %G__0x6f6e20_type zeroinitializer
@G__0x711780 = global %G__0x711780_type zeroinitializer
@G__0x721ca0 = global %G__0x721ca0_type zeroinitializer

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

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4acbc0.u_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4acb00.u_1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_477e20.Scaling_List(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4ac9c0.se_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_477fa0.GenerateVUISequenceParameters(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4751a0.SODBtoRBSP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @GenerateSeq_parameter_set_rbsp(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_477660 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_477660, %struct.Memory** %MEMORY
  %loadMem_477661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i8 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i8
  %27 = load i64, i64* %PC.i7
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i7
  store i64 %26, i64* %RBP.i9, align 8
  store %struct.Memory* %loadMem_477661, %struct.Memory** %MEMORY
  %loadMem_477664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i17 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i17
  %36 = load i64, i64* %PC.i16
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i16
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i17, align 8
  %39 = icmp ult i64 %35, 48
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
  %49 = xor i64 48, %35
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
  store %struct.Memory* %loadMem_477664, %struct.Memory** %MEMORY
  %loadMem_477668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i998 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i999 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i998
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i998
  store i64 1, i64* %RAX.i999, align 8
  store %struct.Memory* %loadMem_477668, %struct.Memory** %MEMORY
  %loadMem_47766d = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i1020 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EAX.i1021 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RCX.i1022 = bitcast %union.anon* %83 to i64*
  %84 = load i32, i32* %EAX.i1021
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %PC.i1020
  %87 = add i64 %86, 2
  store i64 %87, i64* %PC.i1020
  %88 = and i64 %85, 4294967295
  store i64 %88, i64* %RCX.i1022, align 8
  store %struct.Memory* %loadMem_47766d, %struct.Memory** %MEMORY
  %loadMem_47766f = load %struct.Memory*, %struct.Memory** %MEMORY
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 33
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %PC.i1041 = bitcast %union.anon* %91 to i64*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RAX.i1042 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %PC.i1041
  %96 = add i64 %95, 5
  store i64 %96, i64* %PC.i1041
  store i64 120, i64* %RAX.i1042, align 8
  store %struct.Memory* %loadMem_47766f, %struct.Memory** %MEMORY
  %loadMem_477674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i1038 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %EAX.i1039 = bitcast %union.anon* %102 to i32*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RDX.i1040 = bitcast %union.anon* %105 to i64*
  %106 = load i32, i32* %EAX.i1039
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %PC.i1038
  %109 = add i64 %108, 2
  store i64 %109, i64* %PC.i1038
  %110 = and i64 %107, 4294967295
  store i64 %110, i64* %RDX.i1040, align 8
  store %struct.Memory* %loadMem_477674, %struct.Memory** %MEMORY
  %loadMem_477676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 33
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %PC.i1035 = bitcast %union.anon* %113 to i64*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %RDI.i1036 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 15
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RBP.i1037 = bitcast %union.anon* %119 to i64*
  %120 = load i64, i64* %RBP.i1037
  %121 = sub i64 %120, 8
  %122 = load i64, i64* %RDI.i1036
  %123 = load i64, i64* %PC.i1035
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC.i1035
  %125 = inttoptr i64 %121 to i64*
  store i64 %122, i64* %125
  store %struct.Memory* %loadMem_477676, %struct.Memory** %MEMORY
  %loadMem_47767a = load %struct.Memory*, %struct.Memory** %MEMORY
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 33
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %PC.i1032 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 9
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RSI.i1033 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i1034 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RBP.i1034
  %136 = sub i64 %135, 16
  %137 = load i64, i64* %RSI.i1033
  %138 = load i64, i64* %PC.i1032
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC.i1032
  %140 = inttoptr i64 %136 to i64*
  store i64 %137, i64* %140
  store %struct.Memory* %loadMem_47767a, %struct.Memory** %MEMORY
  %loadMem_47767e = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i1030 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RBP.i1031 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %RBP.i1031
  %148 = sub i64 %147, 28
  %149 = load i64, i64* %PC.i1030
  %150 = add i64 %149, 7
  store i64 %150, i64* %PC.i1030
  %151 = inttoptr i64 %148 to i32*
  store i32 0, i32* %151
  store %struct.Memory* %loadMem_47767e, %struct.Memory** %MEMORY
  %loadMem_477685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 33
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %PC.i1027 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RCX.i1028 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 11
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RDI.i1029 = bitcast %union.anon* %160 to i64*
  %161 = load i64, i64* %RCX.i1028
  %162 = load i64, i64* %PC.i1027
  %163 = add i64 %162, 3
  store i64 %163, i64* %PC.i1027
  store i64 %161, i64* %RDI.i1029, align 8
  store %struct.Memory* %loadMem_477685, %struct.Memory** %MEMORY
  %loadMem_477688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i1024 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RDX.i1025 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 9
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RSI.i1026 = bitcast %union.anon* %172 to i64*
  %173 = load i64, i64* %RDX.i1025
  %174 = load i64, i64* %PC.i1024
  %175 = add i64 %174, 3
  store i64 %175, i64* %PC.i1024
  store i64 %173, i64* %RSI.i1026, align 8
  store %struct.Memory* %loadMem_477688, %struct.Memory** %MEMORY
  %loadMem1_47768b = load %struct.Memory*, %struct.Memory** %MEMORY
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 33
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %PC.i1023 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %PC.i1023
  %180 = add i64 %179, -484779
  %181 = load i64, i64* %PC.i1023
  %182 = add i64 %181, 5
  %183 = load i64, i64* %PC.i1023
  %184 = add i64 %183, 5
  store i64 %184, i64* %PC.i1023
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, -8
  %188 = inttoptr i64 %187 to i64*
  store i64 %182, i64* %188
  store i64 %187, i64* %185, align 8
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %180, i64* %189, align 8
  store %struct.Memory* %loadMem1_47768b, %struct.Memory** %MEMORY
  %loadMem2_47768b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47768b = load i64, i64* %3
  %190 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_47768b)
  store %struct.Memory* %190, %struct.Memory** %MEMORY
  %loadMem_477690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i1017 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %RAX.i1018 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 15
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RBP.i1019 = bitcast %union.anon* %199 to i64*
  %200 = load i64, i64* %RBP.i1019
  %201 = sub i64 %200, 24
  %202 = load i64, i64* %RAX.i1018
  %203 = load i64, i64* %PC.i1017
  %204 = add i64 %203, 4
  store i64 %204, i64* %PC.i1017
  %205 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %205
  store %struct.Memory* %loadMem_477690, %struct.Memory** %MEMORY
  %loadMem_477694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i1015 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RAX.i1016 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RAX.i1016
  %213 = load i64, i64* %PC.i1015
  %214 = add i64 %213, 4
  store i64 %214, i64* %PC.i1015
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %215, align 1
  %216 = trunc i64 %212 to i32
  %217 = and i32 %216, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %221, i8* %222, align 1
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %223, align 1
  %224 = icmp eq i64 %212, 0
  %225 = zext i1 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %225, i8* %226, align 1
  %227 = lshr i64 %212, 63
  %228 = trunc i64 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %228, i8* %229, align 1
  %230 = lshr i64 %212, 63
  %231 = xor i64 %227, %230
  %232 = add i64 %231, %230
  %233 = icmp eq i64 %232, 2
  %234 = zext i1 %233 to i8
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %234, i8* %235, align 1
  store %struct.Memory* %loadMem_477694, %struct.Memory** %MEMORY
  %loadMem_477698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i1014 = bitcast %union.anon* %238 to i64*
  %239 = load i64, i64* %PC.i1014
  %240 = add i64 %239, 21
  %241 = load i64, i64* %PC.i1014
  %242 = add i64 %241, 6
  %243 = load i64, i64* %PC.i1014
  %244 = add i64 %243, 6
  store i64 %244, i64* %PC.i1014
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %246 = load i8, i8* %245, align 1
  %247 = icmp eq i8 %246, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %BRANCH_TAKEN, align 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %250 = select i1 %247, i64 %240, i64 %242
  store i64 %250, i64* %249, align 8
  store %struct.Memory* %loadMem_477698, %struct.Memory** %MEMORY
  %loadBr_477698 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477698 = icmp eq i8 %loadBr_477698, 1
  br i1 %cmpBr_477698, label %block_.L_4776ad, label %block_47769e

block_47769e:                                     ; preds = %entry
  %loadMem_47769e = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i1012 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 11
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %RDI.i1013 = bitcast %union.anon* %256 to i64*
  %257 = load i64, i64* %PC.i1012
  %258 = add i64 %257, 10
  store i64 %258, i64* %PC.i1012
  store i64 ptrtoint (%G__0x4c2411_type* @G__0x4c2411 to i64), i64* %RDI.i1013, align 8
  store %struct.Memory* %loadMem_47769e, %struct.Memory** %MEMORY
  %loadMem1_4776a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i1011 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %PC.i1011
  %263 = add i64 %262, -123576
  %264 = load i64, i64* %PC.i1011
  %265 = add i64 %264, 5
  %266 = load i64, i64* %PC.i1011
  %267 = add i64 %266, 5
  store i64 %267, i64* %PC.i1011
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = add i64 %269, -8
  %271 = inttoptr i64 %270 to i64*
  store i64 %265, i64* %271
  store i64 %270, i64* %268, align 8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %263, i64* %272, align 8
  store %struct.Memory* %loadMem1_4776a8, %struct.Memory** %MEMORY
  %loadMem2_4776a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4776a8 = load i64, i64* %3
  %call2_4776a8 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_4776a8, %struct.Memory* %loadMem2_4776a8)
  store %struct.Memory* %call2_4776a8, %struct.Memory** %MEMORY
  br label %block_.L_4776ad

block_.L_4776ad:                                  ; preds = %block_47769e, %entry
  %loadMem_4776ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i1009 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RAX.i1010 = bitcast %union.anon* %278 to i64*
  %279 = load i64, i64* %PC.i1009
  %280 = add i64 %279, 5
  store i64 %280, i64* %PC.i1009
  store i64 1, i64* %RAX.i1010, align 8
  store %struct.Memory* %loadMem_4776ad, %struct.Memory** %MEMORY
  %loadMem_4776b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i1006 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %EAX.i1007 = bitcast %union.anon* %286 to i32*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 11
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RDI.i1008 = bitcast %union.anon* %289 to i64*
  %290 = load i32, i32* %EAX.i1007
  %291 = zext i32 %290 to i64
  %292 = load i64, i64* %PC.i1006
  %293 = add i64 %292, 2
  store i64 %293, i64* %PC.i1006
  %294 = and i64 %291, 4294967295
  store i64 %294, i64* %RDI.i1008, align 8
  store %struct.Memory* %loadMem_4776b2, %struct.Memory** %MEMORY
  %loadMem_4776b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i1004 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %RAX.i1005 = bitcast %union.anon* %300 to i64*
  %301 = load i64, i64* %PC.i1004
  %302 = add i64 %301, 5
  store i64 %302, i64* %PC.i1004
  store i64 48, i64* %RAX.i1005, align 8
  store %struct.Memory* %loadMem_4776b4, %struct.Memory** %MEMORY
  %loadMem_4776b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i1001 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %EAX.i1002 = bitcast %union.anon* %308 to i32*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 9
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RSI.i1003 = bitcast %union.anon* %311 to i64*
  %312 = load i32, i32* %EAX.i1002
  %313 = zext i32 %312 to i64
  %314 = load i64, i64* %PC.i1001
  %315 = add i64 %314, 2
  store i64 %315, i64* %PC.i1001
  %316 = and i64 %313, 4294967295
  store i64 %316, i64* %RSI.i1003, align 8
  store %struct.Memory* %loadMem_4776b9, %struct.Memory** %MEMORY
  %loadMem1_4776bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i1000 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %PC.i1000
  %321 = add i64 %320, -484827
  %322 = load i64, i64* %PC.i1000
  %323 = add i64 %322, 5
  %324 = load i64, i64* %PC.i1000
  %325 = add i64 %324, 5
  store i64 %325, i64* %PC.i1000
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = add i64 %327, -8
  %329 = inttoptr i64 %328 to i64*
  store i64 %323, i64* %329
  store i64 %328, i64* %326, align 8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %321, i64* %330, align 8
  store %struct.Memory* %loadMem1_4776bb, %struct.Memory** %MEMORY
  %loadMem2_4776bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4776bb = load i64, i64* %3
  %331 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_4776bb)
  store %struct.Memory* %331, %struct.Memory** %MEMORY
  %loadMem_4776c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 9
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RSI.i996 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 15
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RBP.i997 = bitcast %union.anon* %340 to i64*
  %341 = load i64, i64* %RBP.i997
  %342 = sub i64 %341, 24
  %343 = load i64, i64* %PC.i995
  %344 = add i64 %343, 4
  store i64 %344, i64* %PC.i995
  %345 = inttoptr i64 %342 to i64*
  %346 = load i64, i64* %345
  store i64 %346, i64* %RSI.i996, align 8
  store %struct.Memory* %loadMem_4776c0, %struct.Memory** %MEMORY
  %loadMem_4776c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i992 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RAX.i993 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 9
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RSI.i994 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %RSI.i994
  %357 = load i64, i64* %RAX.i993
  %358 = load i64, i64* %PC.i992
  %359 = add i64 %358, 3
  store i64 %359, i64* %PC.i992
  %360 = inttoptr i64 %356 to i64*
  store i64 %357, i64* %360
  store %struct.Memory* %loadMem_4776c4, %struct.Memory** %MEMORY
  %loadMem_4776c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i990 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RAX.i991 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RAX.i991
  %368 = load i64, i64* %PC.i990
  %369 = add i64 %368, 4
  store i64 %369, i64* %PC.i990
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %370, align 1
  %371 = trunc i64 %367 to i32
  %372 = and i32 %371, 255
  %373 = call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %376, i8* %377, align 1
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %378, align 1
  %379 = icmp eq i64 %367, 0
  %380 = zext i1 %379 to i8
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %380, i8* %381, align 1
  %382 = lshr i64 %367, 63
  %383 = trunc i64 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %383, i8* %384, align 1
  %385 = lshr i64 %367, 63
  %386 = xor i64 %382, %385
  %387 = add i64 %386, %385
  %388 = icmp eq i64 %387, 2
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %389, i8* %390, align 1
  store %struct.Memory* %loadMem_4776c7, %struct.Memory** %MEMORY
  %loadMem_4776cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i989 = bitcast %union.anon* %393 to i64*
  %394 = load i64, i64* %PC.i989
  %395 = add i64 %394, 21
  %396 = load i64, i64* %PC.i989
  %397 = add i64 %396, 6
  %398 = load i64, i64* %PC.i989
  %399 = add i64 %398, 6
  store i64 %399, i64* %PC.i989
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %401 = load i8, i8* %400, align 1
  %402 = icmp eq i8 %401, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %BRANCH_TAKEN, align 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %405 = select i1 %402, i64 %395, i64 %397
  store i64 %405, i64* %404, align 8
  store %struct.Memory* %loadMem_4776cb, %struct.Memory** %MEMORY
  %loadBr_4776cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4776cb = icmp eq i8 %loadBr_4776cb, 1
  br i1 %cmpBr_4776cb, label %block_.L_4776e0, label %block_4776d1

block_4776d1:                                     ; preds = %block_.L_4776ad
  %loadMem_4776d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i987 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 11
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RDI.i988 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %PC.i987
  %413 = add i64 %412, 10
  store i64 %413, i64* %PC.i987
  store i64 ptrtoint (%G__0x4c242b_type* @G__0x4c242b to i64), i64* %RDI.i988, align 8
  store %struct.Memory* %loadMem_4776d1, %struct.Memory** %MEMORY
  %loadMem1_4776db = load %struct.Memory*, %struct.Memory** %MEMORY
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 33
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %PC.i986 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %PC.i986
  %418 = add i64 %417, -123627
  %419 = load i64, i64* %PC.i986
  %420 = add i64 %419, 5
  %421 = load i64, i64* %PC.i986
  %422 = add i64 %421, 5
  store i64 %422, i64* %PC.i986
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = add i64 %424, -8
  %426 = inttoptr i64 %425 to i64*
  store i64 %420, i64* %426
  store i64 %425, i64* %423, align 8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %418, i64* %427, align 8
  store %struct.Memory* %loadMem1_4776db, %struct.Memory** %MEMORY
  %loadMem2_4776db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4776db = load i64, i64* %3
  %call2_4776db = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_4776db, %struct.Memory* %loadMem2_4776db)
  store %struct.Memory* %call2_4776db, %struct.Memory** %MEMORY
  br label %block_.L_4776e0

block_.L_4776e0:                                  ; preds = %block_4776d1, %block_.L_4776ad
  %loadMem_4776e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i984 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 11
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RDI.i985 = bitcast %union.anon* %433 to i64*
  %434 = load i64, i64* %PC.i984
  %435 = add i64 %434, 5
  store i64 %435, i64* %PC.i984
  store i64 8, i64* %RDI.i985, align 8
  store %struct.Memory* %loadMem_4776e0, %struct.Memory** %MEMORY
  %loadMem_4776e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i982 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 9
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RSI.i983 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %PC.i982
  %443 = add i64 %442, 10
  store i64 %443, i64* %PC.i982
  store i64 ptrtoint (%G__0x4c2445_type* @G__0x4c2445 to i64), i64* %RSI.i983, align 8
  store %struct.Memory* %loadMem_4776e5, %struct.Memory** %MEMORY
  %loadMem_4776ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 33
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %PC.i979 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %RAX.i980 = bitcast %union.anon* %449 to i64*
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 15
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %RBP.i981 = bitcast %union.anon* %452 to i64*
  %453 = load i64, i64* %RBP.i981
  %454 = sub i64 %453, 16
  %455 = load i64, i64* %PC.i979
  %456 = add i64 %455, 4
  store i64 %456, i64* %PC.i979
  %457 = inttoptr i64 %454 to i64*
  %458 = load i64, i64* %457
  store i64 %458, i64* %RAX.i980, align 8
  store %struct.Memory* %loadMem_4776ef, %struct.Memory** %MEMORY
  %loadMem_4776f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 33
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 5
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RCX.i977 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 15
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %RBP.i978 = bitcast %union.anon* %467 to i64*
  %468 = load i64, i64* %RBP.i978
  %469 = sub i64 %468, 24
  %470 = load i64, i64* %PC.i976
  %471 = add i64 %470, 4
  store i64 %471, i64* %PC.i976
  %472 = inttoptr i64 %469 to i64*
  %473 = load i64, i64* %472
  store i64 %473, i64* %RCX.i977, align 8
  store %struct.Memory* %loadMem_4776f3, %struct.Memory** %MEMORY
  %loadMem_4776f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 5
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %RCX.i975 = bitcast %union.anon* %479 to i64*
  %480 = load i64, i64* %RCX.i975
  %481 = load i64, i64* %PC.i974
  %482 = add i64 %481, 3
  store i64 %482, i64* %PC.i974
  %483 = inttoptr i64 %480 to i64*
  %484 = load i64, i64* %483
  store i64 %484, i64* %RCX.i975, align 8
  store %struct.Memory* %loadMem_4776f7, %struct.Memory** %MEMORY
  %loadMem_4776fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 33
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RAX.i972 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 5
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %RCX.i973 = bitcast %union.anon* %493 to i64*
  %494 = load i64, i64* %RCX.i973
  %495 = add i64 %494, 32
  %496 = load i64, i64* %RAX.i972
  %497 = load i64, i64* %PC.i971
  %498 = add i64 %497, 4
  store i64 %498, i64* %PC.i971
  %499 = inttoptr i64 %495 to i64*
  store i64 %496, i64* %499
  store %struct.Memory* %loadMem_4776fa, %struct.Memory** %MEMORY
  %loadMem_4776fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i968 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %RAX.i969 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 15
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RBP.i970 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %RBP.i970
  %510 = sub i64 %509, 24
  %511 = load i64, i64* %PC.i968
  %512 = add i64 %511, 4
  store i64 %512, i64* %PC.i968
  %513 = inttoptr i64 %510 to i64*
  %514 = load i64, i64* %513
  store i64 %514, i64* %RAX.i969, align 8
  store %struct.Memory* %loadMem_4776fe, %struct.Memory** %MEMORY
  %loadMem_477702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RAX.i967 = bitcast %union.anon* %520 to i64*
  %521 = load i64, i64* %RAX.i967
  %522 = load i64, i64* %PC.i966
  %523 = add i64 %522, 3
  store i64 %523, i64* %PC.i966
  %524 = inttoptr i64 %521 to i64*
  %525 = load i64, i64* %524
  store i64 %525, i64* %RAX.i967, align 8
  store %struct.Memory* %loadMem_477702, %struct.Memory** %MEMORY
  %loadMem_477705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 33
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RAX.i965 = bitcast %union.anon* %531 to i64*
  %532 = load i64, i64* %RAX.i965
  %533 = add i64 %532, 4
  %534 = load i64, i64* %PC.i964
  %535 = add i64 %534, 7
  store i64 %535, i64* %PC.i964
  %536 = inttoptr i64 %533 to i32*
  store i32 8, i32* %536
  store %struct.Memory* %loadMem_477705, %struct.Memory** %MEMORY
  %loadMem_47770c = load %struct.Memory*, %struct.Memory** %MEMORY
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 33
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 1
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RAX.i962 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 15
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RBP.i963 = bitcast %union.anon* %545 to i64*
  %546 = load i64, i64* %RBP.i963
  %547 = sub i64 %546, 8
  %548 = load i64, i64* %PC.i961
  %549 = add i64 %548, 4
  store i64 %549, i64* %PC.i961
  %550 = inttoptr i64 %547 to i64*
  %551 = load i64, i64* %550
  store i64 %551, i64* %RAX.i962, align 8
  store %struct.Memory* %loadMem_47770c, %struct.Memory** %MEMORY
  %loadMem_477710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 33
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 1
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %RAX.i959 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 7
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RDX.i960 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %RAX.i959
  %562 = add i64 %561, 4
  %563 = load i64, i64* %PC.i958
  %564 = add i64 %563, 3
  store i64 %564, i64* %PC.i958
  %565 = inttoptr i64 %562 to i32*
  %566 = load i32, i32* %565
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RDX.i960, align 8
  store %struct.Memory* %loadMem_477710, %struct.Memory** %MEMORY
  %loadMem_477713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 5
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RCX.i956 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 15
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RBP.i957 = bitcast %union.anon* %576 to i64*
  %577 = load i64, i64* %RBP.i957
  %578 = sub i64 %577, 24
  %579 = load i64, i64* %PC.i955
  %580 = add i64 %579, 4
  store i64 %580, i64* %PC.i955
  %581 = inttoptr i64 %578 to i64*
  %582 = load i64, i64* %581
  store i64 %582, i64* %RCX.i956, align 8
  store %struct.Memory* %loadMem_477713, %struct.Memory** %MEMORY
  %loadMem1_477717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %585 to i64*
  %586 = load i64, i64* %PC.i954
  %587 = add i64 %586, 218281
  %588 = load i64, i64* %PC.i954
  %589 = add i64 %588, 5
  %590 = load i64, i64* %PC.i954
  %591 = add i64 %590, 5
  store i64 %591, i64* %PC.i954
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %593 = load i64, i64* %592, align 8
  %594 = add i64 %593, -8
  %595 = inttoptr i64 %594 to i64*
  store i64 %589, i64* %595
  store i64 %594, i64* %592, align 8
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %587, i64* %596, align 8
  store %struct.Memory* %loadMem1_477717, %struct.Memory** %MEMORY
  %loadMem2_477717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477717 = load i64, i64* %3
  %call2_477717 = call %struct.Memory* @sub_4acbc0.u_v(%struct.State* %0, i64 %loadPC_477717, %struct.Memory* %loadMem2_477717)
  store %struct.Memory* %call2_477717, %struct.Memory** %MEMORY
  %loadMem_47771c = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 11
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RDI.i953 = bitcast %union.anon* %602 to i64*
  %603 = load i64, i64* %PC.i952
  %604 = add i64 %603, 10
  store i64 %604, i64* %PC.i952
  store i64 ptrtoint (%G__0x4c2456_type* @G__0x4c2456 to i64), i64* %RDI.i953, align 8
  store %struct.Memory* %loadMem_47771c, %struct.Memory** %MEMORY
  %loadMem_477726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 33
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 1
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %RAX.i950 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 15
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RBP.i951 = bitcast %union.anon* %613 to i64*
  %614 = load i64, i64* %RAX.i950
  %615 = load i64, i64* %RBP.i951
  %616 = sub i64 %615, 28
  %617 = load i64, i64* %PC.i949
  %618 = add i64 %617, 3
  store i64 %618, i64* %PC.i949
  %619 = trunc i64 %614 to i32
  %620 = inttoptr i64 %616 to i32*
  %621 = load i32, i32* %620
  %622 = add i32 %621, %619
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RAX.i950, align 8
  %624 = icmp ult i32 %622, %619
  %625 = icmp ult i32 %622, %621
  %626 = or i1 %624, %625
  %627 = zext i1 %626 to i8
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %627, i8* %628, align 1
  %629 = and i32 %622, 255
  %630 = call i32 @llvm.ctpop.i32(i32 %629)
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %633, i8* %634, align 1
  %635 = xor i32 %621, %619
  %636 = xor i32 %635, %622
  %637 = lshr i32 %636, 4
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %639, i8* %640, align 1
  %641 = icmp eq i32 %622, 0
  %642 = zext i1 %641 to i8
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %642, i8* %643, align 1
  %644 = lshr i32 %622, 31
  %645 = trunc i32 %644 to i8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %645, i8* %646, align 1
  %647 = lshr i32 %619, 31
  %648 = lshr i32 %621, 31
  %649 = xor i32 %644, %647
  %650 = xor i32 %644, %648
  %651 = add i32 %649, %650
  %652 = icmp eq i32 %651, 2
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %653, i8* %654, align 1
  store %struct.Memory* %loadMem_477726, %struct.Memory** %MEMORY
  %loadMem_477729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %EAX.i947 = bitcast %union.anon* %660 to i32*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i948 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RBP.i948
  %665 = sub i64 %664, 28
  %666 = load i32, i32* %EAX.i947
  %667 = zext i32 %666 to i64
  %668 = load i64, i64* %PC.i946
  %669 = add i64 %668, 3
  store i64 %669, i64* %PC.i946
  %670 = inttoptr i64 %665 to i32*
  store i32 %666, i32* %670
  store %struct.Memory* %loadMem_477729, %struct.Memory** %MEMORY
  %loadMem_47772c = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 5
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RCX.i944 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 15
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RBP.i945 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %RBP.i945
  %681 = sub i64 %680, 8
  %682 = load i64, i64* %PC.i943
  %683 = add i64 %682, 4
  store i64 %683, i64* %PC.i943
  %684 = inttoptr i64 %681 to i64*
  %685 = load i64, i64* %684
  store i64 %685, i64* %RCX.i944, align 8
  store %struct.Memory* %loadMem_47772c, %struct.Memory** %MEMORY
  %loadMem_477730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 5
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RCX.i941 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 9
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %RSI.i942 = bitcast %union.anon* %694 to i64*
  %695 = load i64, i64* %RCX.i941
  %696 = add i64 %695, 8
  %697 = load i64, i64* %PC.i940
  %698 = add i64 %697, 3
  store i64 %698, i64* %PC.i940
  %699 = inttoptr i64 %696 to i32*
  %700 = load i32, i32* %699
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RSI.i942, align 8
  store %struct.Memory* %loadMem_477730, %struct.Memory** %MEMORY
  %loadMem_477733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 33
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 7
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %RDX.i938 = bitcast %union.anon* %707 to i64*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 15
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RBP.i939 = bitcast %union.anon* %710 to i64*
  %711 = load i64, i64* %RBP.i939
  %712 = sub i64 %711, 24
  %713 = load i64, i64* %PC.i937
  %714 = add i64 %713, 4
  store i64 %714, i64* %PC.i937
  %715 = inttoptr i64 %712 to i64*
  %716 = load i64, i64* %715
  store i64 %716, i64* %RDX.i938, align 8
  store %struct.Memory* %loadMem_477733, %struct.Memory** %MEMORY
  %loadMem1_477737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %719 to i64*
  %720 = load i64, i64* %PC.i936
  %721 = add i64 %720, 218057
  %722 = load i64, i64* %PC.i936
  %723 = add i64 %722, 5
  %724 = load i64, i64* %PC.i936
  %725 = add i64 %724, 5
  store i64 %725, i64* %PC.i936
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %727 = load i64, i64* %726, align 8
  %728 = add i64 %727, -8
  %729 = inttoptr i64 %728 to i64*
  store i64 %723, i64* %729
  store i64 %728, i64* %726, align 8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %721, i64* %730, align 8
  store %struct.Memory* %loadMem1_477737, %struct.Memory** %MEMORY
  %loadMem2_477737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477737 = load i64, i64* %3
  %call2_477737 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477737, %struct.Memory* %loadMem2_477737)
  store %struct.Memory* %call2_477737, %struct.Memory** %MEMORY
  %loadMem_47773c = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 11
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RDI.i935 = bitcast %union.anon* %736 to i64*
  %737 = load i64, i64* %PC.i934
  %738 = add i64 %737, 10
  store i64 %738, i64* %PC.i934
  store i64 ptrtoint (%G__0x4c2471_type* @G__0x4c2471 to i64), i64* %RDI.i935, align 8
  store %struct.Memory* %loadMem_47773c, %struct.Memory** %MEMORY
  %loadMem_477746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 1
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RAX.i932 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 15
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %RAX.i932
  %749 = load i64, i64* %RBP.i933
  %750 = sub i64 %749, 28
  %751 = load i64, i64* %PC.i931
  %752 = add i64 %751, 3
  store i64 %752, i64* %PC.i931
  %753 = trunc i64 %748 to i32
  %754 = inttoptr i64 %750 to i32*
  %755 = load i32, i32* %754
  %756 = add i32 %755, %753
  %757 = zext i32 %756 to i64
  store i64 %757, i64* %RAX.i932, align 8
  %758 = icmp ult i32 %756, %753
  %759 = icmp ult i32 %756, %755
  %760 = or i1 %758, %759
  %761 = zext i1 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %761, i8* %762, align 1
  %763 = and i32 %756, 255
  %764 = call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %767, i8* %768, align 1
  %769 = xor i32 %755, %753
  %770 = xor i32 %769, %756
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %773, i8* %774, align 1
  %775 = icmp eq i32 %756, 0
  %776 = zext i1 %775 to i8
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %776, i8* %777, align 1
  %778 = lshr i32 %756, 31
  %779 = trunc i32 %778 to i8
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %779, i8* %780, align 1
  %781 = lshr i32 %753, 31
  %782 = lshr i32 %755, 31
  %783 = xor i32 %778, %781
  %784 = xor i32 %778, %782
  %785 = add i32 %783, %784
  %786 = icmp eq i32 %785, 2
  %787 = zext i1 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %787, i8* %788, align 1
  store %struct.Memory* %loadMem_477746, %struct.Memory** %MEMORY
  %loadMem_477749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 33
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 1
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %EAX.i929 = bitcast %union.anon* %794 to i32*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 15
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RBP.i930 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RBP.i930
  %799 = sub i64 %798, 28
  %800 = load i32, i32* %EAX.i929
  %801 = zext i32 %800 to i64
  %802 = load i64, i64* %PC.i928
  %803 = add i64 %802, 3
  store i64 %803, i64* %PC.i928
  %804 = inttoptr i64 %799 to i32*
  store i32 %800, i32* %804
  store %struct.Memory* %loadMem_477749, %struct.Memory** %MEMORY
  %loadMem_47774c = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 5
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RCX.i926 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 15
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %813 to i64*
  %814 = load i64, i64* %RBP.i927
  %815 = sub i64 %814, 8
  %816 = load i64, i64* %PC.i925
  %817 = add i64 %816, 4
  store i64 %817, i64* %PC.i925
  %818 = inttoptr i64 %815 to i64*
  %819 = load i64, i64* %818
  store i64 %819, i64* %RCX.i926, align 8
  store %struct.Memory* %loadMem_47774c, %struct.Memory** %MEMORY
  %loadMem_477750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 5
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RCX.i923 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 9
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RSI.i924 = bitcast %union.anon* %828 to i64*
  %829 = load i64, i64* %RCX.i923
  %830 = add i64 %829, 12
  %831 = load i64, i64* %PC.i922
  %832 = add i64 %831, 3
  store i64 %832, i64* %PC.i922
  %833 = inttoptr i64 %830 to i32*
  %834 = load i32, i32* %833
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RSI.i924, align 8
  store %struct.Memory* %loadMem_477750, %struct.Memory** %MEMORY
  %loadMem_477753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 33
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 7
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RDX.i920 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 15
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RBP.i921 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RBP.i921
  %846 = sub i64 %845, 24
  %847 = load i64, i64* %PC.i919
  %848 = add i64 %847, 4
  store i64 %848, i64* %PC.i919
  %849 = inttoptr i64 %846 to i64*
  %850 = load i64, i64* %849
  store i64 %850, i64* %RDX.i920, align 8
  store %struct.Memory* %loadMem_477753, %struct.Memory** %MEMORY
  %loadMem1_477757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %853 to i64*
  %854 = load i64, i64* %PC.i918
  %855 = add i64 %854, 218025
  %856 = load i64, i64* %PC.i918
  %857 = add i64 %856, 5
  %858 = load i64, i64* %PC.i918
  %859 = add i64 %858, 5
  store i64 %859, i64* %PC.i918
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %861 = load i64, i64* %860, align 8
  %862 = add i64 %861, -8
  %863 = inttoptr i64 %862 to i64*
  store i64 %857, i64* %863
  store i64 %862, i64* %860, align 8
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %855, i64* %864, align 8
  store %struct.Memory* %loadMem1_477757, %struct.Memory** %MEMORY
  %loadMem2_477757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477757 = load i64, i64* %3
  %call2_477757 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477757, %struct.Memory* %loadMem2_477757)
  store %struct.Memory* %call2_477757, %struct.Memory** %MEMORY
  %loadMem_47775c = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %867 to i64*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 11
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %RDI.i917 = bitcast %union.anon* %870 to i64*
  %871 = load i64, i64* %PC.i916
  %872 = add i64 %871, 10
  store i64 %872, i64* %PC.i916
  store i64 ptrtoint (%G__0x4c248c_type* @G__0x4c248c to i64), i64* %RDI.i917, align 8
  store %struct.Memory* %loadMem_47775c, %struct.Memory** %MEMORY
  %loadMem_477766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 33
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 1
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RAX.i914 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 15
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %881 to i64*
  %882 = load i64, i64* %RAX.i914
  %883 = load i64, i64* %RBP.i915
  %884 = sub i64 %883, 28
  %885 = load i64, i64* %PC.i913
  %886 = add i64 %885, 3
  store i64 %886, i64* %PC.i913
  %887 = trunc i64 %882 to i32
  %888 = inttoptr i64 %884 to i32*
  %889 = load i32, i32* %888
  %890 = add i32 %889, %887
  %891 = zext i32 %890 to i64
  store i64 %891, i64* %RAX.i914, align 8
  %892 = icmp ult i32 %890, %887
  %893 = icmp ult i32 %890, %889
  %894 = or i1 %892, %893
  %895 = zext i1 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %895, i8* %896, align 1
  %897 = and i32 %890, 255
  %898 = call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %901, i8* %902, align 1
  %903 = xor i32 %889, %887
  %904 = xor i32 %903, %890
  %905 = lshr i32 %904, 4
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %907, i8* %908, align 1
  %909 = icmp eq i32 %890, 0
  %910 = zext i1 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %910, i8* %911, align 1
  %912 = lshr i32 %890, 31
  %913 = trunc i32 %912 to i8
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %913, i8* %914, align 1
  %915 = lshr i32 %887, 31
  %916 = lshr i32 %889, 31
  %917 = xor i32 %912, %915
  %918 = xor i32 %912, %916
  %919 = add i32 %917, %918
  %920 = icmp eq i32 %919, 2
  %921 = zext i1 %920 to i8
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %921, i8* %922, align 1
  store %struct.Memory* %loadMem_477766, %struct.Memory** %MEMORY
  %loadMem_477769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 33
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 1
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %EAX.i911 = bitcast %union.anon* %928 to i32*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 15
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RBP.i912 = bitcast %union.anon* %931 to i64*
  %932 = load i64, i64* %RBP.i912
  %933 = sub i64 %932, 28
  %934 = load i32, i32* %EAX.i911
  %935 = zext i32 %934 to i64
  %936 = load i64, i64* %PC.i910
  %937 = add i64 %936, 3
  store i64 %937, i64* %PC.i910
  %938 = inttoptr i64 %933 to i32*
  store i32 %934, i32* %938
  store %struct.Memory* %loadMem_477769, %struct.Memory** %MEMORY
  %loadMem_47776c = load %struct.Memory*, %struct.Memory** %MEMORY
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 33
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 5
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RCX.i908 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 15
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RBP.i909 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %RBP.i909
  %949 = sub i64 %948, 8
  %950 = load i64, i64* %PC.i907
  %951 = add i64 %950, 4
  store i64 %951, i64* %PC.i907
  %952 = inttoptr i64 %949 to i64*
  %953 = load i64, i64* %952
  store i64 %953, i64* %RCX.i908, align 8
  store %struct.Memory* %loadMem_47776c, %struct.Memory** %MEMORY
  %loadMem_477770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 33
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 5
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RCX.i905 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 9
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %RSI.i906 = bitcast %union.anon* %962 to i64*
  %963 = load i64, i64* %RCX.i905
  %964 = add i64 %963, 16
  %965 = load i64, i64* %PC.i904
  %966 = add i64 %965, 3
  store i64 %966, i64* %PC.i904
  %967 = inttoptr i64 %964 to i32*
  %968 = load i32, i32* %967
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RSI.i906, align 8
  store %struct.Memory* %loadMem_477770, %struct.Memory** %MEMORY
  %loadMem_477773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 33
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 7
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RDX.i902 = bitcast %union.anon* %975 to i64*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 15
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %RBP.i903 = bitcast %union.anon* %978 to i64*
  %979 = load i64, i64* %RBP.i903
  %980 = sub i64 %979, 24
  %981 = load i64, i64* %PC.i901
  %982 = add i64 %981, 4
  store i64 %982, i64* %PC.i901
  %983 = inttoptr i64 %980 to i64*
  %984 = load i64, i64* %983
  store i64 %984, i64* %RDX.i902, align 8
  store %struct.Memory* %loadMem_477773, %struct.Memory** %MEMORY
  %loadMem1_477777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 33
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %987 to i64*
  %988 = load i64, i64* %PC.i900
  %989 = add i64 %988, 217993
  %990 = load i64, i64* %PC.i900
  %991 = add i64 %990, 5
  %992 = load i64, i64* %PC.i900
  %993 = add i64 %992, 5
  store i64 %993, i64* %PC.i900
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %995 = load i64, i64* %994, align 8
  %996 = add i64 %995, -8
  %997 = inttoptr i64 %996 to i64*
  store i64 %991, i64* %997
  store i64 %996, i64* %994, align 8
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %989, i64* %998, align 8
  store %struct.Memory* %loadMem1_477777, %struct.Memory** %MEMORY
  %loadMem2_477777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477777 = load i64, i64* %3
  %call2_477777 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477777, %struct.Memory* %loadMem2_477777)
  store %struct.Memory* %call2_477777, %struct.Memory** %MEMORY
  %loadMem_47777c = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 11
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RDI.i899 = bitcast %union.anon* %1004 to i64*
  %1005 = load i64, i64* %PC.i898
  %1006 = add i64 %1005, 10
  store i64 %1006, i64* %PC.i898
  store i64 ptrtoint (%G__0x4c24a7_type* @G__0x4c24a7 to i64), i64* %RDI.i899, align 8
  store %struct.Memory* %loadMem_47777c, %struct.Memory** %MEMORY
  %loadMem_477786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 33
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 1
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RAX.i896 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 15
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RBP.i897 = bitcast %union.anon* %1015 to i64*
  %1016 = load i64, i64* %RAX.i896
  %1017 = load i64, i64* %RBP.i897
  %1018 = sub i64 %1017, 28
  %1019 = load i64, i64* %PC.i895
  %1020 = add i64 %1019, 3
  store i64 %1020, i64* %PC.i895
  %1021 = trunc i64 %1016 to i32
  %1022 = inttoptr i64 %1018 to i32*
  %1023 = load i32, i32* %1022
  %1024 = add i32 %1023, %1021
  %1025 = zext i32 %1024 to i64
  store i64 %1025, i64* %RAX.i896, align 8
  %1026 = icmp ult i32 %1024, %1021
  %1027 = icmp ult i32 %1024, %1023
  %1028 = or i1 %1026, %1027
  %1029 = zext i1 %1028 to i8
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1029, i8* %1030, align 1
  %1031 = and i32 %1024, 255
  %1032 = call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1035, i8* %1036, align 1
  %1037 = xor i32 %1023, %1021
  %1038 = xor i32 %1037, %1024
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1041, i8* %1042, align 1
  %1043 = icmp eq i32 %1024, 0
  %1044 = zext i1 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1044, i8* %1045, align 1
  %1046 = lshr i32 %1024, 31
  %1047 = trunc i32 %1046 to i8
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1047, i8* %1048, align 1
  %1049 = lshr i32 %1021, 31
  %1050 = lshr i32 %1023, 31
  %1051 = xor i32 %1046, %1049
  %1052 = xor i32 %1046, %1050
  %1053 = add i32 %1051, %1052
  %1054 = icmp eq i32 %1053, 2
  %1055 = zext i1 %1054 to i8
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1055, i8* %1056, align 1
  store %struct.Memory* %loadMem_477786, %struct.Memory** %MEMORY
  %loadMem_477789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 33
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 1
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %EAX.i893 = bitcast %union.anon* %1062 to i32*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 15
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RBP.i894 = bitcast %union.anon* %1065 to i64*
  %1066 = load i64, i64* %RBP.i894
  %1067 = sub i64 %1066, 28
  %1068 = load i32, i32* %EAX.i893
  %1069 = zext i32 %1068 to i64
  %1070 = load i64, i64* %PC.i892
  %1071 = add i64 %1070, 3
  store i64 %1071, i64* %PC.i892
  %1072 = inttoptr i64 %1067 to i32*
  store i32 %1068, i32* %1072
  store %struct.Memory* %loadMem_477789, %struct.Memory** %MEMORY
  %loadMem_47778c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 33
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 5
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RCX.i890 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 15
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RBP.i891 = bitcast %union.anon* %1081 to i64*
  %1082 = load i64, i64* %RBP.i891
  %1083 = sub i64 %1082, 8
  %1084 = load i64, i64* %PC.i889
  %1085 = add i64 %1084, 4
  store i64 %1085, i64* %PC.i889
  %1086 = inttoptr i64 %1083 to i64*
  %1087 = load i64, i64* %1086
  store i64 %1087, i64* %RCX.i890, align 8
  store %struct.Memory* %loadMem_47778c, %struct.Memory** %MEMORY
  %loadMem_477790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 5
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RCX.i887 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 9
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RSI.i888 = bitcast %union.anon* %1096 to i64*
  %1097 = load i64, i64* %RCX.i887
  %1098 = add i64 %1097, 20
  %1099 = load i64, i64* %PC.i886
  %1100 = add i64 %1099, 3
  store i64 %1100, i64* %PC.i886
  %1101 = inttoptr i64 %1098 to i32*
  %1102 = load i32, i32* %1101
  %1103 = zext i32 %1102 to i64
  store i64 %1103, i64* %RSI.i888, align 8
  store %struct.Memory* %loadMem_477790, %struct.Memory** %MEMORY
  %loadMem_477793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 7
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RDX.i884 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 15
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %RBP.i885 = bitcast %union.anon* %1112 to i64*
  %1113 = load i64, i64* %RBP.i885
  %1114 = sub i64 %1113, 24
  %1115 = load i64, i64* %PC.i883
  %1116 = add i64 %1115, 4
  store i64 %1116, i64* %PC.i883
  %1117 = inttoptr i64 %1114 to i64*
  %1118 = load i64, i64* %1117
  store i64 %1118, i64* %RDX.i884, align 8
  store %struct.Memory* %loadMem_477793, %struct.Memory** %MEMORY
  %loadMem1_477797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %1121 to i64*
  %1122 = load i64, i64* %PC.i882
  %1123 = add i64 %1122, 217961
  %1124 = load i64, i64* %PC.i882
  %1125 = add i64 %1124, 5
  %1126 = load i64, i64* %PC.i882
  %1127 = add i64 %1126, 5
  store i64 %1127, i64* %PC.i882
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1129 = load i64, i64* %1128, align 8
  %1130 = add i64 %1129, -8
  %1131 = inttoptr i64 %1130 to i64*
  store i64 %1125, i64* %1131
  store i64 %1130, i64* %1128, align 8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1123, i64* %1132, align 8
  store %struct.Memory* %loadMem1_477797, %struct.Memory** %MEMORY
  %loadMem2_477797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477797 = load i64, i64* %3
  %call2_477797 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477797, %struct.Memory* %loadMem2_477797)
  store %struct.Memory* %call2_477797, %struct.Memory** %MEMORY
  %loadMem_47779c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 11
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RDI.i881 = bitcast %union.anon* %1138 to i64*
  %1139 = load i64, i64* %PC.i880
  %1140 = add i64 %1139, 5
  store i64 %1140, i64* %PC.i880
  store i64 4, i64* %RDI.i881, align 8
  store %struct.Memory* %loadMem_47779c, %struct.Memory** %MEMORY
  %loadMem_4777a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 9
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RSI.i879 = bitcast %union.anon* %1146 to i64*
  %1147 = load i64, i64* %PC.i878
  %1148 = add i64 %1147, 10
  store i64 %1148, i64* %PC.i878
  store i64 ptrtoint (%G__0x4c24c2_type* @G__0x4c24c2 to i64), i64* %RSI.i879, align 8
  store %struct.Memory* %loadMem_4777a1, %struct.Memory** %MEMORY
  %loadMem_4777ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 7
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1154 to i32*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 7
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RDX.i877 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %RDX.i877
  %1159 = load i32, i32* %EDX.i
  %1160 = zext i32 %1159 to i64
  %1161 = load i64, i64* %PC.i876
  %1162 = add i64 %1161, 2
  store i64 %1162, i64* %PC.i876
  %1163 = xor i64 %1160, %1158
  %1164 = trunc i64 %1163 to i32
  %1165 = and i64 %1163, 4294967295
  store i64 %1165, i64* %RDX.i877, align 8
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1166, align 1
  %1167 = and i32 %1164, 255
  %1168 = call i32 @llvm.ctpop.i32(i32 %1167)
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1171, i8* %1172, align 1
  %1173 = icmp eq i32 %1164, 0
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1174, i8* %1175, align 1
  %1176 = lshr i32 %1164, 31
  %1177 = trunc i32 %1176 to i8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1177, i8* %1178, align 1
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1179, align 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1180, align 1
  store %struct.Memory* %loadMem_4777ab, %struct.Memory** %MEMORY
  %loadMem_4777ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 33
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 1
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RAX.i874 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 15
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %RBP.i875 = bitcast %union.anon* %1189 to i64*
  %1190 = load i64, i64* %RAX.i874
  %1191 = load i64, i64* %RBP.i875
  %1192 = sub i64 %1191, 28
  %1193 = load i64, i64* %PC.i873
  %1194 = add i64 %1193, 3
  store i64 %1194, i64* %PC.i873
  %1195 = trunc i64 %1190 to i32
  %1196 = inttoptr i64 %1192 to i32*
  %1197 = load i32, i32* %1196
  %1198 = add i32 %1197, %1195
  %1199 = zext i32 %1198 to i64
  store i64 %1199, i64* %RAX.i874, align 8
  %1200 = icmp ult i32 %1198, %1195
  %1201 = icmp ult i32 %1198, %1197
  %1202 = or i1 %1200, %1201
  %1203 = zext i1 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1203, i8* %1204, align 1
  %1205 = and i32 %1198, 255
  %1206 = call i32 @llvm.ctpop.i32(i32 %1205)
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1209, i8* %1210, align 1
  %1211 = xor i32 %1197, %1195
  %1212 = xor i32 %1211, %1198
  %1213 = lshr i32 %1212, 4
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1215, i8* %1216, align 1
  %1217 = icmp eq i32 %1198, 0
  %1218 = zext i1 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1218, i8* %1219, align 1
  %1220 = lshr i32 %1198, 31
  %1221 = trunc i32 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1221, i8* %1222, align 1
  %1223 = lshr i32 %1195, 31
  %1224 = lshr i32 %1197, 31
  %1225 = xor i32 %1220, %1223
  %1226 = xor i32 %1220, %1224
  %1227 = add i32 %1225, %1226
  %1228 = icmp eq i32 %1227, 2
  %1229 = zext i1 %1228 to i8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1229, i8* %1230, align 1
  store %struct.Memory* %loadMem_4777ad, %struct.Memory** %MEMORY
  %loadMem_4777b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 1
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %EAX.i871 = bitcast %union.anon* %1236 to i32*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 15
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RBP.i872 = bitcast %union.anon* %1239 to i64*
  %1240 = load i64, i64* %RBP.i872
  %1241 = sub i64 %1240, 28
  %1242 = load i32, i32* %EAX.i871
  %1243 = zext i32 %1242 to i64
  %1244 = load i64, i64* %PC.i870
  %1245 = add i64 %1244, 3
  store i64 %1245, i64* %PC.i870
  %1246 = inttoptr i64 %1241 to i32*
  store i32 %1242, i32* %1246
  store %struct.Memory* %loadMem_4777b0, %struct.Memory** %MEMORY
  %loadMem_4777b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 5
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RCX.i868 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 15
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RBP.i869 = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RBP.i869
  %1257 = sub i64 %1256, 24
  %1258 = load i64, i64* %PC.i867
  %1259 = add i64 %1258, 4
  store i64 %1259, i64* %PC.i867
  %1260 = inttoptr i64 %1257 to i64*
  %1261 = load i64, i64* %1260
  store i64 %1261, i64* %RCX.i868, align 8
  store %struct.Memory* %loadMem_4777b3, %struct.Memory** %MEMORY
  %loadMem1_4777b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 33
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %1264 to i64*
  %1265 = load i64, i64* %PC.i866
  %1266 = add i64 %1265, 218121
  %1267 = load i64, i64* %PC.i866
  %1268 = add i64 %1267, 5
  %1269 = load i64, i64* %PC.i866
  %1270 = add i64 %1269, 5
  store i64 %1270, i64* %PC.i866
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1272 = load i64, i64* %1271, align 8
  %1273 = add i64 %1272, -8
  %1274 = inttoptr i64 %1273 to i64*
  store i64 %1268, i64* %1274
  store i64 %1273, i64* %1271, align 8
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1266, i64* %1275, align 8
  store %struct.Memory* %loadMem1_4777b7, %struct.Memory** %MEMORY
  %loadMem2_4777b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4777b7 = load i64, i64* %3
  %call2_4777b7 = call %struct.Memory* @sub_4acbc0.u_v(%struct.State* %0, i64 %loadPC_4777b7, %struct.Memory* %loadMem2_4777b7)
  store %struct.Memory* %call2_4777b7, %struct.Memory** %MEMORY
  %loadMem_4777bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 33
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 11
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %RDI.i865 = bitcast %union.anon* %1281 to i64*
  %1282 = load i64, i64* %PC.i864
  %1283 = add i64 %1282, 5
  store i64 %1283, i64* %PC.i864
  store i64 8, i64* %RDI.i865, align 8
  store %struct.Memory* %loadMem_4777bc, %struct.Memory** %MEMORY
  %loadMem_4777c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 9
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %RSI.i863 = bitcast %union.anon* %1289 to i64*
  %1290 = load i64, i64* %PC.i862
  %1291 = add i64 %1290, 10
  store i64 %1291, i64* %PC.i862
  store i64 ptrtoint (%G__0x4c24db_type* @G__0x4c24db to i64), i64* %RSI.i863, align 8
  store %struct.Memory* %loadMem_4777c1, %struct.Memory** %MEMORY
  %loadMem_4777cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 33
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %1294 to i64*
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 1
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %RAX.i860 = bitcast %union.anon* %1297 to i64*
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 15
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %RBP.i861 = bitcast %union.anon* %1300 to i64*
  %1301 = load i64, i64* %RAX.i860
  %1302 = load i64, i64* %RBP.i861
  %1303 = sub i64 %1302, 28
  %1304 = load i64, i64* %PC.i859
  %1305 = add i64 %1304, 3
  store i64 %1305, i64* %PC.i859
  %1306 = trunc i64 %1301 to i32
  %1307 = inttoptr i64 %1303 to i32*
  %1308 = load i32, i32* %1307
  %1309 = add i32 %1308, %1306
  %1310 = zext i32 %1309 to i64
  store i64 %1310, i64* %RAX.i860, align 8
  %1311 = icmp ult i32 %1309, %1306
  %1312 = icmp ult i32 %1309, %1308
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
  %1322 = xor i32 %1308, %1306
  %1323 = xor i32 %1322, %1309
  %1324 = lshr i32 %1323, 4
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1326, i8* %1327, align 1
  %1328 = icmp eq i32 %1309, 0
  %1329 = zext i1 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1329, i8* %1330, align 1
  %1331 = lshr i32 %1309, 31
  %1332 = trunc i32 %1331 to i8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1332, i8* %1333, align 1
  %1334 = lshr i32 %1306, 31
  %1335 = lshr i32 %1308, 31
  %1336 = xor i32 %1331, %1334
  %1337 = xor i32 %1331, %1335
  %1338 = add i32 %1336, %1337
  %1339 = icmp eq i32 %1338, 2
  %1340 = zext i1 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1340, i8* %1341, align 1
  store %struct.Memory* %loadMem_4777cb, %struct.Memory** %MEMORY
  %loadMem_4777ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 33
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %1344 to i64*
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 1
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %EAX.i857 = bitcast %union.anon* %1347 to i32*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 15
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %1350 to i64*
  %1351 = load i64, i64* %RBP.i858
  %1352 = sub i64 %1351, 28
  %1353 = load i32, i32* %EAX.i857
  %1354 = zext i32 %1353 to i64
  %1355 = load i64, i64* %PC.i856
  %1356 = add i64 %1355, 3
  store i64 %1356, i64* %PC.i856
  %1357 = inttoptr i64 %1352 to i32*
  store i32 %1353, i32* %1357
  store %struct.Memory* %loadMem_4777ce, %struct.Memory** %MEMORY
  %loadMem_4777d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 33
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %1360 to i64*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 5
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %RCX.i854 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 15
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %1366 to i64*
  %1367 = load i64, i64* %RBP.i855
  %1368 = sub i64 %1367, 8
  %1369 = load i64, i64* %PC.i853
  %1370 = add i64 %1369, 4
  store i64 %1370, i64* %PC.i853
  %1371 = inttoptr i64 %1368 to i64*
  %1372 = load i64, i64* %1371
  store i64 %1372, i64* %RCX.i854, align 8
  store %struct.Memory* %loadMem_4777d1, %struct.Memory** %MEMORY
  %loadMem_4777d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 5
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RCX.i851 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 7
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %RDX.i852 = bitcast %union.anon* %1381 to i64*
  %1382 = load i64, i64* %RCX.i851
  %1383 = add i64 %1382, 24
  %1384 = load i64, i64* %PC.i850
  %1385 = add i64 %1384, 3
  store i64 %1385, i64* %PC.i850
  %1386 = inttoptr i64 %1383 to i32*
  %1387 = load i32, i32* %1386
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RDX.i852, align 8
  store %struct.Memory* %loadMem_4777d5, %struct.Memory** %MEMORY
  %loadMem_4777d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 5
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RCX.i848 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 15
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RBP.i849 = bitcast %union.anon* %1397 to i64*
  %1398 = load i64, i64* %RBP.i849
  %1399 = sub i64 %1398, 24
  %1400 = load i64, i64* %PC.i847
  %1401 = add i64 %1400, 4
  store i64 %1401, i64* %PC.i847
  %1402 = inttoptr i64 %1399 to i64*
  %1403 = load i64, i64* %1402
  store i64 %1403, i64* %RCX.i848, align 8
  store %struct.Memory* %loadMem_4777d8, %struct.Memory** %MEMORY
  %loadMem1_4777dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %PC.i846
  %1408 = add i64 %1407, 218084
  %1409 = load i64, i64* %PC.i846
  %1410 = add i64 %1409, 5
  %1411 = load i64, i64* %PC.i846
  %1412 = add i64 %1411, 5
  store i64 %1412, i64* %PC.i846
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1414 = load i64, i64* %1413, align 8
  %1415 = add i64 %1414, -8
  %1416 = inttoptr i64 %1415 to i64*
  store i64 %1410, i64* %1416
  store i64 %1415, i64* %1413, align 8
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1408, i64* %1417, align 8
  store %struct.Memory* %loadMem1_4777dc, %struct.Memory** %MEMORY
  %loadMem2_4777dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4777dc = load i64, i64* %3
  %call2_4777dc = call %struct.Memory* @sub_4acbc0.u_v(%struct.State* %0, i64 %loadPC_4777dc, %struct.Memory* %loadMem2_4777dc)
  store %struct.Memory* %call2_4777dc, %struct.Memory** %MEMORY
  %loadMem_4777e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 11
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RDI.i845 = bitcast %union.anon* %1423 to i64*
  %1424 = load i64, i64* %PC.i844
  %1425 = add i64 %1424, 10
  store i64 %1425, i64* %PC.i844
  store i64 ptrtoint (%G__0x4c24ea_type* @G__0x4c24ea to i64), i64* %RDI.i845, align 8
  store %struct.Memory* %loadMem_4777e1, %struct.Memory** %MEMORY
  %loadMem_4777eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 1
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %RAX.i842 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 15
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %1434 to i64*
  %1435 = load i64, i64* %RAX.i842
  %1436 = load i64, i64* %RBP.i843
  %1437 = sub i64 %1436, 28
  %1438 = load i64, i64* %PC.i841
  %1439 = add i64 %1438, 3
  store i64 %1439, i64* %PC.i841
  %1440 = trunc i64 %1435 to i32
  %1441 = inttoptr i64 %1437 to i32*
  %1442 = load i32, i32* %1441
  %1443 = add i32 %1442, %1440
  %1444 = zext i32 %1443 to i64
  store i64 %1444, i64* %RAX.i842, align 8
  %1445 = icmp ult i32 %1443, %1440
  %1446 = icmp ult i32 %1443, %1442
  %1447 = or i1 %1445, %1446
  %1448 = zext i1 %1447 to i8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1448, i8* %1449, align 1
  %1450 = and i32 %1443, 255
  %1451 = call i32 @llvm.ctpop.i32(i32 %1450)
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = xor i8 %1453, 1
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1454, i8* %1455, align 1
  %1456 = xor i32 %1442, %1440
  %1457 = xor i32 %1456, %1443
  %1458 = lshr i32 %1457, 4
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1460, i8* %1461, align 1
  %1462 = icmp eq i32 %1443, 0
  %1463 = zext i1 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1463, i8* %1464, align 1
  %1465 = lshr i32 %1443, 31
  %1466 = trunc i32 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1466, i8* %1467, align 1
  %1468 = lshr i32 %1440, 31
  %1469 = lshr i32 %1442, 31
  %1470 = xor i32 %1465, %1468
  %1471 = xor i32 %1465, %1469
  %1472 = add i32 %1470, %1471
  %1473 = icmp eq i32 %1472, 2
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1474, i8* %1475, align 1
  store %struct.Memory* %loadMem_4777eb, %struct.Memory** %MEMORY
  %loadMem_4777ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 1
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %EAX.i839 = bitcast %union.anon* %1481 to i32*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 15
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %1484 to i64*
  %1485 = load i64, i64* %RBP.i840
  %1486 = sub i64 %1485, 28
  %1487 = load i32, i32* %EAX.i839
  %1488 = zext i32 %1487 to i64
  %1489 = load i64, i64* %PC.i838
  %1490 = add i64 %1489, 3
  store i64 %1490, i64* %PC.i838
  %1491 = inttoptr i64 %1486 to i32*
  store i32 %1487, i32* %1491
  store %struct.Memory* %loadMem_4777ee, %struct.Memory** %MEMORY
  %loadMem_4777f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 5
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RCX.i836 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 15
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %1500 to i64*
  %1501 = load i64, i64* %RBP.i837
  %1502 = sub i64 %1501, 8
  %1503 = load i64, i64* %PC.i835
  %1504 = add i64 %1503, 4
  store i64 %1504, i64* %PC.i835
  %1505 = inttoptr i64 %1502 to i64*
  %1506 = load i64, i64* %1505
  store i64 %1506, i64* %RCX.i836, align 8
  store %struct.Memory* %loadMem_4777f1, %struct.Memory** %MEMORY
  %loadMem_4777f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 5
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RCX.i833 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 9
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RSI.i834 = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %RCX.i833
  %1517 = add i64 %1516, 28
  %1518 = load i64, i64* %PC.i832
  %1519 = add i64 %1518, 3
  store i64 %1519, i64* %PC.i832
  %1520 = inttoptr i64 %1517 to i32*
  %1521 = load i32, i32* %1520
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RSI.i834, align 8
  store %struct.Memory* %loadMem_4777f5, %struct.Memory** %MEMORY
  %loadMem_4777f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 7
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RDX.i830 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 15
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %1531 to i64*
  %1532 = load i64, i64* %RBP.i831
  %1533 = sub i64 %1532, 24
  %1534 = load i64, i64* %PC.i829
  %1535 = add i64 %1534, 4
  store i64 %1535, i64* %PC.i829
  %1536 = inttoptr i64 %1533 to i64*
  %1537 = load i64, i64* %1536
  store i64 %1537, i64* %RDX.i830, align 8
  store %struct.Memory* %loadMem_4777f8, %struct.Memory** %MEMORY
  %loadMem1_4777fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 33
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %PC.i828
  %1542 = add i64 %1541, 216740
  %1543 = load i64, i64* %PC.i828
  %1544 = add i64 %1543, 5
  %1545 = load i64, i64* %PC.i828
  %1546 = add i64 %1545, 5
  store i64 %1546, i64* %PC.i828
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1548 = load i64, i64* %1547, align 8
  %1549 = add i64 %1548, -8
  %1550 = inttoptr i64 %1549 to i64*
  store i64 %1544, i64* %1550
  store i64 %1549, i64* %1547, align 8
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1542, i64* %1551, align 8
  store %struct.Memory* %loadMem1_4777fc, %struct.Memory** %MEMORY
  %loadMem2_4777fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4777fc = load i64, i64* %3
  %call2_4777fc = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_4777fc, %struct.Memory* %loadMem2_4777fc)
  store %struct.Memory* %call2_4777fc, %struct.Memory** %MEMORY
  %loadMem_477801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 1
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RAX.i826 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 15
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RAX.i826
  %1562 = load i64, i64* %RBP.i827
  %1563 = sub i64 %1562, 28
  %1564 = load i64, i64* %PC.i825
  %1565 = add i64 %1564, 3
  store i64 %1565, i64* %PC.i825
  %1566 = trunc i64 %1561 to i32
  %1567 = inttoptr i64 %1563 to i32*
  %1568 = load i32, i32* %1567
  %1569 = add i32 %1568, %1566
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %RAX.i826, align 8
  %1571 = icmp ult i32 %1569, %1566
  %1572 = icmp ult i32 %1569, %1568
  %1573 = or i1 %1571, %1572
  %1574 = zext i1 %1573 to i8
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1574, i8* %1575, align 1
  %1576 = and i32 %1569, 255
  %1577 = call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1580, i8* %1581, align 1
  %1582 = xor i32 %1568, %1566
  %1583 = xor i32 %1582, %1569
  %1584 = lshr i32 %1583, 4
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1586, i8* %1587, align 1
  %1588 = icmp eq i32 %1569, 0
  %1589 = zext i1 %1588 to i8
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1589, i8* %1590, align 1
  %1591 = lshr i32 %1569, 31
  %1592 = trunc i32 %1591 to i8
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1592, i8* %1593, align 1
  %1594 = lshr i32 %1566, 31
  %1595 = lshr i32 %1568, 31
  %1596 = xor i32 %1591, %1594
  %1597 = xor i32 %1591, %1595
  %1598 = add i32 %1596, %1597
  %1599 = icmp eq i32 %1598, 2
  %1600 = zext i1 %1599 to i8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1600, i8* %1601, align 1
  store %struct.Memory* %loadMem_477801, %struct.Memory** %MEMORY
  %loadMem_477804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 33
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 1
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %EAX.i823 = bitcast %union.anon* %1607 to i32*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 15
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RBP.i824 = bitcast %union.anon* %1610 to i64*
  %1611 = load i64, i64* %RBP.i824
  %1612 = sub i64 %1611, 28
  %1613 = load i32, i32* %EAX.i823
  %1614 = zext i32 %1613 to i64
  %1615 = load i64, i64* %PC.i822
  %1616 = add i64 %1615, 3
  store i64 %1616, i64* %PC.i822
  %1617 = inttoptr i64 %1612 to i32*
  store i32 %1613, i32* %1617
  store %struct.Memory* %loadMem_477804, %struct.Memory** %MEMORY
  %loadMem_477807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 33
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 5
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %RCX.i820 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 15
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %1626 to i64*
  %1627 = load i64, i64* %RBP.i821
  %1628 = sub i64 %1627, 8
  %1629 = load i64, i64* %PC.i819
  %1630 = add i64 %1629, 4
  store i64 %1630, i64* %PC.i819
  %1631 = inttoptr i64 %1628 to i64*
  %1632 = load i64, i64* %1631
  store i64 %1632, i64* %RCX.i820, align 8
  store %struct.Memory* %loadMem_477807, %struct.Memory** %MEMORY
  %loadMem_47780b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 33
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 5
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RCX.i818 = bitcast %union.anon* %1638 to i64*
  %1639 = load i64, i64* %RCX.i818
  %1640 = add i64 %1639, 4
  %1641 = load i64, i64* %PC.i817
  %1642 = add i64 %1641, 4
  store i64 %1642, i64* %PC.i817
  %1643 = inttoptr i64 %1640 to i32*
  %1644 = load i32, i32* %1643
  %1645 = sub i32 %1644, 100
  %1646 = icmp ult i32 %1644, 100
  %1647 = zext i1 %1646 to i8
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1647, i8* %1648, align 1
  %1649 = and i32 %1645, 255
  %1650 = call i32 @llvm.ctpop.i32(i32 %1649)
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  %1653 = xor i8 %1652, 1
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1653, i8* %1654, align 1
  %1655 = xor i32 %1644, 100
  %1656 = xor i32 %1655, %1645
  %1657 = lshr i32 %1656, 4
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1659, i8* %1660, align 1
  %1661 = icmp eq i32 %1645, 0
  %1662 = zext i1 %1661 to i8
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1662, i8* %1663, align 1
  %1664 = lshr i32 %1645, 31
  %1665 = trunc i32 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1665, i8* %1666, align 1
  %1667 = lshr i32 %1644, 31
  %1668 = xor i32 %1664, %1667
  %1669 = add i32 %1668, %1667
  %1670 = icmp eq i32 %1669, 2
  %1671 = zext i1 %1670 to i8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1671, i8* %1672, align 1
  store %struct.Memory* %loadMem_47780b, %struct.Memory** %MEMORY
  %loadMem_47780f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1675 to i64*
  %1676 = load i64, i64* %PC.i816
  %1677 = add i64 %1676, 51
  %1678 = load i64, i64* %PC.i816
  %1679 = add i64 %1678, 6
  %1680 = load i64, i64* %PC.i816
  %1681 = add i64 %1680, 6
  store i64 %1681, i64* %PC.i816
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1683 = load i8, i8* %1682, align 1
  store i8 %1683, i8* %BRANCH_TAKEN, align 1
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1685 = icmp ne i8 %1683, 0
  %1686 = select i1 %1685, i64 %1677, i64 %1679
  store i64 %1686, i64* %1684, align 8
  store %struct.Memory* %loadMem_47780f, %struct.Memory** %MEMORY
  %loadBr_47780f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47780f = icmp eq i8 %loadBr_47780f, 1
  br i1 %cmpBr_47780f, label %block_.L_477842, label %block_477815

block_477815:                                     ; preds = %block_.L_4776e0
  %loadMem_477815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 1
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %RAX.i814 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 15
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %1695 to i64*
  %1696 = load i64, i64* %RBP.i815
  %1697 = sub i64 %1696, 8
  %1698 = load i64, i64* %PC.i813
  %1699 = add i64 %1698, 4
  store i64 %1699, i64* %PC.i813
  %1700 = inttoptr i64 %1697 to i64*
  %1701 = load i64, i64* %1700
  store i64 %1701, i64* %RAX.i814, align 8
  store %struct.Memory* %loadMem_477815, %struct.Memory** %MEMORY
  %loadMem_477819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 1
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RAX.i812 = bitcast %union.anon* %1707 to i64*
  %1708 = load i64, i64* %RAX.i812
  %1709 = add i64 %1708, 4
  %1710 = load i64, i64* %PC.i811
  %1711 = add i64 %1710, 4
  store i64 %1711, i64* %PC.i811
  %1712 = inttoptr i64 %1709 to i32*
  %1713 = load i32, i32* %1712
  %1714 = sub i32 %1713, 110
  %1715 = icmp ult i32 %1713, 110
  %1716 = zext i1 %1715 to i8
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1716, i8* %1717, align 1
  %1718 = and i32 %1714, 255
  %1719 = call i32 @llvm.ctpop.i32(i32 %1718)
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  %1722 = xor i8 %1721, 1
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1722, i8* %1723, align 1
  %1724 = xor i32 %1713, 110
  %1725 = xor i32 %1724, %1714
  %1726 = lshr i32 %1725, 4
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1728, i8* %1729, align 1
  %1730 = icmp eq i32 %1714, 0
  %1731 = zext i1 %1730 to i8
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1731, i8* %1732, align 1
  %1733 = lshr i32 %1714, 31
  %1734 = trunc i32 %1733 to i8
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1734, i8* %1735, align 1
  %1736 = lshr i32 %1713, 31
  %1737 = xor i32 %1733, %1736
  %1738 = add i32 %1737, %1736
  %1739 = icmp eq i32 %1738, 2
  %1740 = zext i1 %1739 to i8
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1740, i8* %1741, align 1
  store %struct.Memory* %loadMem_477819, %struct.Memory** %MEMORY
  %loadMem_47781d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1744 to i64*
  %1745 = load i64, i64* %PC.i810
  %1746 = add i64 %1745, 37
  %1747 = load i64, i64* %PC.i810
  %1748 = add i64 %1747, 6
  %1749 = load i64, i64* %PC.i810
  %1750 = add i64 %1749, 6
  store i64 %1750, i64* %PC.i810
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1752 = load i8, i8* %1751, align 1
  store i8 %1752, i8* %BRANCH_TAKEN, align 1
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1754 = icmp ne i8 %1752, 0
  %1755 = select i1 %1754, i64 %1746, i64 %1748
  store i64 %1755, i64* %1753, align 8
  store %struct.Memory* %loadMem_47781d, %struct.Memory** %MEMORY
  %loadBr_47781d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47781d = icmp eq i8 %loadBr_47781d, 1
  br i1 %cmpBr_47781d, label %block_.L_477842, label %block_477823

block_477823:                                     ; preds = %block_477815
  %loadMem_477823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 1
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 15
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %1764 to i64*
  %1765 = load i64, i64* %RBP.i809
  %1766 = sub i64 %1765, 8
  %1767 = load i64, i64* %PC.i807
  %1768 = add i64 %1767, 4
  store i64 %1768, i64* %PC.i807
  %1769 = inttoptr i64 %1766 to i64*
  %1770 = load i64, i64* %1769
  store i64 %1770, i64* %RAX.i808, align 8
  store %struct.Memory* %loadMem_477823, %struct.Memory** %MEMORY
  %loadMem_477827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 33
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1773 to i64*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 1
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %RAX.i806 = bitcast %union.anon* %1776 to i64*
  %1777 = load i64, i64* %RAX.i806
  %1778 = add i64 %1777, 4
  %1779 = load i64, i64* %PC.i805
  %1780 = add i64 %1779, 4
  store i64 %1780, i64* %PC.i805
  %1781 = inttoptr i64 %1778 to i32*
  %1782 = load i32, i32* %1781
  %1783 = sub i32 %1782, 122
  %1784 = icmp ult i32 %1782, 122
  %1785 = zext i1 %1784 to i8
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1785, i8* %1786, align 1
  %1787 = and i32 %1783, 255
  %1788 = call i32 @llvm.ctpop.i32(i32 %1787)
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = xor i8 %1790, 1
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1791, i8* %1792, align 1
  %1793 = xor i32 %1782, 122
  %1794 = xor i32 %1793, %1783
  %1795 = lshr i32 %1794, 4
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1797, i8* %1798, align 1
  %1799 = icmp eq i32 %1783, 0
  %1800 = zext i1 %1799 to i8
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1800, i8* %1801, align 1
  %1802 = lshr i32 %1783, 31
  %1803 = trunc i32 %1802 to i8
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1803, i8* %1804, align 1
  %1805 = lshr i32 %1782, 31
  %1806 = xor i32 %1802, %1805
  %1807 = add i32 %1806, %1805
  %1808 = icmp eq i32 %1807, 2
  %1809 = zext i1 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1809, i8* %1810, align 1
  store %struct.Memory* %loadMem_477827, %struct.Memory** %MEMORY
  %loadMem_47782b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 33
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %PC.i804
  %1815 = add i64 %1814, 23
  %1816 = load i64, i64* %PC.i804
  %1817 = add i64 %1816, 6
  %1818 = load i64, i64* %PC.i804
  %1819 = add i64 %1818, 6
  store i64 %1819, i64* %PC.i804
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1821 = load i8, i8* %1820, align 1
  store i8 %1821, i8* %BRANCH_TAKEN, align 1
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1823 = icmp ne i8 %1821, 0
  %1824 = select i1 %1823, i64 %1815, i64 %1817
  store i64 %1824, i64* %1822, align 8
  store %struct.Memory* %loadMem_47782b, %struct.Memory** %MEMORY
  %loadBr_47782b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47782b = icmp eq i8 %loadBr_47782b, 1
  br i1 %cmpBr_47782b, label %block_.L_477842, label %block_477831

block_477831:                                     ; preds = %block_477823
  %loadMem_477831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 33
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 1
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RAX.i802 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 15
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RBP.i803 = bitcast %union.anon* %1833 to i64*
  %1834 = load i64, i64* %RBP.i803
  %1835 = sub i64 %1834, 8
  %1836 = load i64, i64* %PC.i801
  %1837 = add i64 %1836, 4
  store i64 %1837, i64* %PC.i801
  %1838 = inttoptr i64 %1835 to i64*
  %1839 = load i64, i64* %1838
  store i64 %1839, i64* %RAX.i802, align 8
  store %struct.Memory* %loadMem_477831, %struct.Memory** %MEMORY
  %loadMem_477835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 1
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %RAX.i800
  %1847 = add i64 %1846, 4
  %1848 = load i64, i64* %PC.i799
  %1849 = add i64 %1848, 7
  store i64 %1849, i64* %PC.i799
  %1850 = inttoptr i64 %1847 to i32*
  %1851 = load i32, i32* %1850
  %1852 = sub i32 %1851, 144
  %1853 = icmp ult i32 %1851, 144
  %1854 = zext i1 %1853 to i8
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1854, i8* %1855, align 1
  %1856 = and i32 %1852, 255
  %1857 = call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1860, i8* %1861, align 1
  %1862 = xor i32 %1851, 144
  %1863 = xor i32 %1862, %1852
  %1864 = lshr i32 %1863, 4
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1866, i8* %1867, align 1
  %1868 = icmp eq i32 %1852, 0
  %1869 = zext i1 %1868 to i8
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1869, i8* %1870, align 1
  %1871 = lshr i32 %1852, 31
  %1872 = trunc i32 %1871 to i8
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1872, i8* %1873, align 1
  %1874 = lshr i32 %1851, 31
  %1875 = xor i32 %1871, %1874
  %1876 = add i32 %1875, %1874
  %1877 = icmp eq i32 %1876, 2
  %1878 = zext i1 %1877 to i8
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1878, i8* %1879, align 1
  store %struct.Memory* %loadMem_477835, %struct.Memory** %MEMORY
  %loadMem_47783c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %1882 to i64*
  %1883 = load i64, i64* %PC.i798
  %1884 = add i64 %1883, 582
  %1885 = load i64, i64* %PC.i798
  %1886 = add i64 %1885, 6
  %1887 = load i64, i64* %PC.i798
  %1888 = add i64 %1887, 6
  store i64 %1888, i64* %PC.i798
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1890 = load i8, i8* %1889, align 1
  %1891 = icmp eq i8 %1890, 0
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %BRANCH_TAKEN, align 1
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1894 = select i1 %1891, i64 %1884, i64 %1886
  store i64 %1894, i64* %1893, align 8
  store %struct.Memory* %loadMem_47783c, %struct.Memory** %MEMORY
  %loadBr_47783c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47783c = icmp eq i8 %loadBr_47783c, 1
  br i1 %cmpBr_47783c, label %block_.L_477a82, label %block_.L_477842

block_.L_477842:                                  ; preds = %block_477831, %block_477823, %block_477815, %block_.L_4776e0
  %loadMem_477842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 33
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 11
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RDI.i797 = bitcast %union.anon* %1900 to i64*
  %1901 = load i64, i64* %PC.i796
  %1902 = add i64 %1901, 10
  store i64 %1902, i64* %PC.i796
  store i64 ptrtoint (%G__0x4c2504_type* @G__0x4c2504 to i64), i64* %RDI.i797, align 8
  store %struct.Memory* %loadMem_477842, %struct.Memory** %MEMORY
  %loadMem_47784c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 33
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 1
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RAX.i794 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 15
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %RBP.i795 = bitcast %union.anon* %1911 to i64*
  %1912 = load i64, i64* %RBP.i795
  %1913 = sub i64 %1912, 8
  %1914 = load i64, i64* %PC.i793
  %1915 = add i64 %1914, 4
  store i64 %1915, i64* %PC.i793
  %1916 = inttoptr i64 %1913 to i64*
  %1917 = load i64, i64* %1916
  store i64 %1917, i64* %RAX.i794, align 8
  store %struct.Memory* %loadMem_47784c, %struct.Memory** %MEMORY
  %loadMem_477850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 1
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RAX.i791 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 9
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RSI.i792 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RAX.i791
  %1928 = add i64 %1927, 32
  %1929 = load i64, i64* %PC.i790
  %1930 = add i64 %1929, 3
  store i64 %1930, i64* %PC.i790
  %1931 = inttoptr i64 %1928 to i32*
  %1932 = load i32, i32* %1931
  %1933 = zext i32 %1932 to i64
  store i64 %1933, i64* %RSI.i792, align 8
  store %struct.Memory* %loadMem_477850, %struct.Memory** %MEMORY
  %loadMem_477853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 7
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RDX.i788 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 15
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %RBP.i789
  %1944 = sub i64 %1943, 24
  %1945 = load i64, i64* %PC.i787
  %1946 = add i64 %1945, 4
  store i64 %1946, i64* %PC.i787
  %1947 = inttoptr i64 %1944 to i64*
  %1948 = load i64, i64* %1947
  store i64 %1948, i64* %RDX.i788, align 8
  store %struct.Memory* %loadMem_477853, %struct.Memory** %MEMORY
  %loadMem1_477857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 33
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1951 to i64*
  %1952 = load i64, i64* %PC.i786
  %1953 = add i64 %1952, 216649
  %1954 = load i64, i64* %PC.i786
  %1955 = add i64 %1954, 5
  %1956 = load i64, i64* %PC.i786
  %1957 = add i64 %1956, 5
  store i64 %1957, i64* %PC.i786
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1959 = load i64, i64* %1958, align 8
  %1960 = add i64 %1959, -8
  %1961 = inttoptr i64 %1960 to i64*
  store i64 %1955, i64* %1961
  store i64 %1960, i64* %1958, align 8
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1953, i64* %1962, align 8
  store %struct.Memory* %loadMem1_477857, %struct.Memory** %MEMORY
  %loadMem2_477857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477857 = load i64, i64* %3
  %call2_477857 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477857, %struct.Memory* %loadMem2_477857)
  store %struct.Memory* %call2_477857, %struct.Memory** %MEMORY
  %loadMem_47785c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 1
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RAX.i784 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 15
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %RAX.i784
  %1973 = load i64, i64* %RBP.i785
  %1974 = sub i64 %1973, 28
  %1975 = load i64, i64* %PC.i783
  %1976 = add i64 %1975, 3
  store i64 %1976, i64* %PC.i783
  %1977 = trunc i64 %1972 to i32
  %1978 = inttoptr i64 %1974 to i32*
  %1979 = load i32, i32* %1978
  %1980 = add i32 %1979, %1977
  %1981 = zext i32 %1980 to i64
  store i64 %1981, i64* %RAX.i784, align 8
  %1982 = icmp ult i32 %1980, %1977
  %1983 = icmp ult i32 %1980, %1979
  %1984 = or i1 %1982, %1983
  %1985 = zext i1 %1984 to i8
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1985, i8* %1986, align 1
  %1987 = and i32 %1980, 255
  %1988 = call i32 @llvm.ctpop.i32(i32 %1987)
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = xor i8 %1990, 1
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1991, i8* %1992, align 1
  %1993 = xor i32 %1979, %1977
  %1994 = xor i32 %1993, %1980
  %1995 = lshr i32 %1994, 4
  %1996 = trunc i32 %1995 to i8
  %1997 = and i8 %1996, 1
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1997, i8* %1998, align 1
  %1999 = icmp eq i32 %1980, 0
  %2000 = zext i1 %1999 to i8
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2000, i8* %2001, align 1
  %2002 = lshr i32 %1980, 31
  %2003 = trunc i32 %2002 to i8
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2003, i8* %2004, align 1
  %2005 = lshr i32 %1977, 31
  %2006 = lshr i32 %1979, 31
  %2007 = xor i32 %2002, %2005
  %2008 = xor i32 %2002, %2006
  %2009 = add i32 %2007, %2008
  %2010 = icmp eq i32 %2009, 2
  %2011 = zext i1 %2010 to i8
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2011, i8* %2012, align 1
  store %struct.Memory* %loadMem_47785c, %struct.Memory** %MEMORY
  %loadMem_47785f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 33
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %2015 to i64*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 1
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %EAX.i781 = bitcast %union.anon* %2018 to i32*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 15
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %2021 to i64*
  %2022 = load i64, i64* %RBP.i782
  %2023 = sub i64 %2022, 28
  %2024 = load i32, i32* %EAX.i781
  %2025 = zext i32 %2024 to i64
  %2026 = load i64, i64* %PC.i780
  %2027 = add i64 %2026, 3
  store i64 %2027, i64* %PC.i780
  %2028 = inttoptr i64 %2023 to i32*
  store i32 %2024, i32* %2028
  store %struct.Memory* %loadMem_47785f, %struct.Memory** %MEMORY
  %loadMem_477862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 33
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 7
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RDX.i779 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %PC.i778
  %2036 = add i64 %2035, 8
  store i64 %2036, i64* %PC.i778
  %2037 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2037, i64* %RDX.i779, align 8
  store %struct.Memory* %loadMem_477862, %struct.Memory** %MEMORY
  %loadMem_47786a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 7
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RDX.i777 = bitcast %union.anon* %2043 to i64*
  %2044 = load i64, i64* %RDX.i777
  %2045 = add i64 %2044, 72700
  %2046 = load i64, i64* %PC.i776
  %2047 = add i64 %2046, 7
  store i64 %2047, i64* %PC.i776
  %2048 = inttoptr i64 %2045 to i32*
  %2049 = load i32, i32* %2048
  %2050 = sub i32 %2049, 3
  %2051 = icmp ult i32 %2049, 3
  %2052 = zext i1 %2051 to i8
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2052, i8* %2053, align 1
  %2054 = and i32 %2050, 255
  %2055 = call i32 @llvm.ctpop.i32(i32 %2054)
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = xor i8 %2057, 1
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2058, i8* %2059, align 1
  %2060 = xor i32 %2049, 3
  %2061 = xor i32 %2060, %2050
  %2062 = lshr i32 %2061, 4
  %2063 = trunc i32 %2062 to i8
  %2064 = and i8 %2063, 1
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2064, i8* %2065, align 1
  %2066 = icmp eq i32 %2050, 0
  %2067 = zext i1 %2066 to i8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2067, i8* %2068, align 1
  %2069 = lshr i32 %2050, 31
  %2070 = trunc i32 %2069 to i8
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2070, i8* %2071, align 1
  %2072 = lshr i32 %2049, 31
  %2073 = xor i32 %2069, %2072
  %2074 = add i32 %2073, %2072
  %2075 = icmp eq i32 %2074, 2
  %2076 = zext i1 %2075 to i8
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2076, i8* %2077, align 1
  store %struct.Memory* %loadMem_47786a, %struct.Memory** %MEMORY
  %loadMem_477871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 33
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %2080 to i64*
  %2081 = load i64, i64* %PC.i775
  %2082 = add i64 %2081, 45
  %2083 = load i64, i64* %PC.i775
  %2084 = add i64 %2083, 6
  %2085 = load i64, i64* %PC.i775
  %2086 = add i64 %2085, 6
  store i64 %2086, i64* %PC.i775
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2088 = load i8, i8* %2087, align 1
  %2089 = icmp eq i8 %2088, 0
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %BRANCH_TAKEN, align 1
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2092 = select i1 %2089, i64 %2082, i64 %2084
  store i64 %2092, i64* %2091, align 8
  store %struct.Memory* %loadMem_477871, %struct.Memory** %MEMORY
  %loadBr_477871 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477871 = icmp eq i8 %loadBr_477871, 1
  br i1 %cmpBr_477871, label %block_.L_47789e, label %block_477877

block_477877:                                     ; preds = %block_.L_477842
  %loadMem_477877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 11
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RDI.i774 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %PC.i773
  %2100 = add i64 %2099, 10
  store i64 %2100, i64* %PC.i773
  store i64 ptrtoint (%G__0x4c251b_type* @G__0x4c251b to i64), i64* %RDI.i774, align 8
  store %struct.Memory* %loadMem_477877, %struct.Memory** %MEMORY
  %loadMem_477881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 33
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %2103 to i64*
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 1
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %RAX.i772 = bitcast %union.anon* %2106 to i64*
  %2107 = load i64, i64* %PC.i771
  %2108 = add i64 %2107, 8
  store i64 %2108, i64* %PC.i771
  %2109 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2109, i64* %RAX.i772, align 8
  store %struct.Memory* %loadMem_477881, %struct.Memory** %MEMORY
  %loadMem_477889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 1
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RAX.i769 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 9
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RSI.i770 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %RAX.i769
  %2120 = add i64 %2119, 72724
  %2121 = load i64, i64* %PC.i768
  %2122 = add i64 %2121, 6
  store i64 %2122, i64* %PC.i768
  %2123 = inttoptr i64 %2120 to i32*
  %2124 = load i32, i32* %2123
  %2125 = zext i32 %2124 to i64
  store i64 %2125, i64* %RSI.i770, align 8
  store %struct.Memory* %loadMem_477889, %struct.Memory** %MEMORY
  %loadMem_47788f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 7
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RDX.i766 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 15
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %2134 to i64*
  %2135 = load i64, i64* %RBP.i767
  %2136 = sub i64 %2135, 24
  %2137 = load i64, i64* %PC.i765
  %2138 = add i64 %2137, 4
  store i64 %2138, i64* %PC.i765
  %2139 = inttoptr i64 %2136 to i64*
  %2140 = load i64, i64* %2139
  store i64 %2140, i64* %RDX.i766, align 8
  store %struct.Memory* %loadMem_47788f, %struct.Memory** %MEMORY
  %loadMem1_477893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %2143 to i64*
  %2144 = load i64, i64* %PC.i764
  %2145 = add i64 %2144, 217709
  %2146 = load i64, i64* %PC.i764
  %2147 = add i64 %2146, 5
  %2148 = load i64, i64* %PC.i764
  %2149 = add i64 %2148, 5
  store i64 %2149, i64* %PC.i764
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2151 = load i64, i64* %2150, align 8
  %2152 = add i64 %2151, -8
  %2153 = inttoptr i64 %2152 to i64*
  store i64 %2147, i64* %2153
  store i64 %2152, i64* %2150, align 8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2145, i64* %2154, align 8
  store %struct.Memory* %loadMem1_477893, %struct.Memory** %MEMORY
  %loadMem2_477893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477893 = load i64, i64* %3
  %call2_477893 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477893, %struct.Memory* %loadMem2_477893)
  store %struct.Memory* %call2_477893, %struct.Memory** %MEMORY
  %loadMem_477898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 33
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 1
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RAX.i762 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 15
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %2163 to i64*
  %2164 = load i64, i64* %RAX.i762
  %2165 = load i64, i64* %RBP.i763
  %2166 = sub i64 %2165, 28
  %2167 = load i64, i64* %PC.i761
  %2168 = add i64 %2167, 3
  store i64 %2168, i64* %PC.i761
  %2169 = trunc i64 %2164 to i32
  %2170 = inttoptr i64 %2166 to i32*
  %2171 = load i32, i32* %2170
  %2172 = add i32 %2171, %2169
  %2173 = zext i32 %2172 to i64
  store i64 %2173, i64* %RAX.i762, align 8
  %2174 = icmp ult i32 %2172, %2169
  %2175 = icmp ult i32 %2172, %2171
  %2176 = or i1 %2174, %2175
  %2177 = zext i1 %2176 to i8
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2177, i8* %2178, align 1
  %2179 = and i32 %2172, 255
  %2180 = call i32 @llvm.ctpop.i32(i32 %2179)
  %2181 = trunc i32 %2180 to i8
  %2182 = and i8 %2181, 1
  %2183 = xor i8 %2182, 1
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2183, i8* %2184, align 1
  %2185 = xor i32 %2171, %2169
  %2186 = xor i32 %2185, %2172
  %2187 = lshr i32 %2186, 4
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2189, i8* %2190, align 1
  %2191 = icmp eq i32 %2172, 0
  %2192 = zext i1 %2191 to i8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2192, i8* %2193, align 1
  %2194 = lshr i32 %2172, 31
  %2195 = trunc i32 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2195, i8* %2196, align 1
  %2197 = lshr i32 %2169, 31
  %2198 = lshr i32 %2171, 31
  %2199 = xor i32 %2194, %2197
  %2200 = xor i32 %2194, %2198
  %2201 = add i32 %2199, %2200
  %2202 = icmp eq i32 %2201, 2
  %2203 = zext i1 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2203, i8* %2204, align 1
  store %struct.Memory* %loadMem_477898, %struct.Memory** %MEMORY
  %loadMem_47789b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 1
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %EAX.i759 = bitcast %union.anon* %2210 to i32*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 15
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %RBP.i760 = bitcast %union.anon* %2213 to i64*
  %2214 = load i64, i64* %RBP.i760
  %2215 = sub i64 %2214, 28
  %2216 = load i32, i32* %EAX.i759
  %2217 = zext i32 %2216 to i64
  %2218 = load i64, i64* %PC.i758
  %2219 = add i64 %2218, 3
  store i64 %2219, i64* %PC.i758
  %2220 = inttoptr i64 %2215 to i32*
  store i32 %2216, i32* %2220
  store %struct.Memory* %loadMem_47789b, %struct.Memory** %MEMORY
  br label %block_.L_47789e

block_.L_47789e:                                  ; preds = %block_477877, %block_.L_477842
  %loadMem_47789e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 11
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %RDI.i757 = bitcast %union.anon* %2226 to i64*
  %2227 = load i64, i64* %PC.i756
  %2228 = add i64 %2227, 10
  store i64 %2228, i64* %PC.i756
  store i64 ptrtoint (%G__0x4c2537_type* @G__0x4c2537 to i64), i64* %RDI.i757, align 8
  store %struct.Memory* %loadMem_47789e, %struct.Memory** %MEMORY
  %loadMem_4778a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 33
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %2231 to i64*
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 1
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %RAX.i754 = bitcast %union.anon* %2234 to i64*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 15
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %2237 to i64*
  %2238 = load i64, i64* %RBP.i755
  %2239 = sub i64 %2238, 8
  %2240 = load i64, i64* %PC.i753
  %2241 = add i64 %2240, 4
  store i64 %2241, i64* %PC.i753
  %2242 = inttoptr i64 %2239 to i64*
  %2243 = load i64, i64* %2242
  store i64 %2243, i64* %RAX.i754, align 8
  store %struct.Memory* %loadMem_4778a8, %struct.Memory** %MEMORY
  %loadMem_4778ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 33
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 1
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RAX.i751 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 9
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %RSI.i752 = bitcast %union.anon* %2252 to i64*
  %2253 = load i64, i64* %RAX.i751
  %2254 = add i64 %2253, 72
  %2255 = load i64, i64* %PC.i750
  %2256 = add i64 %2255, 3
  store i64 %2256, i64* %PC.i750
  %2257 = inttoptr i64 %2254 to i32*
  %2258 = load i32, i32* %2257
  %2259 = zext i32 %2258 to i64
  store i64 %2259, i64* %RSI.i752, align 8
  store %struct.Memory* %loadMem_4778ac, %struct.Memory** %MEMORY
  %loadMem_4778af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 7
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RDX.i748 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 15
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %2268 to i64*
  %2269 = load i64, i64* %RBP.i749
  %2270 = sub i64 %2269, 24
  %2271 = load i64, i64* %PC.i747
  %2272 = add i64 %2271, 4
  store i64 %2272, i64* %PC.i747
  %2273 = inttoptr i64 %2270 to i64*
  %2274 = load i64, i64* %2273
  store i64 %2274, i64* %RDX.i748, align 8
  store %struct.Memory* %loadMem_4778af, %struct.Memory** %MEMORY
  %loadMem1_4778b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %2277 to i64*
  %2278 = load i64, i64* %PC.i746
  %2279 = add i64 %2278, 216557
  %2280 = load i64, i64* %PC.i746
  %2281 = add i64 %2280, 5
  %2282 = load i64, i64* %PC.i746
  %2283 = add i64 %2282, 5
  store i64 %2283, i64* %PC.i746
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2285 = load i64, i64* %2284, align 8
  %2286 = add i64 %2285, -8
  %2287 = inttoptr i64 %2286 to i64*
  store i64 %2281, i64* %2287
  store i64 %2286, i64* %2284, align 8
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2279, i64* %2288, align 8
  store %struct.Memory* %loadMem1_4778b3, %struct.Memory** %MEMORY
  %loadMem2_4778b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4778b3 = load i64, i64* %3
  %call2_4778b3 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_4778b3, %struct.Memory* %loadMem2_4778b3)
  store %struct.Memory* %call2_4778b3, %struct.Memory** %MEMORY
  %loadMem_4778b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 11
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RDI.i745 = bitcast %union.anon* %2294 to i64*
  %2295 = load i64, i64* %PC.i744
  %2296 = add i64 %2295, 10
  store i64 %2296, i64* %PC.i744
  store i64 ptrtoint (%G__0x4c2552_type* @G__0x4c2552 to i64), i64* %RDI.i745, align 8
  store %struct.Memory* %loadMem_4778b8, %struct.Memory** %MEMORY
  %loadMem_4778c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 33
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 1
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 15
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RBP.i743 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %RAX.i742
  %2307 = load i64, i64* %RBP.i743
  %2308 = sub i64 %2307, 28
  %2309 = load i64, i64* %PC.i741
  %2310 = add i64 %2309, 3
  store i64 %2310, i64* %PC.i741
  %2311 = trunc i64 %2306 to i32
  %2312 = inttoptr i64 %2308 to i32*
  %2313 = load i32, i32* %2312
  %2314 = add i32 %2313, %2311
  %2315 = zext i32 %2314 to i64
  store i64 %2315, i64* %RAX.i742, align 8
  %2316 = icmp ult i32 %2314, %2311
  %2317 = icmp ult i32 %2314, %2313
  %2318 = or i1 %2316, %2317
  %2319 = zext i1 %2318 to i8
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2319, i8* %2320, align 1
  %2321 = and i32 %2314, 255
  %2322 = call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2325, i8* %2326, align 1
  %2327 = xor i32 %2313, %2311
  %2328 = xor i32 %2327, %2314
  %2329 = lshr i32 %2328, 4
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2331, i8* %2332, align 1
  %2333 = icmp eq i32 %2314, 0
  %2334 = zext i1 %2333 to i8
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2334, i8* %2335, align 1
  %2336 = lshr i32 %2314, 31
  %2337 = trunc i32 %2336 to i8
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2337, i8* %2338, align 1
  %2339 = lshr i32 %2311, 31
  %2340 = lshr i32 %2313, 31
  %2341 = xor i32 %2336, %2339
  %2342 = xor i32 %2336, %2340
  %2343 = add i32 %2341, %2342
  %2344 = icmp eq i32 %2343, 2
  %2345 = zext i1 %2344 to i8
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2345, i8* %2346, align 1
  store %struct.Memory* %loadMem_4778c2, %struct.Memory** %MEMORY
  %loadMem_4778c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 1
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %EAX.i739 = bitcast %union.anon* %2352 to i32*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 15
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %2355 to i64*
  %2356 = load i64, i64* %RBP.i740
  %2357 = sub i64 %2356, 28
  %2358 = load i32, i32* %EAX.i739
  %2359 = zext i32 %2358 to i64
  %2360 = load i64, i64* %PC.i738
  %2361 = add i64 %2360, 3
  store i64 %2361, i64* %PC.i738
  %2362 = inttoptr i64 %2357 to i32*
  store i32 %2358, i32* %2362
  store %struct.Memory* %loadMem_4778c5, %struct.Memory** %MEMORY
  %loadMem_4778c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %2365 to i64*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 7
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RDX.i736 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 15
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %RBP.i737 = bitcast %union.anon* %2371 to i64*
  %2372 = load i64, i64* %RBP.i737
  %2373 = sub i64 %2372, 8
  %2374 = load i64, i64* %PC.i735
  %2375 = add i64 %2374, 4
  store i64 %2375, i64* %PC.i735
  %2376 = inttoptr i64 %2373 to i64*
  %2377 = load i64, i64* %2376
  store i64 %2377, i64* %RDX.i736, align 8
  store %struct.Memory* %loadMem_4778c8, %struct.Memory** %MEMORY
  %loadMem_4778cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 7
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RDX.i733 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 9
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RSI.i734 = bitcast %union.anon* %2386 to i64*
  %2387 = load i64, i64* %RDX.i733
  %2388 = add i64 %2387, 76
  %2389 = load i64, i64* %PC.i732
  %2390 = add i64 %2389, 3
  store i64 %2390, i64* %PC.i732
  %2391 = inttoptr i64 %2388 to i32*
  %2392 = load i32, i32* %2391
  %2393 = zext i32 %2392 to i64
  store i64 %2393, i64* %RSI.i734, align 8
  store %struct.Memory* %loadMem_4778cc, %struct.Memory** %MEMORY
  %loadMem_4778cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 33
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 7
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RDX.i730 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 15
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %2402 to i64*
  %2403 = load i64, i64* %RBP.i731
  %2404 = sub i64 %2403, 24
  %2405 = load i64, i64* %PC.i729
  %2406 = add i64 %2405, 4
  store i64 %2406, i64* %PC.i729
  %2407 = inttoptr i64 %2404 to i64*
  %2408 = load i64, i64* %2407
  store i64 %2408, i64* %RDX.i730, align 8
  store %struct.Memory* %loadMem_4778cf, %struct.Memory** %MEMORY
  %loadMem1_4778d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %2411 to i64*
  %2412 = load i64, i64* %PC.i728
  %2413 = add i64 %2412, 216525
  %2414 = load i64, i64* %PC.i728
  %2415 = add i64 %2414, 5
  %2416 = load i64, i64* %PC.i728
  %2417 = add i64 %2416, 5
  store i64 %2417, i64* %PC.i728
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2419 = load i64, i64* %2418, align 8
  %2420 = add i64 %2419, -8
  %2421 = inttoptr i64 %2420 to i64*
  store i64 %2415, i64* %2421
  store i64 %2420, i64* %2418, align 8
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2413, i64* %2422, align 8
  store %struct.Memory* %loadMem1_4778d3, %struct.Memory** %MEMORY
  %loadMem2_4778d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4778d3 = load i64, i64* %3
  %call2_4778d3 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_4778d3, %struct.Memory* %loadMem2_4778d3)
  store %struct.Memory* %call2_4778d3, %struct.Memory** %MEMORY
  %loadMem_4778d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 33
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 11
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %RDI.i727 = bitcast %union.anon* %2428 to i64*
  %2429 = load i64, i64* %PC.i726
  %2430 = add i64 %2429, 10
  store i64 %2430, i64* %PC.i726
  store i64 ptrtoint (%G__0x4c256f_type* @G__0x4c256f to i64), i64* %RDI.i727, align 8
  store %struct.Memory* %loadMem_4778d8, %struct.Memory** %MEMORY
  %loadMem_4778e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 1
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RAX.i724 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 15
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RBP.i725 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %RAX.i724
  %2441 = load i64, i64* %RBP.i725
  %2442 = sub i64 %2441, 28
  %2443 = load i64, i64* %PC.i723
  %2444 = add i64 %2443, 3
  store i64 %2444, i64* %PC.i723
  %2445 = trunc i64 %2440 to i32
  %2446 = inttoptr i64 %2442 to i32*
  %2447 = load i32, i32* %2446
  %2448 = add i32 %2447, %2445
  %2449 = zext i32 %2448 to i64
  store i64 %2449, i64* %RAX.i724, align 8
  %2450 = icmp ult i32 %2448, %2445
  %2451 = icmp ult i32 %2448, %2447
  %2452 = or i1 %2450, %2451
  %2453 = zext i1 %2452 to i8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2453, i8* %2454, align 1
  %2455 = and i32 %2448, 255
  %2456 = call i32 @llvm.ctpop.i32(i32 %2455)
  %2457 = trunc i32 %2456 to i8
  %2458 = and i8 %2457, 1
  %2459 = xor i8 %2458, 1
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2459, i8* %2460, align 1
  %2461 = xor i32 %2447, %2445
  %2462 = xor i32 %2461, %2448
  %2463 = lshr i32 %2462, 4
  %2464 = trunc i32 %2463 to i8
  %2465 = and i8 %2464, 1
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2465, i8* %2466, align 1
  %2467 = icmp eq i32 %2448, 0
  %2468 = zext i1 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2468, i8* %2469, align 1
  %2470 = lshr i32 %2448, 31
  %2471 = trunc i32 %2470 to i8
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2471, i8* %2472, align 1
  %2473 = lshr i32 %2445, 31
  %2474 = lshr i32 %2447, 31
  %2475 = xor i32 %2470, %2473
  %2476 = xor i32 %2470, %2474
  %2477 = add i32 %2475, %2476
  %2478 = icmp eq i32 %2477, 2
  %2479 = zext i1 %2478 to i8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2479, i8* %2480, align 1
  store %struct.Memory* %loadMem_4778e2, %struct.Memory** %MEMORY
  %loadMem_4778e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 1
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %EAX.i721 = bitcast %union.anon* %2486 to i32*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 15
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %RBP.i722
  %2491 = sub i64 %2490, 28
  %2492 = load i32, i32* %EAX.i721
  %2493 = zext i32 %2492 to i64
  %2494 = load i64, i64* %PC.i720
  %2495 = add i64 %2494, 3
  store i64 %2495, i64* %PC.i720
  %2496 = inttoptr i64 %2491 to i32*
  store i32 %2492, i32* %2496
  store %struct.Memory* %loadMem_4778e5, %struct.Memory** %MEMORY
  %loadMem_4778e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 7
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RDX.i719 = bitcast %union.anon* %2502 to i64*
  %2503 = load i64, i64* %PC.i718
  %2504 = add i64 %2503, 8
  store i64 %2504, i64* %PC.i718
  %2505 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2505, i64* %RDX.i719, align 8
  store %struct.Memory* %loadMem_4778e8, %struct.Memory** %MEMORY
  %loadMem_4778f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 7
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RDX.i716 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 9
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RSI.i717 = bitcast %union.anon* %2514 to i64*
  %2515 = load i64, i64* %RDX.i716
  %2516 = add i64 %2515, 72704
  %2517 = load i64, i64* %PC.i715
  %2518 = add i64 %2517, 6
  store i64 %2518, i64* %PC.i715
  %2519 = inttoptr i64 %2516 to i32*
  %2520 = load i32, i32* %2519
  %2521 = zext i32 %2520 to i64
  store i64 %2521, i64* %RSI.i717, align 8
  store %struct.Memory* %loadMem_4778f0, %struct.Memory** %MEMORY
  %loadMem_4778f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 7
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %RDX.i713 = bitcast %union.anon* %2527 to i64*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 15
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %RBP.i714 = bitcast %union.anon* %2530 to i64*
  %2531 = load i64, i64* %RBP.i714
  %2532 = sub i64 %2531, 24
  %2533 = load i64, i64* %PC.i712
  %2534 = add i64 %2533, 4
  store i64 %2534, i64* %PC.i712
  %2535 = inttoptr i64 %2532 to i64*
  %2536 = load i64, i64* %2535
  store i64 %2536, i64* %RDX.i713, align 8
  store %struct.Memory* %loadMem_4778f6, %struct.Memory** %MEMORY
  %loadMem1_4778fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 33
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2539 to i64*
  %2540 = load i64, i64* %PC.i711
  %2541 = add i64 %2540, 217606
  %2542 = load i64, i64* %PC.i711
  %2543 = add i64 %2542, 5
  %2544 = load i64, i64* %PC.i711
  %2545 = add i64 %2544, 5
  store i64 %2545, i64* %PC.i711
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2547 = load i64, i64* %2546, align 8
  %2548 = add i64 %2547, -8
  %2549 = inttoptr i64 %2548 to i64*
  store i64 %2543, i64* %2549
  store i64 %2548, i64* %2546, align 8
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2541, i64* %2550, align 8
  store %struct.Memory* %loadMem1_4778fa, %struct.Memory** %MEMORY
  %loadMem2_4778fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4778fa = load i64, i64* %3
  %call2_4778fa = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_4778fa, %struct.Memory* %loadMem2_4778fa)
  store %struct.Memory* %call2_4778fa, %struct.Memory** %MEMORY
  %loadMem_4778ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 33
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 11
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %RDI.i710 = bitcast %union.anon* %2556 to i64*
  %2557 = load i64, i64* %PC.i709
  %2558 = add i64 %2557, 10
  store i64 %2558, i64* %PC.i709
  store i64 ptrtoint (%G__0x4c2591_type* @G__0x4c2591 to i64), i64* %RDI.i710, align 8
  store %struct.Memory* %loadMem_4778ff, %struct.Memory** %MEMORY
  %loadMem_477909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 33
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 1
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 15
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %2567 to i64*
  %2568 = load i64, i64* %RAX.i707
  %2569 = load i64, i64* %RBP.i708
  %2570 = sub i64 %2569, 28
  %2571 = load i64, i64* %PC.i706
  %2572 = add i64 %2571, 3
  store i64 %2572, i64* %PC.i706
  %2573 = trunc i64 %2568 to i32
  %2574 = inttoptr i64 %2570 to i32*
  %2575 = load i32, i32* %2574
  %2576 = add i32 %2575, %2573
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RAX.i707, align 8
  %2578 = icmp ult i32 %2576, %2573
  %2579 = icmp ult i32 %2576, %2575
  %2580 = or i1 %2578, %2579
  %2581 = zext i1 %2580 to i8
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2581, i8* %2582, align 1
  %2583 = and i32 %2576, 255
  %2584 = call i32 @llvm.ctpop.i32(i32 %2583)
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  %2587 = xor i8 %2586, 1
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2587, i8* %2588, align 1
  %2589 = xor i32 %2575, %2573
  %2590 = xor i32 %2589, %2576
  %2591 = lshr i32 %2590, 4
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2593, i8* %2594, align 1
  %2595 = icmp eq i32 %2576, 0
  %2596 = zext i1 %2595 to i8
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2596, i8* %2597, align 1
  %2598 = lshr i32 %2576, 31
  %2599 = trunc i32 %2598 to i8
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2599, i8* %2600, align 1
  %2601 = lshr i32 %2573, 31
  %2602 = lshr i32 %2575, 31
  %2603 = xor i32 %2598, %2601
  %2604 = xor i32 %2598, %2602
  %2605 = add i32 %2603, %2604
  %2606 = icmp eq i32 %2605, 2
  %2607 = zext i1 %2606 to i8
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2607, i8* %2608, align 1
  store %struct.Memory* %loadMem_477909, %struct.Memory** %MEMORY
  %loadMem_47790c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 1
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %EAX.i704 = bitcast %union.anon* %2614 to i32*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 15
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %2617 to i64*
  %2618 = load i64, i64* %RBP.i705
  %2619 = sub i64 %2618, 28
  %2620 = load i32, i32* %EAX.i704
  %2621 = zext i32 %2620 to i64
  %2622 = load i64, i64* %PC.i703
  %2623 = add i64 %2622, 3
  store i64 %2623, i64* %PC.i703
  %2624 = inttoptr i64 %2619 to i32*
  store i32 %2620, i32* %2624
  store %struct.Memory* %loadMem_47790c, %struct.Memory** %MEMORY
  %loadMem_47790f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 7
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RDX.i701 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 15
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %2633 to i64*
  %2634 = load i64, i64* %RBP.i702
  %2635 = sub i64 %2634, 8
  %2636 = load i64, i64* %PC.i700
  %2637 = add i64 %2636, 4
  store i64 %2637, i64* %PC.i700
  %2638 = inttoptr i64 %2635 to i64*
  %2639 = load i64, i64* %2638
  store i64 %2639, i64* %RDX.i701, align 8
  store %struct.Memory* %loadMem_47790f, %struct.Memory** %MEMORY
  %loadMem_477913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 33
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %2642 to i64*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 7
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %RDX.i698 = bitcast %union.anon* %2645 to i64*
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 9
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %RSI.i699 = bitcast %union.anon* %2648 to i64*
  %2649 = load i64, i64* %RDX.i698
  %2650 = add i64 %2649, 36
  %2651 = load i64, i64* %PC.i697
  %2652 = add i64 %2651, 3
  store i64 %2652, i64* %PC.i697
  %2653 = inttoptr i64 %2650 to i32*
  %2654 = load i32, i32* %2653
  %2655 = zext i32 %2654 to i64
  store i64 %2655, i64* %RSI.i699, align 8
  store %struct.Memory* %loadMem_477913, %struct.Memory** %MEMORY
  %loadMem_477916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 33
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 7
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RDX.i695 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 15
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %2664 to i64*
  %2665 = load i64, i64* %RBP.i696
  %2666 = sub i64 %2665, 24
  %2667 = load i64, i64* %PC.i694
  %2668 = add i64 %2667, 4
  store i64 %2668, i64* %PC.i694
  %2669 = inttoptr i64 %2666 to i64*
  %2670 = load i64, i64* %2669
  store i64 %2670, i64* %RDX.i695, align 8
  store %struct.Memory* %loadMem_477916, %struct.Memory** %MEMORY
  %loadMem1_47791a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %PC.i693
  %2675 = add i64 %2674, 217574
  %2676 = load i64, i64* %PC.i693
  %2677 = add i64 %2676, 5
  %2678 = load i64, i64* %PC.i693
  %2679 = add i64 %2678, 5
  store i64 %2679, i64* %PC.i693
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2681 = load i64, i64* %2680, align 8
  %2682 = add i64 %2681, -8
  %2683 = inttoptr i64 %2682 to i64*
  store i64 %2677, i64* %2683
  store i64 %2682, i64* %2680, align 8
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2675, i64* %2684, align 8
  store %struct.Memory* %loadMem1_47791a, %struct.Memory** %MEMORY
  %loadMem2_47791a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47791a = load i64, i64* %3
  %call2_47791a = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_47791a, %struct.Memory* %loadMem2_47791a)
  store %struct.Memory* %call2_47791a, %struct.Memory** %MEMORY
  %loadMem_47791f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 33
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 1
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %RAX.i691 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 15
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RBP.i692 = bitcast %union.anon* %2693 to i64*
  %2694 = load i64, i64* %RAX.i691
  %2695 = load i64, i64* %RBP.i692
  %2696 = sub i64 %2695, 28
  %2697 = load i64, i64* %PC.i690
  %2698 = add i64 %2697, 3
  store i64 %2698, i64* %PC.i690
  %2699 = trunc i64 %2694 to i32
  %2700 = inttoptr i64 %2696 to i32*
  %2701 = load i32, i32* %2700
  %2702 = add i32 %2701, %2699
  %2703 = zext i32 %2702 to i64
  store i64 %2703, i64* %RAX.i691, align 8
  %2704 = icmp ult i32 %2702, %2699
  %2705 = icmp ult i32 %2702, %2701
  %2706 = or i1 %2704, %2705
  %2707 = zext i1 %2706 to i8
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2707, i8* %2708, align 1
  %2709 = and i32 %2702, 255
  %2710 = call i32 @llvm.ctpop.i32(i32 %2709)
  %2711 = trunc i32 %2710 to i8
  %2712 = and i8 %2711, 1
  %2713 = xor i8 %2712, 1
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2713, i8* %2714, align 1
  %2715 = xor i32 %2701, %2699
  %2716 = xor i32 %2715, %2702
  %2717 = lshr i32 %2716, 4
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2719, i8* %2720, align 1
  %2721 = icmp eq i32 %2702, 0
  %2722 = zext i1 %2721 to i8
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2722, i8* %2723, align 1
  %2724 = lshr i32 %2702, 31
  %2725 = trunc i32 %2724 to i8
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2725, i8* %2726, align 1
  %2727 = lshr i32 %2699, 31
  %2728 = lshr i32 %2701, 31
  %2729 = xor i32 %2724, %2727
  %2730 = xor i32 %2724, %2728
  %2731 = add i32 %2729, %2730
  %2732 = icmp eq i32 %2731, 2
  %2733 = zext i1 %2732 to i8
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2733, i8* %2734, align 1
  store %struct.Memory* %loadMem_47791f, %struct.Memory** %MEMORY
  %loadMem_477922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 1
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %EAX.i688 = bitcast %union.anon* %2740 to i32*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 15
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %2743 to i64*
  %2744 = load i64, i64* %RBP.i689
  %2745 = sub i64 %2744, 28
  %2746 = load i32, i32* %EAX.i688
  %2747 = zext i32 %2746 to i64
  %2748 = load i64, i64* %PC.i687
  %2749 = add i64 %2748, 3
  store i64 %2749, i64* %PC.i687
  %2750 = inttoptr i64 %2745 to i32*
  store i32 %2746, i32* %2750
  store %struct.Memory* %loadMem_477922, %struct.Memory** %MEMORY
  %loadMem_477925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 33
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2753 to i64*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 7
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %RDX.i685 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 15
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %2759 to i64*
  %2760 = load i64, i64* %RBP.i686
  %2761 = sub i64 %2760, 8
  %2762 = load i64, i64* %PC.i684
  %2763 = add i64 %2762, 4
  store i64 %2763, i64* %PC.i684
  %2764 = inttoptr i64 %2761 to i64*
  %2765 = load i64, i64* %2764
  store i64 %2765, i64* %RDX.i685, align 8
  store %struct.Memory* %loadMem_477925, %struct.Memory** %MEMORY
  %loadMem_477929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 33
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 7
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %RDX.i683 = bitcast %union.anon* %2771 to i64*
  %2772 = load i64, i64* %RDX.i683
  %2773 = add i64 %2772, 36
  %2774 = load i64, i64* %PC.i682
  %2775 = add i64 %2774, 4
  store i64 %2775, i64* %PC.i682
  %2776 = inttoptr i64 %2773 to i32*
  %2777 = load i32, i32* %2776
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2778, align 1
  %2779 = and i32 %2777, 255
  %2780 = call i32 @llvm.ctpop.i32(i32 %2779)
  %2781 = trunc i32 %2780 to i8
  %2782 = and i8 %2781, 1
  %2783 = xor i8 %2782, 1
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2783, i8* %2784, align 1
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2785, align 1
  %2786 = icmp eq i32 %2777, 0
  %2787 = zext i1 %2786 to i8
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2787, i8* %2788, align 1
  %2789 = lshr i32 %2777, 31
  %2790 = trunc i32 %2789 to i8
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2790, i8* %2791, align 1
  %2792 = lshr i32 %2777, 31
  %2793 = xor i32 %2789, %2792
  %2794 = add i32 %2793, %2792
  %2795 = icmp eq i32 %2794, 2
  %2796 = zext i1 %2795 to i8
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2796, i8* %2797, align 1
  store %struct.Memory* %loadMem_477929, %struct.Memory** %MEMORY
  %loadMem_47792d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 33
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2800 to i64*
  %2801 = load i64, i64* %PC.i681
  %2802 = add i64 %2801, 336
  %2803 = load i64, i64* %PC.i681
  %2804 = add i64 %2803, 6
  %2805 = load i64, i64* %PC.i681
  %2806 = add i64 %2805, 6
  store i64 %2806, i64* %PC.i681
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2808 = load i8, i8* %2807, align 1
  store i8 %2808, i8* %BRANCH_TAKEN, align 1
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2810 = icmp ne i8 %2808, 0
  %2811 = select i1 %2810, i64 %2802, i64 %2804
  store i64 %2811, i64* %2809, align 8
  store %struct.Memory* %loadMem_47792d, %struct.Memory** %MEMORY
  %loadBr_47792d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47792d = icmp eq i8 %loadBr_47792d, 1
  br i1 %cmpBr_47792d, label %block_.L_477a7d, label %block_477933

block_477933:                                     ; preds = %block_.L_47789e
  %loadMem_477933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 15
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %2817 to i64*
  %2818 = load i64, i64* %RBP.i680
  %2819 = sub i64 %2818, 36
  %2820 = load i64, i64* %PC.i679
  %2821 = add i64 %2820, 7
  store i64 %2821, i64* %PC.i679
  %2822 = inttoptr i64 %2819 to i32*
  store i32 0, i32* %2822
  store %struct.Memory* %loadMem_477933, %struct.Memory** %MEMORY
  br label %block_.L_47793a

block_.L_47793a:                                  ; preds = %block_.L_477a6a, %block_477933
  %loadMem_47793a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 15
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %2828 to i64*
  %2829 = load i64, i64* %RBP.i678
  %2830 = sub i64 %2829, 36
  %2831 = load i64, i64* %PC.i677
  %2832 = add i64 %2831, 4
  store i64 %2832, i64* %PC.i677
  %2833 = inttoptr i64 %2830 to i32*
  %2834 = load i32, i32* %2833
  %2835 = sub i32 %2834, 8
  %2836 = icmp ult i32 %2834, 8
  %2837 = zext i1 %2836 to i8
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2837, i8* %2838, align 1
  %2839 = and i32 %2835, 255
  %2840 = call i32 @llvm.ctpop.i32(i32 %2839)
  %2841 = trunc i32 %2840 to i8
  %2842 = and i8 %2841, 1
  %2843 = xor i8 %2842, 1
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2843, i8* %2844, align 1
  %2845 = xor i32 %2834, 8
  %2846 = xor i32 %2845, %2835
  %2847 = lshr i32 %2846, 4
  %2848 = trunc i32 %2847 to i8
  %2849 = and i8 %2848, 1
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2849, i8* %2850, align 1
  %2851 = icmp eq i32 %2835, 0
  %2852 = zext i1 %2851 to i8
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2852, i8* %2853, align 1
  %2854 = lshr i32 %2835, 31
  %2855 = trunc i32 %2854 to i8
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2855, i8* %2856, align 1
  %2857 = lshr i32 %2834, 31
  %2858 = xor i32 %2854, %2857
  %2859 = add i32 %2858, %2857
  %2860 = icmp eq i32 %2859, 2
  %2861 = zext i1 %2860 to i8
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2861, i8* %2862, align 1
  store %struct.Memory* %loadMem_47793a, %struct.Memory** %MEMORY
  %loadMem_47793e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2865 to i64*
  %2866 = load i64, i64* %PC.i676
  %2867 = add i64 %2866, 314
  %2868 = load i64, i64* %PC.i676
  %2869 = add i64 %2868, 6
  %2870 = load i64, i64* %PC.i676
  %2871 = add i64 %2870, 6
  store i64 %2871, i64* %PC.i676
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2873 = load i8, i8* %2872, align 1
  %2874 = icmp eq i8 %2873, 0
  %2875 = zext i1 %2874 to i8
  store i8 %2875, i8* %BRANCH_TAKEN, align 1
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2877 = select i1 %2874, i64 %2867, i64 %2869
  store i64 %2877, i64* %2876, align 8
  store %struct.Memory* %loadMem_47793e, %struct.Memory** %MEMORY
  %loadBr_47793e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47793e = icmp eq i8 %loadBr_47793e, 1
  br i1 %cmpBr_47793e, label %block_.L_477a78, label %block_477944

block_477944:                                     ; preds = %block_.L_47793a
  %loadMem_477944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 33
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 11
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RDI.i675 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %PC.i674
  %2885 = add i64 %2884, 10
  store i64 %2885, i64* %PC.i674
  store i64 ptrtoint (%G__0x4c25b6_type* @G__0x4c25b6 to i64), i64* %RDI.i675, align 8
  store %struct.Memory* %loadMem_477944, %struct.Memory** %MEMORY
  %loadMem_47794e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 33
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 1
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %2891 to i64*
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 15
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %2894 to i64*
  %2895 = load i64, i64* %RBP.i673
  %2896 = sub i64 %2895, 8
  %2897 = load i64, i64* %PC.i671
  %2898 = add i64 %2897, 4
  store i64 %2898, i64* %PC.i671
  %2899 = inttoptr i64 %2896 to i64*
  %2900 = load i64, i64* %2899
  store i64 %2900, i64* %RAX.i672, align 8
  store %struct.Memory* %loadMem_47794e, %struct.Memory** %MEMORY
  %loadMem_477952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 33
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 5
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RCX.i669 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 15
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %2909 to i64*
  %2910 = load i64, i64* %RBP.i670
  %2911 = sub i64 %2910, 36
  %2912 = load i64, i64* %PC.i668
  %2913 = add i64 %2912, 3
  store i64 %2913, i64* %PC.i668
  %2914 = inttoptr i64 %2911 to i32*
  %2915 = load i32, i32* %2914
  %2916 = zext i32 %2915 to i64
  store i64 %2916, i64* %RCX.i669, align 8
  store %struct.Memory* %loadMem_477952, %struct.Memory** %MEMORY
  %loadMem_477955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 33
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 5
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %ECX.i666 = bitcast %union.anon* %2922 to i32*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 7
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RDX.i667 = bitcast %union.anon* %2925 to i64*
  %2926 = load i32, i32* %ECX.i666
  %2927 = zext i32 %2926 to i64
  %2928 = load i64, i64* %PC.i665
  %2929 = add i64 %2928, 2
  store i64 %2929, i64* %PC.i665
  %2930 = and i64 %2927, 4294967295
  store i64 %2930, i64* %RDX.i667, align 8
  store %struct.Memory* %loadMem_477955, %struct.Memory** %MEMORY
  %loadMem_477957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 33
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 1
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %2936 to i64*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 7
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %RDX.i663 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 9
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %RSI.i664 = bitcast %union.anon* %2942 to i64*
  %2943 = load i64, i64* %RAX.i662
  %2944 = load i64, i64* %RDX.i663
  %2945 = mul i64 %2944, 4
  %2946 = add i64 %2943, 40
  %2947 = add i64 %2946, %2945
  %2948 = load i64, i64* %PC.i661
  %2949 = add i64 %2948, 4
  store i64 %2949, i64* %PC.i661
  %2950 = inttoptr i64 %2947 to i32*
  %2951 = load i32, i32* %2950
  %2952 = zext i32 %2951 to i64
  store i64 %2952, i64* %RSI.i664, align 8
  store %struct.Memory* %loadMem_477957, %struct.Memory** %MEMORY
  %loadMem_47795b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 33
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 7
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %RDX.i659 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 15
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %2961 to i64*
  %2962 = load i64, i64* %RBP.i660
  %2963 = sub i64 %2962, 24
  %2964 = load i64, i64* %PC.i658
  %2965 = add i64 %2964, 4
  store i64 %2965, i64* %PC.i658
  %2966 = inttoptr i64 %2963 to i64*
  %2967 = load i64, i64* %2966
  store i64 %2967, i64* %RDX.i659, align 8
  store %struct.Memory* %loadMem_47795b, %struct.Memory** %MEMORY
  %loadMem1_47795f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %PC.i657
  %2972 = add i64 %2971, 217505
  %2973 = load i64, i64* %PC.i657
  %2974 = add i64 %2973, 5
  %2975 = load i64, i64* %PC.i657
  %2976 = add i64 %2975, 5
  store i64 %2976, i64* %PC.i657
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2978 = load i64, i64* %2977, align 8
  %2979 = add i64 %2978, -8
  %2980 = inttoptr i64 %2979 to i64*
  store i64 %2974, i64* %2980
  store i64 %2979, i64* %2977, align 8
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2972, i64* %2981, align 8
  store %struct.Memory* %loadMem1_47795f, %struct.Memory** %MEMORY
  %loadMem2_47795f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47795f = load i64, i64* %3
  %call2_47795f = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_47795f, %struct.Memory* %loadMem2_47795f)
  store %struct.Memory* %call2_47795f, %struct.Memory** %MEMORY
  %loadMem_477964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 33
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %2984 to i64*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 1
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %2987 to i64*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 15
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RBP.i656 = bitcast %union.anon* %2990 to i64*
  %2991 = load i64, i64* %RAX.i655
  %2992 = load i64, i64* %RBP.i656
  %2993 = sub i64 %2992, 28
  %2994 = load i64, i64* %PC.i654
  %2995 = add i64 %2994, 3
  store i64 %2995, i64* %PC.i654
  %2996 = trunc i64 %2991 to i32
  %2997 = inttoptr i64 %2993 to i32*
  %2998 = load i32, i32* %2997
  %2999 = add i32 %2998, %2996
  %3000 = zext i32 %2999 to i64
  store i64 %3000, i64* %RAX.i655, align 8
  %3001 = icmp ult i32 %2999, %2996
  %3002 = icmp ult i32 %2999, %2998
  %3003 = or i1 %3001, %3002
  %3004 = zext i1 %3003 to i8
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3004, i8* %3005, align 1
  %3006 = and i32 %2999, 255
  %3007 = call i32 @llvm.ctpop.i32(i32 %3006)
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  %3010 = xor i8 %3009, 1
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3010, i8* %3011, align 1
  %3012 = xor i32 %2998, %2996
  %3013 = xor i32 %3012, %2999
  %3014 = lshr i32 %3013, 4
  %3015 = trunc i32 %3014 to i8
  %3016 = and i8 %3015, 1
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3016, i8* %3017, align 1
  %3018 = icmp eq i32 %2999, 0
  %3019 = zext i1 %3018 to i8
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3019, i8* %3020, align 1
  %3021 = lshr i32 %2999, 31
  %3022 = trunc i32 %3021 to i8
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3022, i8* %3023, align 1
  %3024 = lshr i32 %2996, 31
  %3025 = lshr i32 %2998, 31
  %3026 = xor i32 %3021, %3024
  %3027 = xor i32 %3021, %3025
  %3028 = add i32 %3026, %3027
  %3029 = icmp eq i32 %3028, 2
  %3030 = zext i1 %3029 to i8
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3030, i8* %3031, align 1
  store %struct.Memory* %loadMem_477964, %struct.Memory** %MEMORY
  %loadMem_477967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 33
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %3034 to i64*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 1
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %EAX.i652 = bitcast %union.anon* %3037 to i32*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 15
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %3040 to i64*
  %3041 = load i64, i64* %RBP.i653
  %3042 = sub i64 %3041, 28
  %3043 = load i32, i32* %EAX.i652
  %3044 = zext i32 %3043 to i64
  %3045 = load i64, i64* %PC.i651
  %3046 = add i64 %3045, 3
  store i64 %3046, i64* %PC.i651
  %3047 = inttoptr i64 %3042 to i32*
  store i32 %3043, i32* %3047
  store %struct.Memory* %loadMem_477967, %struct.Memory** %MEMORY
  %loadMem_47796a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 33
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 7
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %RDX.i649 = bitcast %union.anon* %3053 to i64*
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 15
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %3056 to i64*
  %3057 = load i64, i64* %RBP.i650
  %3058 = sub i64 %3057, 8
  %3059 = load i64, i64* %PC.i648
  %3060 = add i64 %3059, 4
  store i64 %3060, i64* %PC.i648
  %3061 = inttoptr i64 %3058 to i64*
  %3062 = load i64, i64* %3061
  store i64 %3062, i64* %RDX.i649, align 8
  store %struct.Memory* %loadMem_47796a, %struct.Memory** %MEMORY
  %loadMem_47796e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %3065 to i64*
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 1
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %RAX.i646 = bitcast %union.anon* %3068 to i64*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 15
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %3071 to i64*
  %3072 = load i64, i64* %RBP.i647
  %3073 = sub i64 %3072, 36
  %3074 = load i64, i64* %PC.i645
  %3075 = add i64 %3074, 3
  store i64 %3075, i64* %PC.i645
  %3076 = inttoptr i64 %3073 to i32*
  %3077 = load i32, i32* %3076
  %3078 = zext i32 %3077 to i64
  store i64 %3078, i64* %RAX.i646, align 8
  store %struct.Memory* %loadMem_47796e, %struct.Memory** %MEMORY
  %loadMem_477971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 33
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %3081 to i64*
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 1
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %EAX.i643 = bitcast %union.anon* %3084 to i32*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 11
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RDI.i644 = bitcast %union.anon* %3087 to i64*
  %3088 = load i32, i32* %EAX.i643
  %3089 = zext i32 %3088 to i64
  %3090 = load i64, i64* %PC.i642
  %3091 = add i64 %3090, 2
  store i64 %3091, i64* %PC.i642
  %3092 = and i64 %3089, 4294967295
  store i64 %3092, i64* %RDI.i644, align 8
  store %struct.Memory* %loadMem_477971, %struct.Memory** %MEMORY
  %loadMem_477973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 7
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RDX.i640 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 11
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RDI.i641 = bitcast %union.anon* %3101 to i64*
  %3102 = load i64, i64* %RDX.i640
  %3103 = load i64, i64* %RDI.i641
  %3104 = mul i64 %3103, 4
  %3105 = add i64 %3102, 40
  %3106 = add i64 %3105, %3104
  %3107 = load i64, i64* %PC.i639
  %3108 = add i64 %3107, 5
  store i64 %3108, i64* %PC.i639
  %3109 = inttoptr i64 %3106 to i32*
  %3110 = load i32, i32* %3109
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3111, align 1
  %3112 = and i32 %3110, 255
  %3113 = call i32 @llvm.ctpop.i32(i32 %3112)
  %3114 = trunc i32 %3113 to i8
  %3115 = and i8 %3114, 1
  %3116 = xor i8 %3115, 1
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3116, i8* %3117, align 1
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3118, align 1
  %3119 = icmp eq i32 %3110, 0
  %3120 = zext i1 %3119 to i8
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3120, i8* %3121, align 1
  %3122 = lshr i32 %3110, 31
  %3123 = trunc i32 %3122 to i8
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3123, i8* %3124, align 1
  %3125 = lshr i32 %3110, 31
  %3126 = xor i32 %3122, %3125
  %3127 = add i32 %3126, %3125
  %3128 = icmp eq i32 %3127, 2
  %3129 = zext i1 %3128 to i8
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3129, i8* %3130, align 1
  store %struct.Memory* %loadMem_477973, %struct.Memory** %MEMORY
  %loadMem_477978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 33
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %3133 to i64*
  %3134 = load i64, i64* %PC.i638
  %3135 = add i64 %3134, 237
  %3136 = load i64, i64* %PC.i638
  %3137 = add i64 %3136, 6
  %3138 = load i64, i64* %PC.i638
  %3139 = add i64 %3138, 6
  store i64 %3139, i64* %PC.i638
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3141 = load i8, i8* %3140, align 1
  store i8 %3141, i8* %BRANCH_TAKEN, align 1
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3143 = icmp ne i8 %3141, 0
  %3144 = select i1 %3143, i64 %3135, i64 %3137
  store i64 %3144, i64* %3142, align 8
  store %struct.Memory* %loadMem_477978, %struct.Memory** %MEMORY
  %loadBr_477978 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477978 = icmp eq i8 %loadBr_477978, 1
  br i1 %cmpBr_477978, label %block_.L_477a65, label %block_47797e

block_47797e:                                     ; preds = %block_477944
  %loadMem_47797e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 33
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %3147 to i64*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 15
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %3150 to i64*
  %3151 = load i64, i64* %RBP.i637
  %3152 = sub i64 %3151, 36
  %3153 = load i64, i64* %PC.i636
  %3154 = add i64 %3153, 4
  store i64 %3154, i64* %PC.i636
  %3155 = inttoptr i64 %3152 to i32*
  %3156 = load i32, i32* %3155
  %3157 = sub i32 %3156, 6
  %3158 = icmp ult i32 %3156, 6
  %3159 = zext i1 %3158 to i8
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3159, i8* %3160, align 1
  %3161 = and i32 %3157, 255
  %3162 = call i32 @llvm.ctpop.i32(i32 %3161)
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3165, i8* %3166, align 1
  %3167 = xor i32 %3156, 6
  %3168 = xor i32 %3167, %3157
  %3169 = lshr i32 %3168, 4
  %3170 = trunc i32 %3169 to i8
  %3171 = and i8 %3170, 1
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3171, i8* %3172, align 1
  %3173 = icmp eq i32 %3157, 0
  %3174 = zext i1 %3173 to i8
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3174, i8* %3175, align 1
  %3176 = lshr i32 %3157, 31
  %3177 = trunc i32 %3176 to i8
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3177, i8* %3178, align 1
  %3179 = lshr i32 %3156, 31
  %3180 = xor i32 %3176, %3179
  %3181 = add i32 %3180, %3179
  %3182 = icmp eq i32 %3181, 2
  %3183 = zext i1 %3182 to i8
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3183, i8* %3184, align 1
  store %struct.Memory* %loadMem_47797e, %struct.Memory** %MEMORY
  %loadMem_477982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 33
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %3187 to i64*
  %3188 = load i64, i64* %PC.i635
  %3189 = add i64 %3188, 109
  %3190 = load i64, i64* %PC.i635
  %3191 = add i64 %3190, 6
  %3192 = load i64, i64* %PC.i635
  %3193 = add i64 %3192, 6
  store i64 %3193, i64* %PC.i635
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3195 = load i8, i8* %3194, align 1
  %3196 = icmp eq i8 %3195, 0
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %BRANCH_TAKEN, align 1
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3199 = select i1 %3196, i64 %3189, i64 %3191
  store i64 %3199, i64* %3198, align 8
  store %struct.Memory* %loadMem_477982, %struct.Memory** %MEMORY
  %loadBr_477982 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477982 = icmp eq i8 %loadBr_477982, 1
  br i1 %cmpBr_477982, label %block_.L_4779ef, label %block_477988

block_477988:                                     ; preds = %block_47797e
  %loadMem_477988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 7
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %RDX.i634 = bitcast %union.anon* %3205 to i64*
  %3206 = load i64, i64* %PC.i633
  %3207 = add i64 %3206, 5
  store i64 %3207, i64* %PC.i633
  store i64 16, i64* %RDX.i634, align 8
  store %struct.Memory* %loadMem_477988, %struct.Memory** %MEMORY
  %loadMem_47798d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 1
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RAX.i632 = bitcast %union.anon* %3213 to i64*
  %3214 = load i64, i64* %PC.i631
  %3215 = add i64 %3214, 10
  store i64 %3215, i64* %PC.i631
  store i64 ptrtoint (%G__0x6d4520_type* @G__0x6d4520 to i64), i64* %RAX.i632, align 8
  store %struct.Memory* %loadMem_47798d, %struct.Memory** %MEMORY
  %loadMem_477997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 33
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %3218 to i64*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 5
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %RCX.i630 = bitcast %union.anon* %3221 to i64*
  %3222 = load i64, i64* %PC.i629
  %3223 = add i64 %3222, 10
  store i64 %3223, i64* %PC.i629
  store i64 ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64), i64* %RCX.i630, align 8
  store %struct.Memory* %loadMem_477997, %struct.Memory** %MEMORY
  %loadMem_4779a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 33
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 9
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %RSI.i628 = bitcast %union.anon* %3229 to i64*
  %3230 = load i64, i64* %PC.i627
  %3231 = add i64 %3230, 10
  store i64 %3231, i64* %PC.i627
  store i64 ptrtoint (%G__0x711780_type* @G__0x711780 to i64), i64* %RSI.i628, align 8
  store %struct.Memory* %loadMem_4779a1, %struct.Memory** %MEMORY
  %loadMem_4779ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 33
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %3234 to i64*
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 11
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %RDI.i625 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 15
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %3240 to i64*
  %3241 = load i64, i64* %RBP.i626
  %3242 = sub i64 %3241, 36
  %3243 = load i64, i64* %PC.i624
  %3244 = add i64 %3243, 3
  store i64 %3244, i64* %PC.i624
  %3245 = inttoptr i64 %3242 to i32*
  %3246 = load i32, i32* %3245
  %3247 = zext i32 %3246 to i64
  store i64 %3247, i64* %RDI.i625, align 8
  store %struct.Memory* %loadMem_4779ab, %struct.Memory** %MEMORY
  %loadMem_4779ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 33
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 11
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %EDI.i622 = bitcast %union.anon* %3253 to i32*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 17
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %R8D.i623 = bitcast %union.anon* %3256 to i32*
  %3257 = bitcast i32* %R8D.i623 to i64*
  %3258 = load i32, i32* %EDI.i622
  %3259 = zext i32 %3258 to i64
  %3260 = load i64, i64* %PC.i621
  %3261 = add i64 %3260, 3
  store i64 %3261, i64* %PC.i621
  %3262 = and i64 %3259, 4294967295
  store i64 %3262, i64* %3257, align 8
  store %struct.Memory* %loadMem_4779ae, %struct.Memory** %MEMORY
  %loadMem_4779b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 33
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 17
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %R8.i620 = bitcast %union.anon* %3268 to i64*
  %3269 = load i64, i64* %R8.i620
  %3270 = load i64, i64* %PC.i619
  %3271 = add i64 %3270, 4
  store i64 %3271, i64* %PC.i619
  %3272 = shl i64 %3269, 4
  %3273 = icmp slt i64 %3272, 0
  %3274 = shl i64 %3272, 1
  store i64 %3274, i64* %R8.i620, align 8
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3276 = zext i1 %3273 to i8
  store i8 %3276, i8* %3275, align 1
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3278 = trunc i64 %3274 to i32
  %3279 = and i32 %3278, 254
  %3280 = call i32 @llvm.ctpop.i32(i32 %3279)
  %3281 = trunc i32 %3280 to i8
  %3282 = and i8 %3281, 1
  %3283 = xor i8 %3282, 1
  store i8 %3283, i8* %3277, align 1
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3284, align 1
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3286 = icmp eq i64 %3274, 0
  %3287 = zext i1 %3286 to i8
  store i8 %3287, i8* %3285, align 1
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3289 = lshr i64 %3274, 63
  %3290 = trunc i64 %3289 to i8
  store i8 %3290, i8* %3288, align 1
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3291, align 1
  store %struct.Memory* %loadMem_4779b1, %struct.Memory** %MEMORY
  %loadMem_4779b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 33
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 9
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RSI.i617 = bitcast %union.anon* %3297 to i64*
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 17
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %R8.i618 = bitcast %union.anon* %3300 to i64*
  %3301 = load i64, i64* %RSI.i617
  %3302 = load i64, i64* %R8.i618
  %3303 = load i64, i64* %PC.i616
  %3304 = add i64 %3303, 3
  store i64 %3304, i64* %PC.i616
  %3305 = add i64 %3302, %3301
  store i64 %3305, i64* %RSI.i617, align 8
  %3306 = icmp ult i64 %3305, %3301
  %3307 = icmp ult i64 %3305, %3302
  %3308 = or i1 %3306, %3307
  %3309 = zext i1 %3308 to i8
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3309, i8* %3310, align 1
  %3311 = trunc i64 %3305 to i32
  %3312 = and i32 %3311, 255
  %3313 = call i32 @llvm.ctpop.i32(i32 %3312)
  %3314 = trunc i32 %3313 to i8
  %3315 = and i8 %3314, 1
  %3316 = xor i8 %3315, 1
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3316, i8* %3317, align 1
  %3318 = xor i64 %3302, %3301
  %3319 = xor i64 %3318, %3305
  %3320 = lshr i64 %3319, 4
  %3321 = trunc i64 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3322, i8* %3323, align 1
  %3324 = icmp eq i64 %3305, 0
  %3325 = zext i1 %3324 to i8
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3325, i8* %3326, align 1
  %3327 = lshr i64 %3305, 63
  %3328 = trunc i64 %3327 to i8
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3328, i8* %3329, align 1
  %3330 = lshr i64 %3301, 63
  %3331 = lshr i64 %3302, 63
  %3332 = xor i64 %3327, %3330
  %3333 = xor i64 %3327, %3331
  %3334 = add i64 %3332, %3333
  %3335 = icmp eq i64 %3334, 2
  %3336 = zext i1 %3335 to i8
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3336, i8* %3337, align 1
  store %struct.Memory* %loadMem_4779b5, %struct.Memory** %MEMORY
  %loadMem_4779b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 33
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3340 to i64*
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 11
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %RDI.i614 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 15
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %3346 to i64*
  %3347 = load i64, i64* %RBP.i615
  %3348 = sub i64 %3347, 36
  %3349 = load i64, i64* %PC.i613
  %3350 = add i64 %3349, 3
  store i64 %3350, i64* %PC.i613
  %3351 = inttoptr i64 %3348 to i32*
  %3352 = load i32, i32* %3351
  %3353 = zext i32 %3352 to i64
  store i64 %3353, i64* %RDI.i614, align 8
  store %struct.Memory* %loadMem_4779b8, %struct.Memory** %MEMORY
  %loadMem_4779bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 33
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 11
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %EDI.i611 = bitcast %union.anon* %3359 to i32*
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 17
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %R8D.i612 = bitcast %union.anon* %3362 to i32*
  %3363 = bitcast i32* %R8D.i612 to i64*
  %3364 = load i32, i32* %EDI.i611
  %3365 = zext i32 %3364 to i64
  %3366 = load i64, i64* %PC.i610
  %3367 = add i64 %3366, 3
  store i64 %3367, i64* %PC.i610
  %3368 = and i64 %3365, 4294967295
  store i64 %3368, i64* %3363, align 8
  store %struct.Memory* %loadMem_4779bb, %struct.Memory** %MEMORY
  %loadMem_4779be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 17
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %R8.i609 = bitcast %union.anon* %3374 to i64*
  %3375 = load i64, i64* %R8.i609
  %3376 = load i64, i64* %PC.i608
  %3377 = add i64 %3376, 4
  store i64 %3377, i64* %PC.i608
  %3378 = shl i64 %3375, 4
  %3379 = icmp slt i64 %3378, 0
  %3380 = shl i64 %3378, 1
  store i64 %3380, i64* %R8.i609, align 8
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3382 = zext i1 %3379 to i8
  store i8 %3382, i8* %3381, align 1
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3384 = trunc i64 %3380 to i32
  %3385 = and i32 %3384, 254
  %3386 = call i32 @llvm.ctpop.i32(i32 %3385)
  %3387 = trunc i32 %3386 to i8
  %3388 = and i8 %3387, 1
  %3389 = xor i8 %3388, 1
  store i8 %3389, i8* %3383, align 1
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3390, align 1
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3392 = icmp eq i64 %3380, 0
  %3393 = zext i1 %3392 to i8
  store i8 %3393, i8* %3391, align 1
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3395 = lshr i64 %3380, 63
  %3396 = trunc i64 %3395 to i8
  store i8 %3396, i8* %3394, align 1
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3397, align 1
  store %struct.Memory* %loadMem_4779be, %struct.Memory** %MEMORY
  %loadMem_4779c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 33
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3400 to i64*
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 5
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %RCX.i606 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 17
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %R8.i607 = bitcast %union.anon* %3406 to i64*
  %3407 = load i64, i64* %RCX.i606
  %3408 = load i64, i64* %R8.i607
  %3409 = load i64, i64* %PC.i605
  %3410 = add i64 %3409, 3
  store i64 %3410, i64* %PC.i605
  %3411 = add i64 %3408, %3407
  store i64 %3411, i64* %RCX.i606, align 8
  %3412 = icmp ult i64 %3411, %3407
  %3413 = icmp ult i64 %3411, %3408
  %3414 = or i1 %3412, %3413
  %3415 = zext i1 %3414 to i8
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3415, i8* %3416, align 1
  %3417 = trunc i64 %3411 to i32
  %3418 = and i32 %3417, 255
  %3419 = call i32 @llvm.ctpop.i32(i32 %3418)
  %3420 = trunc i32 %3419 to i8
  %3421 = and i8 %3420, 1
  %3422 = xor i8 %3421, 1
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3422, i8* %3423, align 1
  %3424 = xor i64 %3408, %3407
  %3425 = xor i64 %3424, %3411
  %3426 = lshr i64 %3425, 4
  %3427 = trunc i64 %3426 to i8
  %3428 = and i8 %3427, 1
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3428, i8* %3429, align 1
  %3430 = icmp eq i64 %3411, 0
  %3431 = zext i1 %3430 to i8
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3431, i8* %3432, align 1
  %3433 = lshr i64 %3411, 63
  %3434 = trunc i64 %3433 to i8
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3434, i8* %3435, align 1
  %3436 = lshr i64 %3407, 63
  %3437 = lshr i64 %3408, 63
  %3438 = xor i64 %3433, %3436
  %3439 = xor i64 %3433, %3437
  %3440 = add i64 %3438, %3439
  %3441 = icmp eq i64 %3440, 2
  %3442 = zext i1 %3441 to i8
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3442, i8* %3443, align 1
  store %struct.Memory* %loadMem_4779c2, %struct.Memory** %MEMORY
  %loadMem_4779c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 33
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3446 to i64*
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 11
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %RDI.i603 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 15
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %3452 to i64*
  %3453 = load i64, i64* %RBP.i604
  %3454 = sub i64 %3453, 36
  %3455 = load i64, i64* %PC.i602
  %3456 = add i64 %3455, 3
  store i64 %3456, i64* %PC.i602
  %3457 = inttoptr i64 %3454 to i32*
  %3458 = load i32, i32* %3457
  %3459 = zext i32 %3458 to i64
  store i64 %3459, i64* %RDI.i603, align 8
  store %struct.Memory* %loadMem_4779c5, %struct.Memory** %MEMORY
  %loadMem_4779c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %3462 to i64*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 11
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %EDI.i600 = bitcast %union.anon* %3465 to i32*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 17
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %R8D.i601 = bitcast %union.anon* %3468 to i32*
  %3469 = bitcast i32* %R8D.i601 to i64*
  %3470 = load i32, i32* %EDI.i600
  %3471 = zext i32 %3470 to i64
  %3472 = load i64, i64* %PC.i599
  %3473 = add i64 %3472, 3
  store i64 %3473, i64* %PC.i599
  %3474 = and i64 %3471, 4294967295
  store i64 %3474, i64* %3469, align 8
  store %struct.Memory* %loadMem_4779c8, %struct.Memory** %MEMORY
  %loadMem_4779cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 17
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %R8.i598 = bitcast %union.anon* %3480 to i64*
  %3481 = load i64, i64* %R8.i598
  %3482 = load i64, i64* %PC.i597
  %3483 = add i64 %3482, 3
  store i64 %3483, i64* %PC.i597
  %3484 = shl i64 %3481, 1
  %3485 = icmp slt i64 %3481, 0
  %3486 = icmp slt i64 %3484, 0
  %3487 = xor i1 %3485, %3486
  store i64 %3484, i64* %R8.i598, align 8
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3489 = zext i1 %3485 to i8
  store i8 %3489, i8* %3488, align 1
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3491 = trunc i64 %3484 to i32
  %3492 = and i32 %3491, 254
  %3493 = call i32 @llvm.ctpop.i32(i32 %3492)
  %3494 = trunc i32 %3493 to i8
  %3495 = and i8 %3494, 1
  %3496 = xor i8 %3495, 1
  store i8 %3496, i8* %3490, align 1
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3497, align 1
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3499 = icmp eq i64 %3484, 0
  %3500 = zext i1 %3499 to i8
  store i8 %3500, i8* %3498, align 1
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3502 = lshr i64 %3484, 63
  %3503 = trunc i64 %3502 to i8
  store i8 %3503, i8* %3501, align 1
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3505 = zext i1 %3487 to i8
  store i8 %3505, i8* %3504, align 1
  store %struct.Memory* %loadMem_4779cb, %struct.Memory** %MEMORY
  %loadMem_4779cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 1
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 17
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %R8.i596 = bitcast %union.anon* %3514 to i64*
  %3515 = load i64, i64* %RAX.i595
  %3516 = load i64, i64* %R8.i596
  %3517 = load i64, i64* %PC.i594
  %3518 = add i64 %3517, 3
  store i64 %3518, i64* %PC.i594
  %3519 = add i64 %3516, %3515
  store i64 %3519, i64* %RAX.i595, align 8
  %3520 = icmp ult i64 %3519, %3515
  %3521 = icmp ult i64 %3519, %3516
  %3522 = or i1 %3520, %3521
  %3523 = zext i1 %3522 to i8
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3523, i8* %3524, align 1
  %3525 = trunc i64 %3519 to i32
  %3526 = and i32 %3525, 255
  %3527 = call i32 @llvm.ctpop.i32(i32 %3526)
  %3528 = trunc i32 %3527 to i8
  %3529 = and i8 %3528, 1
  %3530 = xor i8 %3529, 1
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3530, i8* %3531, align 1
  %3532 = xor i64 %3516, %3515
  %3533 = xor i64 %3532, %3519
  %3534 = lshr i64 %3533, 4
  %3535 = trunc i64 %3534 to i8
  %3536 = and i8 %3535, 1
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3536, i8* %3537, align 1
  %3538 = icmp eq i64 %3519, 0
  %3539 = zext i1 %3538 to i8
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3539, i8* %3540, align 1
  %3541 = lshr i64 %3519, 63
  %3542 = trunc i64 %3541 to i8
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3542, i8* %3543, align 1
  %3544 = lshr i64 %3515, 63
  %3545 = lshr i64 %3516, 63
  %3546 = xor i64 %3541, %3544
  %3547 = xor i64 %3541, %3545
  %3548 = add i64 %3546, %3547
  %3549 = icmp eq i64 %3548, 2
  %3550 = zext i1 %3549 to i8
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3550, i8* %3551, align 1
  store %struct.Memory* %loadMem_4779cf, %struct.Memory** %MEMORY
  %loadMem_4779d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 33
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %3554 to i64*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 15
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 17
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %R8.i593 = bitcast %union.anon* %3560 to i64*
  %3561 = load i64, i64* %RBP.i592
  %3562 = sub i64 %3561, 24
  %3563 = load i64, i64* %PC.i591
  %3564 = add i64 %3563, 4
  store i64 %3564, i64* %PC.i591
  %3565 = inttoptr i64 %3562 to i64*
  %3566 = load i64, i64* %3565
  store i64 %3566, i64* %R8.i593, align 8
  store %struct.Memory* %loadMem_4779d2, %struct.Memory** %MEMORY
  %loadMem_4779d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %3569 to i64*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 9
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RSI.i589 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 11
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %RDI.i590 = bitcast %union.anon* %3575 to i64*
  %3576 = load i64, i64* %RSI.i589
  %3577 = load i64, i64* %PC.i588
  %3578 = add i64 %3577, 3
  store i64 %3578, i64* %PC.i588
  store i64 %3576, i64* %RDI.i590, align 8
  store %struct.Memory* %loadMem_4779d6, %struct.Memory** %MEMORY
  %loadMem_4779d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 33
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 5
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %RCX.i586 = bitcast %union.anon* %3584 to i64*
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 9
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %RSI.i587 = bitcast %union.anon* %3587 to i64*
  %3588 = load i64, i64* %RCX.i586
  %3589 = load i64, i64* %PC.i585
  %3590 = add i64 %3589, 3
  store i64 %3590, i64* %PC.i585
  store i64 %3588, i64* %RSI.i587, align 8
  store %struct.Memory* %loadMem_4779d9, %struct.Memory** %MEMORY
  %loadMem_4779dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 33
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 1
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 5
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RCX.i584 = bitcast %union.anon* %3599 to i64*
  %3600 = load i64, i64* %RAX.i583
  %3601 = load i64, i64* %PC.i582
  %3602 = add i64 %3601, 3
  store i64 %3602, i64* %PC.i582
  store i64 %3600, i64* %RCX.i584, align 8
  store %struct.Memory* %loadMem_4779dc, %struct.Memory** %MEMORY
  %loadMem1_4779df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 33
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %3605 to i64*
  %3606 = load i64, i64* %PC.i581
  %3607 = add i64 %3606, 1089
  %3608 = load i64, i64* %PC.i581
  %3609 = add i64 %3608, 5
  %3610 = load i64, i64* %PC.i581
  %3611 = add i64 %3610, 5
  store i64 %3611, i64* %PC.i581
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3613 = load i64, i64* %3612, align 8
  %3614 = add i64 %3613, -8
  %3615 = inttoptr i64 %3614 to i64*
  store i64 %3609, i64* %3615
  store i64 %3614, i64* %3612, align 8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3607, i64* %3616, align 8
  store %struct.Memory* %loadMem1_4779df, %struct.Memory** %MEMORY
  %loadMem2_4779df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4779df = load i64, i64* %3
  %call2_4779df = call %struct.Memory* @sub_477e20.Scaling_List(%struct.State* %0, i64 %loadPC_4779df, %struct.Memory* %loadMem2_4779df)
  store %struct.Memory* %call2_4779df, %struct.Memory** %MEMORY
  %loadMem_4779e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 33
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3619 to i64*
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 1
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %3622 to i64*
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 15
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %3625 to i64*
  %3626 = load i64, i64* %RAX.i579
  %3627 = load i64, i64* %RBP.i580
  %3628 = sub i64 %3627, 28
  %3629 = load i64, i64* %PC.i578
  %3630 = add i64 %3629, 3
  store i64 %3630, i64* %PC.i578
  %3631 = trunc i64 %3626 to i32
  %3632 = inttoptr i64 %3628 to i32*
  %3633 = load i32, i32* %3632
  %3634 = add i32 %3633, %3631
  %3635 = zext i32 %3634 to i64
  store i64 %3635, i64* %RAX.i579, align 8
  %3636 = icmp ult i32 %3634, %3631
  %3637 = icmp ult i32 %3634, %3633
  %3638 = or i1 %3636, %3637
  %3639 = zext i1 %3638 to i8
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3639, i8* %3640, align 1
  %3641 = and i32 %3634, 255
  %3642 = call i32 @llvm.ctpop.i32(i32 %3641)
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  %3645 = xor i8 %3644, 1
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3645, i8* %3646, align 1
  %3647 = xor i32 %3633, %3631
  %3648 = xor i32 %3647, %3634
  %3649 = lshr i32 %3648, 4
  %3650 = trunc i32 %3649 to i8
  %3651 = and i8 %3650, 1
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3651, i8* %3652, align 1
  %3653 = icmp eq i32 %3634, 0
  %3654 = zext i1 %3653 to i8
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3654, i8* %3655, align 1
  %3656 = lshr i32 %3634, 31
  %3657 = trunc i32 %3656 to i8
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3657, i8* %3658, align 1
  %3659 = lshr i32 %3631, 31
  %3660 = lshr i32 %3633, 31
  %3661 = xor i32 %3656, %3659
  %3662 = xor i32 %3656, %3660
  %3663 = add i32 %3661, %3662
  %3664 = icmp eq i32 %3663, 2
  %3665 = zext i1 %3664 to i8
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3665, i8* %3666, align 1
  store %struct.Memory* %loadMem_4779e4, %struct.Memory** %MEMORY
  %loadMem_4779e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 1
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %EAX.i576 = bitcast %union.anon* %3672 to i32*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 15
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %RBP.i577
  %3677 = sub i64 %3676, 28
  %3678 = load i32, i32* %EAX.i576
  %3679 = zext i32 %3678 to i64
  %3680 = load i64, i64* %PC.i575
  %3681 = add i64 %3680, 3
  store i64 %3681, i64* %PC.i575
  %3682 = inttoptr i64 %3677 to i32*
  store i32 %3678, i32* %3682
  store %struct.Memory* %loadMem_4779e7, %struct.Memory** %MEMORY
  %loadMem_4779ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 33
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3685 to i64*
  %3686 = load i64, i64* %PC.i574
  %3687 = add i64 %3686, 118
  %3688 = load i64, i64* %PC.i574
  %3689 = add i64 %3688, 5
  store i64 %3689, i64* %PC.i574
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3687, i64* %3690, align 8
  store %struct.Memory* %loadMem_4779ea, %struct.Memory** %MEMORY
  br label %block_.L_477a60

block_.L_4779ef:                                  ; preds = %block_47797e
  %loadMem_4779ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 33
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3693 to i64*
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 7
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %RDX.i573 = bitcast %union.anon* %3696 to i64*
  %3697 = load i64, i64* %PC.i572
  %3698 = add i64 %3697, 5
  store i64 %3698, i64* %PC.i572
  store i64 64, i64* %RDX.i573, align 8
  store %struct.Memory* %loadMem_4779ef, %struct.Memory** %MEMORY
  %loadMem_4779f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 33
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3701 to i64*
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 1
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %3704 to i64*
  %3705 = load i64, i64* %PC.i570
  %3706 = add i64 %3705, 10
  store i64 %3706, i64* %PC.i570
  store i64 ptrtoint (%G__0x6d1f9c_type* @G__0x6d1f9c to i64), i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_4779f4, %struct.Memory** %MEMORY
  %loadMem_4779fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 5
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RCX.i569 = bitcast %union.anon* %3712 to i64*
  %3713 = load i64, i64* %PC.i568
  %3714 = add i64 %3713, 10
  store i64 %3714, i64* %PC.i568
  store i64 ptrtoint (%G__0x6f6e20_type* @G__0x6f6e20 to i64), i64* %RCX.i569, align 8
  store %struct.Memory* %loadMem_4779fe, %struct.Memory** %MEMORY
  %loadMem_477a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 33
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 9
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %RSI.i567 = bitcast %union.anon* %3720 to i64*
  %3721 = load i64, i64* %PC.i566
  %3722 = add i64 %3721, 10
  store i64 %3722, i64* %PC.i566
  store i64 ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64), i64* %RSI.i567, align 8
  store %struct.Memory* %loadMem_477a08, %struct.Memory** %MEMORY
  %loadMem_477a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 33
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %3725 to i64*
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 11
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %RDI.i564 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 15
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %3731 to i64*
  %3732 = load i64, i64* %RBP.i565
  %3733 = sub i64 %3732, 36
  %3734 = load i64, i64* %PC.i563
  %3735 = add i64 %3734, 3
  store i64 %3735, i64* %PC.i563
  %3736 = inttoptr i64 %3733 to i32*
  %3737 = load i32, i32* %3736
  %3738 = zext i32 %3737 to i64
  store i64 %3738, i64* %RDI.i564, align 8
  store %struct.Memory* %loadMem_477a12, %struct.Memory** %MEMORY
  %loadMem_477a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 33
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3741 to i64*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 11
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %RDI.i562 = bitcast %union.anon* %3744 to i64*
  %3745 = load i64, i64* %RDI.i562
  %3746 = load i64, i64* %PC.i561
  %3747 = add i64 %3746, 3
  store i64 %3747, i64* %PC.i561
  %3748 = trunc i64 %3745 to i32
  %3749 = sub i32 %3748, 6
  %3750 = zext i32 %3749 to i64
  store i64 %3750, i64* %RDI.i562, align 8
  %3751 = icmp ult i32 %3748, 6
  %3752 = zext i1 %3751 to i8
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3752, i8* %3753, align 1
  %3754 = and i32 %3749, 255
  %3755 = call i32 @llvm.ctpop.i32(i32 %3754)
  %3756 = trunc i32 %3755 to i8
  %3757 = and i8 %3756, 1
  %3758 = xor i8 %3757, 1
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3758, i8* %3759, align 1
  %3760 = xor i64 6, %3745
  %3761 = trunc i64 %3760 to i32
  %3762 = xor i32 %3761, %3749
  %3763 = lshr i32 %3762, 4
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3765, i8* %3766, align 1
  %3767 = icmp eq i32 %3749, 0
  %3768 = zext i1 %3767 to i8
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3768, i8* %3769, align 1
  %3770 = lshr i32 %3749, 31
  %3771 = trunc i32 %3770 to i8
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3771, i8* %3772, align 1
  %3773 = lshr i32 %3748, 31
  %3774 = xor i32 %3770, %3773
  %3775 = add i32 %3774, %3773
  %3776 = icmp eq i32 %3775, 2
  %3777 = zext i1 %3776 to i8
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3777, i8* %3778, align 1
  store %struct.Memory* %loadMem_477a15, %struct.Memory** %MEMORY
  %loadMem_477a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 33
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3781 to i64*
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 11
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %EDI.i559 = bitcast %union.anon* %3784 to i32*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 11
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RDI.i560 = bitcast %union.anon* %3787 to i64*
  %3788 = load i32, i32* %EDI.i559
  %3789 = zext i32 %3788 to i64
  %3790 = load i64, i64* %PC.i558
  %3791 = add i64 %3790, 2
  store i64 %3791, i64* %PC.i558
  %3792 = and i64 %3789, 4294967295
  store i64 %3792, i64* %RDI.i560, align 8
  store %struct.Memory* %loadMem_477a18, %struct.Memory** %MEMORY
  %loadMem_477a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 33
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3795 to i64*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 11
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %EDI.i556 = bitcast %union.anon* %3798 to i32*
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 17
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %R8D.i557 = bitcast %union.anon* %3801 to i32*
  %3802 = bitcast i32* %R8D.i557 to i64*
  %3803 = load i32, i32* %EDI.i556
  %3804 = zext i32 %3803 to i64
  %3805 = load i64, i64* %PC.i555
  %3806 = add i64 %3805, 3
  store i64 %3806, i64* %PC.i555
  %3807 = and i64 %3804, 4294967295
  store i64 %3807, i64* %3802, align 8
  store %struct.Memory* %loadMem_477a1a, %struct.Memory** %MEMORY
  %loadMem_477a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 33
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3810 to i64*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 17
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %R8.i554 = bitcast %union.anon* %3813 to i64*
  %3814 = load i64, i64* %R8.i554
  %3815 = load i64, i64* %PC.i553
  %3816 = add i64 %3815, 4
  store i64 %3816, i64* %PC.i553
  %3817 = shl i64 %3814, 6
  %3818 = icmp slt i64 %3817, 0
  %3819 = shl i64 %3817, 1
  store i64 %3819, i64* %R8.i554, align 8
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3821 = zext i1 %3818 to i8
  store i8 %3821, i8* %3820, align 1
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3823 = trunc i64 %3819 to i32
  %3824 = and i32 %3823, 254
  %3825 = call i32 @llvm.ctpop.i32(i32 %3824)
  %3826 = trunc i32 %3825 to i8
  %3827 = and i8 %3826, 1
  %3828 = xor i8 %3827, 1
  store i8 %3828, i8* %3822, align 1
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3829, align 1
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3831 = icmp eq i64 %3819, 0
  %3832 = zext i1 %3831 to i8
  store i8 %3832, i8* %3830, align 1
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3834 = lshr i64 %3819, 63
  %3835 = trunc i64 %3834 to i8
  store i8 %3835, i8* %3833, align 1
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3836, align 1
  store %struct.Memory* %loadMem_477a1d, %struct.Memory** %MEMORY
  %loadMem_477a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 33
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %3839 to i64*
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 9
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %RSI.i551 = bitcast %union.anon* %3842 to i64*
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 17
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %R8.i552 = bitcast %union.anon* %3845 to i64*
  %3846 = load i64, i64* %RSI.i551
  %3847 = load i64, i64* %R8.i552
  %3848 = load i64, i64* %PC.i550
  %3849 = add i64 %3848, 3
  store i64 %3849, i64* %PC.i550
  %3850 = add i64 %3847, %3846
  store i64 %3850, i64* %RSI.i551, align 8
  %3851 = icmp ult i64 %3850, %3846
  %3852 = icmp ult i64 %3850, %3847
  %3853 = or i1 %3851, %3852
  %3854 = zext i1 %3853 to i8
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3854, i8* %3855, align 1
  %3856 = trunc i64 %3850 to i32
  %3857 = and i32 %3856, 255
  %3858 = call i32 @llvm.ctpop.i32(i32 %3857)
  %3859 = trunc i32 %3858 to i8
  %3860 = and i8 %3859, 1
  %3861 = xor i8 %3860, 1
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3861, i8* %3862, align 1
  %3863 = xor i64 %3847, %3846
  %3864 = xor i64 %3863, %3850
  %3865 = lshr i64 %3864, 4
  %3866 = trunc i64 %3865 to i8
  %3867 = and i8 %3866, 1
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3867, i8* %3868, align 1
  %3869 = icmp eq i64 %3850, 0
  %3870 = zext i1 %3869 to i8
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3870, i8* %3871, align 1
  %3872 = lshr i64 %3850, 63
  %3873 = trunc i64 %3872 to i8
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3873, i8* %3874, align 1
  %3875 = lshr i64 %3846, 63
  %3876 = lshr i64 %3847, 63
  %3877 = xor i64 %3872, %3875
  %3878 = xor i64 %3872, %3876
  %3879 = add i64 %3877, %3878
  %3880 = icmp eq i64 %3879, 2
  %3881 = zext i1 %3880 to i8
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3881, i8* %3882, align 1
  store %struct.Memory* %loadMem_477a21, %struct.Memory** %MEMORY
  %loadMem_477a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 11
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RDI.i548 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 15
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %3891 to i64*
  %3892 = load i64, i64* %RBP.i549
  %3893 = sub i64 %3892, 36
  %3894 = load i64, i64* %PC.i547
  %3895 = add i64 %3894, 3
  store i64 %3895, i64* %PC.i547
  %3896 = inttoptr i64 %3893 to i32*
  %3897 = load i32, i32* %3896
  %3898 = zext i32 %3897 to i64
  store i64 %3898, i64* %RDI.i548, align 8
  store %struct.Memory* %loadMem_477a24, %struct.Memory** %MEMORY
  %loadMem_477a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 33
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3901 to i64*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 11
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %RDI.i546 = bitcast %union.anon* %3904 to i64*
  %3905 = load i64, i64* %RDI.i546
  %3906 = load i64, i64* %PC.i545
  %3907 = add i64 %3906, 3
  store i64 %3907, i64* %PC.i545
  %3908 = trunc i64 %3905 to i32
  %3909 = sub i32 %3908, 6
  %3910 = zext i32 %3909 to i64
  store i64 %3910, i64* %RDI.i546, align 8
  %3911 = icmp ult i32 %3908, 6
  %3912 = zext i1 %3911 to i8
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3912, i8* %3913, align 1
  %3914 = and i32 %3909, 255
  %3915 = call i32 @llvm.ctpop.i32(i32 %3914)
  %3916 = trunc i32 %3915 to i8
  %3917 = and i8 %3916, 1
  %3918 = xor i8 %3917, 1
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3918, i8* %3919, align 1
  %3920 = xor i64 6, %3905
  %3921 = trunc i64 %3920 to i32
  %3922 = xor i32 %3921, %3909
  %3923 = lshr i32 %3922, 4
  %3924 = trunc i32 %3923 to i8
  %3925 = and i8 %3924, 1
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3925, i8* %3926, align 1
  %3927 = icmp eq i32 %3909, 0
  %3928 = zext i1 %3927 to i8
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3928, i8* %3929, align 1
  %3930 = lshr i32 %3909, 31
  %3931 = trunc i32 %3930 to i8
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3931, i8* %3932, align 1
  %3933 = lshr i32 %3908, 31
  %3934 = xor i32 %3930, %3933
  %3935 = add i32 %3934, %3933
  %3936 = icmp eq i32 %3935, 2
  %3937 = zext i1 %3936 to i8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3937, i8* %3938, align 1
  store %struct.Memory* %loadMem_477a27, %struct.Memory** %MEMORY
  %loadMem_477a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 11
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %EDI.i543 = bitcast %union.anon* %3944 to i32*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 11
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RDI.i544 = bitcast %union.anon* %3947 to i64*
  %3948 = load i32, i32* %EDI.i543
  %3949 = zext i32 %3948 to i64
  %3950 = load i64, i64* %PC.i542
  %3951 = add i64 %3950, 2
  store i64 %3951, i64* %PC.i542
  %3952 = and i64 %3949, 4294967295
  store i64 %3952, i64* %RDI.i544, align 8
  store %struct.Memory* %loadMem_477a2a, %struct.Memory** %MEMORY
  %loadMem_477a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 33
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3955 to i64*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 11
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %EDI.i540 = bitcast %union.anon* %3958 to i32*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 17
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %R8D.i541 = bitcast %union.anon* %3961 to i32*
  %3962 = bitcast i32* %R8D.i541 to i64*
  %3963 = load i32, i32* %EDI.i540
  %3964 = zext i32 %3963 to i64
  %3965 = load i64, i64* %PC.i539
  %3966 = add i64 %3965, 3
  store i64 %3966, i64* %PC.i539
  %3967 = and i64 %3964, 4294967295
  store i64 %3967, i64* %3962, align 8
  store %struct.Memory* %loadMem_477a2c, %struct.Memory** %MEMORY
  %loadMem_477a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 33
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 17
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %R8.i538 = bitcast %union.anon* %3973 to i64*
  %3974 = load i64, i64* %R8.i538
  %3975 = load i64, i64* %PC.i537
  %3976 = add i64 %3975, 4
  store i64 %3976, i64* %PC.i537
  %3977 = shl i64 %3974, 6
  %3978 = icmp slt i64 %3977, 0
  %3979 = shl i64 %3977, 1
  store i64 %3979, i64* %R8.i538, align 8
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3981 = zext i1 %3978 to i8
  store i8 %3981, i8* %3980, align 1
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3983 = trunc i64 %3979 to i32
  %3984 = and i32 %3983, 254
  %3985 = call i32 @llvm.ctpop.i32(i32 %3984)
  %3986 = trunc i32 %3985 to i8
  %3987 = and i8 %3986, 1
  %3988 = xor i8 %3987, 1
  store i8 %3988, i8* %3982, align 1
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3989, align 1
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3991 = icmp eq i64 %3979, 0
  %3992 = zext i1 %3991 to i8
  store i8 %3992, i8* %3990, align 1
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3994 = lshr i64 %3979, 63
  %3995 = trunc i64 %3994 to i8
  store i8 %3995, i8* %3993, align 1
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3996, align 1
  store %struct.Memory* %loadMem_477a2f, %struct.Memory** %MEMORY
  %loadMem_477a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 33
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3999 to i64*
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 5
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %4002 to i64*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 17
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %R8.i536 = bitcast %union.anon* %4005 to i64*
  %4006 = load i64, i64* %RCX.i535
  %4007 = load i64, i64* %R8.i536
  %4008 = load i64, i64* %PC.i534
  %4009 = add i64 %4008, 3
  store i64 %4009, i64* %PC.i534
  %4010 = add i64 %4007, %4006
  store i64 %4010, i64* %RCX.i535, align 8
  %4011 = icmp ult i64 %4010, %4006
  %4012 = icmp ult i64 %4010, %4007
  %4013 = or i1 %4011, %4012
  %4014 = zext i1 %4013 to i8
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4014, i8* %4015, align 1
  %4016 = trunc i64 %4010 to i32
  %4017 = and i32 %4016, 255
  %4018 = call i32 @llvm.ctpop.i32(i32 %4017)
  %4019 = trunc i32 %4018 to i8
  %4020 = and i8 %4019, 1
  %4021 = xor i8 %4020, 1
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4021, i8* %4022, align 1
  %4023 = xor i64 %4007, %4006
  %4024 = xor i64 %4023, %4010
  %4025 = lshr i64 %4024, 4
  %4026 = trunc i64 %4025 to i8
  %4027 = and i8 %4026, 1
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4027, i8* %4028, align 1
  %4029 = icmp eq i64 %4010, 0
  %4030 = zext i1 %4029 to i8
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4030, i8* %4031, align 1
  %4032 = lshr i64 %4010, 63
  %4033 = trunc i64 %4032 to i8
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4033, i8* %4034, align 1
  %4035 = lshr i64 %4006, 63
  %4036 = lshr i64 %4007, 63
  %4037 = xor i64 %4032, %4035
  %4038 = xor i64 %4032, %4036
  %4039 = add i64 %4037, %4038
  %4040 = icmp eq i64 %4039, 2
  %4041 = zext i1 %4040 to i8
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4041, i8* %4042, align 1
  store %struct.Memory* %loadMem_477a33, %struct.Memory** %MEMORY
  %loadMem_477a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4044 = getelementptr inbounds %struct.GPR, %struct.GPR* %4043, i32 0, i32 33
  %4045 = getelementptr inbounds %struct.Reg, %struct.Reg* %4044, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %4045 to i64*
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 11
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %RDI.i532 = bitcast %union.anon* %4048 to i64*
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 15
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %4051 to i64*
  %4052 = load i64, i64* %RBP.i533
  %4053 = sub i64 %4052, 36
  %4054 = load i64, i64* %PC.i531
  %4055 = add i64 %4054, 3
  store i64 %4055, i64* %PC.i531
  %4056 = inttoptr i64 %4053 to i32*
  %4057 = load i32, i32* %4056
  %4058 = zext i32 %4057 to i64
  store i64 %4058, i64* %RDI.i532, align 8
  store %struct.Memory* %loadMem_477a36, %struct.Memory** %MEMORY
  %loadMem_477a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %4061 to i64*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 11
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %RDI.i530 = bitcast %union.anon* %4064 to i64*
  %4065 = load i64, i64* %RDI.i530
  %4066 = load i64, i64* %PC.i529
  %4067 = add i64 %4066, 3
  store i64 %4067, i64* %PC.i529
  %4068 = trunc i64 %4065 to i32
  %4069 = sub i32 %4068, 6
  %4070 = zext i32 %4069 to i64
  store i64 %4070, i64* %RDI.i530, align 8
  %4071 = icmp ult i32 %4068, 6
  %4072 = zext i1 %4071 to i8
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4072, i8* %4073, align 1
  %4074 = and i32 %4069, 255
  %4075 = call i32 @llvm.ctpop.i32(i32 %4074)
  %4076 = trunc i32 %4075 to i8
  %4077 = and i8 %4076, 1
  %4078 = xor i8 %4077, 1
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4078, i8* %4079, align 1
  %4080 = xor i64 6, %4065
  %4081 = trunc i64 %4080 to i32
  %4082 = xor i32 %4081, %4069
  %4083 = lshr i32 %4082, 4
  %4084 = trunc i32 %4083 to i8
  %4085 = and i8 %4084, 1
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4085, i8* %4086, align 1
  %4087 = icmp eq i32 %4069, 0
  %4088 = zext i1 %4087 to i8
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4088, i8* %4089, align 1
  %4090 = lshr i32 %4069, 31
  %4091 = trunc i32 %4090 to i8
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4091, i8* %4092, align 1
  %4093 = lshr i32 %4068, 31
  %4094 = xor i32 %4090, %4093
  %4095 = add i32 %4094, %4093
  %4096 = icmp eq i32 %4095, 2
  %4097 = zext i1 %4096 to i8
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4097, i8* %4098, align 1
  store %struct.Memory* %loadMem_477a39, %struct.Memory** %MEMORY
  %loadMem_477a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4100 = getelementptr inbounds %struct.GPR, %struct.GPR* %4099, i32 0, i32 33
  %4101 = getelementptr inbounds %struct.Reg, %struct.Reg* %4100, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %4101 to i64*
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4103 = getelementptr inbounds %struct.GPR, %struct.GPR* %4102, i32 0, i32 11
  %4104 = getelementptr inbounds %struct.Reg, %struct.Reg* %4103, i32 0, i32 0
  %EDI.i527 = bitcast %union.anon* %4104 to i32*
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 11
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %RDI.i528 = bitcast %union.anon* %4107 to i64*
  %4108 = load i32, i32* %EDI.i527
  %4109 = zext i32 %4108 to i64
  %4110 = load i64, i64* %PC.i526
  %4111 = add i64 %4110, 2
  store i64 %4111, i64* %PC.i526
  %4112 = and i64 %4109, 4294967295
  store i64 %4112, i64* %RDI.i528, align 8
  store %struct.Memory* %loadMem_477a3c, %struct.Memory** %MEMORY
  %loadMem_477a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 33
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 11
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %4118 to i32*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 17
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %4121 to i32*
  %4122 = bitcast i32* %R8D.i to i64*
  %4123 = load i32, i32* %EDI.i
  %4124 = zext i32 %4123 to i64
  %4125 = load i64, i64* %PC.i525
  %4126 = add i64 %4125, 3
  store i64 %4126, i64* %PC.i525
  %4127 = and i64 %4124, 4294967295
  store i64 %4127, i64* %4122, align 8
  store %struct.Memory* %loadMem_477a3e, %struct.Memory** %MEMORY
  %loadMem_477a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 33
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %4130 to i64*
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 17
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %R8.i524 = bitcast %union.anon* %4133 to i64*
  %4134 = load i64, i64* %R8.i524
  %4135 = load i64, i64* %PC.i523
  %4136 = add i64 %4135, 3
  store i64 %4136, i64* %PC.i523
  %4137 = shl i64 %4134, 1
  %4138 = icmp slt i64 %4134, 0
  %4139 = icmp slt i64 %4137, 0
  %4140 = xor i1 %4138, %4139
  store i64 %4137, i64* %R8.i524, align 8
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4142 = zext i1 %4138 to i8
  store i8 %4142, i8* %4141, align 1
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4144 = trunc i64 %4137 to i32
  %4145 = and i32 %4144, 254
  %4146 = call i32 @llvm.ctpop.i32(i32 %4145)
  %4147 = trunc i32 %4146 to i8
  %4148 = and i8 %4147, 1
  %4149 = xor i8 %4148, 1
  store i8 %4149, i8* %4143, align 1
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4150, align 1
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4152 = icmp eq i64 %4137, 0
  %4153 = zext i1 %4152 to i8
  store i8 %4153, i8* %4151, align 1
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4155 = lshr i64 %4137, 63
  %4156 = trunc i64 %4155 to i8
  store i8 %4156, i8* %4154, align 1
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4158 = zext i1 %4140 to i8
  store i8 %4158, i8* %4157, align 1
  store %struct.Memory* %loadMem_477a41, %struct.Memory** %MEMORY
  %loadMem_477a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 33
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %4161 to i64*
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 1
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %4164 to i64*
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 17
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %R8.i522 = bitcast %union.anon* %4167 to i64*
  %4168 = load i64, i64* %RAX.i521
  %4169 = load i64, i64* %R8.i522
  %4170 = load i64, i64* %PC.i520
  %4171 = add i64 %4170, 3
  store i64 %4171, i64* %PC.i520
  %4172 = add i64 %4169, %4168
  store i64 %4172, i64* %RAX.i521, align 8
  %4173 = icmp ult i64 %4172, %4168
  %4174 = icmp ult i64 %4172, %4169
  %4175 = or i1 %4173, %4174
  %4176 = zext i1 %4175 to i8
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4176, i8* %4177, align 1
  %4178 = trunc i64 %4172 to i32
  %4179 = and i32 %4178, 255
  %4180 = call i32 @llvm.ctpop.i32(i32 %4179)
  %4181 = trunc i32 %4180 to i8
  %4182 = and i8 %4181, 1
  %4183 = xor i8 %4182, 1
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4183, i8* %4184, align 1
  %4185 = xor i64 %4169, %4168
  %4186 = xor i64 %4185, %4172
  %4187 = lshr i64 %4186, 4
  %4188 = trunc i64 %4187 to i8
  %4189 = and i8 %4188, 1
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4189, i8* %4190, align 1
  %4191 = icmp eq i64 %4172, 0
  %4192 = zext i1 %4191 to i8
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4192, i8* %4193, align 1
  %4194 = lshr i64 %4172, 63
  %4195 = trunc i64 %4194 to i8
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4195, i8* %4196, align 1
  %4197 = lshr i64 %4168, 63
  %4198 = lshr i64 %4169, 63
  %4199 = xor i64 %4194, %4197
  %4200 = xor i64 %4194, %4198
  %4201 = add i64 %4199, %4200
  %4202 = icmp eq i64 %4201, 2
  %4203 = zext i1 %4202 to i8
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4203, i8* %4204, align 1
  store %struct.Memory* %loadMem_477a45, %struct.Memory** %MEMORY
  %loadMem_477a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 33
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %4207 to i64*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 15
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %4210 to i64*
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 17
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4213 to i64*
  %4214 = load i64, i64* %RBP.i519
  %4215 = sub i64 %4214, 24
  %4216 = load i64, i64* %PC.i518
  %4217 = add i64 %4216, 4
  store i64 %4217, i64* %PC.i518
  %4218 = inttoptr i64 %4215 to i64*
  %4219 = load i64, i64* %4218
  store i64 %4219, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_477a48, %struct.Memory** %MEMORY
  %loadMem_477a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 33
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %4222 to i64*
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 9
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %RSI.i516 = bitcast %union.anon* %4225 to i64*
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 11
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %RDI.i517 = bitcast %union.anon* %4228 to i64*
  %4229 = load i64, i64* %RSI.i516
  %4230 = load i64, i64* %PC.i515
  %4231 = add i64 %4230, 3
  store i64 %4231, i64* %PC.i515
  store i64 %4229, i64* %RDI.i517, align 8
  store %struct.Memory* %loadMem_477a4c, %struct.Memory** %MEMORY
  %loadMem_477a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 33
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 5
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 9
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %RSI.i514 = bitcast %union.anon* %4240 to i64*
  %4241 = load i64, i64* %RCX.i513
  %4242 = load i64, i64* %PC.i512
  %4243 = add i64 %4242, 3
  store i64 %4243, i64* %PC.i512
  store i64 %4241, i64* %RSI.i514, align 8
  store %struct.Memory* %loadMem_477a4f, %struct.Memory** %MEMORY
  %loadMem_477a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 33
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %4246 to i64*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 1
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %4249 to i64*
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 5
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %4252 to i64*
  %4253 = load i64, i64* %RAX.i510
  %4254 = load i64, i64* %PC.i509
  %4255 = add i64 %4254, 3
  store i64 %4255, i64* %PC.i509
  store i64 %4253, i64* %RCX.i511, align 8
  store %struct.Memory* %loadMem_477a52, %struct.Memory** %MEMORY
  %loadMem1_477a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 33
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %4258 to i64*
  %4259 = load i64, i64* %PC.i508
  %4260 = add i64 %4259, 971
  %4261 = load i64, i64* %PC.i508
  %4262 = add i64 %4261, 5
  %4263 = load i64, i64* %PC.i508
  %4264 = add i64 %4263, 5
  store i64 %4264, i64* %PC.i508
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4266 = load i64, i64* %4265, align 8
  %4267 = add i64 %4266, -8
  %4268 = inttoptr i64 %4267 to i64*
  store i64 %4262, i64* %4268
  store i64 %4267, i64* %4265, align 8
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4260, i64* %4269, align 8
  store %struct.Memory* %loadMem1_477a55, %struct.Memory** %MEMORY
  %loadMem2_477a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477a55 = load i64, i64* %3
  %call2_477a55 = call %struct.Memory* @sub_477e20.Scaling_List(%struct.State* %0, i64 %loadPC_477a55, %struct.Memory* %loadMem2_477a55)
  store %struct.Memory* %call2_477a55, %struct.Memory** %MEMORY
  %loadMem_477a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 33
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %4272 to i64*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 1
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %RAX.i506 = bitcast %union.anon* %4275 to i64*
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 15
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %4278 to i64*
  %4279 = load i64, i64* %RAX.i506
  %4280 = load i64, i64* %RBP.i507
  %4281 = sub i64 %4280, 28
  %4282 = load i64, i64* %PC.i505
  %4283 = add i64 %4282, 3
  store i64 %4283, i64* %PC.i505
  %4284 = trunc i64 %4279 to i32
  %4285 = inttoptr i64 %4281 to i32*
  %4286 = load i32, i32* %4285
  %4287 = add i32 %4286, %4284
  %4288 = zext i32 %4287 to i64
  store i64 %4288, i64* %RAX.i506, align 8
  %4289 = icmp ult i32 %4287, %4284
  %4290 = icmp ult i32 %4287, %4286
  %4291 = or i1 %4289, %4290
  %4292 = zext i1 %4291 to i8
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4292, i8* %4293, align 1
  %4294 = and i32 %4287, 255
  %4295 = call i32 @llvm.ctpop.i32(i32 %4294)
  %4296 = trunc i32 %4295 to i8
  %4297 = and i8 %4296, 1
  %4298 = xor i8 %4297, 1
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4298, i8* %4299, align 1
  %4300 = xor i32 %4286, %4284
  %4301 = xor i32 %4300, %4287
  %4302 = lshr i32 %4301, 4
  %4303 = trunc i32 %4302 to i8
  %4304 = and i8 %4303, 1
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4304, i8* %4305, align 1
  %4306 = icmp eq i32 %4287, 0
  %4307 = zext i1 %4306 to i8
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4307, i8* %4308, align 1
  %4309 = lshr i32 %4287, 31
  %4310 = trunc i32 %4309 to i8
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4310, i8* %4311, align 1
  %4312 = lshr i32 %4284, 31
  %4313 = lshr i32 %4286, 31
  %4314 = xor i32 %4309, %4312
  %4315 = xor i32 %4309, %4313
  %4316 = add i32 %4314, %4315
  %4317 = icmp eq i32 %4316, 2
  %4318 = zext i1 %4317 to i8
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4318, i8* %4319, align 1
  store %struct.Memory* %loadMem_477a5a, %struct.Memory** %MEMORY
  %loadMem_477a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 33
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %4322 to i64*
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 1
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %EAX.i503 = bitcast %union.anon* %4325 to i32*
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 15
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %4328 to i64*
  %4329 = load i64, i64* %RBP.i504
  %4330 = sub i64 %4329, 28
  %4331 = load i32, i32* %EAX.i503
  %4332 = zext i32 %4331 to i64
  %4333 = load i64, i64* %PC.i502
  %4334 = add i64 %4333, 3
  store i64 %4334, i64* %PC.i502
  %4335 = inttoptr i64 %4330 to i32*
  store i32 %4331, i32* %4335
  store %struct.Memory* %loadMem_477a5d, %struct.Memory** %MEMORY
  br label %block_.L_477a60

block_.L_477a60:                                  ; preds = %block_.L_4779ef, %block_477988
  %loadMem_477a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 33
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %4338 to i64*
  %4339 = load i64, i64* %PC.i501
  %4340 = add i64 %4339, 5
  %4341 = load i64, i64* %PC.i501
  %4342 = add i64 %4341, 5
  store i64 %4342, i64* %PC.i501
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4340, i64* %4343, align 8
  store %struct.Memory* %loadMem_477a60, %struct.Memory** %MEMORY
  br label %block_.L_477a65

block_.L_477a65:                                  ; preds = %block_.L_477a60, %block_477944
  %loadMem_477a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 33
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %4346 to i64*
  %4347 = load i64, i64* %PC.i500
  %4348 = add i64 %4347, 5
  %4349 = load i64, i64* %PC.i500
  %4350 = add i64 %4349, 5
  store i64 %4350, i64* %PC.i500
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4348, i64* %4351, align 8
  store %struct.Memory* %loadMem_477a65, %struct.Memory** %MEMORY
  br label %block_.L_477a6a

block_.L_477a6a:                                  ; preds = %block_.L_477a65
  %loadMem_477a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 33
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %4354 to i64*
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 1
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 15
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %4360 to i64*
  %4361 = load i64, i64* %RBP.i499
  %4362 = sub i64 %4361, 36
  %4363 = load i64, i64* %PC.i497
  %4364 = add i64 %4363, 3
  store i64 %4364, i64* %PC.i497
  %4365 = inttoptr i64 %4362 to i32*
  %4366 = load i32, i32* %4365
  %4367 = zext i32 %4366 to i64
  store i64 %4367, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_477a6a, %struct.Memory** %MEMORY
  %loadMem_477a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 33
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 1
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %4373 to i64*
  %4374 = load i64, i64* %RAX.i496
  %4375 = load i64, i64* %PC.i495
  %4376 = add i64 %4375, 3
  store i64 %4376, i64* %PC.i495
  %4377 = trunc i64 %4374 to i32
  %4378 = add i32 1, %4377
  %4379 = zext i32 %4378 to i64
  store i64 %4379, i64* %RAX.i496, align 8
  %4380 = icmp ult i32 %4378, %4377
  %4381 = icmp ult i32 %4378, 1
  %4382 = or i1 %4380, %4381
  %4383 = zext i1 %4382 to i8
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4383, i8* %4384, align 1
  %4385 = and i32 %4378, 255
  %4386 = call i32 @llvm.ctpop.i32(i32 %4385)
  %4387 = trunc i32 %4386 to i8
  %4388 = and i8 %4387, 1
  %4389 = xor i8 %4388, 1
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4389, i8* %4390, align 1
  %4391 = xor i64 1, %4374
  %4392 = trunc i64 %4391 to i32
  %4393 = xor i32 %4392, %4378
  %4394 = lshr i32 %4393, 4
  %4395 = trunc i32 %4394 to i8
  %4396 = and i8 %4395, 1
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4396, i8* %4397, align 1
  %4398 = icmp eq i32 %4378, 0
  %4399 = zext i1 %4398 to i8
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4399, i8* %4400, align 1
  %4401 = lshr i32 %4378, 31
  %4402 = trunc i32 %4401 to i8
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4402, i8* %4403, align 1
  %4404 = lshr i32 %4377, 31
  %4405 = xor i32 %4401, %4404
  %4406 = add i32 %4405, %4401
  %4407 = icmp eq i32 %4406, 2
  %4408 = zext i1 %4407 to i8
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4408, i8* %4409, align 1
  store %struct.Memory* %loadMem_477a6d, %struct.Memory** %MEMORY
  %loadMem_477a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 33
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %4412 to i64*
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 1
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %EAX.i493 = bitcast %union.anon* %4415 to i32*
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4417 = getelementptr inbounds %struct.GPR, %struct.GPR* %4416, i32 0, i32 15
  %4418 = getelementptr inbounds %struct.Reg, %struct.Reg* %4417, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %4418 to i64*
  %4419 = load i64, i64* %RBP.i494
  %4420 = sub i64 %4419, 36
  %4421 = load i32, i32* %EAX.i493
  %4422 = zext i32 %4421 to i64
  %4423 = load i64, i64* %PC.i492
  %4424 = add i64 %4423, 3
  store i64 %4424, i64* %PC.i492
  %4425 = inttoptr i64 %4420 to i32*
  store i32 %4421, i32* %4425
  store %struct.Memory* %loadMem_477a70, %struct.Memory** %MEMORY
  %loadMem_477a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 33
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %4428 to i64*
  %4429 = load i64, i64* %PC.i491
  %4430 = add i64 %4429, -313
  %4431 = load i64, i64* %PC.i491
  %4432 = add i64 %4431, 5
  store i64 %4432, i64* %PC.i491
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4430, i64* %4433, align 8
  store %struct.Memory* %loadMem_477a73, %struct.Memory** %MEMORY
  br label %block_.L_47793a

block_.L_477a78:                                  ; preds = %block_.L_47793a
  %loadMem_477a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 33
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %4436 to i64*
  %4437 = load i64, i64* %PC.i490
  %4438 = add i64 %4437, 5
  %4439 = load i64, i64* %PC.i490
  %4440 = add i64 %4439, 5
  store i64 %4440, i64* %PC.i490
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4438, i64* %4441, align 8
  store %struct.Memory* %loadMem_477a78, %struct.Memory** %MEMORY
  br label %block_.L_477a7d

block_.L_477a7d:                                  ; preds = %block_.L_477a78, %block_.L_47789e
  %loadMem_477a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %4444 to i64*
  %4445 = load i64, i64* %PC.i489
  %4446 = add i64 %4445, 5
  %4447 = load i64, i64* %PC.i489
  %4448 = add i64 %4447, 5
  store i64 %4448, i64* %PC.i489
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4446, i64* %4449, align 8
  store %struct.Memory* %loadMem_477a7d, %struct.Memory** %MEMORY
  br label %block_.L_477a82

block_.L_477a82:                                  ; preds = %block_.L_477a7d, %block_477831
  %loadMem_477a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 11
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RDI.i488 = bitcast %union.anon* %4455 to i64*
  %4456 = load i64, i64* %PC.i487
  %4457 = add i64 %4456, 10
  store i64 %4457, i64* %PC.i487
  store i64 ptrtoint (%G__0x4c25d9_type* @G__0x4c25d9 to i64), i64* %RDI.i488, align 8
  store %struct.Memory* %loadMem_477a82, %struct.Memory** %MEMORY
  %loadMem_477a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 33
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %4460 to i64*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 1
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 15
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %4466 to i64*
  %4467 = load i64, i64* %RBP.i486
  %4468 = sub i64 %4467, 8
  %4469 = load i64, i64* %PC.i484
  %4470 = add i64 %4469, 4
  store i64 %4470, i64* %PC.i484
  %4471 = inttoptr i64 %4468 to i64*
  %4472 = load i64, i64* %4471
  store i64 %4472, i64* %RAX.i485, align 8
  store %struct.Memory* %loadMem_477a8c, %struct.Memory** %MEMORY
  %loadMem_477a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 33
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 1
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %4478 to i64*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 9
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %RSI.i483 = bitcast %union.anon* %4481 to i64*
  %4482 = load i64, i64* %RAX.i482
  %4483 = add i64 %4482, 80
  %4484 = load i64, i64* %PC.i481
  %4485 = add i64 %4484, 3
  store i64 %4485, i64* %PC.i481
  %4486 = inttoptr i64 %4483 to i32*
  %4487 = load i32, i32* %4486
  %4488 = zext i32 %4487 to i64
  store i64 %4488, i64* %RSI.i483, align 8
  store %struct.Memory* %loadMem_477a90, %struct.Memory** %MEMORY
  %loadMem_477a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 33
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4491 to i64*
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 7
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %RDX.i479 = bitcast %union.anon* %4494 to i64*
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 15
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %4497 to i64*
  %4498 = load i64, i64* %RBP.i480
  %4499 = sub i64 %4498, 24
  %4500 = load i64, i64* %PC.i478
  %4501 = add i64 %4500, 4
  store i64 %4501, i64* %PC.i478
  %4502 = inttoptr i64 %4499 to i64*
  %4503 = load i64, i64* %4502
  store i64 %4503, i64* %RDX.i479, align 8
  store %struct.Memory* %loadMem_477a93, %struct.Memory** %MEMORY
  %loadMem1_477a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4505 = getelementptr inbounds %struct.GPR, %struct.GPR* %4504, i32 0, i32 33
  %4506 = getelementptr inbounds %struct.Reg, %struct.Reg* %4505, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %4506 to i64*
  %4507 = load i64, i64* %PC.i477
  %4508 = add i64 %4507, 216073
  %4509 = load i64, i64* %PC.i477
  %4510 = add i64 %4509, 5
  %4511 = load i64, i64* %PC.i477
  %4512 = add i64 %4511, 5
  store i64 %4512, i64* %PC.i477
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4514 = load i64, i64* %4513, align 8
  %4515 = add i64 %4514, -8
  %4516 = inttoptr i64 %4515 to i64*
  store i64 %4510, i64* %4516
  store i64 %4515, i64* %4513, align 8
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4508, i64* %4517, align 8
  store %struct.Memory* %loadMem1_477a97, %struct.Memory** %MEMORY
  %loadMem2_477a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477a97 = load i64, i64* %3
  %call2_477a97 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477a97, %struct.Memory* %loadMem2_477a97)
  store %struct.Memory* %call2_477a97, %struct.Memory** %MEMORY
  %loadMem_477a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 33
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %4520 to i64*
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 11
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %RDI.i476 = bitcast %union.anon* %4523 to i64*
  %4524 = load i64, i64* %PC.i475
  %4525 = add i64 %4524, 10
  store i64 %4525, i64* %PC.i475
  store i64 ptrtoint (%G__0x4c25f8_type* @G__0x4c25f8 to i64), i64* %RDI.i476, align 8
  store %struct.Memory* %loadMem_477a9c, %struct.Memory** %MEMORY
  %loadMem_477aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 33
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4528 to i64*
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 1
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %4531 to i64*
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 15
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %4534 to i64*
  %4535 = load i64, i64* %RAX.i473
  %4536 = load i64, i64* %RBP.i474
  %4537 = sub i64 %4536, 28
  %4538 = load i64, i64* %PC.i472
  %4539 = add i64 %4538, 3
  store i64 %4539, i64* %PC.i472
  %4540 = trunc i64 %4535 to i32
  %4541 = inttoptr i64 %4537 to i32*
  %4542 = load i32, i32* %4541
  %4543 = add i32 %4542, %4540
  %4544 = zext i32 %4543 to i64
  store i64 %4544, i64* %RAX.i473, align 8
  %4545 = icmp ult i32 %4543, %4540
  %4546 = icmp ult i32 %4543, %4542
  %4547 = or i1 %4545, %4546
  %4548 = zext i1 %4547 to i8
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4548, i8* %4549, align 1
  %4550 = and i32 %4543, 255
  %4551 = call i32 @llvm.ctpop.i32(i32 %4550)
  %4552 = trunc i32 %4551 to i8
  %4553 = and i8 %4552, 1
  %4554 = xor i8 %4553, 1
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4554, i8* %4555, align 1
  %4556 = xor i32 %4542, %4540
  %4557 = xor i32 %4556, %4543
  %4558 = lshr i32 %4557, 4
  %4559 = trunc i32 %4558 to i8
  %4560 = and i8 %4559, 1
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4560, i8* %4561, align 1
  %4562 = icmp eq i32 %4543, 0
  %4563 = zext i1 %4562 to i8
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4563, i8* %4564, align 1
  %4565 = lshr i32 %4543, 31
  %4566 = trunc i32 %4565 to i8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4566, i8* %4567, align 1
  %4568 = lshr i32 %4540, 31
  %4569 = lshr i32 %4542, 31
  %4570 = xor i32 %4565, %4568
  %4571 = xor i32 %4565, %4569
  %4572 = add i32 %4570, %4571
  %4573 = icmp eq i32 %4572, 2
  %4574 = zext i1 %4573 to i8
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4574, i8* %4575, align 1
  store %struct.Memory* %loadMem_477aa6, %struct.Memory** %MEMORY
  %loadMem_477aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4577 = getelementptr inbounds %struct.GPR, %struct.GPR* %4576, i32 0, i32 33
  %4578 = getelementptr inbounds %struct.Reg, %struct.Reg* %4577, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4578 to i64*
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 1
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %EAX.i470 = bitcast %union.anon* %4581 to i32*
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 15
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %4584 to i64*
  %4585 = load i64, i64* %RBP.i471
  %4586 = sub i64 %4585, 28
  %4587 = load i32, i32* %EAX.i470
  %4588 = zext i32 %4587 to i64
  %4589 = load i64, i64* %PC.i469
  %4590 = add i64 %4589, 3
  store i64 %4590, i64* %PC.i469
  %4591 = inttoptr i64 %4586 to i32*
  store i32 %4587, i32* %4591
  store %struct.Memory* %loadMem_477aa9, %struct.Memory** %MEMORY
  %loadMem_477aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 33
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4594 to i64*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 7
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %RDX.i467 = bitcast %union.anon* %4597 to i64*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 15
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %4600 to i64*
  %4601 = load i64, i64* %RBP.i468
  %4602 = sub i64 %4601, 8
  %4603 = load i64, i64* %PC.i466
  %4604 = add i64 %4603, 4
  store i64 %4604, i64* %PC.i466
  %4605 = inttoptr i64 %4602 to i64*
  %4606 = load i64, i64* %4605
  store i64 %4606, i64* %RDX.i467, align 8
  store %struct.Memory* %loadMem_477aac, %struct.Memory** %MEMORY
  %loadMem_477ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 33
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 7
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %4612 to i64*
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4614 = getelementptr inbounds %struct.GPR, %struct.GPR* %4613, i32 0, i32 9
  %4615 = getelementptr inbounds %struct.Reg, %struct.Reg* %4614, i32 0, i32 0
  %RSI.i465 = bitcast %union.anon* %4615 to i64*
  %4616 = load i64, i64* %RDX.i464
  %4617 = add i64 %4616, 84
  %4618 = load i64, i64* %PC.i463
  %4619 = add i64 %4618, 3
  store i64 %4619, i64* %PC.i463
  %4620 = inttoptr i64 %4617 to i32*
  %4621 = load i32, i32* %4620
  %4622 = zext i32 %4621 to i64
  store i64 %4622, i64* %RSI.i465, align 8
  store %struct.Memory* %loadMem_477ab0, %struct.Memory** %MEMORY
  %loadMem_477ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 33
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 7
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RDX.i461 = bitcast %union.anon* %4628 to i64*
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 15
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %4631 to i64*
  %4632 = load i64, i64* %RBP.i462
  %4633 = sub i64 %4632, 24
  %4634 = load i64, i64* %PC.i460
  %4635 = add i64 %4634, 4
  store i64 %4635, i64* %PC.i460
  %4636 = inttoptr i64 %4633 to i64*
  %4637 = load i64, i64* %4636
  store i64 %4637, i64* %RDX.i461, align 8
  store %struct.Memory* %loadMem_477ab3, %struct.Memory** %MEMORY
  %loadMem1_477ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 33
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4640 to i64*
  %4641 = load i64, i64* %PC.i459
  %4642 = add i64 %4641, 216041
  %4643 = load i64, i64* %PC.i459
  %4644 = add i64 %4643, 5
  %4645 = load i64, i64* %PC.i459
  %4646 = add i64 %4645, 5
  store i64 %4646, i64* %PC.i459
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4648 = load i64, i64* %4647, align 8
  %4649 = add i64 %4648, -8
  %4650 = inttoptr i64 %4649 to i64*
  store i64 %4644, i64* %4650
  store i64 %4649, i64* %4647, align 8
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4642, i64* %4651, align 8
  store %struct.Memory* %loadMem1_477ab7, %struct.Memory** %MEMORY
  %loadMem2_477ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477ab7 = load i64, i64* %3
  %call2_477ab7 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477ab7, %struct.Memory* %loadMem2_477ab7)
  store %struct.Memory* %call2_477ab7, %struct.Memory** %MEMORY
  %loadMem_477abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 33
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4654 to i64*
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4656 = getelementptr inbounds %struct.GPR, %struct.GPR* %4655, i32 0, i32 1
  %4657 = getelementptr inbounds %struct.Reg, %struct.Reg* %4656, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %4657 to i64*
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 15
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %4660 to i64*
  %4661 = load i64, i64* %RAX.i457
  %4662 = load i64, i64* %RBP.i458
  %4663 = sub i64 %4662, 28
  %4664 = load i64, i64* %PC.i456
  %4665 = add i64 %4664, 3
  store i64 %4665, i64* %PC.i456
  %4666 = trunc i64 %4661 to i32
  %4667 = inttoptr i64 %4663 to i32*
  %4668 = load i32, i32* %4667
  %4669 = add i32 %4668, %4666
  %4670 = zext i32 %4669 to i64
  store i64 %4670, i64* %RAX.i457, align 8
  %4671 = icmp ult i32 %4669, %4666
  %4672 = icmp ult i32 %4669, %4668
  %4673 = or i1 %4671, %4672
  %4674 = zext i1 %4673 to i8
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4674, i8* %4675, align 1
  %4676 = and i32 %4669, 255
  %4677 = call i32 @llvm.ctpop.i32(i32 %4676)
  %4678 = trunc i32 %4677 to i8
  %4679 = and i8 %4678, 1
  %4680 = xor i8 %4679, 1
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4680, i8* %4681, align 1
  %4682 = xor i32 %4668, %4666
  %4683 = xor i32 %4682, %4669
  %4684 = lshr i32 %4683, 4
  %4685 = trunc i32 %4684 to i8
  %4686 = and i8 %4685, 1
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4686, i8* %4687, align 1
  %4688 = icmp eq i32 %4669, 0
  %4689 = zext i1 %4688 to i8
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4689, i8* %4690, align 1
  %4691 = lshr i32 %4669, 31
  %4692 = trunc i32 %4691 to i8
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4692, i8* %4693, align 1
  %4694 = lshr i32 %4666, 31
  %4695 = lshr i32 %4668, 31
  %4696 = xor i32 %4691, %4694
  %4697 = xor i32 %4691, %4695
  %4698 = add i32 %4696, %4697
  %4699 = icmp eq i32 %4698, 2
  %4700 = zext i1 %4699 to i8
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4700, i8* %4701, align 1
  store %struct.Memory* %loadMem_477abc, %struct.Memory** %MEMORY
  %loadMem_477abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 33
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %4704 to i64*
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 1
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %EAX.i454 = bitcast %union.anon* %4707 to i32*
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 15
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %4710 to i64*
  %4711 = load i64, i64* %RBP.i455
  %4712 = sub i64 %4711, 28
  %4713 = load i32, i32* %EAX.i454
  %4714 = zext i32 %4713 to i64
  %4715 = load i64, i64* %PC.i453
  %4716 = add i64 %4715, 3
  store i64 %4716, i64* %PC.i453
  %4717 = inttoptr i64 %4712 to i32*
  store i32 %4713, i32* %4717
  store %struct.Memory* %loadMem_477abf, %struct.Memory** %MEMORY
  %loadMem_477ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 33
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %4720 to i64*
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 7
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %RDX.i451 = bitcast %union.anon* %4723 to i64*
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 15
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %4726 to i64*
  %4727 = load i64, i64* %RBP.i452
  %4728 = sub i64 %4727, 8
  %4729 = load i64, i64* %PC.i450
  %4730 = add i64 %4729, 4
  store i64 %4730, i64* %PC.i450
  %4731 = inttoptr i64 %4728 to i64*
  %4732 = load i64, i64* %4731
  store i64 %4732, i64* %RDX.i451, align 8
  store %struct.Memory* %loadMem_477ac2, %struct.Memory** %MEMORY
  %loadMem_477ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4734 = getelementptr inbounds %struct.GPR, %struct.GPR* %4733, i32 0, i32 33
  %4735 = getelementptr inbounds %struct.Reg, %struct.Reg* %4734, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4735 to i64*
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 7
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %RDX.i449 = bitcast %union.anon* %4738 to i64*
  %4739 = load i64, i64* %RDX.i449
  %4740 = add i64 %4739, 84
  %4741 = load i64, i64* %PC.i448
  %4742 = add i64 %4741, 4
  store i64 %4742, i64* %PC.i448
  %4743 = inttoptr i64 %4740 to i32*
  %4744 = load i32, i32* %4743
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4745, align 1
  %4746 = and i32 %4744, 255
  %4747 = call i32 @llvm.ctpop.i32(i32 %4746)
  %4748 = trunc i32 %4747 to i8
  %4749 = and i8 %4748, 1
  %4750 = xor i8 %4749, 1
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4750, i8* %4751, align 1
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4752, align 1
  %4753 = icmp eq i32 %4744, 0
  %4754 = zext i1 %4753 to i8
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4754, i8* %4755, align 1
  %4756 = lshr i32 %4744, 31
  %4757 = trunc i32 %4756 to i8
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4757, i8* %4758, align 1
  %4759 = lshr i32 %4744, 31
  %4760 = xor i32 %4756, %4759
  %4761 = add i32 %4760, %4759
  %4762 = icmp eq i32 %4761, 2
  %4763 = zext i1 %4762 to i8
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4763, i8* %4764, align 1
  store %struct.Memory* %loadMem_477ac6, %struct.Memory** %MEMORY
  %loadMem_477aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4766 = getelementptr inbounds %struct.GPR, %struct.GPR* %4765, i32 0, i32 33
  %4767 = getelementptr inbounds %struct.Reg, %struct.Reg* %4766, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %4767 to i64*
  %4768 = load i64, i64* %PC.i447
  %4769 = add i64 %4768, 43
  %4770 = load i64, i64* %PC.i447
  %4771 = add i64 %4770, 6
  %4772 = load i64, i64* %PC.i447
  %4773 = add i64 %4772, 6
  store i64 %4773, i64* %PC.i447
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4775 = load i8, i8* %4774, align 1
  %4776 = icmp eq i8 %4775, 0
  %4777 = zext i1 %4776 to i8
  store i8 %4777, i8* %BRANCH_TAKEN, align 1
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4779 = select i1 %4776, i64 %4769, i64 %4771
  store i64 %4779, i64* %4778, align 8
  store %struct.Memory* %loadMem_477aca, %struct.Memory** %MEMORY
  %loadBr_477aca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477aca = icmp eq i8 %loadBr_477aca, 1
  br i1 %cmpBr_477aca, label %block_.L_477af5, label %block_477ad0

block_477ad0:                                     ; preds = %block_.L_477a82
  %loadMem_477ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 33
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4782 to i64*
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 11
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %RDI.i446 = bitcast %union.anon* %4785 to i64*
  %4786 = load i64, i64* %PC.i445
  %4787 = add i64 %4786, 10
  store i64 %4787, i64* %PC.i445
  store i64 ptrtoint (%G__0x4c2610_type* @G__0x4c2610 to i64), i64* %RDI.i446, align 8
  store %struct.Memory* %loadMem_477ad0, %struct.Memory** %MEMORY
  %loadMem_477ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4790 to i64*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 1
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %4793 to i64*
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 15
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %4796 to i64*
  %4797 = load i64, i64* %RBP.i444
  %4798 = sub i64 %4797, 8
  %4799 = load i64, i64* %PC.i442
  %4800 = add i64 %4799, 4
  store i64 %4800, i64* %PC.i442
  %4801 = inttoptr i64 %4798 to i64*
  %4802 = load i64, i64* %4801
  store i64 %4802, i64* %RAX.i443, align 8
  store %struct.Memory* %loadMem_477ada, %struct.Memory** %MEMORY
  %loadMem_477ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 33
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4805 to i64*
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 1
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 9
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RSI.i441 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %RAX.i440
  %4813 = add i64 %4812, 88
  %4814 = load i64, i64* %PC.i439
  %4815 = add i64 %4814, 3
  store i64 %4815, i64* %PC.i439
  %4816 = inttoptr i64 %4813 to i32*
  %4817 = load i32, i32* %4816
  %4818 = zext i32 %4817 to i64
  store i64 %4818, i64* %RSI.i441, align 8
  store %struct.Memory* %loadMem_477ade, %struct.Memory** %MEMORY
  %loadMem_477ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4820 = getelementptr inbounds %struct.GPR, %struct.GPR* %4819, i32 0, i32 33
  %4821 = getelementptr inbounds %struct.Reg, %struct.Reg* %4820, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4821 to i64*
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 7
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %RDX.i437 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 15
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %4827 to i64*
  %4828 = load i64, i64* %RBP.i438
  %4829 = sub i64 %4828, 24
  %4830 = load i64, i64* %PC.i436
  %4831 = add i64 %4830, 4
  store i64 %4831, i64* %PC.i436
  %4832 = inttoptr i64 %4829 to i64*
  %4833 = load i64, i64* %4832
  store i64 %4833, i64* %RDX.i437, align 8
  store %struct.Memory* %loadMem_477ae1, %struct.Memory** %MEMORY
  %loadMem1_477ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 33
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %PC.i435
  %4838 = add i64 %4837, 215995
  %4839 = load i64, i64* %PC.i435
  %4840 = add i64 %4839, 5
  %4841 = load i64, i64* %PC.i435
  %4842 = add i64 %4841, 5
  store i64 %4842, i64* %PC.i435
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4844 = load i64, i64* %4843, align 8
  %4845 = add i64 %4844, -8
  %4846 = inttoptr i64 %4845 to i64*
  store i64 %4840, i64* %4846
  store i64 %4845, i64* %4843, align 8
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4838, i64* %4847, align 8
  store %struct.Memory* %loadMem1_477ae5, %struct.Memory** %MEMORY
  %loadMem2_477ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477ae5 = load i64, i64* %3
  %call2_477ae5 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477ae5, %struct.Memory* %loadMem2_477ae5)
  store %struct.Memory* %call2_477ae5, %struct.Memory** %MEMORY
  %loadMem_477aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 33
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 1
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %4853 to i64*
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 15
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %4856 to i64*
  %4857 = load i64, i64* %RAX.i433
  %4858 = load i64, i64* %RBP.i434
  %4859 = sub i64 %4858, 28
  %4860 = load i64, i64* %PC.i432
  %4861 = add i64 %4860, 3
  store i64 %4861, i64* %PC.i432
  %4862 = trunc i64 %4857 to i32
  %4863 = inttoptr i64 %4859 to i32*
  %4864 = load i32, i32* %4863
  %4865 = add i32 %4864, %4862
  %4866 = zext i32 %4865 to i64
  store i64 %4866, i64* %RAX.i433, align 8
  %4867 = icmp ult i32 %4865, %4862
  %4868 = icmp ult i32 %4865, %4864
  %4869 = or i1 %4867, %4868
  %4870 = zext i1 %4869 to i8
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4870, i8* %4871, align 1
  %4872 = and i32 %4865, 255
  %4873 = call i32 @llvm.ctpop.i32(i32 %4872)
  %4874 = trunc i32 %4873 to i8
  %4875 = and i8 %4874, 1
  %4876 = xor i8 %4875, 1
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4876, i8* %4877, align 1
  %4878 = xor i32 %4864, %4862
  %4879 = xor i32 %4878, %4865
  %4880 = lshr i32 %4879, 4
  %4881 = trunc i32 %4880 to i8
  %4882 = and i8 %4881, 1
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4882, i8* %4883, align 1
  %4884 = icmp eq i32 %4865, 0
  %4885 = zext i1 %4884 to i8
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4885, i8* %4886, align 1
  %4887 = lshr i32 %4865, 31
  %4888 = trunc i32 %4887 to i8
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4888, i8* %4889, align 1
  %4890 = lshr i32 %4862, 31
  %4891 = lshr i32 %4864, 31
  %4892 = xor i32 %4887, %4890
  %4893 = xor i32 %4887, %4891
  %4894 = add i32 %4892, %4893
  %4895 = icmp eq i32 %4894, 2
  %4896 = zext i1 %4895 to i8
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4896, i8* %4897, align 1
  store %struct.Memory* %loadMem_477aea, %struct.Memory** %MEMORY
  %loadMem_477aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 33
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4900 to i64*
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 1
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %EAX.i430 = bitcast %union.anon* %4903 to i32*
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 15
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %4906 to i64*
  %4907 = load i64, i64* %RBP.i431
  %4908 = sub i64 %4907, 28
  %4909 = load i32, i32* %EAX.i430
  %4910 = zext i32 %4909 to i64
  %4911 = load i64, i64* %PC.i429
  %4912 = add i64 %4911, 3
  store i64 %4912, i64* %PC.i429
  %4913 = inttoptr i64 %4908 to i32*
  store i32 %4909, i32* %4913
  store %struct.Memory* %loadMem_477aed, %struct.Memory** %MEMORY
  %loadMem_477af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 33
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4916 to i64*
  %4917 = load i64, i64* %PC.i428
  %4918 = add i64 %4917, 232
  %4919 = load i64, i64* %PC.i428
  %4920 = add i64 %4919, 5
  store i64 %4920, i64* %PC.i428
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4918, i64* %4921, align 8
  store %struct.Memory* %loadMem_477af0, %struct.Memory** %MEMORY
  br label %block_.L_477bd8

block_.L_477af5:                                  ; preds = %block_.L_477a82
  %loadMem_477af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 33
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4924 to i64*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 1
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %4927 to i64*
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 15
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %4930 to i64*
  %4931 = load i64, i64* %RBP.i427
  %4932 = sub i64 %4931, 8
  %4933 = load i64, i64* %PC.i425
  %4934 = add i64 %4933, 4
  store i64 %4934, i64* %PC.i425
  %4935 = inttoptr i64 %4932 to i64*
  %4936 = load i64, i64* %4935
  store i64 %4936, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_477af5, %struct.Memory** %MEMORY
  %loadMem_477af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 33
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %4939 to i64*
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 1
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %4942 to i64*
  %4943 = load i64, i64* %RAX.i424
  %4944 = add i64 %4943, 84
  %4945 = load i64, i64* %PC.i423
  %4946 = add i64 %4945, 4
  store i64 %4946, i64* %PC.i423
  %4947 = inttoptr i64 %4944 to i32*
  %4948 = load i32, i32* %4947
  %4949 = sub i32 %4948, 1
  %4950 = icmp ult i32 %4948, 1
  %4951 = zext i1 %4950 to i8
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4951, i8* %4952, align 1
  %4953 = and i32 %4949, 255
  %4954 = call i32 @llvm.ctpop.i32(i32 %4953)
  %4955 = trunc i32 %4954 to i8
  %4956 = and i8 %4955, 1
  %4957 = xor i8 %4956, 1
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4957, i8* %4958, align 1
  %4959 = xor i32 %4948, 1
  %4960 = xor i32 %4959, %4949
  %4961 = lshr i32 %4960, 4
  %4962 = trunc i32 %4961 to i8
  %4963 = and i8 %4962, 1
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4963, i8* %4964, align 1
  %4965 = icmp eq i32 %4949, 0
  %4966 = zext i1 %4965 to i8
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4966, i8* %4967, align 1
  %4968 = lshr i32 %4949, 31
  %4969 = trunc i32 %4968 to i8
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4969, i8* %4970, align 1
  %4971 = lshr i32 %4948, 31
  %4972 = xor i32 %4968, %4971
  %4973 = add i32 %4972, %4971
  %4974 = icmp eq i32 %4973, 2
  %4975 = zext i1 %4974 to i8
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4975, i8* %4976, align 1
  store %struct.Memory* %loadMem_477af9, %struct.Memory** %MEMORY
  %loadMem_477afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 33
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4979 to i64*
  %4980 = load i64, i64* %PC.i422
  %4981 = add i64 %4980, 214
  %4982 = load i64, i64* %PC.i422
  %4983 = add i64 %4982, 6
  %4984 = load i64, i64* %PC.i422
  %4985 = add i64 %4984, 6
  store i64 %4985, i64* %PC.i422
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4987 = load i8, i8* %4986, align 1
  %4988 = icmp eq i8 %4987, 0
  %4989 = zext i1 %4988 to i8
  store i8 %4989, i8* %BRANCH_TAKEN, align 1
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4991 = select i1 %4988, i64 %4981, i64 %4983
  store i64 %4991, i64* %4990, align 8
  store %struct.Memory* %loadMem_477afd, %struct.Memory** %MEMORY
  %loadBr_477afd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477afd = icmp eq i8 %loadBr_477afd, 1
  br i1 %cmpBr_477afd, label %block_.L_477bd3, label %block_477b03

block_477b03:                                     ; preds = %block_.L_477af5
  %loadMem_477b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 33
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %4994 to i64*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 11
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %RDI.i421 = bitcast %union.anon* %4997 to i64*
  %4998 = load i64, i64* %PC.i420
  %4999 = add i64 %4998, 10
  store i64 %4999, i64* %PC.i420
  store i64 ptrtoint (%G__0x4c2637_type* @G__0x4c2637 to i64), i64* %RDI.i421, align 8
  store %struct.Memory* %loadMem_477b03, %struct.Memory** %MEMORY
  %loadMem_477b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 33
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %5002 to i64*
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5004 = getelementptr inbounds %struct.GPR, %struct.GPR* %5003, i32 0, i32 1
  %5005 = getelementptr inbounds %struct.Reg, %struct.Reg* %5004, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %5005 to i64*
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5007 = getelementptr inbounds %struct.GPR, %struct.GPR* %5006, i32 0, i32 15
  %5008 = getelementptr inbounds %struct.Reg, %struct.Reg* %5007, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %5008 to i64*
  %5009 = load i64, i64* %RBP.i419
  %5010 = sub i64 %5009, 8
  %5011 = load i64, i64* %PC.i417
  %5012 = add i64 %5011, 4
  store i64 %5012, i64* %PC.i417
  %5013 = inttoptr i64 %5010 to i64*
  %5014 = load i64, i64* %5013
  store i64 %5014, i64* %RAX.i418, align 8
  store %struct.Memory* %loadMem_477b0d, %struct.Memory** %MEMORY
  %loadMem_477b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 33
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %5017 to i64*
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 1
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %5020 to i64*
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5022 = getelementptr inbounds %struct.GPR, %struct.GPR* %5021, i32 0, i32 9
  %5023 = getelementptr inbounds %struct.Reg, %struct.Reg* %5022, i32 0, i32 0
  %RSI.i416 = bitcast %union.anon* %5023 to i64*
  %5024 = load i64, i64* %RAX.i415
  %5025 = add i64 %5024, 92
  %5026 = load i64, i64* %PC.i414
  %5027 = add i64 %5026, 3
  store i64 %5027, i64* %PC.i414
  %5028 = inttoptr i64 %5025 to i32*
  %5029 = load i32, i32* %5028
  %5030 = zext i32 %5029 to i64
  store i64 %5030, i64* %RSI.i416, align 8
  store %struct.Memory* %loadMem_477b11, %struct.Memory** %MEMORY
  %loadMem_477b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 33
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %5033 to i64*
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5035 = getelementptr inbounds %struct.GPR, %struct.GPR* %5034, i32 0, i32 7
  %5036 = getelementptr inbounds %struct.Reg, %struct.Reg* %5035, i32 0, i32 0
  %RDX.i412 = bitcast %union.anon* %5036 to i64*
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 15
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %5039 to i64*
  %5040 = load i64, i64* %RBP.i413
  %5041 = sub i64 %5040, 24
  %5042 = load i64, i64* %PC.i411
  %5043 = add i64 %5042, 4
  store i64 %5043, i64* %PC.i411
  %5044 = inttoptr i64 %5041 to i64*
  %5045 = load i64, i64* %5044
  store i64 %5045, i64* %RDX.i412, align 8
  store %struct.Memory* %loadMem_477b14, %struct.Memory** %MEMORY
  %loadMem1_477b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 33
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %5048 to i64*
  %5049 = load i64, i64* %PC.i410
  %5050 = add i64 %5049, 217064
  %5051 = load i64, i64* %PC.i410
  %5052 = add i64 %5051, 5
  %5053 = load i64, i64* %PC.i410
  %5054 = add i64 %5053, 5
  store i64 %5054, i64* %PC.i410
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5056 = load i64, i64* %5055, align 8
  %5057 = add i64 %5056, -8
  %5058 = inttoptr i64 %5057 to i64*
  store i64 %5052, i64* %5058
  store i64 %5057, i64* %5055, align 8
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5050, i64* %5059, align 8
  store %struct.Memory* %loadMem1_477b18, %struct.Memory** %MEMORY
  %loadMem2_477b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477b18 = load i64, i64* %3
  %call2_477b18 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477b18, %struct.Memory* %loadMem2_477b18)
  store %struct.Memory* %call2_477b18, %struct.Memory** %MEMORY
  %loadMem_477b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 33
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %5062 to i64*
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 11
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %RDI.i409 = bitcast %union.anon* %5065 to i64*
  %5066 = load i64, i64* %PC.i408
  %5067 = add i64 %5066, 10
  store i64 %5067, i64* %PC.i408
  store i64 ptrtoint (%G__0x4c265d_type* @G__0x4c265d to i64), i64* %RDI.i409, align 8
  store %struct.Memory* %loadMem_477b1d, %struct.Memory** %MEMORY
  %loadMem_477b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5069 = getelementptr inbounds %struct.GPR, %struct.GPR* %5068, i32 0, i32 33
  %5070 = getelementptr inbounds %struct.Reg, %struct.Reg* %5069, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %5070 to i64*
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 1
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 15
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %5076 to i64*
  %5077 = load i64, i64* %RAX.i406
  %5078 = load i64, i64* %RBP.i407
  %5079 = sub i64 %5078, 28
  %5080 = load i64, i64* %PC.i405
  %5081 = add i64 %5080, 3
  store i64 %5081, i64* %PC.i405
  %5082 = trunc i64 %5077 to i32
  %5083 = inttoptr i64 %5079 to i32*
  %5084 = load i32, i32* %5083
  %5085 = add i32 %5084, %5082
  %5086 = zext i32 %5085 to i64
  store i64 %5086, i64* %RAX.i406, align 8
  %5087 = icmp ult i32 %5085, %5082
  %5088 = icmp ult i32 %5085, %5084
  %5089 = or i1 %5087, %5088
  %5090 = zext i1 %5089 to i8
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5090, i8* %5091, align 1
  %5092 = and i32 %5085, 255
  %5093 = call i32 @llvm.ctpop.i32(i32 %5092)
  %5094 = trunc i32 %5093 to i8
  %5095 = and i8 %5094, 1
  %5096 = xor i8 %5095, 1
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5096, i8* %5097, align 1
  %5098 = xor i32 %5084, %5082
  %5099 = xor i32 %5098, %5085
  %5100 = lshr i32 %5099, 4
  %5101 = trunc i32 %5100 to i8
  %5102 = and i8 %5101, 1
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5102, i8* %5103, align 1
  %5104 = icmp eq i32 %5085, 0
  %5105 = zext i1 %5104 to i8
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5105, i8* %5106, align 1
  %5107 = lshr i32 %5085, 31
  %5108 = trunc i32 %5107 to i8
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5108, i8* %5109, align 1
  %5110 = lshr i32 %5082, 31
  %5111 = lshr i32 %5084, 31
  %5112 = xor i32 %5107, %5110
  %5113 = xor i32 %5107, %5111
  %5114 = add i32 %5112, %5113
  %5115 = icmp eq i32 %5114, 2
  %5116 = zext i1 %5115 to i8
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5116, i8* %5117, align 1
  store %struct.Memory* %loadMem_477b27, %struct.Memory** %MEMORY
  %loadMem_477b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 33
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 1
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %EAX.i403 = bitcast %union.anon* %5123 to i32*
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 15
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %5126 to i64*
  %5127 = load i64, i64* %RBP.i404
  %5128 = sub i64 %5127, 28
  %5129 = load i32, i32* %EAX.i403
  %5130 = zext i32 %5129 to i64
  %5131 = load i64, i64* %PC.i402
  %5132 = add i64 %5131, 3
  store i64 %5132, i64* %PC.i402
  %5133 = inttoptr i64 %5128 to i32*
  store i32 %5129, i32* %5133
  store %struct.Memory* %loadMem_477b2a, %struct.Memory** %MEMORY
  %loadMem_477b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 33
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %5136 to i64*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 7
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %RDX.i400 = bitcast %union.anon* %5139 to i64*
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 15
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %5142 to i64*
  %5143 = load i64, i64* %RBP.i401
  %5144 = sub i64 %5143, 8
  %5145 = load i64, i64* %PC.i399
  %5146 = add i64 %5145, 4
  store i64 %5146, i64* %PC.i399
  %5147 = inttoptr i64 %5144 to i64*
  %5148 = load i64, i64* %5147
  store i64 %5148, i64* %RDX.i400, align 8
  store %struct.Memory* %loadMem_477b2d, %struct.Memory** %MEMORY
  %loadMem_477b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5150 = getelementptr inbounds %struct.GPR, %struct.GPR* %5149, i32 0, i32 33
  %5151 = getelementptr inbounds %struct.Reg, %struct.Reg* %5150, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %5151 to i64*
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5153 = getelementptr inbounds %struct.GPR, %struct.GPR* %5152, i32 0, i32 7
  %5154 = getelementptr inbounds %struct.Reg, %struct.Reg* %5153, i32 0, i32 0
  %RDX.i397 = bitcast %union.anon* %5154 to i64*
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5156 = getelementptr inbounds %struct.GPR, %struct.GPR* %5155, i32 0, i32 9
  %5157 = getelementptr inbounds %struct.Reg, %struct.Reg* %5156, i32 0, i32 0
  %RSI.i398 = bitcast %union.anon* %5157 to i64*
  %5158 = load i64, i64* %RDX.i397
  %5159 = add i64 %5158, 96
  %5160 = load i64, i64* %PC.i396
  %5161 = add i64 %5160, 3
  store i64 %5161, i64* %PC.i396
  %5162 = inttoptr i64 %5159 to i32*
  %5163 = load i32, i32* %5162
  %5164 = zext i32 %5163 to i64
  store i64 %5164, i64* %RSI.i398, align 8
  store %struct.Memory* %loadMem_477b31, %struct.Memory** %MEMORY
  %loadMem_477b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 33
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %5167 to i64*
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 7
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %RDX.i394 = bitcast %union.anon* %5170 to i64*
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5172 = getelementptr inbounds %struct.GPR, %struct.GPR* %5171, i32 0, i32 15
  %5173 = getelementptr inbounds %struct.Reg, %struct.Reg* %5172, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %5173 to i64*
  %5174 = load i64, i64* %RBP.i395
  %5175 = sub i64 %5174, 24
  %5176 = load i64, i64* %PC.i393
  %5177 = add i64 %5176, 4
  store i64 %5177, i64* %PC.i393
  %5178 = inttoptr i64 %5175 to i64*
  %5179 = load i64, i64* %5178
  store i64 %5179, i64* %RDX.i394, align 8
  store %struct.Memory* %loadMem_477b34, %struct.Memory** %MEMORY
  %loadMem1_477b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 33
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %5182 to i64*
  %5183 = load i64, i64* %PC.i392
  %5184 = add i64 %5183, 216712
  %5185 = load i64, i64* %PC.i392
  %5186 = add i64 %5185, 5
  %5187 = load i64, i64* %PC.i392
  %5188 = add i64 %5187, 5
  store i64 %5188, i64* %PC.i392
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5190 = load i64, i64* %5189, align 8
  %5191 = add i64 %5190, -8
  %5192 = inttoptr i64 %5191 to i64*
  store i64 %5186, i64* %5192
  store i64 %5191, i64* %5189, align 8
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5184, i64* %5193, align 8
  store %struct.Memory* %loadMem1_477b38, %struct.Memory** %MEMORY
  %loadMem2_477b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477b38 = load i64, i64* %3
  %call2_477b38 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_477b38, %struct.Memory* %loadMem2_477b38)
  store %struct.Memory* %call2_477b38, %struct.Memory** %MEMORY
  %loadMem_477b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 33
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %5196 to i64*
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 11
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %RDI.i391 = bitcast %union.anon* %5199 to i64*
  %5200 = load i64, i64* %PC.i390
  %5201 = add i64 %5200, 10
  store i64 %5201, i64* %PC.i390
  store i64 ptrtoint (%G__0x4c2679_type* @G__0x4c2679 to i64), i64* %RDI.i391, align 8
  store %struct.Memory* %loadMem_477b3d, %struct.Memory** %MEMORY
  %loadMem_477b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 33
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %5204 to i64*
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 1
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %5207 to i64*
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 15
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %5210 to i64*
  %5211 = load i64, i64* %RAX.i388
  %5212 = load i64, i64* %RBP.i389
  %5213 = sub i64 %5212, 28
  %5214 = load i64, i64* %PC.i387
  %5215 = add i64 %5214, 3
  store i64 %5215, i64* %PC.i387
  %5216 = trunc i64 %5211 to i32
  %5217 = inttoptr i64 %5213 to i32*
  %5218 = load i32, i32* %5217
  %5219 = add i32 %5218, %5216
  %5220 = zext i32 %5219 to i64
  store i64 %5220, i64* %RAX.i388, align 8
  %5221 = icmp ult i32 %5219, %5216
  %5222 = icmp ult i32 %5219, %5218
  %5223 = or i1 %5221, %5222
  %5224 = zext i1 %5223 to i8
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5224, i8* %5225, align 1
  %5226 = and i32 %5219, 255
  %5227 = call i32 @llvm.ctpop.i32(i32 %5226)
  %5228 = trunc i32 %5227 to i8
  %5229 = and i8 %5228, 1
  %5230 = xor i8 %5229, 1
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5230, i8* %5231, align 1
  %5232 = xor i32 %5218, %5216
  %5233 = xor i32 %5232, %5219
  %5234 = lshr i32 %5233, 4
  %5235 = trunc i32 %5234 to i8
  %5236 = and i8 %5235, 1
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5236, i8* %5237, align 1
  %5238 = icmp eq i32 %5219, 0
  %5239 = zext i1 %5238 to i8
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5239, i8* %5240, align 1
  %5241 = lshr i32 %5219, 31
  %5242 = trunc i32 %5241 to i8
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5242, i8* %5243, align 1
  %5244 = lshr i32 %5216, 31
  %5245 = lshr i32 %5218, 31
  %5246 = xor i32 %5241, %5244
  %5247 = xor i32 %5241, %5245
  %5248 = add i32 %5246, %5247
  %5249 = icmp eq i32 %5248, 2
  %5250 = zext i1 %5249 to i8
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5250, i8* %5251, align 1
  store %struct.Memory* %loadMem_477b47, %struct.Memory** %MEMORY
  %loadMem_477b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5253 = getelementptr inbounds %struct.GPR, %struct.GPR* %5252, i32 0, i32 33
  %5254 = getelementptr inbounds %struct.Reg, %struct.Reg* %5253, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %5254 to i64*
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 1
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %EAX.i385 = bitcast %union.anon* %5257 to i32*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 15
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %5260 to i64*
  %5261 = load i64, i64* %RBP.i386
  %5262 = sub i64 %5261, 28
  %5263 = load i32, i32* %EAX.i385
  %5264 = zext i32 %5263 to i64
  %5265 = load i64, i64* %PC.i384
  %5266 = add i64 %5265, 3
  store i64 %5266, i64* %PC.i384
  %5267 = inttoptr i64 %5262 to i32*
  store i32 %5263, i32* %5267
  store %struct.Memory* %loadMem_477b4a, %struct.Memory** %MEMORY
  %loadMem_477b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5269 = getelementptr inbounds %struct.GPR, %struct.GPR* %5268, i32 0, i32 33
  %5270 = getelementptr inbounds %struct.Reg, %struct.Reg* %5269, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %5270 to i64*
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 7
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %RDX.i382 = bitcast %union.anon* %5273 to i64*
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 15
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %5276 to i64*
  %5277 = load i64, i64* %RBP.i383
  %5278 = sub i64 %5277, 8
  %5279 = load i64, i64* %PC.i381
  %5280 = add i64 %5279, 4
  store i64 %5280, i64* %PC.i381
  %5281 = inttoptr i64 %5278 to i64*
  %5282 = load i64, i64* %5281
  store i64 %5282, i64* %RDX.i382, align 8
  store %struct.Memory* %loadMem_477b4d, %struct.Memory** %MEMORY
  %loadMem_477b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 33
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %5285 to i64*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 7
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %RDX.i379 = bitcast %union.anon* %5288 to i64*
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 9
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %RSI.i380 = bitcast %union.anon* %5291 to i64*
  %5292 = load i64, i64* %RDX.i379
  %5293 = add i64 %5292, 100
  %5294 = load i64, i64* %PC.i378
  %5295 = add i64 %5294, 3
  store i64 %5295, i64* %PC.i378
  %5296 = inttoptr i64 %5293 to i32*
  %5297 = load i32, i32* %5296
  %5298 = zext i32 %5297 to i64
  store i64 %5298, i64* %RSI.i380, align 8
  store %struct.Memory* %loadMem_477b51, %struct.Memory** %MEMORY
  %loadMem_477b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 33
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 7
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 15
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %5307 to i64*
  %5308 = load i64, i64* %RBP.i377
  %5309 = sub i64 %5308, 24
  %5310 = load i64, i64* %PC.i375
  %5311 = add i64 %5310, 4
  store i64 %5311, i64* %PC.i375
  %5312 = inttoptr i64 %5309 to i64*
  %5313 = load i64, i64* %5312
  store i64 %5313, i64* %RDX.i376, align 8
  store %struct.Memory* %loadMem_477b54, %struct.Memory** %MEMORY
  %loadMem1_477b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5315 = getelementptr inbounds %struct.GPR, %struct.GPR* %5314, i32 0, i32 33
  %5316 = getelementptr inbounds %struct.Reg, %struct.Reg* %5315, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %5316 to i64*
  %5317 = load i64, i64* %PC.i374
  %5318 = add i64 %5317, 216680
  %5319 = load i64, i64* %PC.i374
  %5320 = add i64 %5319, 5
  %5321 = load i64, i64* %PC.i374
  %5322 = add i64 %5321, 5
  store i64 %5322, i64* %PC.i374
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5324 = load i64, i64* %5323, align 8
  %5325 = add i64 %5324, -8
  %5326 = inttoptr i64 %5325 to i64*
  store i64 %5320, i64* %5326
  store i64 %5325, i64* %5323, align 8
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5318, i64* %5327, align 8
  store %struct.Memory* %loadMem1_477b58, %struct.Memory** %MEMORY
  %loadMem2_477b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477b58 = load i64, i64* %3
  %call2_477b58 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_477b58, %struct.Memory* %loadMem2_477b58)
  store %struct.Memory* %call2_477b58, %struct.Memory** %MEMORY
  %loadMem_477b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 33
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %5330 to i64*
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 11
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %RDI.i373 = bitcast %union.anon* %5333 to i64*
  %5334 = load i64, i64* %PC.i372
  %5335 = add i64 %5334, 10
  store i64 %5335, i64* %PC.i372
  store i64 ptrtoint (%G__0x4c269d_type* @G__0x4c269d to i64), i64* %RDI.i373, align 8
  store %struct.Memory* %loadMem_477b5d, %struct.Memory** %MEMORY
  %loadMem_477b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 33
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %5338 to i64*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 1
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %5341 to i64*
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 15
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %5344 to i64*
  %5345 = load i64, i64* %RAX.i370
  %5346 = load i64, i64* %RBP.i371
  %5347 = sub i64 %5346, 28
  %5348 = load i64, i64* %PC.i369
  %5349 = add i64 %5348, 3
  store i64 %5349, i64* %PC.i369
  %5350 = trunc i64 %5345 to i32
  %5351 = inttoptr i64 %5347 to i32*
  %5352 = load i32, i32* %5351
  %5353 = add i32 %5352, %5350
  %5354 = zext i32 %5353 to i64
  store i64 %5354, i64* %RAX.i370, align 8
  %5355 = icmp ult i32 %5353, %5350
  %5356 = icmp ult i32 %5353, %5352
  %5357 = or i1 %5355, %5356
  %5358 = zext i1 %5357 to i8
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5358, i8* %5359, align 1
  %5360 = and i32 %5353, 255
  %5361 = call i32 @llvm.ctpop.i32(i32 %5360)
  %5362 = trunc i32 %5361 to i8
  %5363 = and i8 %5362, 1
  %5364 = xor i8 %5363, 1
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5364, i8* %5365, align 1
  %5366 = xor i32 %5352, %5350
  %5367 = xor i32 %5366, %5353
  %5368 = lshr i32 %5367, 4
  %5369 = trunc i32 %5368 to i8
  %5370 = and i8 %5369, 1
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5370, i8* %5371, align 1
  %5372 = icmp eq i32 %5353, 0
  %5373 = zext i1 %5372 to i8
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5373, i8* %5374, align 1
  %5375 = lshr i32 %5353, 31
  %5376 = trunc i32 %5375 to i8
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5376, i8* %5377, align 1
  %5378 = lshr i32 %5350, 31
  %5379 = lshr i32 %5352, 31
  %5380 = xor i32 %5375, %5378
  %5381 = xor i32 %5375, %5379
  %5382 = add i32 %5380, %5381
  %5383 = icmp eq i32 %5382, 2
  %5384 = zext i1 %5383 to i8
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5384, i8* %5385, align 1
  store %struct.Memory* %loadMem_477b67, %struct.Memory** %MEMORY
  %loadMem_477b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5387 = getelementptr inbounds %struct.GPR, %struct.GPR* %5386, i32 0, i32 33
  %5388 = getelementptr inbounds %struct.Reg, %struct.Reg* %5387, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %5388 to i64*
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5390 = getelementptr inbounds %struct.GPR, %struct.GPR* %5389, i32 0, i32 1
  %5391 = getelementptr inbounds %struct.Reg, %struct.Reg* %5390, i32 0, i32 0
  %EAX.i367 = bitcast %union.anon* %5391 to i32*
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 15
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %5394 to i64*
  %5395 = load i64, i64* %RBP.i368
  %5396 = sub i64 %5395, 28
  %5397 = load i32, i32* %EAX.i367
  %5398 = zext i32 %5397 to i64
  %5399 = load i64, i64* %PC.i366
  %5400 = add i64 %5399, 3
  store i64 %5400, i64* %PC.i366
  %5401 = inttoptr i64 %5396 to i32*
  store i32 %5397, i32* %5401
  store %struct.Memory* %loadMem_477b6a, %struct.Memory** %MEMORY
  %loadMem_477b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5403 = getelementptr inbounds %struct.GPR, %struct.GPR* %5402, i32 0, i32 33
  %5404 = getelementptr inbounds %struct.Reg, %struct.Reg* %5403, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5404 to i64*
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5406 = getelementptr inbounds %struct.GPR, %struct.GPR* %5405, i32 0, i32 7
  %5407 = getelementptr inbounds %struct.Reg, %struct.Reg* %5406, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %5407 to i64*
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5409 = getelementptr inbounds %struct.GPR, %struct.GPR* %5408, i32 0, i32 15
  %5410 = getelementptr inbounds %struct.Reg, %struct.Reg* %5409, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %5410 to i64*
  %5411 = load i64, i64* %RBP.i365
  %5412 = sub i64 %5411, 8
  %5413 = load i64, i64* %PC.i363
  %5414 = add i64 %5413, 4
  store i64 %5414, i64* %PC.i363
  %5415 = inttoptr i64 %5412 to i64*
  %5416 = load i64, i64* %5415
  store i64 %5416, i64* %RDX.i364, align 8
  store %struct.Memory* %loadMem_477b6d, %struct.Memory** %MEMORY
  %loadMem_477b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5418 = getelementptr inbounds %struct.GPR, %struct.GPR* %5417, i32 0, i32 33
  %5419 = getelementptr inbounds %struct.Reg, %struct.Reg* %5418, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %5419 to i64*
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5421 = getelementptr inbounds %struct.GPR, %struct.GPR* %5420, i32 0, i32 7
  %5422 = getelementptr inbounds %struct.Reg, %struct.Reg* %5421, i32 0, i32 0
  %RDX.i361 = bitcast %union.anon* %5422 to i64*
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 9
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %RSI.i362 = bitcast %union.anon* %5425 to i64*
  %5426 = load i64, i64* %RDX.i361
  %5427 = add i64 %5426, 104
  %5428 = load i64, i64* %PC.i360
  %5429 = add i64 %5428, 3
  store i64 %5429, i64* %PC.i360
  %5430 = inttoptr i64 %5427 to i32*
  %5431 = load i32, i32* %5430
  %5432 = zext i32 %5431 to i64
  store i64 %5432, i64* %RSI.i362, align 8
  store %struct.Memory* %loadMem_477b71, %struct.Memory** %MEMORY
  %loadMem_477b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 33
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5435 to i64*
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5437 = getelementptr inbounds %struct.GPR, %struct.GPR* %5436, i32 0, i32 7
  %5438 = getelementptr inbounds %struct.Reg, %struct.Reg* %5437, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %5438 to i64*
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 15
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %5441 to i64*
  %5442 = load i64, i64* %RBP.i359
  %5443 = sub i64 %5442, 24
  %5444 = load i64, i64* %PC.i357
  %5445 = add i64 %5444, 4
  store i64 %5445, i64* %PC.i357
  %5446 = inttoptr i64 %5443 to i64*
  %5447 = load i64, i64* %5446
  store i64 %5447, i64* %RDX.i358, align 8
  store %struct.Memory* %loadMem_477b74, %struct.Memory** %MEMORY
  %loadMem1_477b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5449 = getelementptr inbounds %struct.GPR, %struct.GPR* %5448, i32 0, i32 33
  %5450 = getelementptr inbounds %struct.Reg, %struct.Reg* %5449, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %5450 to i64*
  %5451 = load i64, i64* %PC.i356
  %5452 = add i64 %5451, 215848
  %5453 = load i64, i64* %PC.i356
  %5454 = add i64 %5453, 5
  %5455 = load i64, i64* %PC.i356
  %5456 = add i64 %5455, 5
  store i64 %5456, i64* %PC.i356
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5458 = load i64, i64* %5457, align 8
  %5459 = add i64 %5458, -8
  %5460 = inttoptr i64 %5459 to i64*
  store i64 %5454, i64* %5460
  store i64 %5459, i64* %5457, align 8
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5452, i64* %5461, align 8
  store %struct.Memory* %loadMem1_477b78, %struct.Memory** %MEMORY
  %loadMem2_477b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477b78 = load i64, i64* %3
  %call2_477b78 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477b78, %struct.Memory* %loadMem2_477b78)
  store %struct.Memory* %call2_477b78, %struct.Memory** %MEMORY
  %loadMem_477b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 33
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %5464 to i64*
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 1
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %5467 to i64*
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 15
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %5470 to i64*
  %5471 = load i64, i64* %RAX.i354
  %5472 = load i64, i64* %RBP.i355
  %5473 = sub i64 %5472, 28
  %5474 = load i64, i64* %PC.i353
  %5475 = add i64 %5474, 3
  store i64 %5475, i64* %PC.i353
  %5476 = trunc i64 %5471 to i32
  %5477 = inttoptr i64 %5473 to i32*
  %5478 = load i32, i32* %5477
  %5479 = add i32 %5478, %5476
  %5480 = zext i32 %5479 to i64
  store i64 %5480, i64* %RAX.i354, align 8
  %5481 = icmp ult i32 %5479, %5476
  %5482 = icmp ult i32 %5479, %5478
  %5483 = or i1 %5481, %5482
  %5484 = zext i1 %5483 to i8
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5484, i8* %5485, align 1
  %5486 = and i32 %5479, 255
  %5487 = call i32 @llvm.ctpop.i32(i32 %5486)
  %5488 = trunc i32 %5487 to i8
  %5489 = and i8 %5488, 1
  %5490 = xor i8 %5489, 1
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5490, i8* %5491, align 1
  %5492 = xor i32 %5478, %5476
  %5493 = xor i32 %5492, %5479
  %5494 = lshr i32 %5493, 4
  %5495 = trunc i32 %5494 to i8
  %5496 = and i8 %5495, 1
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5496, i8* %5497, align 1
  %5498 = icmp eq i32 %5479, 0
  %5499 = zext i1 %5498 to i8
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5499, i8* %5500, align 1
  %5501 = lshr i32 %5479, 31
  %5502 = trunc i32 %5501 to i8
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5502, i8* %5503, align 1
  %5504 = lshr i32 %5476, 31
  %5505 = lshr i32 %5478, 31
  %5506 = xor i32 %5501, %5504
  %5507 = xor i32 %5501, %5505
  %5508 = add i32 %5506, %5507
  %5509 = icmp eq i32 %5508, 2
  %5510 = zext i1 %5509 to i8
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5510, i8* %5511, align 1
  store %struct.Memory* %loadMem_477b7d, %struct.Memory** %MEMORY
  %loadMem_477b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 33
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5514 to i64*
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 1
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %EAX.i351 = bitcast %union.anon* %5517 to i32*
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5519 = getelementptr inbounds %struct.GPR, %struct.GPR* %5518, i32 0, i32 15
  %5520 = getelementptr inbounds %struct.Reg, %struct.Reg* %5519, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %5520 to i64*
  %5521 = load i64, i64* %RBP.i352
  %5522 = sub i64 %5521, 28
  %5523 = load i32, i32* %EAX.i351
  %5524 = zext i32 %5523 to i64
  %5525 = load i64, i64* %PC.i350
  %5526 = add i64 %5525, 3
  store i64 %5526, i64* %PC.i350
  %5527 = inttoptr i64 %5522 to i32*
  store i32 %5523, i32* %5527
  store %struct.Memory* %loadMem_477b80, %struct.Memory** %MEMORY
  %loadMem_477b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 33
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %5530 to i64*
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 15
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %5533 to i64*
  %5534 = load i64, i64* %RBP.i349
  %5535 = sub i64 %5534, 36
  %5536 = load i64, i64* %PC.i348
  %5537 = add i64 %5536, 7
  store i64 %5537, i64* %PC.i348
  %5538 = inttoptr i64 %5535 to i32*
  store i32 0, i32* %5538
  store %struct.Memory* %loadMem_477b83, %struct.Memory** %MEMORY
  br label %block_.L_477b8a

block_.L_477b8a:                                  ; preds = %block_477b9a, %block_477b03
  %loadMem_477b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 33
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5541 to i64*
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 1
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %5544 to i64*
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 15
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %5547 to i64*
  %5548 = load i64, i64* %RBP.i347
  %5549 = sub i64 %5548, 36
  %5550 = load i64, i64* %PC.i345
  %5551 = add i64 %5550, 3
  store i64 %5551, i64* %PC.i345
  %5552 = inttoptr i64 %5549 to i32*
  %5553 = load i32, i32* %5552
  %5554 = zext i32 %5553 to i64
  store i64 %5554, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_477b8a, %struct.Memory** %MEMORY
  %loadMem_477b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 33
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5557 to i64*
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 5
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %5560 to i64*
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 15
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %5563 to i64*
  %5564 = load i64, i64* %RBP.i344
  %5565 = sub i64 %5564, 8
  %5566 = load i64, i64* %PC.i342
  %5567 = add i64 %5566, 4
  store i64 %5567, i64* %PC.i342
  %5568 = inttoptr i64 %5565 to i64*
  %5569 = load i64, i64* %5568
  store i64 %5569, i64* %RCX.i343, align 8
  store %struct.Memory* %loadMem_477b8d, %struct.Memory** %MEMORY
  %loadMem_477b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5571 = getelementptr inbounds %struct.GPR, %struct.GPR* %5570, i32 0, i32 33
  %5572 = getelementptr inbounds %struct.Reg, %struct.Reg* %5571, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5572 to i64*
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5574 = getelementptr inbounds %struct.GPR, %struct.GPR* %5573, i32 0, i32 1
  %5575 = getelementptr inbounds %struct.Reg, %struct.Reg* %5574, i32 0, i32 0
  %EAX.i340 = bitcast %union.anon* %5575 to i32*
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5577 = getelementptr inbounds %struct.GPR, %struct.GPR* %5576, i32 0, i32 5
  %5578 = getelementptr inbounds %struct.Reg, %struct.Reg* %5577, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %5578 to i64*
  %5579 = load i32, i32* %EAX.i340
  %5580 = zext i32 %5579 to i64
  %5581 = load i64, i64* %RCX.i341
  %5582 = add i64 %5581, 104
  %5583 = load i64, i64* %PC.i339
  %5584 = add i64 %5583, 3
  store i64 %5584, i64* %PC.i339
  %5585 = inttoptr i64 %5582 to i32*
  %5586 = load i32, i32* %5585
  %5587 = sub i32 %5579, %5586
  %5588 = icmp ult i32 %5579, %5586
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
  %5597 = xor i32 %5586, %5579
  %5598 = xor i32 %5597, %5587
  %5599 = lshr i32 %5598, 4
  %5600 = trunc i32 %5599 to i8
  %5601 = and i8 %5600, 1
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5601, i8* %5602, align 1
  %5603 = icmp eq i32 %5587, 0
  %5604 = zext i1 %5603 to i8
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5604, i8* %5605, align 1
  %5606 = lshr i32 %5587, 31
  %5607 = trunc i32 %5606 to i8
  %5608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5607, i8* %5608, align 1
  %5609 = lshr i32 %5579, 31
  %5610 = lshr i32 %5586, 31
  %5611 = xor i32 %5610, %5609
  %5612 = xor i32 %5606, %5609
  %5613 = add i32 %5612, %5611
  %5614 = icmp eq i32 %5613, 2
  %5615 = zext i1 %5614 to i8
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5615, i8* %5616, align 1
  store %struct.Memory* %loadMem_477b91, %struct.Memory** %MEMORY
  %loadMem_477b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5618 = getelementptr inbounds %struct.GPR, %struct.GPR* %5617, i32 0, i32 33
  %5619 = getelementptr inbounds %struct.Reg, %struct.Reg* %5618, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5619 to i64*
  %5620 = load i64, i64* %PC.i338
  %5621 = add i64 %5620, 58
  %5622 = load i64, i64* %PC.i338
  %5623 = add i64 %5622, 6
  %5624 = load i64, i64* %PC.i338
  %5625 = add i64 %5624, 6
  store i64 %5625, i64* %PC.i338
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5627 = load i8, i8* %5626, align 1
  %5628 = icmp eq i8 %5627, 0
  %5629 = zext i1 %5628 to i8
  store i8 %5629, i8* %BRANCH_TAKEN, align 1
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5631 = select i1 %5628, i64 %5621, i64 %5623
  store i64 %5631, i64* %5630, align 8
  store %struct.Memory* %loadMem_477b94, %struct.Memory** %MEMORY
  %loadBr_477b94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477b94 = icmp eq i8 %loadBr_477b94, 1
  br i1 %cmpBr_477b94, label %block_.L_477bce, label %block_477b9a

block_477b9a:                                     ; preds = %block_.L_477b8a
  %loadMem_477b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5633 = getelementptr inbounds %struct.GPR, %struct.GPR* %5632, i32 0, i32 33
  %5634 = getelementptr inbounds %struct.Reg, %struct.Reg* %5633, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5634 to i64*
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5636 = getelementptr inbounds %struct.GPR, %struct.GPR* %5635, i32 0, i32 11
  %5637 = getelementptr inbounds %struct.Reg, %struct.Reg* %5636, i32 0, i32 0
  %RDI.i337 = bitcast %union.anon* %5637 to i64*
  %5638 = load i64, i64* %PC.i336
  %5639 = add i64 %5638, 10
  store i64 %5639, i64* %PC.i336
  store i64 ptrtoint (%G__0x4c26c8_type* @G__0x4c26c8 to i64), i64* %RDI.i337, align 8
  store %struct.Memory* %loadMem_477b9a, %struct.Memory** %MEMORY
  %loadMem_477ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5641 = getelementptr inbounds %struct.GPR, %struct.GPR* %5640, i32 0, i32 33
  %5642 = getelementptr inbounds %struct.Reg, %struct.Reg* %5641, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %5642 to i64*
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 1
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %5645 to i64*
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 15
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %5648 to i64*
  %5649 = load i64, i64* %RBP.i335
  %5650 = sub i64 %5649, 8
  %5651 = load i64, i64* %PC.i333
  %5652 = add i64 %5651, 4
  store i64 %5652, i64* %PC.i333
  %5653 = inttoptr i64 %5650 to i64*
  %5654 = load i64, i64* %5653
  store i64 %5654, i64* %RAX.i334, align 8
  store %struct.Memory* %loadMem_477ba4, %struct.Memory** %MEMORY
  %loadMem_477ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 33
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %5657 to i64*
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 5
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %5660 to i64*
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 15
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %5663 to i64*
  %5664 = load i64, i64* %RBP.i332
  %5665 = sub i64 %5664, 36
  %5666 = load i64, i64* %PC.i330
  %5667 = add i64 %5666, 3
  store i64 %5667, i64* %PC.i330
  %5668 = inttoptr i64 %5665 to i32*
  %5669 = load i32, i32* %5668
  %5670 = zext i32 %5669 to i64
  store i64 %5670, i64* %RCX.i331, align 8
  store %struct.Memory* %loadMem_477ba8, %struct.Memory** %MEMORY
  %loadMem_477bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 33
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %5673 to i64*
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 5
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %ECX.i328 = bitcast %union.anon* %5676 to i32*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 7
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %5679 to i64*
  %5680 = load i32, i32* %ECX.i328
  %5681 = zext i32 %5680 to i64
  %5682 = load i64, i64* %PC.i327
  %5683 = add i64 %5682, 2
  store i64 %5683, i64* %PC.i327
  %5684 = and i64 %5681, 4294967295
  store i64 %5684, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_477bab, %struct.Memory** %MEMORY
  %loadMem_477bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5686 = getelementptr inbounds %struct.GPR, %struct.GPR* %5685, i32 0, i32 33
  %5687 = getelementptr inbounds %struct.Reg, %struct.Reg* %5686, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5687 to i64*
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 1
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %5690 to i64*
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 7
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %RDX.i325 = bitcast %union.anon* %5693 to i64*
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 9
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %RSI.i326 = bitcast %union.anon* %5696 to i64*
  %5697 = load i64, i64* %RAX.i324
  %5698 = load i64, i64* %RDX.i325
  %5699 = mul i64 %5698, 4
  %5700 = add i64 %5697, 108
  %5701 = add i64 %5700, %5699
  %5702 = load i64, i64* %PC.i323
  %5703 = add i64 %5702, 4
  store i64 %5703, i64* %PC.i323
  %5704 = inttoptr i64 %5701 to i32*
  %5705 = load i32, i32* %5704
  %5706 = zext i32 %5705 to i64
  store i64 %5706, i64* %RSI.i326, align 8
  store %struct.Memory* %loadMem_477bad, %struct.Memory** %MEMORY
  %loadMem_477bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5708 = getelementptr inbounds %struct.GPR, %struct.GPR* %5707, i32 0, i32 33
  %5709 = getelementptr inbounds %struct.Reg, %struct.Reg* %5708, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5709 to i64*
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5711 = getelementptr inbounds %struct.GPR, %struct.GPR* %5710, i32 0, i32 7
  %5712 = getelementptr inbounds %struct.Reg, %struct.Reg* %5711, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %5712 to i64*
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5714 = getelementptr inbounds %struct.GPR, %struct.GPR* %5713, i32 0, i32 15
  %5715 = getelementptr inbounds %struct.Reg, %struct.Reg* %5714, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %5715 to i64*
  %5716 = load i64, i64* %RBP.i322
  %5717 = sub i64 %5716, 24
  %5718 = load i64, i64* %PC.i320
  %5719 = add i64 %5718, 4
  store i64 %5719, i64* %PC.i320
  %5720 = inttoptr i64 %5717 to i64*
  %5721 = load i64, i64* %5720
  store i64 %5721, i64* %RDX.i321, align 8
  store %struct.Memory* %loadMem_477bb1, %struct.Memory** %MEMORY
  %loadMem1_477bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 33
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5724 to i64*
  %5725 = load i64, i64* %PC.i319
  %5726 = add i64 %5725, 216587
  %5727 = load i64, i64* %PC.i319
  %5728 = add i64 %5727, 5
  %5729 = load i64, i64* %PC.i319
  %5730 = add i64 %5729, 5
  store i64 %5730, i64* %PC.i319
  %5731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5732 = load i64, i64* %5731, align 8
  %5733 = add i64 %5732, -8
  %5734 = inttoptr i64 %5733 to i64*
  store i64 %5728, i64* %5734
  store i64 %5733, i64* %5731, align 8
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5726, i64* %5735, align 8
  store %struct.Memory* %loadMem1_477bb5, %struct.Memory** %MEMORY
  %loadMem2_477bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477bb5 = load i64, i64* %3
  %call2_477bb5 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_477bb5, %struct.Memory* %loadMem2_477bb5)
  store %struct.Memory* %call2_477bb5, %struct.Memory** %MEMORY
  %loadMem_477bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 33
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5738 to i64*
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 1
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %5741 to i64*
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5743 = getelementptr inbounds %struct.GPR, %struct.GPR* %5742, i32 0, i32 15
  %5744 = getelementptr inbounds %struct.Reg, %struct.Reg* %5743, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %5744 to i64*
  %5745 = load i64, i64* %RAX.i317
  %5746 = load i64, i64* %RBP.i318
  %5747 = sub i64 %5746, 28
  %5748 = load i64, i64* %PC.i316
  %5749 = add i64 %5748, 3
  store i64 %5749, i64* %PC.i316
  %5750 = trunc i64 %5745 to i32
  %5751 = inttoptr i64 %5747 to i32*
  %5752 = load i32, i32* %5751
  %5753 = add i32 %5752, %5750
  %5754 = zext i32 %5753 to i64
  store i64 %5754, i64* %RAX.i317, align 8
  %5755 = icmp ult i32 %5753, %5750
  %5756 = icmp ult i32 %5753, %5752
  %5757 = or i1 %5755, %5756
  %5758 = zext i1 %5757 to i8
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5758, i8* %5759, align 1
  %5760 = and i32 %5753, 255
  %5761 = call i32 @llvm.ctpop.i32(i32 %5760)
  %5762 = trunc i32 %5761 to i8
  %5763 = and i8 %5762, 1
  %5764 = xor i8 %5763, 1
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5764, i8* %5765, align 1
  %5766 = xor i32 %5752, %5750
  %5767 = xor i32 %5766, %5753
  %5768 = lshr i32 %5767, 4
  %5769 = trunc i32 %5768 to i8
  %5770 = and i8 %5769, 1
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5770, i8* %5771, align 1
  %5772 = icmp eq i32 %5753, 0
  %5773 = zext i1 %5772 to i8
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5773, i8* %5774, align 1
  %5775 = lshr i32 %5753, 31
  %5776 = trunc i32 %5775 to i8
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5776, i8* %5777, align 1
  %5778 = lshr i32 %5750, 31
  %5779 = lshr i32 %5752, 31
  %5780 = xor i32 %5775, %5778
  %5781 = xor i32 %5775, %5779
  %5782 = add i32 %5780, %5781
  %5783 = icmp eq i32 %5782, 2
  %5784 = zext i1 %5783 to i8
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5784, i8* %5785, align 1
  store %struct.Memory* %loadMem_477bba, %struct.Memory** %MEMORY
  %loadMem_477bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 33
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %5788 to i64*
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5790 = getelementptr inbounds %struct.GPR, %struct.GPR* %5789, i32 0, i32 1
  %5791 = getelementptr inbounds %struct.Reg, %struct.Reg* %5790, i32 0, i32 0
  %EAX.i314 = bitcast %union.anon* %5791 to i32*
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5793 = getelementptr inbounds %struct.GPR, %struct.GPR* %5792, i32 0, i32 15
  %5794 = getelementptr inbounds %struct.Reg, %struct.Reg* %5793, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %5794 to i64*
  %5795 = load i64, i64* %RBP.i315
  %5796 = sub i64 %5795, 28
  %5797 = load i32, i32* %EAX.i314
  %5798 = zext i32 %5797 to i64
  %5799 = load i64, i64* %PC.i313
  %5800 = add i64 %5799, 3
  store i64 %5800, i64* %PC.i313
  %5801 = inttoptr i64 %5796 to i32*
  store i32 %5797, i32* %5801
  store %struct.Memory* %loadMem_477bbd, %struct.Memory** %MEMORY
  %loadMem_477bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 33
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %5804 to i64*
  %5805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5806 = getelementptr inbounds %struct.GPR, %struct.GPR* %5805, i32 0, i32 1
  %5807 = getelementptr inbounds %struct.Reg, %struct.Reg* %5806, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %5807 to i64*
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5809 = getelementptr inbounds %struct.GPR, %struct.GPR* %5808, i32 0, i32 15
  %5810 = getelementptr inbounds %struct.Reg, %struct.Reg* %5809, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %5810 to i64*
  %5811 = load i64, i64* %RBP.i312
  %5812 = sub i64 %5811, 36
  %5813 = load i64, i64* %PC.i310
  %5814 = add i64 %5813, 3
  store i64 %5814, i64* %PC.i310
  %5815 = inttoptr i64 %5812 to i32*
  %5816 = load i32, i32* %5815
  %5817 = zext i32 %5816 to i64
  store i64 %5817, i64* %RAX.i311, align 8
  store %struct.Memory* %loadMem_477bc0, %struct.Memory** %MEMORY
  %loadMem_477bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5819 = getelementptr inbounds %struct.GPR, %struct.GPR* %5818, i32 0, i32 33
  %5820 = getelementptr inbounds %struct.Reg, %struct.Reg* %5819, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %5820 to i64*
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5822 = getelementptr inbounds %struct.GPR, %struct.GPR* %5821, i32 0, i32 1
  %5823 = getelementptr inbounds %struct.Reg, %struct.Reg* %5822, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %5823 to i64*
  %5824 = load i64, i64* %RAX.i309
  %5825 = load i64, i64* %PC.i308
  %5826 = add i64 %5825, 3
  store i64 %5826, i64* %PC.i308
  %5827 = trunc i64 %5824 to i32
  %5828 = add i32 1, %5827
  %5829 = zext i32 %5828 to i64
  store i64 %5829, i64* %RAX.i309, align 8
  %5830 = icmp ult i32 %5828, %5827
  %5831 = icmp ult i32 %5828, 1
  %5832 = or i1 %5830, %5831
  %5833 = zext i1 %5832 to i8
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5833, i8* %5834, align 1
  %5835 = and i32 %5828, 255
  %5836 = call i32 @llvm.ctpop.i32(i32 %5835)
  %5837 = trunc i32 %5836 to i8
  %5838 = and i8 %5837, 1
  %5839 = xor i8 %5838, 1
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5839, i8* %5840, align 1
  %5841 = xor i64 1, %5824
  %5842 = trunc i64 %5841 to i32
  %5843 = xor i32 %5842, %5828
  %5844 = lshr i32 %5843, 4
  %5845 = trunc i32 %5844 to i8
  %5846 = and i8 %5845, 1
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5846, i8* %5847, align 1
  %5848 = icmp eq i32 %5828, 0
  %5849 = zext i1 %5848 to i8
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5849, i8* %5850, align 1
  %5851 = lshr i32 %5828, 31
  %5852 = trunc i32 %5851 to i8
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5852, i8* %5853, align 1
  %5854 = lshr i32 %5827, 31
  %5855 = xor i32 %5851, %5854
  %5856 = add i32 %5855, %5851
  %5857 = icmp eq i32 %5856, 2
  %5858 = zext i1 %5857 to i8
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5858, i8* %5859, align 1
  store %struct.Memory* %loadMem_477bc3, %struct.Memory** %MEMORY
  %loadMem_477bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5861 = getelementptr inbounds %struct.GPR, %struct.GPR* %5860, i32 0, i32 33
  %5862 = getelementptr inbounds %struct.Reg, %struct.Reg* %5861, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5862 to i64*
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 1
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %EAX.i306 = bitcast %union.anon* %5865 to i32*
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5867 = getelementptr inbounds %struct.GPR, %struct.GPR* %5866, i32 0, i32 15
  %5868 = getelementptr inbounds %struct.Reg, %struct.Reg* %5867, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %5868 to i64*
  %5869 = load i64, i64* %RBP.i307
  %5870 = sub i64 %5869, 36
  %5871 = load i32, i32* %EAX.i306
  %5872 = zext i32 %5871 to i64
  %5873 = load i64, i64* %PC.i305
  %5874 = add i64 %5873, 3
  store i64 %5874, i64* %PC.i305
  %5875 = inttoptr i64 %5870 to i32*
  store i32 %5871, i32* %5875
  store %struct.Memory* %loadMem_477bc6, %struct.Memory** %MEMORY
  %loadMem_477bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5877 = getelementptr inbounds %struct.GPR, %struct.GPR* %5876, i32 0, i32 33
  %5878 = getelementptr inbounds %struct.Reg, %struct.Reg* %5877, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5878 to i64*
  %5879 = load i64, i64* %PC.i304
  %5880 = add i64 %5879, -63
  %5881 = load i64, i64* %PC.i304
  %5882 = add i64 %5881, 5
  store i64 %5882, i64* %PC.i304
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5880, i64* %5883, align 8
  store %struct.Memory* %loadMem_477bc9, %struct.Memory** %MEMORY
  br label %block_.L_477b8a

block_.L_477bce:                                  ; preds = %block_.L_477b8a
  %loadMem_477bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5885 = getelementptr inbounds %struct.GPR, %struct.GPR* %5884, i32 0, i32 33
  %5886 = getelementptr inbounds %struct.Reg, %struct.Reg* %5885, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5886 to i64*
  %5887 = load i64, i64* %PC.i303
  %5888 = add i64 %5887, 5
  %5889 = load i64, i64* %PC.i303
  %5890 = add i64 %5889, 5
  store i64 %5890, i64* %PC.i303
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5888, i64* %5891, align 8
  store %struct.Memory* %loadMem_477bce, %struct.Memory** %MEMORY
  br label %block_.L_477bd3

block_.L_477bd3:                                  ; preds = %block_.L_477bce, %block_.L_477af5
  %loadMem_477bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 33
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %5894 to i64*
  %5895 = load i64, i64* %PC.i302
  %5896 = add i64 %5895, 5
  %5897 = load i64, i64* %PC.i302
  %5898 = add i64 %5897, 5
  store i64 %5898, i64* %PC.i302
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5896, i64* %5899, align 8
  store %struct.Memory* %loadMem_477bd3, %struct.Memory** %MEMORY
  br label %block_.L_477bd8

block_.L_477bd8:                                  ; preds = %block_.L_477bd3, %block_477ad0
  %loadMem_477bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5901 = getelementptr inbounds %struct.GPR, %struct.GPR* %5900, i32 0, i32 33
  %5902 = getelementptr inbounds %struct.Reg, %struct.Reg* %5901, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5902 to i64*
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5904 = getelementptr inbounds %struct.GPR, %struct.GPR* %5903, i32 0, i32 11
  %5905 = getelementptr inbounds %struct.Reg, %struct.Reg* %5904, i32 0, i32 0
  %RDI.i301 = bitcast %union.anon* %5905 to i64*
  %5906 = load i64, i64* %PC.i300
  %5907 = add i64 %5906, 10
  store i64 %5907, i64* %PC.i300
  store i64 ptrtoint (%G__0x4c26e2_type* @G__0x4c26e2 to i64), i64* %RDI.i301, align 8
  store %struct.Memory* %loadMem_477bd8, %struct.Memory** %MEMORY
  %loadMem_477be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 33
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5910 to i64*
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 1
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %5913 to i64*
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 15
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %5916 to i64*
  %5917 = load i64, i64* %RBP.i299
  %5918 = sub i64 %5917, 8
  %5919 = load i64, i64* %PC.i297
  %5920 = add i64 %5919, 4
  store i64 %5920, i64* %PC.i297
  %5921 = inttoptr i64 %5918 to i64*
  %5922 = load i64, i64* %5921
  store i64 %5922, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_477be2, %struct.Memory** %MEMORY
  %loadMem_477be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5924 = getelementptr inbounds %struct.GPR, %struct.GPR* %5923, i32 0, i32 33
  %5925 = getelementptr inbounds %struct.Reg, %struct.Reg* %5924, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5925 to i64*
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 1
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %5928 to i64*
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 9
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %RSI.i296 = bitcast %union.anon* %5931 to i64*
  %5932 = load i64, i64* %RAX.i295
  %5933 = add i64 %5932, 1132
  %5934 = load i64, i64* %PC.i294
  %5935 = add i64 %5934, 6
  store i64 %5935, i64* %PC.i294
  %5936 = inttoptr i64 %5933 to i32*
  %5937 = load i32, i32* %5936
  %5938 = zext i32 %5937 to i64
  store i64 %5938, i64* %RSI.i296, align 8
  store %struct.Memory* %loadMem_477be6, %struct.Memory** %MEMORY
  %loadMem_477bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5940 = getelementptr inbounds %struct.GPR, %struct.GPR* %5939, i32 0, i32 33
  %5941 = getelementptr inbounds %struct.Reg, %struct.Reg* %5940, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5941 to i64*
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5943 = getelementptr inbounds %struct.GPR, %struct.GPR* %5942, i32 0, i32 7
  %5944 = getelementptr inbounds %struct.Reg, %struct.Reg* %5943, i32 0, i32 0
  %RDX.i292 = bitcast %union.anon* %5944 to i64*
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5946 = getelementptr inbounds %struct.GPR, %struct.GPR* %5945, i32 0, i32 15
  %5947 = getelementptr inbounds %struct.Reg, %struct.Reg* %5946, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %5947 to i64*
  %5948 = load i64, i64* %RBP.i293
  %5949 = sub i64 %5948, 24
  %5950 = load i64, i64* %PC.i291
  %5951 = add i64 %5950, 4
  store i64 %5951, i64* %PC.i291
  %5952 = inttoptr i64 %5949 to i64*
  %5953 = load i64, i64* %5952
  store i64 %5953, i64* %RDX.i292, align 8
  store %struct.Memory* %loadMem_477bec, %struct.Memory** %MEMORY
  %loadMem1_477bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5955 = getelementptr inbounds %struct.GPR, %struct.GPR* %5954, i32 0, i32 33
  %5956 = getelementptr inbounds %struct.Reg, %struct.Reg* %5955, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %5956 to i64*
  %5957 = load i64, i64* %PC.i290
  %5958 = add i64 %5957, 215728
  %5959 = load i64, i64* %PC.i290
  %5960 = add i64 %5959, 5
  %5961 = load i64, i64* %PC.i290
  %5962 = add i64 %5961, 5
  store i64 %5962, i64* %PC.i290
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5964 = load i64, i64* %5963, align 8
  %5965 = add i64 %5964, -8
  %5966 = inttoptr i64 %5965 to i64*
  store i64 %5960, i64* %5966
  store i64 %5965, i64* %5963, align 8
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5958, i64* %5967, align 8
  store %struct.Memory* %loadMem1_477bf0, %struct.Memory** %MEMORY
  %loadMem2_477bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477bf0 = load i64, i64* %3
  %call2_477bf0 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477bf0, %struct.Memory* %loadMem2_477bf0)
  store %struct.Memory* %call2_477bf0, %struct.Memory** %MEMORY
  %loadMem_477bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5969 = getelementptr inbounds %struct.GPR, %struct.GPR* %5968, i32 0, i32 33
  %5970 = getelementptr inbounds %struct.Reg, %struct.Reg* %5969, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5970 to i64*
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 11
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %RDI.i289 = bitcast %union.anon* %5973 to i64*
  %5974 = load i64, i64* %PC.i288
  %5975 = add i64 %5974, 10
  store i64 %5975, i64* %PC.i288
  store i64 ptrtoint (%G__0x4c26f6_type* @G__0x4c26f6 to i64), i64* %RDI.i289, align 8
  store %struct.Memory* %loadMem_477bf5, %struct.Memory** %MEMORY
  %loadMem_477bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 33
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5978 to i64*
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 1
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %5981 to i64*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 15
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %5984 to i64*
  %5985 = load i64, i64* %RAX.i286
  %5986 = load i64, i64* %RBP.i287
  %5987 = sub i64 %5986, 28
  %5988 = load i64, i64* %PC.i285
  %5989 = add i64 %5988, 3
  store i64 %5989, i64* %PC.i285
  %5990 = trunc i64 %5985 to i32
  %5991 = inttoptr i64 %5987 to i32*
  %5992 = load i32, i32* %5991
  %5993 = add i32 %5992, %5990
  %5994 = zext i32 %5993 to i64
  store i64 %5994, i64* %RAX.i286, align 8
  %5995 = icmp ult i32 %5993, %5990
  %5996 = icmp ult i32 %5993, %5992
  %5997 = or i1 %5995, %5996
  %5998 = zext i1 %5997 to i8
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5998, i8* %5999, align 1
  %6000 = and i32 %5993, 255
  %6001 = call i32 @llvm.ctpop.i32(i32 %6000)
  %6002 = trunc i32 %6001 to i8
  %6003 = and i8 %6002, 1
  %6004 = xor i8 %6003, 1
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6004, i8* %6005, align 1
  %6006 = xor i32 %5992, %5990
  %6007 = xor i32 %6006, %5993
  %6008 = lshr i32 %6007, 4
  %6009 = trunc i32 %6008 to i8
  %6010 = and i8 %6009, 1
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6010, i8* %6011, align 1
  %6012 = icmp eq i32 %5993, 0
  %6013 = zext i1 %6012 to i8
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6013, i8* %6014, align 1
  %6015 = lshr i32 %5993, 31
  %6016 = trunc i32 %6015 to i8
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6016, i8* %6017, align 1
  %6018 = lshr i32 %5990, 31
  %6019 = lshr i32 %5992, 31
  %6020 = xor i32 %6015, %6018
  %6021 = xor i32 %6015, %6019
  %6022 = add i32 %6020, %6021
  %6023 = icmp eq i32 %6022, 2
  %6024 = zext i1 %6023 to i8
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6024, i8* %6025, align 1
  store %struct.Memory* %loadMem_477bff, %struct.Memory** %MEMORY
  %loadMem_477c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6027 = getelementptr inbounds %struct.GPR, %struct.GPR* %6026, i32 0, i32 33
  %6028 = getelementptr inbounds %struct.Reg, %struct.Reg* %6027, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %6028 to i64*
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6030 = getelementptr inbounds %struct.GPR, %struct.GPR* %6029, i32 0, i32 1
  %6031 = getelementptr inbounds %struct.Reg, %struct.Reg* %6030, i32 0, i32 0
  %EAX.i283 = bitcast %union.anon* %6031 to i32*
  %6032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6033 = getelementptr inbounds %struct.GPR, %struct.GPR* %6032, i32 0, i32 15
  %6034 = getelementptr inbounds %struct.Reg, %struct.Reg* %6033, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %6034 to i64*
  %6035 = load i64, i64* %RBP.i284
  %6036 = sub i64 %6035, 28
  %6037 = load i32, i32* %EAX.i283
  %6038 = zext i32 %6037 to i64
  %6039 = load i64, i64* %PC.i282
  %6040 = add i64 %6039, 3
  store i64 %6040, i64* %PC.i282
  %6041 = inttoptr i64 %6036 to i32*
  store i32 %6037, i32* %6041
  store %struct.Memory* %loadMem_477c02, %struct.Memory** %MEMORY
  %loadMem_477c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 33
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %6044 to i64*
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6046 = getelementptr inbounds %struct.GPR, %struct.GPR* %6045, i32 0, i32 7
  %6047 = getelementptr inbounds %struct.Reg, %struct.Reg* %6046, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %6047 to i64*
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 15
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %6050 to i64*
  %6051 = load i64, i64* %RBP.i281
  %6052 = sub i64 %6051, 8
  %6053 = load i64, i64* %PC.i279
  %6054 = add i64 %6053, 4
  store i64 %6054, i64* %PC.i279
  %6055 = inttoptr i64 %6052 to i64*
  %6056 = load i64, i64* %6055
  store i64 %6056, i64* %RDX.i280, align 8
  store %struct.Memory* %loadMem_477c05, %struct.Memory** %MEMORY
  %loadMem_477c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6058 = getelementptr inbounds %struct.GPR, %struct.GPR* %6057, i32 0, i32 33
  %6059 = getelementptr inbounds %struct.Reg, %struct.Reg* %6058, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %6059 to i64*
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6061 = getelementptr inbounds %struct.GPR, %struct.GPR* %6060, i32 0, i32 7
  %6062 = getelementptr inbounds %struct.Reg, %struct.Reg* %6061, i32 0, i32 0
  %RDX.i277 = bitcast %union.anon* %6062 to i64*
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6064 = getelementptr inbounds %struct.GPR, %struct.GPR* %6063, i32 0, i32 9
  %6065 = getelementptr inbounds %struct.Reg, %struct.Reg* %6064, i32 0, i32 0
  %RSI.i278 = bitcast %union.anon* %6065 to i64*
  %6066 = load i64, i64* %RDX.i277
  %6067 = add i64 %6066, 1136
  %6068 = load i64, i64* %PC.i276
  %6069 = add i64 %6068, 6
  store i64 %6069, i64* %PC.i276
  %6070 = inttoptr i64 %6067 to i32*
  %6071 = load i32, i32* %6070
  %6072 = zext i32 %6071 to i64
  store i64 %6072, i64* %RSI.i278, align 8
  store %struct.Memory* %loadMem_477c09, %struct.Memory** %MEMORY
  %loadMem_477c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6074 = getelementptr inbounds %struct.GPR, %struct.GPR* %6073, i32 0, i32 33
  %6075 = getelementptr inbounds %struct.Reg, %struct.Reg* %6074, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %6075 to i64*
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6077 = getelementptr inbounds %struct.GPR, %struct.GPR* %6076, i32 0, i32 7
  %6078 = getelementptr inbounds %struct.Reg, %struct.Reg* %6077, i32 0, i32 0
  %RDX.i274 = bitcast %union.anon* %6078 to i64*
  %6079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6080 = getelementptr inbounds %struct.GPR, %struct.GPR* %6079, i32 0, i32 15
  %6081 = getelementptr inbounds %struct.Reg, %struct.Reg* %6080, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %6081 to i64*
  %6082 = load i64, i64* %RBP.i275
  %6083 = sub i64 %6082, 24
  %6084 = load i64, i64* %PC.i273
  %6085 = add i64 %6084, 4
  store i64 %6085, i64* %PC.i273
  %6086 = inttoptr i64 %6083 to i64*
  %6087 = load i64, i64* %6086
  store i64 %6087, i64* %RDX.i274, align 8
  store %struct.Memory* %loadMem_477c0f, %struct.Memory** %MEMORY
  %loadMem1_477c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 33
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %6090 to i64*
  %6091 = load i64, i64* %PC.i272
  %6092 = add i64 %6091, 216813
  %6093 = load i64, i64* %PC.i272
  %6094 = add i64 %6093, 5
  %6095 = load i64, i64* %PC.i272
  %6096 = add i64 %6095, 5
  store i64 %6096, i64* %PC.i272
  %6097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6098 = load i64, i64* %6097, align 8
  %6099 = add i64 %6098, -8
  %6100 = inttoptr i64 %6099 to i64*
  store i64 %6094, i64* %6100
  store i64 %6099, i64* %6097, align 8
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6092, i64* %6101, align 8
  store %struct.Memory* %loadMem1_477c13, %struct.Memory** %MEMORY
  %loadMem2_477c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477c13 = load i64, i64* %3
  %call2_477c13 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477c13, %struct.Memory* %loadMem2_477c13)
  store %struct.Memory* %call2_477c13, %struct.Memory** %MEMORY
  %loadMem_477c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 33
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %6104 to i64*
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6106 = getelementptr inbounds %struct.GPR, %struct.GPR* %6105, i32 0, i32 11
  %6107 = getelementptr inbounds %struct.Reg, %struct.Reg* %6106, i32 0, i32 0
  %RDI.i271 = bitcast %union.anon* %6107 to i64*
  %6108 = load i64, i64* %PC.i270
  %6109 = add i64 %6108, 10
  store i64 %6109, i64* %PC.i270
  store i64 ptrtoint (%G__0x4c2720_type* @G__0x4c2720 to i64), i64* %RDI.i271, align 8
  store %struct.Memory* %loadMem_477c18, %struct.Memory** %MEMORY
  %loadMem_477c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 33
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %6112 to i64*
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6114 = getelementptr inbounds %struct.GPR, %struct.GPR* %6113, i32 0, i32 1
  %6115 = getelementptr inbounds %struct.Reg, %struct.Reg* %6114, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %6115 to i64*
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6117 = getelementptr inbounds %struct.GPR, %struct.GPR* %6116, i32 0, i32 15
  %6118 = getelementptr inbounds %struct.Reg, %struct.Reg* %6117, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %6118 to i64*
  %6119 = load i64, i64* %RAX.i268
  %6120 = load i64, i64* %RBP.i269
  %6121 = sub i64 %6120, 28
  %6122 = load i64, i64* %PC.i267
  %6123 = add i64 %6122, 3
  store i64 %6123, i64* %PC.i267
  %6124 = trunc i64 %6119 to i32
  %6125 = inttoptr i64 %6121 to i32*
  %6126 = load i32, i32* %6125
  %6127 = add i32 %6126, %6124
  %6128 = zext i32 %6127 to i64
  store i64 %6128, i64* %RAX.i268, align 8
  %6129 = icmp ult i32 %6127, %6124
  %6130 = icmp ult i32 %6127, %6126
  %6131 = or i1 %6129, %6130
  %6132 = zext i1 %6131 to i8
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6132, i8* %6133, align 1
  %6134 = and i32 %6127, 255
  %6135 = call i32 @llvm.ctpop.i32(i32 %6134)
  %6136 = trunc i32 %6135 to i8
  %6137 = and i8 %6136, 1
  %6138 = xor i8 %6137, 1
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6138, i8* %6139, align 1
  %6140 = xor i32 %6126, %6124
  %6141 = xor i32 %6140, %6127
  %6142 = lshr i32 %6141, 4
  %6143 = trunc i32 %6142 to i8
  %6144 = and i8 %6143, 1
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6144, i8* %6145, align 1
  %6146 = icmp eq i32 %6127, 0
  %6147 = zext i1 %6146 to i8
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6147, i8* %6148, align 1
  %6149 = lshr i32 %6127, 31
  %6150 = trunc i32 %6149 to i8
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6150, i8* %6151, align 1
  %6152 = lshr i32 %6124, 31
  %6153 = lshr i32 %6126, 31
  %6154 = xor i32 %6149, %6152
  %6155 = xor i32 %6149, %6153
  %6156 = add i32 %6154, %6155
  %6157 = icmp eq i32 %6156, 2
  %6158 = zext i1 %6157 to i8
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6158, i8* %6159, align 1
  store %struct.Memory* %loadMem_477c22, %struct.Memory** %MEMORY
  %loadMem_477c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 33
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %6162 to i64*
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6164 = getelementptr inbounds %struct.GPR, %struct.GPR* %6163, i32 0, i32 1
  %6165 = getelementptr inbounds %struct.Reg, %struct.Reg* %6164, i32 0, i32 0
  %EAX.i265 = bitcast %union.anon* %6165 to i32*
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6167 = getelementptr inbounds %struct.GPR, %struct.GPR* %6166, i32 0, i32 15
  %6168 = getelementptr inbounds %struct.Reg, %struct.Reg* %6167, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %6168 to i64*
  %6169 = load i64, i64* %RBP.i266
  %6170 = sub i64 %6169, 28
  %6171 = load i32, i32* %EAX.i265
  %6172 = zext i32 %6171 to i64
  %6173 = load i64, i64* %PC.i264
  %6174 = add i64 %6173, 3
  store i64 %6174, i64* %PC.i264
  %6175 = inttoptr i64 %6170 to i32*
  store i32 %6171, i32* %6175
  store %struct.Memory* %loadMem_477c25, %struct.Memory** %MEMORY
  %loadMem_477c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 33
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %6178 to i64*
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 7
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %RDX.i262 = bitcast %union.anon* %6181 to i64*
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6183 = getelementptr inbounds %struct.GPR, %struct.GPR* %6182, i32 0, i32 15
  %6184 = getelementptr inbounds %struct.Reg, %struct.Reg* %6183, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %6184 to i64*
  %6185 = load i64, i64* %RBP.i263
  %6186 = sub i64 %6185, 8
  %6187 = load i64, i64* %PC.i261
  %6188 = add i64 %6187, 4
  store i64 %6188, i64* %PC.i261
  %6189 = inttoptr i64 %6186 to i64*
  %6190 = load i64, i64* %6189
  store i64 %6190, i64* %RDX.i262, align 8
  store %struct.Memory* %loadMem_477c28, %struct.Memory** %MEMORY
  %loadMem_477c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 33
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %6193 to i64*
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 7
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %RDX.i259 = bitcast %union.anon* %6196 to i64*
  %6197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6198 = getelementptr inbounds %struct.GPR, %struct.GPR* %6197, i32 0, i32 9
  %6199 = getelementptr inbounds %struct.Reg, %struct.Reg* %6198, i32 0, i32 0
  %RSI.i260 = bitcast %union.anon* %6199 to i64*
  %6200 = load i64, i64* %RDX.i259
  %6201 = add i64 %6200, 1140
  %6202 = load i64, i64* %PC.i258
  %6203 = add i64 %6202, 6
  store i64 %6203, i64* %PC.i258
  %6204 = inttoptr i64 %6201 to i32*
  %6205 = load i32, i32* %6204
  %6206 = zext i32 %6205 to i64
  store i64 %6206, i64* %RSI.i260, align 8
  store %struct.Memory* %loadMem_477c2c, %struct.Memory** %MEMORY
  %loadMem_477c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6208 = getelementptr inbounds %struct.GPR, %struct.GPR* %6207, i32 0, i32 33
  %6209 = getelementptr inbounds %struct.Reg, %struct.Reg* %6208, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %6209 to i64*
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6211 = getelementptr inbounds %struct.GPR, %struct.GPR* %6210, i32 0, i32 7
  %6212 = getelementptr inbounds %struct.Reg, %struct.Reg* %6211, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %6212 to i64*
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6214 = getelementptr inbounds %struct.GPR, %struct.GPR* %6213, i32 0, i32 15
  %6215 = getelementptr inbounds %struct.Reg, %struct.Reg* %6214, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %6215 to i64*
  %6216 = load i64, i64* %RBP.i257
  %6217 = sub i64 %6216, 24
  %6218 = load i64, i64* %PC.i255
  %6219 = add i64 %6218, 4
  store i64 %6219, i64* %PC.i255
  %6220 = inttoptr i64 %6217 to i64*
  %6221 = load i64, i64* %6220
  store i64 %6221, i64* %RDX.i256, align 8
  store %struct.Memory* %loadMem_477c32, %struct.Memory** %MEMORY
  %loadMem1_477c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6223 = getelementptr inbounds %struct.GPR, %struct.GPR* %6222, i32 0, i32 33
  %6224 = getelementptr inbounds %struct.Reg, %struct.Reg* %6223, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %6224 to i64*
  %6225 = load i64, i64* %PC.i254
  %6226 = add i64 %6225, 215658
  %6227 = load i64, i64* %PC.i254
  %6228 = add i64 %6227, 5
  %6229 = load i64, i64* %PC.i254
  %6230 = add i64 %6229, 5
  store i64 %6230, i64* %PC.i254
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6232 = load i64, i64* %6231, align 8
  %6233 = add i64 %6232, -8
  %6234 = inttoptr i64 %6233 to i64*
  store i64 %6228, i64* %6234
  store i64 %6233, i64* %6231, align 8
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6226, i64* %6235, align 8
  store %struct.Memory* %loadMem1_477c36, %struct.Memory** %MEMORY
  %loadMem2_477c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477c36 = load i64, i64* %3
  %call2_477c36 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477c36, %struct.Memory* %loadMem2_477c36)
  store %struct.Memory* %call2_477c36, %struct.Memory** %MEMORY
  %loadMem_477c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6237 = getelementptr inbounds %struct.GPR, %struct.GPR* %6236, i32 0, i32 33
  %6238 = getelementptr inbounds %struct.Reg, %struct.Reg* %6237, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %6238 to i64*
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6240 = getelementptr inbounds %struct.GPR, %struct.GPR* %6239, i32 0, i32 11
  %6241 = getelementptr inbounds %struct.Reg, %struct.Reg* %6240, i32 0, i32 0
  %RDI.i253 = bitcast %union.anon* %6241 to i64*
  %6242 = load i64, i64* %PC.i252
  %6243 = add i64 %6242, 10
  store i64 %6243, i64* %PC.i252
  store i64 ptrtoint (%G__0x4c273d_type* @G__0x4c273d to i64), i64* %RDI.i253, align 8
  store %struct.Memory* %loadMem_477c3b, %struct.Memory** %MEMORY
  %loadMem_477c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6245 = getelementptr inbounds %struct.GPR, %struct.GPR* %6244, i32 0, i32 33
  %6246 = getelementptr inbounds %struct.Reg, %struct.Reg* %6245, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %6246 to i64*
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6248 = getelementptr inbounds %struct.GPR, %struct.GPR* %6247, i32 0, i32 1
  %6249 = getelementptr inbounds %struct.Reg, %struct.Reg* %6248, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %6249 to i64*
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6251 = getelementptr inbounds %struct.GPR, %struct.GPR* %6250, i32 0, i32 15
  %6252 = getelementptr inbounds %struct.Reg, %struct.Reg* %6251, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %6252 to i64*
  %6253 = load i64, i64* %RAX.i250
  %6254 = load i64, i64* %RBP.i251
  %6255 = sub i64 %6254, 28
  %6256 = load i64, i64* %PC.i249
  %6257 = add i64 %6256, 3
  store i64 %6257, i64* %PC.i249
  %6258 = trunc i64 %6253 to i32
  %6259 = inttoptr i64 %6255 to i32*
  %6260 = load i32, i32* %6259
  %6261 = add i32 %6260, %6258
  %6262 = zext i32 %6261 to i64
  store i64 %6262, i64* %RAX.i250, align 8
  %6263 = icmp ult i32 %6261, %6258
  %6264 = icmp ult i32 %6261, %6260
  %6265 = or i1 %6263, %6264
  %6266 = zext i1 %6265 to i8
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6266, i8* %6267, align 1
  %6268 = and i32 %6261, 255
  %6269 = call i32 @llvm.ctpop.i32(i32 %6268)
  %6270 = trunc i32 %6269 to i8
  %6271 = and i8 %6270, 1
  %6272 = xor i8 %6271, 1
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6272, i8* %6273, align 1
  %6274 = xor i32 %6260, %6258
  %6275 = xor i32 %6274, %6261
  %6276 = lshr i32 %6275, 4
  %6277 = trunc i32 %6276 to i8
  %6278 = and i8 %6277, 1
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6278, i8* %6279, align 1
  %6280 = icmp eq i32 %6261, 0
  %6281 = zext i1 %6280 to i8
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6281, i8* %6282, align 1
  %6283 = lshr i32 %6261, 31
  %6284 = trunc i32 %6283 to i8
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6284, i8* %6285, align 1
  %6286 = lshr i32 %6258, 31
  %6287 = lshr i32 %6260, 31
  %6288 = xor i32 %6283, %6286
  %6289 = xor i32 %6283, %6287
  %6290 = add i32 %6288, %6289
  %6291 = icmp eq i32 %6290, 2
  %6292 = zext i1 %6291 to i8
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6292, i8* %6293, align 1
  store %struct.Memory* %loadMem_477c45, %struct.Memory** %MEMORY
  %loadMem_477c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6295 = getelementptr inbounds %struct.GPR, %struct.GPR* %6294, i32 0, i32 33
  %6296 = getelementptr inbounds %struct.Reg, %struct.Reg* %6295, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %6296 to i64*
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6298 = getelementptr inbounds %struct.GPR, %struct.GPR* %6297, i32 0, i32 1
  %6299 = getelementptr inbounds %struct.Reg, %struct.Reg* %6298, i32 0, i32 0
  %EAX.i247 = bitcast %union.anon* %6299 to i32*
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6301 = getelementptr inbounds %struct.GPR, %struct.GPR* %6300, i32 0, i32 15
  %6302 = getelementptr inbounds %struct.Reg, %struct.Reg* %6301, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %6302 to i64*
  %6303 = load i64, i64* %RBP.i248
  %6304 = sub i64 %6303, 28
  %6305 = load i32, i32* %EAX.i247
  %6306 = zext i32 %6305 to i64
  %6307 = load i64, i64* %PC.i246
  %6308 = add i64 %6307, 3
  store i64 %6308, i64* %PC.i246
  %6309 = inttoptr i64 %6304 to i32*
  store i32 %6305, i32* %6309
  store %struct.Memory* %loadMem_477c48, %struct.Memory** %MEMORY
  %loadMem_477c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 33
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %6312 to i64*
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6314 = getelementptr inbounds %struct.GPR, %struct.GPR* %6313, i32 0, i32 7
  %6315 = getelementptr inbounds %struct.Reg, %struct.Reg* %6314, i32 0, i32 0
  %RDX.i244 = bitcast %union.anon* %6315 to i64*
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6317 = getelementptr inbounds %struct.GPR, %struct.GPR* %6316, i32 0, i32 15
  %6318 = getelementptr inbounds %struct.Reg, %struct.Reg* %6317, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %6318 to i64*
  %6319 = load i64, i64* %RBP.i245
  %6320 = sub i64 %6319, 8
  %6321 = load i64, i64* %PC.i243
  %6322 = add i64 %6321, 4
  store i64 %6322, i64* %PC.i243
  %6323 = inttoptr i64 %6320 to i64*
  %6324 = load i64, i64* %6323
  store i64 %6324, i64* %RDX.i244, align 8
  store %struct.Memory* %loadMem_477c4b, %struct.Memory** %MEMORY
  %loadMem_477c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6326 = getelementptr inbounds %struct.GPR, %struct.GPR* %6325, i32 0, i32 33
  %6327 = getelementptr inbounds %struct.Reg, %struct.Reg* %6326, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %6327 to i64*
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 7
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %RDX.i241 = bitcast %union.anon* %6330 to i64*
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6332 = getelementptr inbounds %struct.GPR, %struct.GPR* %6331, i32 0, i32 9
  %6333 = getelementptr inbounds %struct.Reg, %struct.Reg* %6332, i32 0, i32 0
  %RSI.i242 = bitcast %union.anon* %6333 to i64*
  %6334 = load i64, i64* %RDX.i241
  %6335 = add i64 %6334, 1144
  %6336 = load i64, i64* %PC.i240
  %6337 = add i64 %6336, 6
  store i64 %6337, i64* %PC.i240
  %6338 = inttoptr i64 %6335 to i32*
  %6339 = load i32, i32* %6338
  %6340 = zext i32 %6339 to i64
  store i64 %6340, i64* %RSI.i242, align 8
  store %struct.Memory* %loadMem_477c4f, %struct.Memory** %MEMORY
  %loadMem_477c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6342 = getelementptr inbounds %struct.GPR, %struct.GPR* %6341, i32 0, i32 33
  %6343 = getelementptr inbounds %struct.Reg, %struct.Reg* %6342, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %6343 to i64*
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6345 = getelementptr inbounds %struct.GPR, %struct.GPR* %6344, i32 0, i32 7
  %6346 = getelementptr inbounds %struct.Reg, %struct.Reg* %6345, i32 0, i32 0
  %RDX.i238 = bitcast %union.anon* %6346 to i64*
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6348 = getelementptr inbounds %struct.GPR, %struct.GPR* %6347, i32 0, i32 15
  %6349 = getelementptr inbounds %struct.Reg, %struct.Reg* %6348, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %6349 to i64*
  %6350 = load i64, i64* %RBP.i239
  %6351 = sub i64 %6350, 24
  %6352 = load i64, i64* %PC.i237
  %6353 = add i64 %6352, 4
  store i64 %6353, i64* %PC.i237
  %6354 = inttoptr i64 %6351 to i64*
  %6355 = load i64, i64* %6354
  store i64 %6355, i64* %RDX.i238, align 8
  store %struct.Memory* %loadMem_477c55, %struct.Memory** %MEMORY
  %loadMem1_477c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6357 = getelementptr inbounds %struct.GPR, %struct.GPR* %6356, i32 0, i32 33
  %6358 = getelementptr inbounds %struct.Reg, %struct.Reg* %6357, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %6358 to i64*
  %6359 = load i64, i64* %PC.i236
  %6360 = add i64 %6359, 215623
  %6361 = load i64, i64* %PC.i236
  %6362 = add i64 %6361, 5
  %6363 = load i64, i64* %PC.i236
  %6364 = add i64 %6363, 5
  store i64 %6364, i64* %PC.i236
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6366 = load i64, i64* %6365, align 8
  %6367 = add i64 %6366, -8
  %6368 = inttoptr i64 %6367 to i64*
  store i64 %6362, i64* %6368
  store i64 %6367, i64* %6365, align 8
  %6369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6360, i64* %6369, align 8
  store %struct.Memory* %loadMem1_477c59, %struct.Memory** %MEMORY
  %loadMem2_477c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477c59 = load i64, i64* %3
  %call2_477c59 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477c59, %struct.Memory* %loadMem2_477c59)
  store %struct.Memory* %call2_477c59, %struct.Memory** %MEMORY
  %loadMem_477c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6371 = getelementptr inbounds %struct.GPR, %struct.GPR* %6370, i32 0, i32 33
  %6372 = getelementptr inbounds %struct.Reg, %struct.Reg* %6371, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6372 to i64*
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6374 = getelementptr inbounds %struct.GPR, %struct.GPR* %6373, i32 0, i32 11
  %6375 = getelementptr inbounds %struct.Reg, %struct.Reg* %6374, i32 0, i32 0
  %RDI.i235 = bitcast %union.anon* %6375 to i64*
  %6376 = load i64, i64* %PC.i234
  %6377 = add i64 %6376, 10
  store i64 %6377, i64* %PC.i234
  store i64 ptrtoint (%G__0x4c2761_type* @G__0x4c2761 to i64), i64* %RDI.i235, align 8
  store %struct.Memory* %loadMem_477c5e, %struct.Memory** %MEMORY
  %loadMem_477c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6379 = getelementptr inbounds %struct.GPR, %struct.GPR* %6378, i32 0, i32 33
  %6380 = getelementptr inbounds %struct.Reg, %struct.Reg* %6379, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %6380 to i64*
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6382 = getelementptr inbounds %struct.GPR, %struct.GPR* %6381, i32 0, i32 1
  %6383 = getelementptr inbounds %struct.Reg, %struct.Reg* %6382, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %6383 to i64*
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6385 = getelementptr inbounds %struct.GPR, %struct.GPR* %6384, i32 0, i32 15
  %6386 = getelementptr inbounds %struct.Reg, %struct.Reg* %6385, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %6386 to i64*
  %6387 = load i64, i64* %RAX.i232
  %6388 = load i64, i64* %RBP.i233
  %6389 = sub i64 %6388, 28
  %6390 = load i64, i64* %PC.i231
  %6391 = add i64 %6390, 3
  store i64 %6391, i64* %PC.i231
  %6392 = trunc i64 %6387 to i32
  %6393 = inttoptr i64 %6389 to i32*
  %6394 = load i32, i32* %6393
  %6395 = add i32 %6394, %6392
  %6396 = zext i32 %6395 to i64
  store i64 %6396, i64* %RAX.i232, align 8
  %6397 = icmp ult i32 %6395, %6392
  %6398 = icmp ult i32 %6395, %6394
  %6399 = or i1 %6397, %6398
  %6400 = zext i1 %6399 to i8
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6400, i8* %6401, align 1
  %6402 = and i32 %6395, 255
  %6403 = call i32 @llvm.ctpop.i32(i32 %6402)
  %6404 = trunc i32 %6403 to i8
  %6405 = and i8 %6404, 1
  %6406 = xor i8 %6405, 1
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6406, i8* %6407, align 1
  %6408 = xor i32 %6394, %6392
  %6409 = xor i32 %6408, %6395
  %6410 = lshr i32 %6409, 4
  %6411 = trunc i32 %6410 to i8
  %6412 = and i8 %6411, 1
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6412, i8* %6413, align 1
  %6414 = icmp eq i32 %6395, 0
  %6415 = zext i1 %6414 to i8
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6415, i8* %6416, align 1
  %6417 = lshr i32 %6395, 31
  %6418 = trunc i32 %6417 to i8
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6418, i8* %6419, align 1
  %6420 = lshr i32 %6392, 31
  %6421 = lshr i32 %6394, 31
  %6422 = xor i32 %6417, %6420
  %6423 = xor i32 %6417, %6421
  %6424 = add i32 %6422, %6423
  %6425 = icmp eq i32 %6424, 2
  %6426 = zext i1 %6425 to i8
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6426, i8* %6427, align 1
  store %struct.Memory* %loadMem_477c68, %struct.Memory** %MEMORY
  %loadMem_477c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6429 = getelementptr inbounds %struct.GPR, %struct.GPR* %6428, i32 0, i32 33
  %6430 = getelementptr inbounds %struct.Reg, %struct.Reg* %6429, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %6430 to i64*
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6432 = getelementptr inbounds %struct.GPR, %struct.GPR* %6431, i32 0, i32 1
  %6433 = getelementptr inbounds %struct.Reg, %struct.Reg* %6432, i32 0, i32 0
  %EAX.i229 = bitcast %union.anon* %6433 to i32*
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 15
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %6436 to i64*
  %6437 = load i64, i64* %RBP.i230
  %6438 = sub i64 %6437, 28
  %6439 = load i32, i32* %EAX.i229
  %6440 = zext i32 %6439 to i64
  %6441 = load i64, i64* %PC.i228
  %6442 = add i64 %6441, 3
  store i64 %6442, i64* %PC.i228
  %6443 = inttoptr i64 %6438 to i32*
  store i32 %6439, i32* %6443
  store %struct.Memory* %loadMem_477c6b, %struct.Memory** %MEMORY
  %loadMem_477c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6445 = getelementptr inbounds %struct.GPR, %struct.GPR* %6444, i32 0, i32 33
  %6446 = getelementptr inbounds %struct.Reg, %struct.Reg* %6445, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %6446 to i64*
  %6447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6448 = getelementptr inbounds %struct.GPR, %struct.GPR* %6447, i32 0, i32 7
  %6449 = getelementptr inbounds %struct.Reg, %struct.Reg* %6448, i32 0, i32 0
  %RDX.i226 = bitcast %union.anon* %6449 to i64*
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6451 = getelementptr inbounds %struct.GPR, %struct.GPR* %6450, i32 0, i32 15
  %6452 = getelementptr inbounds %struct.Reg, %struct.Reg* %6451, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %6452 to i64*
  %6453 = load i64, i64* %RBP.i227
  %6454 = sub i64 %6453, 8
  %6455 = load i64, i64* %PC.i225
  %6456 = add i64 %6455, 4
  store i64 %6456, i64* %PC.i225
  %6457 = inttoptr i64 %6454 to i64*
  %6458 = load i64, i64* %6457
  store i64 %6458, i64* %RDX.i226, align 8
  store %struct.Memory* %loadMem_477c6e, %struct.Memory** %MEMORY
  %loadMem_477c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6460 = getelementptr inbounds %struct.GPR, %struct.GPR* %6459, i32 0, i32 33
  %6461 = getelementptr inbounds %struct.Reg, %struct.Reg* %6460, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %6461 to i64*
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6463 = getelementptr inbounds %struct.GPR, %struct.GPR* %6462, i32 0, i32 7
  %6464 = getelementptr inbounds %struct.Reg, %struct.Reg* %6463, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %6464 to i64*
  %6465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6466 = getelementptr inbounds %struct.GPR, %struct.GPR* %6465, i32 0, i32 9
  %6467 = getelementptr inbounds %struct.Reg, %struct.Reg* %6466, i32 0, i32 0
  %RSI.i224 = bitcast %union.anon* %6467 to i64*
  %6468 = load i64, i64* %RDX.i223
  %6469 = add i64 %6468, 1148
  %6470 = load i64, i64* %PC.i222
  %6471 = add i64 %6470, 6
  store i64 %6471, i64* %PC.i222
  %6472 = inttoptr i64 %6469 to i32*
  %6473 = load i32, i32* %6472
  %6474 = zext i32 %6473 to i64
  store i64 %6474, i64* %RSI.i224, align 8
  store %struct.Memory* %loadMem_477c72, %struct.Memory** %MEMORY
  %loadMem_477c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6476 = getelementptr inbounds %struct.GPR, %struct.GPR* %6475, i32 0, i32 33
  %6477 = getelementptr inbounds %struct.Reg, %struct.Reg* %6476, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %6477 to i64*
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6479 = getelementptr inbounds %struct.GPR, %struct.GPR* %6478, i32 0, i32 7
  %6480 = getelementptr inbounds %struct.Reg, %struct.Reg* %6479, i32 0, i32 0
  %RDX.i220 = bitcast %union.anon* %6480 to i64*
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6482 = getelementptr inbounds %struct.GPR, %struct.GPR* %6481, i32 0, i32 15
  %6483 = getelementptr inbounds %struct.Reg, %struct.Reg* %6482, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %6483 to i64*
  %6484 = load i64, i64* %RBP.i221
  %6485 = sub i64 %6484, 24
  %6486 = load i64, i64* %PC.i219
  %6487 = add i64 %6486, 4
  store i64 %6487, i64* %PC.i219
  %6488 = inttoptr i64 %6485 to i64*
  %6489 = load i64, i64* %6488
  store i64 %6489, i64* %RDX.i220, align 8
  store %struct.Memory* %loadMem_477c78, %struct.Memory** %MEMORY
  %loadMem1_477c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6491 = getelementptr inbounds %struct.GPR, %struct.GPR* %6490, i32 0, i32 33
  %6492 = getelementptr inbounds %struct.Reg, %struct.Reg* %6491, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %6492 to i64*
  %6493 = load i64, i64* %PC.i218
  %6494 = add i64 %6493, 216708
  %6495 = load i64, i64* %PC.i218
  %6496 = add i64 %6495, 5
  %6497 = load i64, i64* %PC.i218
  %6498 = add i64 %6497, 5
  store i64 %6498, i64* %PC.i218
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6500 = load i64, i64* %6499, align 8
  %6501 = add i64 %6500, -8
  %6502 = inttoptr i64 %6501 to i64*
  store i64 %6496, i64* %6502
  store i64 %6501, i64* %6499, align 8
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6494, i64* %6503, align 8
  store %struct.Memory* %loadMem1_477c7c, %struct.Memory** %MEMORY
  %loadMem2_477c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477c7c = load i64, i64* %3
  %call2_477c7c = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477c7c, %struct.Memory* %loadMem2_477c7c)
  store %struct.Memory* %call2_477c7c, %struct.Memory** %MEMORY
  %loadMem_477c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6505 = getelementptr inbounds %struct.GPR, %struct.GPR* %6504, i32 0, i32 33
  %6506 = getelementptr inbounds %struct.Reg, %struct.Reg* %6505, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %6506 to i64*
  %6507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6508 = getelementptr inbounds %struct.GPR, %struct.GPR* %6507, i32 0, i32 1
  %6509 = getelementptr inbounds %struct.Reg, %struct.Reg* %6508, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %6509 to i64*
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6511 = getelementptr inbounds %struct.GPR, %struct.GPR* %6510, i32 0, i32 15
  %6512 = getelementptr inbounds %struct.Reg, %struct.Reg* %6511, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %6512 to i64*
  %6513 = load i64, i64* %RAX.i216
  %6514 = load i64, i64* %RBP.i217
  %6515 = sub i64 %6514, 28
  %6516 = load i64, i64* %PC.i215
  %6517 = add i64 %6516, 3
  store i64 %6517, i64* %PC.i215
  %6518 = trunc i64 %6513 to i32
  %6519 = inttoptr i64 %6515 to i32*
  %6520 = load i32, i32* %6519
  %6521 = add i32 %6520, %6518
  %6522 = zext i32 %6521 to i64
  store i64 %6522, i64* %RAX.i216, align 8
  %6523 = icmp ult i32 %6521, %6518
  %6524 = icmp ult i32 %6521, %6520
  %6525 = or i1 %6523, %6524
  %6526 = zext i1 %6525 to i8
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6526, i8* %6527, align 1
  %6528 = and i32 %6521, 255
  %6529 = call i32 @llvm.ctpop.i32(i32 %6528)
  %6530 = trunc i32 %6529 to i8
  %6531 = and i8 %6530, 1
  %6532 = xor i8 %6531, 1
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6532, i8* %6533, align 1
  %6534 = xor i32 %6520, %6518
  %6535 = xor i32 %6534, %6521
  %6536 = lshr i32 %6535, 4
  %6537 = trunc i32 %6536 to i8
  %6538 = and i8 %6537, 1
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6538, i8* %6539, align 1
  %6540 = icmp eq i32 %6521, 0
  %6541 = zext i1 %6540 to i8
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6541, i8* %6542, align 1
  %6543 = lshr i32 %6521, 31
  %6544 = trunc i32 %6543 to i8
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6544, i8* %6545, align 1
  %6546 = lshr i32 %6518, 31
  %6547 = lshr i32 %6520, 31
  %6548 = xor i32 %6543, %6546
  %6549 = xor i32 %6543, %6547
  %6550 = add i32 %6548, %6549
  %6551 = icmp eq i32 %6550, 2
  %6552 = zext i1 %6551 to i8
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6552, i8* %6553, align 1
  store %struct.Memory* %loadMem_477c81, %struct.Memory** %MEMORY
  %loadMem_477c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6555 = getelementptr inbounds %struct.GPR, %struct.GPR* %6554, i32 0, i32 33
  %6556 = getelementptr inbounds %struct.Reg, %struct.Reg* %6555, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %6556 to i64*
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6558 = getelementptr inbounds %struct.GPR, %struct.GPR* %6557, i32 0, i32 1
  %6559 = getelementptr inbounds %struct.Reg, %struct.Reg* %6558, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %6559 to i32*
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6561 = getelementptr inbounds %struct.GPR, %struct.GPR* %6560, i32 0, i32 15
  %6562 = getelementptr inbounds %struct.Reg, %struct.Reg* %6561, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %6562 to i64*
  %6563 = load i64, i64* %RBP.i214
  %6564 = sub i64 %6563, 28
  %6565 = load i32, i32* %EAX.i213
  %6566 = zext i32 %6565 to i64
  %6567 = load i64, i64* %PC.i212
  %6568 = add i64 %6567, 3
  store i64 %6568, i64* %PC.i212
  %6569 = inttoptr i64 %6564 to i32*
  store i32 %6565, i32* %6569
  store %struct.Memory* %loadMem_477c84, %struct.Memory** %MEMORY
  %loadMem_477c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6571 = getelementptr inbounds %struct.GPR, %struct.GPR* %6570, i32 0, i32 33
  %6572 = getelementptr inbounds %struct.Reg, %struct.Reg* %6571, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %6572 to i64*
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6574 = getelementptr inbounds %struct.GPR, %struct.GPR* %6573, i32 0, i32 7
  %6575 = getelementptr inbounds %struct.Reg, %struct.Reg* %6574, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %6575 to i64*
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6577 = getelementptr inbounds %struct.GPR, %struct.GPR* %6576, i32 0, i32 15
  %6578 = getelementptr inbounds %struct.Reg, %struct.Reg* %6577, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %6578 to i64*
  %6579 = load i64, i64* %RBP.i211
  %6580 = sub i64 %6579, 8
  %6581 = load i64, i64* %PC.i209
  %6582 = add i64 %6581, 4
  store i64 %6582, i64* %PC.i209
  %6583 = inttoptr i64 %6580 to i64*
  %6584 = load i64, i64* %6583
  store i64 %6584, i64* %RDX.i210, align 8
  store %struct.Memory* %loadMem_477c87, %struct.Memory** %MEMORY
  %loadMem_477c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 33
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %6587 to i64*
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 7
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %6590 to i64*
  %6591 = load i64, i64* %RDX.i208
  %6592 = add i64 %6591, 1148
  %6593 = load i64, i64* %PC.i207
  %6594 = add i64 %6593, 7
  store i64 %6594, i64* %PC.i207
  %6595 = inttoptr i64 %6592 to i32*
  %6596 = load i32, i32* %6595
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6597, align 1
  %6598 = and i32 %6596, 255
  %6599 = call i32 @llvm.ctpop.i32(i32 %6598)
  %6600 = trunc i32 %6599 to i8
  %6601 = and i8 %6600, 1
  %6602 = xor i8 %6601, 1
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6602, i8* %6603, align 1
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6604, align 1
  %6605 = icmp eq i32 %6596, 0
  %6606 = zext i1 %6605 to i8
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6606, i8* %6607, align 1
  %6608 = lshr i32 %6596, 31
  %6609 = trunc i32 %6608 to i8
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6609, i8* %6610, align 1
  %6611 = lshr i32 %6596, 31
  %6612 = xor i32 %6608, %6611
  %6613 = add i32 %6612, %6611
  %6614 = icmp eq i32 %6613, 2
  %6615 = zext i1 %6614 to i8
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6615, i8* %6616, align 1
  store %struct.Memory* %loadMem_477c8b, %struct.Memory** %MEMORY
  %loadMem_477c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6618 = getelementptr inbounds %struct.GPR, %struct.GPR* %6617, i32 0, i32 33
  %6619 = getelementptr inbounds %struct.Reg, %struct.Reg* %6618, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6619 to i64*
  %6620 = load i64, i64* %PC.i206
  %6621 = add i64 %6620, 41
  %6622 = load i64, i64* %PC.i206
  %6623 = add i64 %6622, 6
  %6624 = load i64, i64* %PC.i206
  %6625 = add i64 %6624, 6
  store i64 %6625, i64* %PC.i206
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6627 = load i8, i8* %6626, align 1
  %6628 = icmp eq i8 %6627, 0
  %6629 = zext i1 %6628 to i8
  store i8 %6629, i8* %BRANCH_TAKEN, align 1
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6631 = select i1 %6628, i64 %6621, i64 %6623
  store i64 %6631, i64* %6630, align 8
  store %struct.Memory* %loadMem_477c92, %struct.Memory** %MEMORY
  %loadBr_477c92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477c92 = icmp eq i8 %loadBr_477c92, 1
  br i1 %cmpBr_477c92, label %block_.L_477cbb, label %block_477c98

block_477c98:                                     ; preds = %block_.L_477bd8
  %loadMem_477c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6633 = getelementptr inbounds %struct.GPR, %struct.GPR* %6632, i32 0, i32 33
  %6634 = getelementptr inbounds %struct.Reg, %struct.Reg* %6633, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %6634 to i64*
  %6635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6636 = getelementptr inbounds %struct.GPR, %struct.GPR* %6635, i32 0, i32 11
  %6637 = getelementptr inbounds %struct.Reg, %struct.Reg* %6636, i32 0, i32 0
  %RDI.i205 = bitcast %union.anon* %6637 to i64*
  %6638 = load i64, i64* %PC.i204
  %6639 = add i64 %6638, 10
  store i64 %6639, i64* %PC.i204
  store i64 ptrtoint (%G__0x4c277a_type* @G__0x4c277a to i64), i64* %RDI.i205, align 8
  store %struct.Memory* %loadMem_477c98, %struct.Memory** %MEMORY
  %loadMem_477ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6641 = getelementptr inbounds %struct.GPR, %struct.GPR* %6640, i32 0, i32 33
  %6642 = getelementptr inbounds %struct.Reg, %struct.Reg* %6641, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %6642 to i64*
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6644 = getelementptr inbounds %struct.GPR, %struct.GPR* %6643, i32 0, i32 1
  %6645 = getelementptr inbounds %struct.Reg, %struct.Reg* %6644, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %6645 to i64*
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6647 = getelementptr inbounds %struct.GPR, %struct.GPR* %6646, i32 0, i32 15
  %6648 = getelementptr inbounds %struct.Reg, %struct.Reg* %6647, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %6648 to i64*
  %6649 = load i64, i64* %RBP.i203
  %6650 = sub i64 %6649, 8
  %6651 = load i64, i64* %PC.i201
  %6652 = add i64 %6651, 4
  store i64 %6652, i64* %PC.i201
  %6653 = inttoptr i64 %6650 to i64*
  %6654 = load i64, i64* %6653
  store i64 %6654, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_477ca2, %struct.Memory** %MEMORY
  %loadMem_477ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 33
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %6657 to i64*
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 1
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %6660 to i64*
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 9
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %RSI.i200 = bitcast %union.anon* %6663 to i64*
  %6664 = load i64, i64* %RAX.i199
  %6665 = add i64 %6664, 1152
  %6666 = load i64, i64* %PC.i198
  %6667 = add i64 %6666, 6
  store i64 %6667, i64* %PC.i198
  %6668 = inttoptr i64 %6665 to i32*
  %6669 = load i32, i32* %6668
  %6670 = zext i32 %6669 to i64
  store i64 %6670, i64* %RSI.i200, align 8
  store %struct.Memory* %loadMem_477ca6, %struct.Memory** %MEMORY
  %loadMem_477cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6672 = getelementptr inbounds %struct.GPR, %struct.GPR* %6671, i32 0, i32 33
  %6673 = getelementptr inbounds %struct.Reg, %struct.Reg* %6672, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %6673 to i64*
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6675 = getelementptr inbounds %struct.GPR, %struct.GPR* %6674, i32 0, i32 7
  %6676 = getelementptr inbounds %struct.Reg, %struct.Reg* %6675, i32 0, i32 0
  %RDX.i196 = bitcast %union.anon* %6676 to i64*
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6678 = getelementptr inbounds %struct.GPR, %struct.GPR* %6677, i32 0, i32 15
  %6679 = getelementptr inbounds %struct.Reg, %struct.Reg* %6678, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %6679 to i64*
  %6680 = load i64, i64* %RBP.i197
  %6681 = sub i64 %6680, 24
  %6682 = load i64, i64* %PC.i195
  %6683 = add i64 %6682, 4
  store i64 %6683, i64* %PC.i195
  %6684 = inttoptr i64 %6681 to i64*
  %6685 = load i64, i64* %6684
  store i64 %6685, i64* %RDX.i196, align 8
  store %struct.Memory* %loadMem_477cac, %struct.Memory** %MEMORY
  %loadMem1_477cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6687 = getelementptr inbounds %struct.GPR, %struct.GPR* %6686, i32 0, i32 33
  %6688 = getelementptr inbounds %struct.Reg, %struct.Reg* %6687, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %6688 to i64*
  %6689 = load i64, i64* %PC.i194
  %6690 = add i64 %6689, 216656
  %6691 = load i64, i64* %PC.i194
  %6692 = add i64 %6691, 5
  %6693 = load i64, i64* %PC.i194
  %6694 = add i64 %6693, 5
  store i64 %6694, i64* %PC.i194
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6696 = load i64, i64* %6695, align 8
  %6697 = add i64 %6696, -8
  %6698 = inttoptr i64 %6697 to i64*
  store i64 %6692, i64* %6698
  store i64 %6697, i64* %6695, align 8
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6690, i64* %6699, align 8
  store %struct.Memory* %loadMem1_477cb0, %struct.Memory** %MEMORY
  %loadMem2_477cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477cb0 = load i64, i64* %3
  %call2_477cb0 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477cb0, %struct.Memory* %loadMem2_477cb0)
  store %struct.Memory* %call2_477cb0, %struct.Memory** %MEMORY
  %loadMem_477cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6701 = getelementptr inbounds %struct.GPR, %struct.GPR* %6700, i32 0, i32 33
  %6702 = getelementptr inbounds %struct.Reg, %struct.Reg* %6701, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6702 to i64*
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 1
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %6705 to i64*
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6707 = getelementptr inbounds %struct.GPR, %struct.GPR* %6706, i32 0, i32 15
  %6708 = getelementptr inbounds %struct.Reg, %struct.Reg* %6707, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %6708 to i64*
  %6709 = load i64, i64* %RAX.i192
  %6710 = load i64, i64* %RBP.i193
  %6711 = sub i64 %6710, 28
  %6712 = load i64, i64* %PC.i191
  %6713 = add i64 %6712, 3
  store i64 %6713, i64* %PC.i191
  %6714 = trunc i64 %6709 to i32
  %6715 = inttoptr i64 %6711 to i32*
  %6716 = load i32, i32* %6715
  %6717 = add i32 %6716, %6714
  %6718 = zext i32 %6717 to i64
  store i64 %6718, i64* %RAX.i192, align 8
  %6719 = icmp ult i32 %6717, %6714
  %6720 = icmp ult i32 %6717, %6716
  %6721 = or i1 %6719, %6720
  %6722 = zext i1 %6721 to i8
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6722, i8* %6723, align 1
  %6724 = and i32 %6717, 255
  %6725 = call i32 @llvm.ctpop.i32(i32 %6724)
  %6726 = trunc i32 %6725 to i8
  %6727 = and i8 %6726, 1
  %6728 = xor i8 %6727, 1
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6728, i8* %6729, align 1
  %6730 = xor i32 %6716, %6714
  %6731 = xor i32 %6730, %6717
  %6732 = lshr i32 %6731, 4
  %6733 = trunc i32 %6732 to i8
  %6734 = and i8 %6733, 1
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6734, i8* %6735, align 1
  %6736 = icmp eq i32 %6717, 0
  %6737 = zext i1 %6736 to i8
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6737, i8* %6738, align 1
  %6739 = lshr i32 %6717, 31
  %6740 = trunc i32 %6739 to i8
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6740, i8* %6741, align 1
  %6742 = lshr i32 %6714, 31
  %6743 = lshr i32 %6716, 31
  %6744 = xor i32 %6739, %6742
  %6745 = xor i32 %6739, %6743
  %6746 = add i32 %6744, %6745
  %6747 = icmp eq i32 %6746, 2
  %6748 = zext i1 %6747 to i8
  %6749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6748, i8* %6749, align 1
  store %struct.Memory* %loadMem_477cb5, %struct.Memory** %MEMORY
  %loadMem_477cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6751 = getelementptr inbounds %struct.GPR, %struct.GPR* %6750, i32 0, i32 33
  %6752 = getelementptr inbounds %struct.Reg, %struct.Reg* %6751, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6752 to i64*
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6754 = getelementptr inbounds %struct.GPR, %struct.GPR* %6753, i32 0, i32 1
  %6755 = getelementptr inbounds %struct.Reg, %struct.Reg* %6754, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %6755 to i32*
  %6756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6757 = getelementptr inbounds %struct.GPR, %struct.GPR* %6756, i32 0, i32 15
  %6758 = getelementptr inbounds %struct.Reg, %struct.Reg* %6757, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %6758 to i64*
  %6759 = load i64, i64* %RBP.i190
  %6760 = sub i64 %6759, 28
  %6761 = load i32, i32* %EAX.i189
  %6762 = zext i32 %6761 to i64
  %6763 = load i64, i64* %PC.i188
  %6764 = add i64 %6763, 3
  store i64 %6764, i64* %PC.i188
  %6765 = inttoptr i64 %6760 to i32*
  store i32 %6761, i32* %6765
  store %struct.Memory* %loadMem_477cb8, %struct.Memory** %MEMORY
  br label %block_.L_477cbb

block_.L_477cbb:                                  ; preds = %block_477c98, %block_.L_477bd8
  %loadMem_477cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6767 = getelementptr inbounds %struct.GPR, %struct.GPR* %6766, i32 0, i32 33
  %6768 = getelementptr inbounds %struct.Reg, %struct.Reg* %6767, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6768 to i64*
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6770 = getelementptr inbounds %struct.GPR, %struct.GPR* %6769, i32 0, i32 11
  %6771 = getelementptr inbounds %struct.Reg, %struct.Reg* %6770, i32 0, i32 0
  %RDI.i187 = bitcast %union.anon* %6771 to i64*
  %6772 = load i64, i64* %PC.i186
  %6773 = add i64 %6772, 10
  store i64 %6773, i64* %PC.i186
  store i64 ptrtoint (%G__0x4c279c_type* @G__0x4c279c to i64), i64* %RDI.i187, align 8
  store %struct.Memory* %loadMem_477cbb, %struct.Memory** %MEMORY
  %loadMem_477cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6775 = getelementptr inbounds %struct.GPR, %struct.GPR* %6774, i32 0, i32 33
  %6776 = getelementptr inbounds %struct.Reg, %struct.Reg* %6775, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6776 to i64*
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6778 = getelementptr inbounds %struct.GPR, %struct.GPR* %6777, i32 0, i32 1
  %6779 = getelementptr inbounds %struct.Reg, %struct.Reg* %6778, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %6779 to i64*
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6781 = getelementptr inbounds %struct.GPR, %struct.GPR* %6780, i32 0, i32 15
  %6782 = getelementptr inbounds %struct.Reg, %struct.Reg* %6781, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %6782 to i64*
  %6783 = load i64, i64* %RBP.i185
  %6784 = sub i64 %6783, 8
  %6785 = load i64, i64* %PC.i183
  %6786 = add i64 %6785, 4
  store i64 %6786, i64* %PC.i183
  %6787 = inttoptr i64 %6784 to i64*
  %6788 = load i64, i64* %6787
  store i64 %6788, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_477cc5, %struct.Memory** %MEMORY
  %loadMem_477cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6790 = getelementptr inbounds %struct.GPR, %struct.GPR* %6789, i32 0, i32 33
  %6791 = getelementptr inbounds %struct.Reg, %struct.Reg* %6790, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %6791 to i64*
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6793 = getelementptr inbounds %struct.GPR, %struct.GPR* %6792, i32 0, i32 1
  %6794 = getelementptr inbounds %struct.Reg, %struct.Reg* %6793, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %6794 to i64*
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6796 = getelementptr inbounds %struct.GPR, %struct.GPR* %6795, i32 0, i32 9
  %6797 = getelementptr inbounds %struct.Reg, %struct.Reg* %6796, i32 0, i32 0
  %RSI.i182 = bitcast %union.anon* %6797 to i64*
  %6798 = load i64, i64* %RAX.i181
  %6799 = add i64 %6798, 1156
  %6800 = load i64, i64* %PC.i180
  %6801 = add i64 %6800, 6
  store i64 %6801, i64* %PC.i180
  %6802 = inttoptr i64 %6799 to i32*
  %6803 = load i32, i32* %6802
  %6804 = zext i32 %6803 to i64
  store i64 %6804, i64* %RSI.i182, align 8
  store %struct.Memory* %loadMem_477cc9, %struct.Memory** %MEMORY
  %loadMem_477ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6806 = getelementptr inbounds %struct.GPR, %struct.GPR* %6805, i32 0, i32 33
  %6807 = getelementptr inbounds %struct.Reg, %struct.Reg* %6806, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %6807 to i64*
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 7
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %6810 to i64*
  %6811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6812 = getelementptr inbounds %struct.GPR, %struct.GPR* %6811, i32 0, i32 15
  %6813 = getelementptr inbounds %struct.Reg, %struct.Reg* %6812, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %6813 to i64*
  %6814 = load i64, i64* %RBP.i179
  %6815 = sub i64 %6814, 24
  %6816 = load i64, i64* %PC.i177
  %6817 = add i64 %6816, 4
  store i64 %6817, i64* %PC.i177
  %6818 = inttoptr i64 %6815 to i64*
  %6819 = load i64, i64* %6818
  store i64 %6819, i64* %RDX.i178, align 8
  store %struct.Memory* %loadMem_477ccf, %struct.Memory** %MEMORY
  %loadMem1_477cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 33
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6822 to i64*
  %6823 = load i64, i64* %PC.i176
  %6824 = add i64 %6823, 216621
  %6825 = load i64, i64* %PC.i176
  %6826 = add i64 %6825, 5
  %6827 = load i64, i64* %PC.i176
  %6828 = add i64 %6827, 5
  store i64 %6828, i64* %PC.i176
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6830 = load i64, i64* %6829, align 8
  %6831 = add i64 %6830, -8
  %6832 = inttoptr i64 %6831 to i64*
  store i64 %6826, i64* %6832
  store i64 %6831, i64* %6829, align 8
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6824, i64* %6833, align 8
  store %struct.Memory* %loadMem1_477cd3, %struct.Memory** %MEMORY
  %loadMem2_477cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477cd3 = load i64, i64* %3
  %call2_477cd3 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477cd3, %struct.Memory* %loadMem2_477cd3)
  store %struct.Memory* %call2_477cd3, %struct.Memory** %MEMORY
  %loadMem_477cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6835 = getelementptr inbounds %struct.GPR, %struct.GPR* %6834, i32 0, i32 33
  %6836 = getelementptr inbounds %struct.Reg, %struct.Reg* %6835, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6836 to i64*
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6838 = getelementptr inbounds %struct.GPR, %struct.GPR* %6837, i32 0, i32 11
  %6839 = getelementptr inbounds %struct.Reg, %struct.Reg* %6838, i32 0, i32 0
  %RDI.i175 = bitcast %union.anon* %6839 to i64*
  %6840 = load i64, i64* %PC.i174
  %6841 = add i64 %6840, 10
  store i64 %6841, i64* %PC.i174
  store i64 ptrtoint (%G__0x4c27bb_type* @G__0x4c27bb to i64), i64* %RDI.i175, align 8
  store %struct.Memory* %loadMem_477cd8, %struct.Memory** %MEMORY
  %loadMem_477ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6843 = getelementptr inbounds %struct.GPR, %struct.GPR* %6842, i32 0, i32 33
  %6844 = getelementptr inbounds %struct.Reg, %struct.Reg* %6843, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6844 to i64*
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6846 = getelementptr inbounds %struct.GPR, %struct.GPR* %6845, i32 0, i32 1
  %6847 = getelementptr inbounds %struct.Reg, %struct.Reg* %6846, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %6847 to i64*
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6849 = getelementptr inbounds %struct.GPR, %struct.GPR* %6848, i32 0, i32 15
  %6850 = getelementptr inbounds %struct.Reg, %struct.Reg* %6849, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %6850 to i64*
  %6851 = load i64, i64* %RAX.i172
  %6852 = load i64, i64* %RBP.i173
  %6853 = sub i64 %6852, 28
  %6854 = load i64, i64* %PC.i171
  %6855 = add i64 %6854, 3
  store i64 %6855, i64* %PC.i171
  %6856 = trunc i64 %6851 to i32
  %6857 = inttoptr i64 %6853 to i32*
  %6858 = load i32, i32* %6857
  %6859 = add i32 %6858, %6856
  %6860 = zext i32 %6859 to i64
  store i64 %6860, i64* %RAX.i172, align 8
  %6861 = icmp ult i32 %6859, %6856
  %6862 = icmp ult i32 %6859, %6858
  %6863 = or i1 %6861, %6862
  %6864 = zext i1 %6863 to i8
  %6865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6864, i8* %6865, align 1
  %6866 = and i32 %6859, 255
  %6867 = call i32 @llvm.ctpop.i32(i32 %6866)
  %6868 = trunc i32 %6867 to i8
  %6869 = and i8 %6868, 1
  %6870 = xor i8 %6869, 1
  %6871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6870, i8* %6871, align 1
  %6872 = xor i32 %6858, %6856
  %6873 = xor i32 %6872, %6859
  %6874 = lshr i32 %6873, 4
  %6875 = trunc i32 %6874 to i8
  %6876 = and i8 %6875, 1
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6876, i8* %6877, align 1
  %6878 = icmp eq i32 %6859, 0
  %6879 = zext i1 %6878 to i8
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6879, i8* %6880, align 1
  %6881 = lshr i32 %6859, 31
  %6882 = trunc i32 %6881 to i8
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6882, i8* %6883, align 1
  %6884 = lshr i32 %6856, 31
  %6885 = lshr i32 %6858, 31
  %6886 = xor i32 %6881, %6884
  %6887 = xor i32 %6881, %6885
  %6888 = add i32 %6886, %6887
  %6889 = icmp eq i32 %6888, 2
  %6890 = zext i1 %6889 to i8
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6890, i8* %6891, align 1
  store %struct.Memory* %loadMem_477ce2, %struct.Memory** %MEMORY
  %loadMem_477ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6893 = getelementptr inbounds %struct.GPR, %struct.GPR* %6892, i32 0, i32 33
  %6894 = getelementptr inbounds %struct.Reg, %struct.Reg* %6893, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6894 to i64*
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6896 = getelementptr inbounds %struct.GPR, %struct.GPR* %6895, i32 0, i32 1
  %6897 = getelementptr inbounds %struct.Reg, %struct.Reg* %6896, i32 0, i32 0
  %EAX.i169 = bitcast %union.anon* %6897 to i32*
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6899 = getelementptr inbounds %struct.GPR, %struct.GPR* %6898, i32 0, i32 15
  %6900 = getelementptr inbounds %struct.Reg, %struct.Reg* %6899, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %6900 to i64*
  %6901 = load i64, i64* %RBP.i170
  %6902 = sub i64 %6901, 28
  %6903 = load i32, i32* %EAX.i169
  %6904 = zext i32 %6903 to i64
  %6905 = load i64, i64* %PC.i168
  %6906 = add i64 %6905, 3
  store i64 %6906, i64* %PC.i168
  %6907 = inttoptr i64 %6902 to i32*
  store i32 %6903, i32* %6907
  store %struct.Memory* %loadMem_477ce5, %struct.Memory** %MEMORY
  %loadMem_477ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6909 = getelementptr inbounds %struct.GPR, %struct.GPR* %6908, i32 0, i32 33
  %6910 = getelementptr inbounds %struct.Reg, %struct.Reg* %6909, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6910 to i64*
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6912 = getelementptr inbounds %struct.GPR, %struct.GPR* %6911, i32 0, i32 7
  %6913 = getelementptr inbounds %struct.Reg, %struct.Reg* %6912, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %6913 to i64*
  %6914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6915 = getelementptr inbounds %struct.GPR, %struct.GPR* %6914, i32 0, i32 15
  %6916 = getelementptr inbounds %struct.Reg, %struct.Reg* %6915, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %6916 to i64*
  %6917 = load i64, i64* %RBP.i167
  %6918 = sub i64 %6917, 8
  %6919 = load i64, i64* %PC.i165
  %6920 = add i64 %6919, 4
  store i64 %6920, i64* %PC.i165
  %6921 = inttoptr i64 %6918 to i64*
  %6922 = load i64, i64* %6921
  store i64 %6922, i64* %RDX.i166, align 8
  store %struct.Memory* %loadMem_477ce8, %struct.Memory** %MEMORY
  %loadMem_477cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6924 = getelementptr inbounds %struct.GPR, %struct.GPR* %6923, i32 0, i32 33
  %6925 = getelementptr inbounds %struct.Reg, %struct.Reg* %6924, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6925 to i64*
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6927 = getelementptr inbounds %struct.GPR, %struct.GPR* %6926, i32 0, i32 7
  %6928 = getelementptr inbounds %struct.Reg, %struct.Reg* %6927, i32 0, i32 0
  %RDX.i163 = bitcast %union.anon* %6928 to i64*
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6930 = getelementptr inbounds %struct.GPR, %struct.GPR* %6929, i32 0, i32 9
  %6931 = getelementptr inbounds %struct.Reg, %struct.Reg* %6930, i32 0, i32 0
  %RSI.i164 = bitcast %union.anon* %6931 to i64*
  %6932 = load i64, i64* %RDX.i163
  %6933 = add i64 %6932, 1160
  %6934 = load i64, i64* %PC.i162
  %6935 = add i64 %6934, 6
  store i64 %6935, i64* %PC.i162
  %6936 = inttoptr i64 %6933 to i32*
  %6937 = load i32, i32* %6936
  %6938 = zext i32 %6937 to i64
  store i64 %6938, i64* %RSI.i164, align 8
  store %struct.Memory* %loadMem_477cec, %struct.Memory** %MEMORY
  %loadMem_477cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6940 = getelementptr inbounds %struct.GPR, %struct.GPR* %6939, i32 0, i32 33
  %6941 = getelementptr inbounds %struct.Reg, %struct.Reg* %6940, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %6941 to i64*
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6943 = getelementptr inbounds %struct.GPR, %struct.GPR* %6942, i32 0, i32 7
  %6944 = getelementptr inbounds %struct.Reg, %struct.Reg* %6943, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %6944 to i64*
  %6945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6946 = getelementptr inbounds %struct.GPR, %struct.GPR* %6945, i32 0, i32 15
  %6947 = getelementptr inbounds %struct.Reg, %struct.Reg* %6946, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %6947 to i64*
  %6948 = load i64, i64* %RBP.i161
  %6949 = sub i64 %6948, 24
  %6950 = load i64, i64* %PC.i159
  %6951 = add i64 %6950, 4
  store i64 %6951, i64* %PC.i159
  %6952 = inttoptr i64 %6949 to i64*
  %6953 = load i64, i64* %6952
  store i64 %6953, i64* %RDX.i160, align 8
  store %struct.Memory* %loadMem_477cf2, %struct.Memory** %MEMORY
  %loadMem1_477cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6955 = getelementptr inbounds %struct.GPR, %struct.GPR* %6954, i32 0, i32 33
  %6956 = getelementptr inbounds %struct.Reg, %struct.Reg* %6955, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6956 to i64*
  %6957 = load i64, i64* %PC.i158
  %6958 = add i64 %6957, 216586
  %6959 = load i64, i64* %PC.i158
  %6960 = add i64 %6959, 5
  %6961 = load i64, i64* %PC.i158
  %6962 = add i64 %6961, 5
  store i64 %6962, i64* %PC.i158
  %6963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6964 = load i64, i64* %6963, align 8
  %6965 = add i64 %6964, -8
  %6966 = inttoptr i64 %6965 to i64*
  store i64 %6960, i64* %6966
  store i64 %6965, i64* %6963, align 8
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6958, i64* %6967, align 8
  store %struct.Memory* %loadMem1_477cf6, %struct.Memory** %MEMORY
  %loadMem2_477cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477cf6 = load i64, i64* %3
  %call2_477cf6 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477cf6, %struct.Memory* %loadMem2_477cf6)
  store %struct.Memory* %call2_477cf6, %struct.Memory** %MEMORY
  %loadMem_477cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6969 = getelementptr inbounds %struct.GPR, %struct.GPR* %6968, i32 0, i32 33
  %6970 = getelementptr inbounds %struct.Reg, %struct.Reg* %6969, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6970 to i64*
  %6971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6972 = getelementptr inbounds %struct.GPR, %struct.GPR* %6971, i32 0, i32 1
  %6973 = getelementptr inbounds %struct.Reg, %struct.Reg* %6972, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %6973 to i64*
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6975 = getelementptr inbounds %struct.GPR, %struct.GPR* %6974, i32 0, i32 15
  %6976 = getelementptr inbounds %struct.Reg, %struct.Reg* %6975, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %6976 to i64*
  %6977 = load i64, i64* %RAX.i156
  %6978 = load i64, i64* %RBP.i157
  %6979 = sub i64 %6978, 28
  %6980 = load i64, i64* %PC.i155
  %6981 = add i64 %6980, 3
  store i64 %6981, i64* %PC.i155
  %6982 = trunc i64 %6977 to i32
  %6983 = inttoptr i64 %6979 to i32*
  %6984 = load i32, i32* %6983
  %6985 = add i32 %6984, %6982
  %6986 = zext i32 %6985 to i64
  store i64 %6986, i64* %RAX.i156, align 8
  %6987 = icmp ult i32 %6985, %6982
  %6988 = icmp ult i32 %6985, %6984
  %6989 = or i1 %6987, %6988
  %6990 = zext i1 %6989 to i8
  %6991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6990, i8* %6991, align 1
  %6992 = and i32 %6985, 255
  %6993 = call i32 @llvm.ctpop.i32(i32 %6992)
  %6994 = trunc i32 %6993 to i8
  %6995 = and i8 %6994, 1
  %6996 = xor i8 %6995, 1
  %6997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6996, i8* %6997, align 1
  %6998 = xor i32 %6984, %6982
  %6999 = xor i32 %6998, %6985
  %7000 = lshr i32 %6999, 4
  %7001 = trunc i32 %7000 to i8
  %7002 = and i8 %7001, 1
  %7003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7002, i8* %7003, align 1
  %7004 = icmp eq i32 %6985, 0
  %7005 = zext i1 %7004 to i8
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7005, i8* %7006, align 1
  %7007 = lshr i32 %6985, 31
  %7008 = trunc i32 %7007 to i8
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7008, i8* %7009, align 1
  %7010 = lshr i32 %6982, 31
  %7011 = lshr i32 %6984, 31
  %7012 = xor i32 %7007, %7010
  %7013 = xor i32 %7007, %7011
  %7014 = add i32 %7012, %7013
  %7015 = icmp eq i32 %7014, 2
  %7016 = zext i1 %7015 to i8
  %7017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7016, i8* %7017, align 1
  store %struct.Memory* %loadMem_477cfb, %struct.Memory** %MEMORY
  %loadMem_477cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7019 = getelementptr inbounds %struct.GPR, %struct.GPR* %7018, i32 0, i32 33
  %7020 = getelementptr inbounds %struct.Reg, %struct.Reg* %7019, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %7020 to i64*
  %7021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7022 = getelementptr inbounds %struct.GPR, %struct.GPR* %7021, i32 0, i32 1
  %7023 = getelementptr inbounds %struct.Reg, %struct.Reg* %7022, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %7023 to i32*
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7025 = getelementptr inbounds %struct.GPR, %struct.GPR* %7024, i32 0, i32 15
  %7026 = getelementptr inbounds %struct.Reg, %struct.Reg* %7025, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %7026 to i64*
  %7027 = load i64, i64* %RBP.i154
  %7028 = sub i64 %7027, 28
  %7029 = load i32, i32* %EAX.i153
  %7030 = zext i32 %7029 to i64
  %7031 = load i64, i64* %PC.i152
  %7032 = add i64 %7031, 3
  store i64 %7032, i64* %PC.i152
  %7033 = inttoptr i64 %7028 to i32*
  store i32 %7029, i32* %7033
  store %struct.Memory* %loadMem_477cfe, %struct.Memory** %MEMORY
  %loadMem_477d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7035 = getelementptr inbounds %struct.GPR, %struct.GPR* %7034, i32 0, i32 33
  %7036 = getelementptr inbounds %struct.Reg, %struct.Reg* %7035, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %7036 to i64*
  %7037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7038 = getelementptr inbounds %struct.GPR, %struct.GPR* %7037, i32 0, i32 7
  %7039 = getelementptr inbounds %struct.Reg, %struct.Reg* %7038, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %7039 to i64*
  %7040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7041 = getelementptr inbounds %struct.GPR, %struct.GPR* %7040, i32 0, i32 15
  %7042 = getelementptr inbounds %struct.Reg, %struct.Reg* %7041, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %7042 to i64*
  %7043 = load i64, i64* %RBP.i151
  %7044 = sub i64 %7043, 8
  %7045 = load i64, i64* %PC.i149
  %7046 = add i64 %7045, 4
  store i64 %7046, i64* %PC.i149
  %7047 = inttoptr i64 %7044 to i64*
  %7048 = load i64, i64* %7047
  store i64 %7048, i64* %RDX.i150, align 8
  store %struct.Memory* %loadMem_477d01, %struct.Memory** %MEMORY
  %loadMem_477d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7050 = getelementptr inbounds %struct.GPR, %struct.GPR* %7049, i32 0, i32 33
  %7051 = getelementptr inbounds %struct.Reg, %struct.Reg* %7050, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %7051 to i64*
  %7052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7053 = getelementptr inbounds %struct.GPR, %struct.GPR* %7052, i32 0, i32 7
  %7054 = getelementptr inbounds %struct.Reg, %struct.Reg* %7053, i32 0, i32 0
  %RDX.i148 = bitcast %union.anon* %7054 to i64*
  %7055 = load i64, i64* %RDX.i148
  %7056 = add i64 %7055, 1160
  %7057 = load i64, i64* %PC.i147
  %7058 = add i64 %7057, 7
  store i64 %7058, i64* %PC.i147
  %7059 = inttoptr i64 %7056 to i32*
  %7060 = load i32, i32* %7059
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7061, align 1
  %7062 = and i32 %7060, 255
  %7063 = call i32 @llvm.ctpop.i32(i32 %7062)
  %7064 = trunc i32 %7063 to i8
  %7065 = and i8 %7064, 1
  %7066 = xor i8 %7065, 1
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7066, i8* %7067, align 1
  %7068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7068, align 1
  %7069 = icmp eq i32 %7060, 0
  %7070 = zext i1 %7069 to i8
  %7071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7070, i8* %7071, align 1
  %7072 = lshr i32 %7060, 31
  %7073 = trunc i32 %7072 to i8
  %7074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7073, i8* %7074, align 1
  %7075 = lshr i32 %7060, 31
  %7076 = xor i32 %7072, %7075
  %7077 = add i32 %7076, %7075
  %7078 = icmp eq i32 %7077, 2
  %7079 = zext i1 %7078 to i8
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7079, i8* %7080, align 1
  store %struct.Memory* %loadMem_477d05, %struct.Memory** %MEMORY
  %loadMem_477d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7082 = getelementptr inbounds %struct.GPR, %struct.GPR* %7081, i32 0, i32 33
  %7083 = getelementptr inbounds %struct.Reg, %struct.Reg* %7082, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %7083 to i64*
  %7084 = load i64, i64* %PC.i146
  %7085 = add i64 %7084, 146
  %7086 = load i64, i64* %PC.i146
  %7087 = add i64 %7086, 6
  %7088 = load i64, i64* %PC.i146
  %7089 = add i64 %7088, 6
  store i64 %7089, i64* %PC.i146
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7091 = load i8, i8* %7090, align 1
  store i8 %7091, i8* %BRANCH_TAKEN, align 1
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7093 = icmp ne i8 %7091, 0
  %7094 = select i1 %7093, i64 %7085, i64 %7087
  store i64 %7094, i64* %7092, align 8
  store %struct.Memory* %loadMem_477d0c, %struct.Memory** %MEMORY
  %loadBr_477d0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477d0c = icmp eq i8 %loadBr_477d0c, 1
  br i1 %cmpBr_477d0c, label %block_.L_477d9e, label %block_477d12

block_477d12:                                     ; preds = %block_.L_477cbb
  %loadMem_477d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7096 = getelementptr inbounds %struct.GPR, %struct.GPR* %7095, i32 0, i32 33
  %7097 = getelementptr inbounds %struct.Reg, %struct.Reg* %7096, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %7097 to i64*
  %7098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7099 = getelementptr inbounds %struct.GPR, %struct.GPR* %7098, i32 0, i32 11
  %7100 = getelementptr inbounds %struct.Reg, %struct.Reg* %7099, i32 0, i32 0
  %RDI.i145 = bitcast %union.anon* %7100 to i64*
  %7101 = load i64, i64* %PC.i144
  %7102 = add i64 %7101, 10
  store i64 %7102, i64* %PC.i144
  store i64 ptrtoint (%G__0x4c27d4_type* @G__0x4c27d4 to i64), i64* %RDI.i145, align 8
  store %struct.Memory* %loadMem_477d12, %struct.Memory** %MEMORY
  %loadMem_477d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7104 = getelementptr inbounds %struct.GPR, %struct.GPR* %7103, i32 0, i32 33
  %7105 = getelementptr inbounds %struct.Reg, %struct.Reg* %7104, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %7105 to i64*
  %7106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7107 = getelementptr inbounds %struct.GPR, %struct.GPR* %7106, i32 0, i32 1
  %7108 = getelementptr inbounds %struct.Reg, %struct.Reg* %7107, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %7108 to i64*
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7110 = getelementptr inbounds %struct.GPR, %struct.GPR* %7109, i32 0, i32 15
  %7111 = getelementptr inbounds %struct.Reg, %struct.Reg* %7110, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %7111 to i64*
  %7112 = load i64, i64* %RBP.i143
  %7113 = sub i64 %7112, 8
  %7114 = load i64, i64* %PC.i141
  %7115 = add i64 %7114, 4
  store i64 %7115, i64* %PC.i141
  %7116 = inttoptr i64 %7113 to i64*
  %7117 = load i64, i64* %7116
  store i64 %7117, i64* %RAX.i142, align 8
  store %struct.Memory* %loadMem_477d1c, %struct.Memory** %MEMORY
  %loadMem_477d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7119 = getelementptr inbounds %struct.GPR, %struct.GPR* %7118, i32 0, i32 33
  %7120 = getelementptr inbounds %struct.Reg, %struct.Reg* %7119, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %7120 to i64*
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7122 = getelementptr inbounds %struct.GPR, %struct.GPR* %7121, i32 0, i32 1
  %7123 = getelementptr inbounds %struct.Reg, %struct.Reg* %7122, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %7123 to i64*
  %7124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7125 = getelementptr inbounds %struct.GPR, %struct.GPR* %7124, i32 0, i32 9
  %7126 = getelementptr inbounds %struct.Reg, %struct.Reg* %7125, i32 0, i32 0
  %RSI.i140 = bitcast %union.anon* %7126 to i64*
  %7127 = load i64, i64* %RAX.i139
  %7128 = add i64 %7127, 1164
  %7129 = load i64, i64* %PC.i138
  %7130 = add i64 %7129, 6
  store i64 %7130, i64* %PC.i138
  %7131 = inttoptr i64 %7128 to i32*
  %7132 = load i32, i32* %7131
  %7133 = zext i32 %7132 to i64
  store i64 %7133, i64* %RSI.i140, align 8
  store %struct.Memory* %loadMem_477d20, %struct.Memory** %MEMORY
  %loadMem_477d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7135 = getelementptr inbounds %struct.GPR, %struct.GPR* %7134, i32 0, i32 33
  %7136 = getelementptr inbounds %struct.Reg, %struct.Reg* %7135, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %7136 to i64*
  %7137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7138 = getelementptr inbounds %struct.GPR, %struct.GPR* %7137, i32 0, i32 7
  %7139 = getelementptr inbounds %struct.Reg, %struct.Reg* %7138, i32 0, i32 0
  %RDX.i136 = bitcast %union.anon* %7139 to i64*
  %7140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7141 = getelementptr inbounds %struct.GPR, %struct.GPR* %7140, i32 0, i32 15
  %7142 = getelementptr inbounds %struct.Reg, %struct.Reg* %7141, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %7142 to i64*
  %7143 = load i64, i64* %RBP.i137
  %7144 = sub i64 %7143, 24
  %7145 = load i64, i64* %PC.i135
  %7146 = add i64 %7145, 4
  store i64 %7146, i64* %PC.i135
  %7147 = inttoptr i64 %7144 to i64*
  %7148 = load i64, i64* %7147
  store i64 %7148, i64* %RDX.i136, align 8
  store %struct.Memory* %loadMem_477d26, %struct.Memory** %MEMORY
  %loadMem1_477d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7150 = getelementptr inbounds %struct.GPR, %struct.GPR* %7149, i32 0, i32 33
  %7151 = getelementptr inbounds %struct.Reg, %struct.Reg* %7150, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %7151 to i64*
  %7152 = load i64, i64* %PC.i134
  %7153 = add i64 %7152, 215414
  %7154 = load i64, i64* %PC.i134
  %7155 = add i64 %7154, 5
  %7156 = load i64, i64* %PC.i134
  %7157 = add i64 %7156, 5
  store i64 %7157, i64* %PC.i134
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7159 = load i64, i64* %7158, align 8
  %7160 = add i64 %7159, -8
  %7161 = inttoptr i64 %7160 to i64*
  store i64 %7155, i64* %7161
  store i64 %7160, i64* %7158, align 8
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7153, i64* %7162, align 8
  store %struct.Memory* %loadMem1_477d2a, %struct.Memory** %MEMORY
  %loadMem2_477d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477d2a = load i64, i64* %3
  %call2_477d2a = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477d2a, %struct.Memory* %loadMem2_477d2a)
  store %struct.Memory* %call2_477d2a, %struct.Memory** %MEMORY
  %loadMem_477d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7164 = getelementptr inbounds %struct.GPR, %struct.GPR* %7163, i32 0, i32 33
  %7165 = getelementptr inbounds %struct.Reg, %struct.Reg* %7164, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %7165 to i64*
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7167 = getelementptr inbounds %struct.GPR, %struct.GPR* %7166, i32 0, i32 11
  %7168 = getelementptr inbounds %struct.Reg, %struct.Reg* %7167, i32 0, i32 0
  %RDI.i133 = bitcast %union.anon* %7168 to i64*
  %7169 = load i64, i64* %PC.i132
  %7170 = add i64 %7169, 10
  store i64 %7170, i64* %PC.i132
  store i64 ptrtoint (%G__0x4c27f9_type* @G__0x4c27f9 to i64), i64* %RDI.i133, align 8
  store %struct.Memory* %loadMem_477d2f, %struct.Memory** %MEMORY
  %loadMem_477d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7172 = getelementptr inbounds %struct.GPR, %struct.GPR* %7171, i32 0, i32 33
  %7173 = getelementptr inbounds %struct.Reg, %struct.Reg* %7172, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %7173 to i64*
  %7174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7175 = getelementptr inbounds %struct.GPR, %struct.GPR* %7174, i32 0, i32 1
  %7176 = getelementptr inbounds %struct.Reg, %struct.Reg* %7175, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %7176 to i64*
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7178 = getelementptr inbounds %struct.GPR, %struct.GPR* %7177, i32 0, i32 15
  %7179 = getelementptr inbounds %struct.Reg, %struct.Reg* %7178, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %7179 to i64*
  %7180 = load i64, i64* %RAX.i130
  %7181 = load i64, i64* %RBP.i131
  %7182 = sub i64 %7181, 28
  %7183 = load i64, i64* %PC.i129
  %7184 = add i64 %7183, 3
  store i64 %7184, i64* %PC.i129
  %7185 = trunc i64 %7180 to i32
  %7186 = inttoptr i64 %7182 to i32*
  %7187 = load i32, i32* %7186
  %7188 = add i32 %7187, %7185
  %7189 = zext i32 %7188 to i64
  store i64 %7189, i64* %RAX.i130, align 8
  %7190 = icmp ult i32 %7188, %7185
  %7191 = icmp ult i32 %7188, %7187
  %7192 = or i1 %7190, %7191
  %7193 = zext i1 %7192 to i8
  %7194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7193, i8* %7194, align 1
  %7195 = and i32 %7188, 255
  %7196 = call i32 @llvm.ctpop.i32(i32 %7195)
  %7197 = trunc i32 %7196 to i8
  %7198 = and i8 %7197, 1
  %7199 = xor i8 %7198, 1
  %7200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7199, i8* %7200, align 1
  %7201 = xor i32 %7187, %7185
  %7202 = xor i32 %7201, %7188
  %7203 = lshr i32 %7202, 4
  %7204 = trunc i32 %7203 to i8
  %7205 = and i8 %7204, 1
  %7206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7205, i8* %7206, align 1
  %7207 = icmp eq i32 %7188, 0
  %7208 = zext i1 %7207 to i8
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7208, i8* %7209, align 1
  %7210 = lshr i32 %7188, 31
  %7211 = trunc i32 %7210 to i8
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7211, i8* %7212, align 1
  %7213 = lshr i32 %7185, 31
  %7214 = lshr i32 %7187, 31
  %7215 = xor i32 %7210, %7213
  %7216 = xor i32 %7210, %7214
  %7217 = add i32 %7215, %7216
  %7218 = icmp eq i32 %7217, 2
  %7219 = zext i1 %7218 to i8
  %7220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7219, i8* %7220, align 1
  store %struct.Memory* %loadMem_477d39, %struct.Memory** %MEMORY
  %loadMem_477d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7222 = getelementptr inbounds %struct.GPR, %struct.GPR* %7221, i32 0, i32 33
  %7223 = getelementptr inbounds %struct.Reg, %struct.Reg* %7222, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %7223 to i64*
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7225 = getelementptr inbounds %struct.GPR, %struct.GPR* %7224, i32 0, i32 1
  %7226 = getelementptr inbounds %struct.Reg, %struct.Reg* %7225, i32 0, i32 0
  %EAX.i127 = bitcast %union.anon* %7226 to i32*
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7228 = getelementptr inbounds %struct.GPR, %struct.GPR* %7227, i32 0, i32 15
  %7229 = getelementptr inbounds %struct.Reg, %struct.Reg* %7228, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %7229 to i64*
  %7230 = load i64, i64* %RBP.i128
  %7231 = sub i64 %7230, 28
  %7232 = load i32, i32* %EAX.i127
  %7233 = zext i32 %7232 to i64
  %7234 = load i64, i64* %PC.i126
  %7235 = add i64 %7234, 3
  store i64 %7235, i64* %PC.i126
  %7236 = inttoptr i64 %7231 to i32*
  store i32 %7232, i32* %7236
  store %struct.Memory* %loadMem_477d3c, %struct.Memory** %MEMORY
  %loadMem_477d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7238 = getelementptr inbounds %struct.GPR, %struct.GPR* %7237, i32 0, i32 33
  %7239 = getelementptr inbounds %struct.Reg, %struct.Reg* %7238, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %7239 to i64*
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7241 = getelementptr inbounds %struct.GPR, %struct.GPR* %7240, i32 0, i32 7
  %7242 = getelementptr inbounds %struct.Reg, %struct.Reg* %7241, i32 0, i32 0
  %RDX.i124 = bitcast %union.anon* %7242 to i64*
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7244 = getelementptr inbounds %struct.GPR, %struct.GPR* %7243, i32 0, i32 15
  %7245 = getelementptr inbounds %struct.Reg, %struct.Reg* %7244, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %7245 to i64*
  %7246 = load i64, i64* %RBP.i125
  %7247 = sub i64 %7246, 8
  %7248 = load i64, i64* %PC.i123
  %7249 = add i64 %7248, 4
  store i64 %7249, i64* %PC.i123
  %7250 = inttoptr i64 %7247 to i64*
  %7251 = load i64, i64* %7250
  store i64 %7251, i64* %RDX.i124, align 8
  store %struct.Memory* %loadMem_477d3f, %struct.Memory** %MEMORY
  %loadMem_477d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7253 = getelementptr inbounds %struct.GPR, %struct.GPR* %7252, i32 0, i32 33
  %7254 = getelementptr inbounds %struct.Reg, %struct.Reg* %7253, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %7254 to i64*
  %7255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7256 = getelementptr inbounds %struct.GPR, %struct.GPR* %7255, i32 0, i32 7
  %7257 = getelementptr inbounds %struct.Reg, %struct.Reg* %7256, i32 0, i32 0
  %RDX.i121 = bitcast %union.anon* %7257 to i64*
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7259 = getelementptr inbounds %struct.GPR, %struct.GPR* %7258, i32 0, i32 9
  %7260 = getelementptr inbounds %struct.Reg, %struct.Reg* %7259, i32 0, i32 0
  %RSI.i122 = bitcast %union.anon* %7260 to i64*
  %7261 = load i64, i64* %RDX.i121
  %7262 = add i64 %7261, 1168
  %7263 = load i64, i64* %PC.i120
  %7264 = add i64 %7263, 6
  store i64 %7264, i64* %PC.i120
  %7265 = inttoptr i64 %7262 to i32*
  %7266 = load i32, i32* %7265
  %7267 = zext i32 %7266 to i64
  store i64 %7267, i64* %RSI.i122, align 8
  store %struct.Memory* %loadMem_477d43, %struct.Memory** %MEMORY
  %loadMem_477d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7269 = getelementptr inbounds %struct.GPR, %struct.GPR* %7268, i32 0, i32 33
  %7270 = getelementptr inbounds %struct.Reg, %struct.Reg* %7269, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %7270 to i64*
  %7271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7272 = getelementptr inbounds %struct.GPR, %struct.GPR* %7271, i32 0, i32 7
  %7273 = getelementptr inbounds %struct.Reg, %struct.Reg* %7272, i32 0, i32 0
  %RDX.i118 = bitcast %union.anon* %7273 to i64*
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7275 = getelementptr inbounds %struct.GPR, %struct.GPR* %7274, i32 0, i32 15
  %7276 = getelementptr inbounds %struct.Reg, %struct.Reg* %7275, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %7276 to i64*
  %7277 = load i64, i64* %RBP.i119
  %7278 = sub i64 %7277, 24
  %7279 = load i64, i64* %PC.i117
  %7280 = add i64 %7279, 4
  store i64 %7280, i64* %PC.i117
  %7281 = inttoptr i64 %7278 to i64*
  %7282 = load i64, i64* %7281
  store i64 %7282, i64* %RDX.i118, align 8
  store %struct.Memory* %loadMem_477d49, %struct.Memory** %MEMORY
  %loadMem1_477d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7284 = getelementptr inbounds %struct.GPR, %struct.GPR* %7283, i32 0, i32 33
  %7285 = getelementptr inbounds %struct.Reg, %struct.Reg* %7284, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %7285 to i64*
  %7286 = load i64, i64* %PC.i116
  %7287 = add i64 %7286, 215379
  %7288 = load i64, i64* %PC.i116
  %7289 = add i64 %7288, 5
  %7290 = load i64, i64* %PC.i116
  %7291 = add i64 %7290, 5
  store i64 %7291, i64* %PC.i116
  %7292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7293 = load i64, i64* %7292, align 8
  %7294 = add i64 %7293, -8
  %7295 = inttoptr i64 %7294 to i64*
  store i64 %7289, i64* %7295
  store i64 %7294, i64* %7292, align 8
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7287, i64* %7296, align 8
  store %struct.Memory* %loadMem1_477d4d, %struct.Memory** %MEMORY
  %loadMem2_477d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477d4d = load i64, i64* %3
  %call2_477d4d = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477d4d, %struct.Memory* %loadMem2_477d4d)
  store %struct.Memory* %call2_477d4d, %struct.Memory** %MEMORY
  %loadMem_477d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7298 = getelementptr inbounds %struct.GPR, %struct.GPR* %7297, i32 0, i32 33
  %7299 = getelementptr inbounds %struct.Reg, %struct.Reg* %7298, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %7299 to i64*
  %7300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7301 = getelementptr inbounds %struct.GPR, %struct.GPR* %7300, i32 0, i32 11
  %7302 = getelementptr inbounds %struct.Reg, %struct.Reg* %7301, i32 0, i32 0
  %RDI.i115 = bitcast %union.anon* %7302 to i64*
  %7303 = load i64, i64* %PC.i114
  %7304 = add i64 %7303, 10
  store i64 %7304, i64* %PC.i114
  store i64 ptrtoint (%G__0x4c281f_type* @G__0x4c281f to i64), i64* %RDI.i115, align 8
  store %struct.Memory* %loadMem_477d52, %struct.Memory** %MEMORY
  %loadMem_477d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7306 = getelementptr inbounds %struct.GPR, %struct.GPR* %7305, i32 0, i32 33
  %7307 = getelementptr inbounds %struct.Reg, %struct.Reg* %7306, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %7307 to i64*
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7309 = getelementptr inbounds %struct.GPR, %struct.GPR* %7308, i32 0, i32 1
  %7310 = getelementptr inbounds %struct.Reg, %struct.Reg* %7309, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %7310 to i64*
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7312 = getelementptr inbounds %struct.GPR, %struct.GPR* %7311, i32 0, i32 15
  %7313 = getelementptr inbounds %struct.Reg, %struct.Reg* %7312, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %7313 to i64*
  %7314 = load i64, i64* %RAX.i112
  %7315 = load i64, i64* %RBP.i113
  %7316 = sub i64 %7315, 28
  %7317 = load i64, i64* %PC.i111
  %7318 = add i64 %7317, 3
  store i64 %7318, i64* %PC.i111
  %7319 = trunc i64 %7314 to i32
  %7320 = inttoptr i64 %7316 to i32*
  %7321 = load i32, i32* %7320
  %7322 = add i32 %7321, %7319
  %7323 = zext i32 %7322 to i64
  store i64 %7323, i64* %RAX.i112, align 8
  %7324 = icmp ult i32 %7322, %7319
  %7325 = icmp ult i32 %7322, %7321
  %7326 = or i1 %7324, %7325
  %7327 = zext i1 %7326 to i8
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7327, i8* %7328, align 1
  %7329 = and i32 %7322, 255
  %7330 = call i32 @llvm.ctpop.i32(i32 %7329)
  %7331 = trunc i32 %7330 to i8
  %7332 = and i8 %7331, 1
  %7333 = xor i8 %7332, 1
  %7334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7333, i8* %7334, align 1
  %7335 = xor i32 %7321, %7319
  %7336 = xor i32 %7335, %7322
  %7337 = lshr i32 %7336, 4
  %7338 = trunc i32 %7337 to i8
  %7339 = and i8 %7338, 1
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7339, i8* %7340, align 1
  %7341 = icmp eq i32 %7322, 0
  %7342 = zext i1 %7341 to i8
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7342, i8* %7343, align 1
  %7344 = lshr i32 %7322, 31
  %7345 = trunc i32 %7344 to i8
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7345, i8* %7346, align 1
  %7347 = lshr i32 %7319, 31
  %7348 = lshr i32 %7321, 31
  %7349 = xor i32 %7344, %7347
  %7350 = xor i32 %7344, %7348
  %7351 = add i32 %7349, %7350
  %7352 = icmp eq i32 %7351, 2
  %7353 = zext i1 %7352 to i8
  %7354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7353, i8* %7354, align 1
  store %struct.Memory* %loadMem_477d5c, %struct.Memory** %MEMORY
  %loadMem_477d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7356 = getelementptr inbounds %struct.GPR, %struct.GPR* %7355, i32 0, i32 33
  %7357 = getelementptr inbounds %struct.Reg, %struct.Reg* %7356, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %7357 to i64*
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7359 = getelementptr inbounds %struct.GPR, %struct.GPR* %7358, i32 0, i32 1
  %7360 = getelementptr inbounds %struct.Reg, %struct.Reg* %7359, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %7360 to i32*
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7362 = getelementptr inbounds %struct.GPR, %struct.GPR* %7361, i32 0, i32 15
  %7363 = getelementptr inbounds %struct.Reg, %struct.Reg* %7362, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %7363 to i64*
  %7364 = load i64, i64* %RBP.i110
  %7365 = sub i64 %7364, 28
  %7366 = load i32, i32* %EAX.i109
  %7367 = zext i32 %7366 to i64
  %7368 = load i64, i64* %PC.i108
  %7369 = add i64 %7368, 3
  store i64 %7369, i64* %PC.i108
  %7370 = inttoptr i64 %7365 to i32*
  store i32 %7366, i32* %7370
  store %struct.Memory* %loadMem_477d5f, %struct.Memory** %MEMORY
  %loadMem_477d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7372 = getelementptr inbounds %struct.GPR, %struct.GPR* %7371, i32 0, i32 33
  %7373 = getelementptr inbounds %struct.Reg, %struct.Reg* %7372, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %7373 to i64*
  %7374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7375 = getelementptr inbounds %struct.GPR, %struct.GPR* %7374, i32 0, i32 7
  %7376 = getelementptr inbounds %struct.Reg, %struct.Reg* %7375, i32 0, i32 0
  %RDX.i106 = bitcast %union.anon* %7376 to i64*
  %7377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7378 = getelementptr inbounds %struct.GPR, %struct.GPR* %7377, i32 0, i32 15
  %7379 = getelementptr inbounds %struct.Reg, %struct.Reg* %7378, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %7379 to i64*
  %7380 = load i64, i64* %RBP.i107
  %7381 = sub i64 %7380, 8
  %7382 = load i64, i64* %PC.i105
  %7383 = add i64 %7382, 4
  store i64 %7383, i64* %PC.i105
  %7384 = inttoptr i64 %7381 to i64*
  %7385 = load i64, i64* %7384
  store i64 %7385, i64* %RDX.i106, align 8
  store %struct.Memory* %loadMem_477d62, %struct.Memory** %MEMORY
  %loadMem_477d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7387 = getelementptr inbounds %struct.GPR, %struct.GPR* %7386, i32 0, i32 33
  %7388 = getelementptr inbounds %struct.Reg, %struct.Reg* %7387, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %7388 to i64*
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7390 = getelementptr inbounds %struct.GPR, %struct.GPR* %7389, i32 0, i32 7
  %7391 = getelementptr inbounds %struct.Reg, %struct.Reg* %7390, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %7391 to i64*
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7393 = getelementptr inbounds %struct.GPR, %struct.GPR* %7392, i32 0, i32 9
  %7394 = getelementptr inbounds %struct.Reg, %struct.Reg* %7393, i32 0, i32 0
  %RSI.i104 = bitcast %union.anon* %7394 to i64*
  %7395 = load i64, i64* %RDX.i103
  %7396 = add i64 %7395, 1172
  %7397 = load i64, i64* %PC.i102
  %7398 = add i64 %7397, 6
  store i64 %7398, i64* %PC.i102
  %7399 = inttoptr i64 %7396 to i32*
  %7400 = load i32, i32* %7399
  %7401 = zext i32 %7400 to i64
  store i64 %7401, i64* %RSI.i104, align 8
  store %struct.Memory* %loadMem_477d66, %struct.Memory** %MEMORY
  %loadMem_477d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7403 = getelementptr inbounds %struct.GPR, %struct.GPR* %7402, i32 0, i32 33
  %7404 = getelementptr inbounds %struct.Reg, %struct.Reg* %7403, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %7404 to i64*
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7406 = getelementptr inbounds %struct.GPR, %struct.GPR* %7405, i32 0, i32 7
  %7407 = getelementptr inbounds %struct.Reg, %struct.Reg* %7406, i32 0, i32 0
  %RDX.i100 = bitcast %union.anon* %7407 to i64*
  %7408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7409 = getelementptr inbounds %struct.GPR, %struct.GPR* %7408, i32 0, i32 15
  %7410 = getelementptr inbounds %struct.Reg, %struct.Reg* %7409, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %7410 to i64*
  %7411 = load i64, i64* %RBP.i101
  %7412 = sub i64 %7411, 24
  %7413 = load i64, i64* %PC.i99
  %7414 = add i64 %7413, 4
  store i64 %7414, i64* %PC.i99
  %7415 = inttoptr i64 %7412 to i64*
  %7416 = load i64, i64* %7415
  store i64 %7416, i64* %RDX.i100, align 8
  store %struct.Memory* %loadMem_477d6c, %struct.Memory** %MEMORY
  %loadMem1_477d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7418 = getelementptr inbounds %struct.GPR, %struct.GPR* %7417, i32 0, i32 33
  %7419 = getelementptr inbounds %struct.Reg, %struct.Reg* %7418, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %7419 to i64*
  %7420 = load i64, i64* %PC.i98
  %7421 = add i64 %7420, 215344
  %7422 = load i64, i64* %PC.i98
  %7423 = add i64 %7422, 5
  %7424 = load i64, i64* %PC.i98
  %7425 = add i64 %7424, 5
  store i64 %7425, i64* %PC.i98
  %7426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7427 = load i64, i64* %7426, align 8
  %7428 = add i64 %7427, -8
  %7429 = inttoptr i64 %7428 to i64*
  store i64 %7423, i64* %7429
  store i64 %7428, i64* %7426, align 8
  %7430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7421, i64* %7430, align 8
  store %struct.Memory* %loadMem1_477d70, %struct.Memory** %MEMORY
  %loadMem2_477d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477d70 = load i64, i64* %3
  %call2_477d70 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477d70, %struct.Memory* %loadMem2_477d70)
  store %struct.Memory* %call2_477d70, %struct.Memory** %MEMORY
  %loadMem_477d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7432 = getelementptr inbounds %struct.GPR, %struct.GPR* %7431, i32 0, i32 33
  %7433 = getelementptr inbounds %struct.Reg, %struct.Reg* %7432, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %7433 to i64*
  %7434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7435 = getelementptr inbounds %struct.GPR, %struct.GPR* %7434, i32 0, i32 11
  %7436 = getelementptr inbounds %struct.Reg, %struct.Reg* %7435, i32 0, i32 0
  %RDI.i97 = bitcast %union.anon* %7436 to i64*
  %7437 = load i64, i64* %PC.i96
  %7438 = add i64 %7437, 10
  store i64 %7438, i64* %PC.i96
  store i64 ptrtoint (%G__0x4c2843_type* @G__0x4c2843 to i64), i64* %RDI.i97, align 8
  store %struct.Memory* %loadMem_477d75, %struct.Memory** %MEMORY
  %loadMem_477d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7440 = getelementptr inbounds %struct.GPR, %struct.GPR* %7439, i32 0, i32 33
  %7441 = getelementptr inbounds %struct.Reg, %struct.Reg* %7440, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %7441 to i64*
  %7442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7443 = getelementptr inbounds %struct.GPR, %struct.GPR* %7442, i32 0, i32 1
  %7444 = getelementptr inbounds %struct.Reg, %struct.Reg* %7443, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %7444 to i64*
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7446 = getelementptr inbounds %struct.GPR, %struct.GPR* %7445, i32 0, i32 15
  %7447 = getelementptr inbounds %struct.Reg, %struct.Reg* %7446, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %7447 to i64*
  %7448 = load i64, i64* %RAX.i94
  %7449 = load i64, i64* %RBP.i95
  %7450 = sub i64 %7449, 28
  %7451 = load i64, i64* %PC.i93
  %7452 = add i64 %7451, 3
  store i64 %7452, i64* %PC.i93
  %7453 = trunc i64 %7448 to i32
  %7454 = inttoptr i64 %7450 to i32*
  %7455 = load i32, i32* %7454
  %7456 = add i32 %7455, %7453
  %7457 = zext i32 %7456 to i64
  store i64 %7457, i64* %RAX.i94, align 8
  %7458 = icmp ult i32 %7456, %7453
  %7459 = icmp ult i32 %7456, %7455
  %7460 = or i1 %7458, %7459
  %7461 = zext i1 %7460 to i8
  %7462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7461, i8* %7462, align 1
  %7463 = and i32 %7456, 255
  %7464 = call i32 @llvm.ctpop.i32(i32 %7463)
  %7465 = trunc i32 %7464 to i8
  %7466 = and i8 %7465, 1
  %7467 = xor i8 %7466, 1
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7467, i8* %7468, align 1
  %7469 = xor i32 %7455, %7453
  %7470 = xor i32 %7469, %7456
  %7471 = lshr i32 %7470, 4
  %7472 = trunc i32 %7471 to i8
  %7473 = and i8 %7472, 1
  %7474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7473, i8* %7474, align 1
  %7475 = icmp eq i32 %7456, 0
  %7476 = zext i1 %7475 to i8
  %7477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7476, i8* %7477, align 1
  %7478 = lshr i32 %7456, 31
  %7479 = trunc i32 %7478 to i8
  %7480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7479, i8* %7480, align 1
  %7481 = lshr i32 %7453, 31
  %7482 = lshr i32 %7455, 31
  %7483 = xor i32 %7478, %7481
  %7484 = xor i32 %7478, %7482
  %7485 = add i32 %7483, %7484
  %7486 = icmp eq i32 %7485, 2
  %7487 = zext i1 %7486 to i8
  %7488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7487, i8* %7488, align 1
  store %struct.Memory* %loadMem_477d7f, %struct.Memory** %MEMORY
  %loadMem_477d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7490 = getelementptr inbounds %struct.GPR, %struct.GPR* %7489, i32 0, i32 33
  %7491 = getelementptr inbounds %struct.Reg, %struct.Reg* %7490, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %7491 to i64*
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7493 = getelementptr inbounds %struct.GPR, %struct.GPR* %7492, i32 0, i32 1
  %7494 = getelementptr inbounds %struct.Reg, %struct.Reg* %7493, i32 0, i32 0
  %EAX.i91 = bitcast %union.anon* %7494 to i32*
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7496 = getelementptr inbounds %struct.GPR, %struct.GPR* %7495, i32 0, i32 15
  %7497 = getelementptr inbounds %struct.Reg, %struct.Reg* %7496, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %7497 to i64*
  %7498 = load i64, i64* %RBP.i92
  %7499 = sub i64 %7498, 28
  %7500 = load i32, i32* %EAX.i91
  %7501 = zext i32 %7500 to i64
  %7502 = load i64, i64* %PC.i90
  %7503 = add i64 %7502, 3
  store i64 %7503, i64* %PC.i90
  %7504 = inttoptr i64 %7499 to i32*
  store i32 %7500, i32* %7504
  store %struct.Memory* %loadMem_477d82, %struct.Memory** %MEMORY
  %loadMem_477d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7506 = getelementptr inbounds %struct.GPR, %struct.GPR* %7505, i32 0, i32 33
  %7507 = getelementptr inbounds %struct.Reg, %struct.Reg* %7506, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %7507 to i64*
  %7508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7509 = getelementptr inbounds %struct.GPR, %struct.GPR* %7508, i32 0, i32 7
  %7510 = getelementptr inbounds %struct.Reg, %struct.Reg* %7509, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %7510 to i64*
  %7511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7512 = getelementptr inbounds %struct.GPR, %struct.GPR* %7511, i32 0, i32 15
  %7513 = getelementptr inbounds %struct.Reg, %struct.Reg* %7512, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %7513 to i64*
  %7514 = load i64, i64* %RBP.i89
  %7515 = sub i64 %7514, 8
  %7516 = load i64, i64* %PC.i87
  %7517 = add i64 %7516, 4
  store i64 %7517, i64* %PC.i87
  %7518 = inttoptr i64 %7515 to i64*
  %7519 = load i64, i64* %7518
  store i64 %7519, i64* %RDX.i88, align 8
  store %struct.Memory* %loadMem_477d85, %struct.Memory** %MEMORY
  %loadMem_477d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7521 = getelementptr inbounds %struct.GPR, %struct.GPR* %7520, i32 0, i32 33
  %7522 = getelementptr inbounds %struct.Reg, %struct.Reg* %7521, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7522 to i64*
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7524 = getelementptr inbounds %struct.GPR, %struct.GPR* %7523, i32 0, i32 7
  %7525 = getelementptr inbounds %struct.Reg, %struct.Reg* %7524, i32 0, i32 0
  %RDX.i85 = bitcast %union.anon* %7525 to i64*
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7527 = getelementptr inbounds %struct.GPR, %struct.GPR* %7526, i32 0, i32 9
  %7528 = getelementptr inbounds %struct.Reg, %struct.Reg* %7527, i32 0, i32 0
  %RSI.i86 = bitcast %union.anon* %7528 to i64*
  %7529 = load i64, i64* %RDX.i85
  %7530 = add i64 %7529, 1176
  %7531 = load i64, i64* %PC.i84
  %7532 = add i64 %7531, 6
  store i64 %7532, i64* %PC.i84
  %7533 = inttoptr i64 %7530 to i32*
  %7534 = load i32, i32* %7533
  %7535 = zext i32 %7534 to i64
  store i64 %7535, i64* %RSI.i86, align 8
  store %struct.Memory* %loadMem_477d89, %struct.Memory** %MEMORY
  %loadMem_477d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7537 = getelementptr inbounds %struct.GPR, %struct.GPR* %7536, i32 0, i32 33
  %7538 = getelementptr inbounds %struct.Reg, %struct.Reg* %7537, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %7538 to i64*
  %7539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7540 = getelementptr inbounds %struct.GPR, %struct.GPR* %7539, i32 0, i32 7
  %7541 = getelementptr inbounds %struct.Reg, %struct.Reg* %7540, i32 0, i32 0
  %RDX.i82 = bitcast %union.anon* %7541 to i64*
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7543 = getelementptr inbounds %struct.GPR, %struct.GPR* %7542, i32 0, i32 15
  %7544 = getelementptr inbounds %struct.Reg, %struct.Reg* %7543, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %7544 to i64*
  %7545 = load i64, i64* %RBP.i83
  %7546 = sub i64 %7545, 24
  %7547 = load i64, i64* %PC.i81
  %7548 = add i64 %7547, 4
  store i64 %7548, i64* %PC.i81
  %7549 = inttoptr i64 %7546 to i64*
  %7550 = load i64, i64* %7549
  store i64 %7550, i64* %RDX.i82, align 8
  store %struct.Memory* %loadMem_477d8f, %struct.Memory** %MEMORY
  %loadMem1_477d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7552 = getelementptr inbounds %struct.GPR, %struct.GPR* %7551, i32 0, i32 33
  %7553 = getelementptr inbounds %struct.Reg, %struct.Reg* %7552, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7553 to i64*
  %7554 = load i64, i64* %PC.i80
  %7555 = add i64 %7554, 215309
  %7556 = load i64, i64* %PC.i80
  %7557 = add i64 %7556, 5
  %7558 = load i64, i64* %PC.i80
  %7559 = add i64 %7558, 5
  store i64 %7559, i64* %PC.i80
  %7560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7561 = load i64, i64* %7560, align 8
  %7562 = add i64 %7561, -8
  %7563 = inttoptr i64 %7562 to i64*
  store i64 %7557, i64* %7563
  store i64 %7562, i64* %7560, align 8
  %7564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7555, i64* %7564, align 8
  store %struct.Memory* %loadMem1_477d93, %struct.Memory** %MEMORY
  %loadMem2_477d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477d93 = load i64, i64* %3
  %call2_477d93 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_477d93, %struct.Memory* %loadMem2_477d93)
  store %struct.Memory* %call2_477d93, %struct.Memory** %MEMORY
  %loadMem_477d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7566 = getelementptr inbounds %struct.GPR, %struct.GPR* %7565, i32 0, i32 33
  %7567 = getelementptr inbounds %struct.Reg, %struct.Reg* %7566, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %7567 to i64*
  %7568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7569 = getelementptr inbounds %struct.GPR, %struct.GPR* %7568, i32 0, i32 1
  %7570 = getelementptr inbounds %struct.Reg, %struct.Reg* %7569, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %7570 to i64*
  %7571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7572 = getelementptr inbounds %struct.GPR, %struct.GPR* %7571, i32 0, i32 15
  %7573 = getelementptr inbounds %struct.Reg, %struct.Reg* %7572, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %7573 to i64*
  %7574 = load i64, i64* %RAX.i78
  %7575 = load i64, i64* %RBP.i79
  %7576 = sub i64 %7575, 28
  %7577 = load i64, i64* %PC.i77
  %7578 = add i64 %7577, 3
  store i64 %7578, i64* %PC.i77
  %7579 = trunc i64 %7574 to i32
  %7580 = inttoptr i64 %7576 to i32*
  %7581 = load i32, i32* %7580
  %7582 = add i32 %7581, %7579
  %7583 = zext i32 %7582 to i64
  store i64 %7583, i64* %RAX.i78, align 8
  %7584 = icmp ult i32 %7582, %7579
  %7585 = icmp ult i32 %7582, %7581
  %7586 = or i1 %7584, %7585
  %7587 = zext i1 %7586 to i8
  %7588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7587, i8* %7588, align 1
  %7589 = and i32 %7582, 255
  %7590 = call i32 @llvm.ctpop.i32(i32 %7589)
  %7591 = trunc i32 %7590 to i8
  %7592 = and i8 %7591, 1
  %7593 = xor i8 %7592, 1
  %7594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7593, i8* %7594, align 1
  %7595 = xor i32 %7581, %7579
  %7596 = xor i32 %7595, %7582
  %7597 = lshr i32 %7596, 4
  %7598 = trunc i32 %7597 to i8
  %7599 = and i8 %7598, 1
  %7600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7599, i8* %7600, align 1
  %7601 = icmp eq i32 %7582, 0
  %7602 = zext i1 %7601 to i8
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7602, i8* %7603, align 1
  %7604 = lshr i32 %7582, 31
  %7605 = trunc i32 %7604 to i8
  %7606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7605, i8* %7606, align 1
  %7607 = lshr i32 %7579, 31
  %7608 = lshr i32 %7581, 31
  %7609 = xor i32 %7604, %7607
  %7610 = xor i32 %7604, %7608
  %7611 = add i32 %7609, %7610
  %7612 = icmp eq i32 %7611, 2
  %7613 = zext i1 %7612 to i8
  %7614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7613, i8* %7614, align 1
  store %struct.Memory* %loadMem_477d98, %struct.Memory** %MEMORY
  %loadMem_477d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7616 = getelementptr inbounds %struct.GPR, %struct.GPR* %7615, i32 0, i32 33
  %7617 = getelementptr inbounds %struct.Reg, %struct.Reg* %7616, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7617 to i64*
  %7618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7619 = getelementptr inbounds %struct.GPR, %struct.GPR* %7618, i32 0, i32 1
  %7620 = getelementptr inbounds %struct.Reg, %struct.Reg* %7619, i32 0, i32 0
  %EAX.i75 = bitcast %union.anon* %7620 to i32*
  %7621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7622 = getelementptr inbounds %struct.GPR, %struct.GPR* %7621, i32 0, i32 15
  %7623 = getelementptr inbounds %struct.Reg, %struct.Reg* %7622, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %7623 to i64*
  %7624 = load i64, i64* %RBP.i76
  %7625 = sub i64 %7624, 28
  %7626 = load i32, i32* %EAX.i75
  %7627 = zext i32 %7626 to i64
  %7628 = load i64, i64* %PC.i74
  %7629 = add i64 %7628, 3
  store i64 %7629, i64* %PC.i74
  %7630 = inttoptr i64 %7625 to i32*
  store i32 %7626, i32* %7630
  store %struct.Memory* %loadMem_477d9b, %struct.Memory** %MEMORY
  br label %block_.L_477d9e

block_.L_477d9e:                                  ; preds = %block_477d12, %block_.L_477cbb
  %loadMem_477d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7632 = getelementptr inbounds %struct.GPR, %struct.GPR* %7631, i32 0, i32 33
  %7633 = getelementptr inbounds %struct.Reg, %struct.Reg* %7632, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7633 to i64*
  %7634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7635 = getelementptr inbounds %struct.GPR, %struct.GPR* %7634, i32 0, i32 11
  %7636 = getelementptr inbounds %struct.Reg, %struct.Reg* %7635, i32 0, i32 0
  %RDI.i73 = bitcast %union.anon* %7636 to i64*
  %7637 = load i64, i64* %PC.i72
  %7638 = add i64 %7637, 10
  store i64 %7638, i64* %PC.i72
  store i64 ptrtoint (%G__0x4c286a_type* @G__0x4c286a to i64), i64* %RDI.i73, align 8
  store %struct.Memory* %loadMem_477d9e, %struct.Memory** %MEMORY
  %loadMem_477da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7640 = getelementptr inbounds %struct.GPR, %struct.GPR* %7639, i32 0, i32 33
  %7641 = getelementptr inbounds %struct.Reg, %struct.Reg* %7640, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7641 to i64*
  %7642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7643 = getelementptr inbounds %struct.GPR, %struct.GPR* %7642, i32 0, i32 1
  %7644 = getelementptr inbounds %struct.Reg, %struct.Reg* %7643, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %7644 to i64*
  %7645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7646 = getelementptr inbounds %struct.GPR, %struct.GPR* %7645, i32 0, i32 15
  %7647 = getelementptr inbounds %struct.Reg, %struct.Reg* %7646, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %7647 to i64*
  %7648 = load i64, i64* %RBP.i71
  %7649 = sub i64 %7648, 8
  %7650 = load i64, i64* %PC.i69
  %7651 = add i64 %7650, 4
  store i64 %7651, i64* %PC.i69
  %7652 = inttoptr i64 %7649 to i64*
  %7653 = load i64, i64* %7652
  store i64 %7653, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_477da8, %struct.Memory** %MEMORY
  %loadMem_477dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %7654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7655 = getelementptr inbounds %struct.GPR, %struct.GPR* %7654, i32 0, i32 33
  %7656 = getelementptr inbounds %struct.Reg, %struct.Reg* %7655, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7656 to i64*
  %7657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7658 = getelementptr inbounds %struct.GPR, %struct.GPR* %7657, i32 0, i32 1
  %7659 = getelementptr inbounds %struct.Reg, %struct.Reg* %7658, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %7659 to i64*
  %7660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7661 = getelementptr inbounds %struct.GPR, %struct.GPR* %7660, i32 0, i32 9
  %7662 = getelementptr inbounds %struct.Reg, %struct.Reg* %7661, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7662 to i64*
  %7663 = load i64, i64* %RAX.i68
  %7664 = add i64 %7663, 1180
  %7665 = load i64, i64* %PC.i67
  %7666 = add i64 %7665, 6
  store i64 %7666, i64* %PC.i67
  %7667 = inttoptr i64 %7664 to i32*
  %7668 = load i32, i32* %7667
  %7669 = zext i32 %7668 to i64
  store i64 %7669, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_477dac, %struct.Memory** %MEMORY
  %loadMem_477db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7671 = getelementptr inbounds %struct.GPR, %struct.GPR* %7670, i32 0, i32 33
  %7672 = getelementptr inbounds %struct.Reg, %struct.Reg* %7671, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7672 to i64*
  %7673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7674 = getelementptr inbounds %struct.GPR, %struct.GPR* %7673, i32 0, i32 7
  %7675 = getelementptr inbounds %struct.Reg, %struct.Reg* %7674, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %7675 to i64*
  %7676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7677 = getelementptr inbounds %struct.GPR, %struct.GPR* %7676, i32 0, i32 15
  %7678 = getelementptr inbounds %struct.Reg, %struct.Reg* %7677, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %7678 to i64*
  %7679 = load i64, i64* %RBP.i66
  %7680 = sub i64 %7679, 24
  %7681 = load i64, i64* %PC.i64
  %7682 = add i64 %7681, 4
  store i64 %7682, i64* %PC.i64
  %7683 = inttoptr i64 %7680 to i64*
  %7684 = load i64, i64* %7683
  store i64 %7684, i64* %RDX.i65, align 8
  store %struct.Memory* %loadMem_477db2, %struct.Memory** %MEMORY
  %loadMem1_477db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7686 = getelementptr inbounds %struct.GPR, %struct.GPR* %7685, i32 0, i32 33
  %7687 = getelementptr inbounds %struct.Reg, %struct.Reg* %7686, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7687 to i64*
  %7688 = load i64, i64* %PC.i63
  %7689 = add i64 %7688, 216394
  %7690 = load i64, i64* %PC.i63
  %7691 = add i64 %7690, 5
  %7692 = load i64, i64* %PC.i63
  %7693 = add i64 %7692, 5
  store i64 %7693, i64* %PC.i63
  %7694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7695 = load i64, i64* %7694, align 8
  %7696 = add i64 %7695, -8
  %7697 = inttoptr i64 %7696 to i64*
  store i64 %7691, i64* %7697
  store i64 %7696, i64* %7694, align 8
  %7698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7689, i64* %7698, align 8
  store %struct.Memory* %loadMem1_477db6, %struct.Memory** %MEMORY
  %loadMem2_477db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477db6 = load i64, i64* %3
  %call2_477db6 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_477db6, %struct.Memory* %loadMem2_477db6)
  store %struct.Memory* %call2_477db6, %struct.Memory** %MEMORY
  %loadMem_477dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7700 = getelementptr inbounds %struct.GPR, %struct.GPR* %7699, i32 0, i32 33
  %7701 = getelementptr inbounds %struct.Reg, %struct.Reg* %7700, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7701 to i64*
  %7702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7703 = getelementptr inbounds %struct.GPR, %struct.GPR* %7702, i32 0, i32 1
  %7704 = getelementptr inbounds %struct.Reg, %struct.Reg* %7703, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %7704 to i64*
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7706 = getelementptr inbounds %struct.GPR, %struct.GPR* %7705, i32 0, i32 15
  %7707 = getelementptr inbounds %struct.Reg, %struct.Reg* %7706, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %7707 to i64*
  %7708 = load i64, i64* %RAX.i61
  %7709 = load i64, i64* %RBP.i62
  %7710 = sub i64 %7709, 28
  %7711 = load i64, i64* %PC.i60
  %7712 = add i64 %7711, 3
  store i64 %7712, i64* %PC.i60
  %7713 = trunc i64 %7708 to i32
  %7714 = inttoptr i64 %7710 to i32*
  %7715 = load i32, i32* %7714
  %7716 = add i32 %7715, %7713
  %7717 = zext i32 %7716 to i64
  store i64 %7717, i64* %RAX.i61, align 8
  %7718 = icmp ult i32 %7716, %7713
  %7719 = icmp ult i32 %7716, %7715
  %7720 = or i1 %7718, %7719
  %7721 = zext i1 %7720 to i8
  %7722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7721, i8* %7722, align 1
  %7723 = and i32 %7716, 255
  %7724 = call i32 @llvm.ctpop.i32(i32 %7723)
  %7725 = trunc i32 %7724 to i8
  %7726 = and i8 %7725, 1
  %7727 = xor i8 %7726, 1
  %7728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7727, i8* %7728, align 1
  %7729 = xor i32 %7715, %7713
  %7730 = xor i32 %7729, %7716
  %7731 = lshr i32 %7730, 4
  %7732 = trunc i32 %7731 to i8
  %7733 = and i8 %7732, 1
  %7734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7733, i8* %7734, align 1
  %7735 = icmp eq i32 %7716, 0
  %7736 = zext i1 %7735 to i8
  %7737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7736, i8* %7737, align 1
  %7738 = lshr i32 %7716, 31
  %7739 = trunc i32 %7738 to i8
  %7740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7739, i8* %7740, align 1
  %7741 = lshr i32 %7713, 31
  %7742 = lshr i32 %7715, 31
  %7743 = xor i32 %7738, %7741
  %7744 = xor i32 %7738, %7742
  %7745 = add i32 %7743, %7744
  %7746 = icmp eq i32 %7745, 2
  %7747 = zext i1 %7746 to i8
  %7748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7747, i8* %7748, align 1
  store %struct.Memory* %loadMem_477dbb, %struct.Memory** %MEMORY
  %loadMem_477dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7750 = getelementptr inbounds %struct.GPR, %struct.GPR* %7749, i32 0, i32 33
  %7751 = getelementptr inbounds %struct.Reg, %struct.Reg* %7750, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7751 to i64*
  %7752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7753 = getelementptr inbounds %struct.GPR, %struct.GPR* %7752, i32 0, i32 1
  %7754 = getelementptr inbounds %struct.Reg, %struct.Reg* %7753, i32 0, i32 0
  %EAX.i58 = bitcast %union.anon* %7754 to i32*
  %7755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7756 = getelementptr inbounds %struct.GPR, %struct.GPR* %7755, i32 0, i32 15
  %7757 = getelementptr inbounds %struct.Reg, %struct.Reg* %7756, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %7757 to i64*
  %7758 = load i64, i64* %RBP.i59
  %7759 = sub i64 %7758, 28
  %7760 = load i32, i32* %EAX.i58
  %7761 = zext i32 %7760 to i64
  %7762 = load i64, i64* %PC.i57
  %7763 = add i64 %7762, 3
  store i64 %7763, i64* %PC.i57
  %7764 = inttoptr i64 %7759 to i32*
  store i32 %7760, i32* %7764
  store %struct.Memory* %loadMem_477dbe, %struct.Memory** %MEMORY
  %loadMem_477dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7766 = getelementptr inbounds %struct.GPR, %struct.GPR* %7765, i32 0, i32 33
  %7767 = getelementptr inbounds %struct.Reg, %struct.Reg* %7766, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %7767 to i64*
  %7768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7769 = getelementptr inbounds %struct.GPR, %struct.GPR* %7768, i32 0, i32 7
  %7770 = getelementptr inbounds %struct.Reg, %struct.Reg* %7769, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %7770 to i64*
  %7771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7772 = getelementptr inbounds %struct.GPR, %struct.GPR* %7771, i32 0, i32 15
  %7773 = getelementptr inbounds %struct.Reg, %struct.Reg* %7772, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %7773 to i64*
  %7774 = load i64, i64* %RBP.i56
  %7775 = sub i64 %7774, 8
  %7776 = load i64, i64* %PC.i54
  %7777 = add i64 %7776, 4
  store i64 %7777, i64* %PC.i54
  %7778 = inttoptr i64 %7775 to i64*
  %7779 = load i64, i64* %7778
  store i64 %7779, i64* %RDX.i55, align 8
  store %struct.Memory* %loadMem_477dc1, %struct.Memory** %MEMORY
  %loadMem_477dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7781 = getelementptr inbounds %struct.GPR, %struct.GPR* %7780, i32 0, i32 33
  %7782 = getelementptr inbounds %struct.Reg, %struct.Reg* %7781, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7782 to i64*
  %7783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7784 = getelementptr inbounds %struct.GPR, %struct.GPR* %7783, i32 0, i32 7
  %7785 = getelementptr inbounds %struct.Reg, %struct.Reg* %7784, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7785 to i64*
  %7786 = load i64, i64* %RDX.i
  %7787 = add i64 %7786, 1180
  %7788 = load i64, i64* %PC.i53
  %7789 = add i64 %7788, 7
  store i64 %7789, i64* %PC.i53
  %7790 = inttoptr i64 %7787 to i32*
  %7791 = load i32, i32* %7790
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7792, align 1
  %7793 = and i32 %7791, 255
  %7794 = call i32 @llvm.ctpop.i32(i32 %7793)
  %7795 = trunc i32 %7794 to i8
  %7796 = and i8 %7795, 1
  %7797 = xor i8 %7796, 1
  %7798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7797, i8* %7798, align 1
  %7799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7799, align 1
  %7800 = icmp eq i32 %7791, 0
  %7801 = zext i1 %7800 to i8
  %7802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7801, i8* %7802, align 1
  %7803 = lshr i32 %7791, 31
  %7804 = trunc i32 %7803 to i8
  %7805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7804, i8* %7805, align 1
  %7806 = lshr i32 %7791, 31
  %7807 = xor i32 %7803, %7806
  %7808 = add i32 %7807, %7806
  %7809 = icmp eq i32 %7808, 2
  %7810 = zext i1 %7809 to i8
  %7811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7810, i8* %7811, align 1
  store %struct.Memory* %loadMem_477dc5, %struct.Memory** %MEMORY
  %loadMem_477dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7813 = getelementptr inbounds %struct.GPR, %struct.GPR* %7812, i32 0, i32 33
  %7814 = getelementptr inbounds %struct.Reg, %struct.Reg* %7813, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7814 to i64*
  %7815 = load i64, i64* %PC.i52
  %7816 = add i64 %7815, 21
  %7817 = load i64, i64* %PC.i52
  %7818 = add i64 %7817, 6
  %7819 = load i64, i64* %PC.i52
  %7820 = add i64 %7819, 6
  store i64 %7820, i64* %PC.i52
  %7821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7822 = load i8, i8* %7821, align 1
  store i8 %7822, i8* %BRANCH_TAKEN, align 1
  %7823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7824 = icmp ne i8 %7822, 0
  %7825 = select i1 %7824, i64 %7816, i64 %7818
  store i64 %7825, i64* %7823, align 8
  store %struct.Memory* %loadMem_477dcc, %struct.Memory** %MEMORY
  %loadBr_477dcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477dcc = icmp eq i8 %loadBr_477dcc, 1
  br i1 %cmpBr_477dcc, label %block_.L_477de1, label %block_477dd2

block_477dd2:                                     ; preds = %block_.L_477d9e
  %loadMem_477dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7827 = getelementptr inbounds %struct.GPR, %struct.GPR* %7826, i32 0, i32 33
  %7828 = getelementptr inbounds %struct.Reg, %struct.Reg* %7827, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7828 to i64*
  %7829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7830 = getelementptr inbounds %struct.GPR, %struct.GPR* %7829, i32 0, i32 11
  %7831 = getelementptr inbounds %struct.Reg, %struct.Reg* %7830, i32 0, i32 0
  %RDI.i50 = bitcast %union.anon* %7831 to i64*
  %7832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7833 = getelementptr inbounds %struct.GPR, %struct.GPR* %7832, i32 0, i32 15
  %7834 = getelementptr inbounds %struct.Reg, %struct.Reg* %7833, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %7834 to i64*
  %7835 = load i64, i64* %RBP.i51
  %7836 = sub i64 %7835, 24
  %7837 = load i64, i64* %PC.i49
  %7838 = add i64 %7837, 4
  store i64 %7838, i64* %PC.i49
  %7839 = inttoptr i64 %7836 to i64*
  %7840 = load i64, i64* %7839
  store i64 %7840, i64* %RDI.i50, align 8
  store %struct.Memory* %loadMem_477dd2, %struct.Memory** %MEMORY
  %loadMem1_477dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7842 = getelementptr inbounds %struct.GPR, %struct.GPR* %7841, i32 0, i32 33
  %7843 = getelementptr inbounds %struct.Reg, %struct.Reg* %7842, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7843 to i64*
  %7844 = load i64, i64* %PC.i48
  %7845 = add i64 %7844, 458
  %7846 = load i64, i64* %PC.i48
  %7847 = add i64 %7846, 5
  %7848 = load i64, i64* %PC.i48
  %7849 = add i64 %7848, 5
  store i64 %7849, i64* %PC.i48
  %7850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7851 = load i64, i64* %7850, align 8
  %7852 = add i64 %7851, -8
  %7853 = inttoptr i64 %7852 to i64*
  store i64 %7847, i64* %7853
  store i64 %7852, i64* %7850, align 8
  %7854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7845, i64* %7854, align 8
  store %struct.Memory* %loadMem1_477dd6, %struct.Memory** %MEMORY
  %loadMem2_477dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477dd6 = load i64, i64* %3
  %call2_477dd6 = call %struct.Memory* @sub_477fa0.GenerateVUISequenceParameters(%struct.State* %0, i64 %loadPC_477dd6, %struct.Memory* %loadMem2_477dd6)
  store %struct.Memory* %call2_477dd6, %struct.Memory** %MEMORY
  %loadMem_477ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7856 = getelementptr inbounds %struct.GPR, %struct.GPR* %7855, i32 0, i32 33
  %7857 = getelementptr inbounds %struct.Reg, %struct.Reg* %7856, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7857 to i64*
  %7858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7859 = getelementptr inbounds %struct.GPR, %struct.GPR* %7858, i32 0, i32 1
  %7860 = getelementptr inbounds %struct.Reg, %struct.Reg* %7859, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %7860 to i64*
  %7861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7862 = getelementptr inbounds %struct.GPR, %struct.GPR* %7861, i32 0, i32 15
  %7863 = getelementptr inbounds %struct.Reg, %struct.Reg* %7862, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %7863 to i64*
  %7864 = load i64, i64* %RAX.i46
  %7865 = load i64, i64* %RBP.i47
  %7866 = sub i64 %7865, 28
  %7867 = load i64, i64* %PC.i45
  %7868 = add i64 %7867, 3
  store i64 %7868, i64* %PC.i45
  %7869 = trunc i64 %7864 to i32
  %7870 = inttoptr i64 %7866 to i32*
  %7871 = load i32, i32* %7870
  %7872 = add i32 %7871, %7869
  %7873 = zext i32 %7872 to i64
  store i64 %7873, i64* %RAX.i46, align 8
  %7874 = icmp ult i32 %7872, %7869
  %7875 = icmp ult i32 %7872, %7871
  %7876 = or i1 %7874, %7875
  %7877 = zext i1 %7876 to i8
  %7878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7877, i8* %7878, align 1
  %7879 = and i32 %7872, 255
  %7880 = call i32 @llvm.ctpop.i32(i32 %7879)
  %7881 = trunc i32 %7880 to i8
  %7882 = and i8 %7881, 1
  %7883 = xor i8 %7882, 1
  %7884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7883, i8* %7884, align 1
  %7885 = xor i32 %7871, %7869
  %7886 = xor i32 %7885, %7872
  %7887 = lshr i32 %7886, 4
  %7888 = trunc i32 %7887 to i8
  %7889 = and i8 %7888, 1
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7889, i8* %7890, align 1
  %7891 = icmp eq i32 %7872, 0
  %7892 = zext i1 %7891 to i8
  %7893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7892, i8* %7893, align 1
  %7894 = lshr i32 %7872, 31
  %7895 = trunc i32 %7894 to i8
  %7896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7895, i8* %7896, align 1
  %7897 = lshr i32 %7869, 31
  %7898 = lshr i32 %7871, 31
  %7899 = xor i32 %7894, %7897
  %7900 = xor i32 %7894, %7898
  %7901 = add i32 %7899, %7900
  %7902 = icmp eq i32 %7901, 2
  %7903 = zext i1 %7902 to i8
  %7904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7903, i8* %7904, align 1
  store %struct.Memory* %loadMem_477ddb, %struct.Memory** %MEMORY
  %loadMem_477dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7906 = getelementptr inbounds %struct.GPR, %struct.GPR* %7905, i32 0, i32 33
  %7907 = getelementptr inbounds %struct.Reg, %struct.Reg* %7906, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7907 to i64*
  %7908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7909 = getelementptr inbounds %struct.GPR, %struct.GPR* %7908, i32 0, i32 1
  %7910 = getelementptr inbounds %struct.Reg, %struct.Reg* %7909, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7910 to i32*
  %7911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7912 = getelementptr inbounds %struct.GPR, %struct.GPR* %7911, i32 0, i32 15
  %7913 = getelementptr inbounds %struct.Reg, %struct.Reg* %7912, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %7913 to i64*
  %7914 = load i64, i64* %RBP.i44
  %7915 = sub i64 %7914, 28
  %7916 = load i32, i32* %EAX.i
  %7917 = zext i32 %7916 to i64
  %7918 = load i64, i64* %PC.i43
  %7919 = add i64 %7918, 3
  store i64 %7919, i64* %PC.i43
  %7920 = inttoptr i64 %7915 to i32*
  store i32 %7916, i32* %7920
  store %struct.Memory* %loadMem_477dde, %struct.Memory** %MEMORY
  br label %block_.L_477de1

block_.L_477de1:                                  ; preds = %block_477dd2, %block_.L_477d9e
  %loadMem_477de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7922 = getelementptr inbounds %struct.GPR, %struct.GPR* %7921, i32 0, i32 33
  %7923 = getelementptr inbounds %struct.Reg, %struct.Reg* %7922, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7923 to i64*
  %7924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7925 = getelementptr inbounds %struct.GPR, %struct.GPR* %7924, i32 0, i32 1
  %7926 = getelementptr inbounds %struct.Reg, %struct.Reg* %7925, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %7926 to i64*
  %7927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7928 = getelementptr inbounds %struct.GPR, %struct.GPR* %7927, i32 0, i32 15
  %7929 = getelementptr inbounds %struct.Reg, %struct.Reg* %7928, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %7929 to i64*
  %7930 = load i64, i64* %RBP.i42
  %7931 = sub i64 %7930, 24
  %7932 = load i64, i64* %PC.i40
  %7933 = add i64 %7932, 4
  store i64 %7933, i64* %PC.i40
  %7934 = inttoptr i64 %7931 to i64*
  %7935 = load i64, i64* %7934
  store i64 %7935, i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_477de1, %struct.Memory** %MEMORY
  %loadMem_477de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7937 = getelementptr inbounds %struct.GPR, %struct.GPR* %7936, i32 0, i32 33
  %7938 = getelementptr inbounds %struct.Reg, %struct.Reg* %7937, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7938 to i64*
  %7939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7940 = getelementptr inbounds %struct.GPR, %struct.GPR* %7939, i32 0, i32 1
  %7941 = getelementptr inbounds %struct.Reg, %struct.Reg* %7940, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %7941 to i64*
  %7942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7943 = getelementptr inbounds %struct.GPR, %struct.GPR* %7942, i32 0, i32 11
  %7944 = getelementptr inbounds %struct.Reg, %struct.Reg* %7943, i32 0, i32 0
  %RDI.i39 = bitcast %union.anon* %7944 to i64*
  %7945 = load i64, i64* %RAX.i38
  %7946 = load i64, i64* %PC.i37
  %7947 = add i64 %7946, 3
  store i64 %7947, i64* %PC.i37
  %7948 = inttoptr i64 %7945 to i64*
  %7949 = load i64, i64* %7948
  store i64 %7949, i64* %RDI.i39, align 8
  store %struct.Memory* %loadMem_477de5, %struct.Memory** %MEMORY
  %loadMem1_477de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7951 = getelementptr inbounds %struct.GPR, %struct.GPR* %7950, i32 0, i32 33
  %7952 = getelementptr inbounds %struct.Reg, %struct.Reg* %7951, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7952 to i64*
  %7953 = load i64, i64* %PC.i36
  %7954 = add i64 %7953, -11336
  %7955 = load i64, i64* %PC.i36
  %7956 = add i64 %7955, 5
  %7957 = load i64, i64* %PC.i36
  %7958 = add i64 %7957, 5
  store i64 %7958, i64* %PC.i36
  %7959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7960 = load i64, i64* %7959, align 8
  %7961 = add i64 %7960, -8
  %7962 = inttoptr i64 %7961 to i64*
  store i64 %7956, i64* %7962
  store i64 %7961, i64* %7959, align 8
  %7963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7954, i64* %7963, align 8
  store %struct.Memory* %loadMem1_477de8, %struct.Memory** %MEMORY
  %loadMem2_477de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477de8 = load i64, i64* %3
  %call2_477de8 = call %struct.Memory* @sub_4751a0.SODBtoRBSP(%struct.State* %0, i64 %loadPC_477de8, %struct.Memory* %loadMem2_477de8)
  store %struct.Memory* %call2_477de8, %struct.Memory** %MEMORY
  %loadMem_477ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %7964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7965 = getelementptr inbounds %struct.GPR, %struct.GPR* %7964, i32 0, i32 33
  %7966 = getelementptr inbounds %struct.Reg, %struct.Reg* %7965, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %7966 to i64*
  %7967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7968 = getelementptr inbounds %struct.GPR, %struct.GPR* %7967, i32 0, i32 1
  %7969 = getelementptr inbounds %struct.Reg, %struct.Reg* %7968, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %7969 to i64*
  %7970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7971 = getelementptr inbounds %struct.GPR, %struct.GPR* %7970, i32 0, i32 15
  %7972 = getelementptr inbounds %struct.Reg, %struct.Reg* %7971, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %7972 to i64*
  %7973 = load i64, i64* %RBP.i35
  %7974 = sub i64 %7973, 24
  %7975 = load i64, i64* %PC.i33
  %7976 = add i64 %7975, 4
  store i64 %7976, i64* %PC.i33
  %7977 = inttoptr i64 %7974 to i64*
  %7978 = load i64, i64* %7977
  store i64 %7978, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_477ded, %struct.Memory** %MEMORY
  %loadMem_477df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7980 = getelementptr inbounds %struct.GPR, %struct.GPR* %7979, i32 0, i32 33
  %7981 = getelementptr inbounds %struct.Reg, %struct.Reg* %7980, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %7981 to i64*
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7983 = getelementptr inbounds %struct.GPR, %struct.GPR* %7982, i32 0, i32 1
  %7984 = getelementptr inbounds %struct.Reg, %struct.Reg* %7983, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %7984 to i64*
  %7985 = load i64, i64* %RAX.i32
  %7986 = load i64, i64* %PC.i31
  %7987 = add i64 %7986, 3
  store i64 %7987, i64* %PC.i31
  %7988 = inttoptr i64 %7985 to i64*
  %7989 = load i64, i64* %7988
  store i64 %7989, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_477df1, %struct.Memory** %MEMORY
  %loadMem_477df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7991 = getelementptr inbounds %struct.GPR, %struct.GPR* %7990, i32 0, i32 33
  %7992 = getelementptr inbounds %struct.Reg, %struct.Reg* %7991, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7992 to i64*
  %7993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7994 = getelementptr inbounds %struct.GPR, %struct.GPR* %7993, i32 0, i32 1
  %7995 = getelementptr inbounds %struct.Reg, %struct.Reg* %7994, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %7995 to i64*
  %7996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7997 = getelementptr inbounds %struct.GPR, %struct.GPR* %7996, i32 0, i32 5
  %7998 = getelementptr inbounds %struct.Reg, %struct.Reg* %7997, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7998 to i64*
  %7999 = load i64, i64* %RAX.i30
  %8000 = load i64, i64* %PC.i29
  %8001 = add i64 %8000, 2
  store i64 %8001, i64* %PC.i29
  %8002 = inttoptr i64 %7999 to i32*
  %8003 = load i32, i32* %8002
  %8004 = zext i32 %8003 to i64
  store i64 %8004, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_477df4, %struct.Memory** %MEMORY
  %loadMem_477df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8006 = getelementptr inbounds %struct.GPR, %struct.GPR* %8005, i32 0, i32 33
  %8007 = getelementptr inbounds %struct.Reg, %struct.Reg* %8006, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %8007 to i64*
  %8008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8009 = getelementptr inbounds %struct.GPR, %struct.GPR* %8008, i32 0, i32 5
  %8010 = getelementptr inbounds %struct.Reg, %struct.Reg* %8009, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8010 to i32*
  %8011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8012 = getelementptr inbounds %struct.GPR, %struct.GPR* %8011, i32 0, i32 15
  %8013 = getelementptr inbounds %struct.Reg, %struct.Reg* %8012, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %8013 to i64*
  %8014 = load i64, i64* %RBP.i28
  %8015 = sub i64 %8014, 32
  %8016 = load i32, i32* %ECX.i
  %8017 = zext i32 %8016 to i64
  %8018 = load i64, i64* %PC.i27
  %8019 = add i64 %8018, 3
  store i64 %8019, i64* %PC.i27
  %8020 = inttoptr i64 %8015 to i32*
  store i32 %8016, i32* %8020
  store %struct.Memory* %loadMem_477df6, %struct.Memory** %MEMORY
  %loadMem_477df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8022 = getelementptr inbounds %struct.GPR, %struct.GPR* %8021, i32 0, i32 33
  %8023 = getelementptr inbounds %struct.Reg, %struct.Reg* %8022, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %8023 to i64*
  %8024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8025 = getelementptr inbounds %struct.GPR, %struct.GPR* %8024, i32 0, i32 1
  %8026 = getelementptr inbounds %struct.Reg, %struct.Reg* %8025, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %8026 to i64*
  %8027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8028 = getelementptr inbounds %struct.GPR, %struct.GPR* %8027, i32 0, i32 15
  %8029 = getelementptr inbounds %struct.Reg, %struct.Reg* %8028, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %8029 to i64*
  %8030 = load i64, i64* %RBP.i26
  %8031 = sub i64 %8030, 24
  %8032 = load i64, i64* %PC.i24
  %8033 = add i64 %8032, 4
  store i64 %8033, i64* %PC.i24
  %8034 = inttoptr i64 %8031 to i64*
  %8035 = load i64, i64* %8034
  store i64 %8035, i64* %RAX.i25, align 8
  store %struct.Memory* %loadMem_477df9, %struct.Memory** %MEMORY
  %loadMem_477dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8037 = getelementptr inbounds %struct.GPR, %struct.GPR* %8036, i32 0, i32 33
  %8038 = getelementptr inbounds %struct.Reg, %struct.Reg* %8037, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8038 to i64*
  %8039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8040 = getelementptr inbounds %struct.GPR, %struct.GPR* %8039, i32 0, i32 1
  %8041 = getelementptr inbounds %struct.Reg, %struct.Reg* %8040, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %8041 to i64*
  %8042 = load i64, i64* %RAX.i23
  %8043 = load i64, i64* %PC.i22
  %8044 = add i64 %8043, 3
  store i64 %8044, i64* %PC.i22
  %8045 = inttoptr i64 %8042 to i64*
  %8046 = load i64, i64* %8045
  store i64 %8046, i64* %RAX.i23, align 8
  store %struct.Memory* %loadMem_477dfd, %struct.Memory** %MEMORY
  %loadMem_477e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8048 = getelementptr inbounds %struct.GPR, %struct.GPR* %8047, i32 0, i32 33
  %8049 = getelementptr inbounds %struct.Reg, %struct.Reg* %8048, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8049 to i64*
  %8050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8051 = getelementptr inbounds %struct.GPR, %struct.GPR* %8050, i32 0, i32 1
  %8052 = getelementptr inbounds %struct.Reg, %struct.Reg* %8051, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %8052 to i64*
  %8053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8054 = getelementptr inbounds %struct.GPR, %struct.GPR* %8053, i32 0, i32 11
  %8055 = getelementptr inbounds %struct.Reg, %struct.Reg* %8054, i32 0, i32 0
  %RDI.i21 = bitcast %union.anon* %8055 to i64*
  %8056 = load i64, i64* %RAX.i20
  %8057 = load i64, i64* %PC.i19
  %8058 = add i64 %8057, 3
  store i64 %8058, i64* %PC.i19
  store i64 %8056, i64* %RDI.i21, align 8
  store %struct.Memory* %loadMem_477e00, %struct.Memory** %MEMORY
  %loadMem1_477e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8060 = getelementptr inbounds %struct.GPR, %struct.GPR* %8059, i32 0, i32 33
  %8061 = getelementptr inbounds %struct.Reg, %struct.Reg* %8060, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %8061 to i64*
  %8062 = load i64, i64* %PC.i18
  %8063 = add i64 %8062, -487043
  %8064 = load i64, i64* %PC.i18
  %8065 = add i64 %8064, 5
  %8066 = load i64, i64* %PC.i18
  %8067 = add i64 %8066, 5
  store i64 %8067, i64* %PC.i18
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8069 = load i64, i64* %8068, align 8
  %8070 = add i64 %8069, -8
  %8071 = inttoptr i64 %8070 to i64*
  store i64 %8065, i64* %8071
  store i64 %8070, i64* %8068, align 8
  %8072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8063, i64* %8072, align 8
  store %struct.Memory* %loadMem1_477e03, %struct.Memory** %MEMORY
  %loadMem2_477e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477e03 = load i64, i64* %3
  %8073 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_477e03)
  store %struct.Memory* %8073, %struct.Memory** %MEMORY
  %loadMem_477e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8075 = getelementptr inbounds %struct.GPR, %struct.GPR* %8074, i32 0, i32 33
  %8076 = getelementptr inbounds %struct.Reg, %struct.Reg* %8075, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8076 to i64*
  %8077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8078 = getelementptr inbounds %struct.GPR, %struct.GPR* %8077, i32 0, i32 1
  %8079 = getelementptr inbounds %struct.Reg, %struct.Reg* %8078, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %8079 to i64*
  %8080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8081 = getelementptr inbounds %struct.GPR, %struct.GPR* %8080, i32 0, i32 15
  %8082 = getelementptr inbounds %struct.Reg, %struct.Reg* %8081, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %8082 to i64*
  %8083 = load i64, i64* %RBP.i15
  %8084 = sub i64 %8083, 24
  %8085 = load i64, i64* %PC.i13
  %8086 = add i64 %8085, 4
  store i64 %8086, i64* %PC.i13
  %8087 = inttoptr i64 %8084 to i64*
  %8088 = load i64, i64* %8087
  store i64 %8088, i64* %RAX.i14, align 8
  store %struct.Memory* %loadMem_477e08, %struct.Memory** %MEMORY
  %loadMem_477e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8090 = getelementptr inbounds %struct.GPR, %struct.GPR* %8089, i32 0, i32 33
  %8091 = getelementptr inbounds %struct.Reg, %struct.Reg* %8090, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8091 to i64*
  %8092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8093 = getelementptr inbounds %struct.GPR, %struct.GPR* %8092, i32 0, i32 1
  %8094 = getelementptr inbounds %struct.Reg, %struct.Reg* %8093, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %8094 to i64*
  %8095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8096 = getelementptr inbounds %struct.GPR, %struct.GPR* %8095, i32 0, i32 11
  %8097 = getelementptr inbounds %struct.Reg, %struct.Reg* %8096, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8097 to i64*
  %8098 = load i64, i64* %RAX.i12
  %8099 = load i64, i64* %PC.i11
  %8100 = add i64 %8099, 3
  store i64 %8100, i64* %PC.i11
  store i64 %8098, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_477e0c, %struct.Memory** %MEMORY
  %loadMem1_477e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8102 = getelementptr inbounds %struct.GPR, %struct.GPR* %8101, i32 0, i32 33
  %8103 = getelementptr inbounds %struct.Reg, %struct.Reg* %8102, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8103 to i64*
  %8104 = load i64, i64* %PC.i10
  %8105 = add i64 %8104, -487055
  %8106 = load i64, i64* %PC.i10
  %8107 = add i64 %8106, 5
  %8108 = load i64, i64* %PC.i10
  %8109 = add i64 %8108, 5
  store i64 %8109, i64* %PC.i10
  %8110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8111 = load i64, i64* %8110, align 8
  %8112 = add i64 %8111, -8
  %8113 = inttoptr i64 %8112 to i64*
  store i64 %8107, i64* %8113
  store i64 %8112, i64* %8110, align 8
  %8114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8105, i64* %8114, align 8
  store %struct.Memory* %loadMem1_477e0f, %struct.Memory** %MEMORY
  %loadMem2_477e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477e0f = load i64, i64* %3
  %8115 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_477e0f)
  store %struct.Memory* %8115, %struct.Memory** %MEMORY
  %loadMem_477e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8117 = getelementptr inbounds %struct.GPR, %struct.GPR* %8116, i32 0, i32 33
  %8118 = getelementptr inbounds %struct.Reg, %struct.Reg* %8117, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8118 to i64*
  %8119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8120 = getelementptr inbounds %struct.GPR, %struct.GPR* %8119, i32 0, i32 1
  %8121 = getelementptr inbounds %struct.Reg, %struct.Reg* %8120, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8121 to i64*
  %8122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8123 = getelementptr inbounds %struct.GPR, %struct.GPR* %8122, i32 0, i32 15
  %8124 = getelementptr inbounds %struct.Reg, %struct.Reg* %8123, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %8124 to i64*
  %8125 = load i64, i64* %RBP.i6
  %8126 = sub i64 %8125, 32
  %8127 = load i64, i64* %PC.i5
  %8128 = add i64 %8127, 3
  store i64 %8128, i64* %PC.i5
  %8129 = inttoptr i64 %8126 to i32*
  %8130 = load i32, i32* %8129
  %8131 = zext i32 %8130 to i64
  store i64 %8131, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_477e14, %struct.Memory** %MEMORY
  %loadMem_477e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8133 = getelementptr inbounds %struct.GPR, %struct.GPR* %8132, i32 0, i32 33
  %8134 = getelementptr inbounds %struct.Reg, %struct.Reg* %8133, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8134 to i64*
  %8135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8136 = getelementptr inbounds %struct.GPR, %struct.GPR* %8135, i32 0, i32 13
  %8137 = getelementptr inbounds %struct.Reg, %struct.Reg* %8136, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8137 to i64*
  %8138 = load i64, i64* %RSP.i
  %8139 = load i64, i64* %PC.i4
  %8140 = add i64 %8139, 4
  store i64 %8140, i64* %PC.i4
  %8141 = add i64 48, %8138
  store i64 %8141, i64* %RSP.i, align 8
  %8142 = icmp ult i64 %8141, %8138
  %8143 = icmp ult i64 %8141, 48
  %8144 = or i1 %8142, %8143
  %8145 = zext i1 %8144 to i8
  %8146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8145, i8* %8146, align 1
  %8147 = trunc i64 %8141 to i32
  %8148 = and i32 %8147, 255
  %8149 = call i32 @llvm.ctpop.i32(i32 %8148)
  %8150 = trunc i32 %8149 to i8
  %8151 = and i8 %8150, 1
  %8152 = xor i8 %8151, 1
  %8153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8152, i8* %8153, align 1
  %8154 = xor i64 48, %8138
  %8155 = xor i64 %8154, %8141
  %8156 = lshr i64 %8155, 4
  %8157 = trunc i64 %8156 to i8
  %8158 = and i8 %8157, 1
  %8159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8158, i8* %8159, align 1
  %8160 = icmp eq i64 %8141, 0
  %8161 = zext i1 %8160 to i8
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8161, i8* %8162, align 1
  %8163 = lshr i64 %8141, 63
  %8164 = trunc i64 %8163 to i8
  %8165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8164, i8* %8165, align 1
  %8166 = lshr i64 %8138, 63
  %8167 = xor i64 %8163, %8166
  %8168 = add i64 %8167, %8163
  %8169 = icmp eq i64 %8168, 2
  %8170 = zext i1 %8169 to i8
  %8171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8170, i8* %8171, align 1
  store %struct.Memory* %loadMem_477e17, %struct.Memory** %MEMORY
  %loadMem_477e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8173 = getelementptr inbounds %struct.GPR, %struct.GPR* %8172, i32 0, i32 33
  %8174 = getelementptr inbounds %struct.Reg, %struct.Reg* %8173, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8174 to i64*
  %8175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8176 = getelementptr inbounds %struct.GPR, %struct.GPR* %8175, i32 0, i32 15
  %8177 = getelementptr inbounds %struct.Reg, %struct.Reg* %8176, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8177 to i64*
  %8178 = load i64, i64* %PC.i2
  %8179 = add i64 %8178, 1
  store i64 %8179, i64* %PC.i2
  %8180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8181 = load i64, i64* %8180, align 8
  %8182 = add i64 %8181, 8
  %8183 = inttoptr i64 %8181 to i64*
  %8184 = load i64, i64* %8183
  store i64 %8184, i64* %RBP.i3, align 8
  store i64 %8182, i64* %8180, align 8
  store %struct.Memory* %loadMem_477e1b, %struct.Memory** %MEMORY
  %loadMem_477e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8186 = getelementptr inbounds %struct.GPR, %struct.GPR* %8185, i32 0, i32 33
  %8187 = getelementptr inbounds %struct.Reg, %struct.Reg* %8186, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8187 to i64*
  %8188 = load i64, i64* %PC.i1
  %8189 = add i64 %8188, 1
  store i64 %8189, i64* %PC.i1
  %8190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8192 = load i64, i64* %8191, align 8
  %8193 = inttoptr i64 %8192 to i64*
  %8194 = load i64, i64* %8193
  store i64 %8194, i64* %8190, align 8
  %8195 = add i64 %8192, 8
  store i64 %8195, i64* %8191, align 8
  store %struct.Memory* %loadMem_477e1c, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_477e1c
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 48
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 48
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
  %23 = xor i64 48, %9
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

define %struct.Memory* @routine_movl__0x78___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 120, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_jne_.L_4776ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c2411___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2411_type* @G__0x4c2411 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0x30___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 48, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4776e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c242b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c242b_type* @G__0x4c242b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2445___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2445_type* @G__0x4c2445 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x20__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__0x8__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 8, i32* %13
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

define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.u_v(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c2456___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2456_type* @G__0x4c2456 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.u_1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c2471___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2471_type* @G__0x4c2471 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c248c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c248c_type* @G__0x4c248c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c24a7___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c24a7_type* @G__0x4c24a7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c24c2___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c24c2_type* @G__0x4c24c2 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
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

define %struct.Memory* @routine_movq__0x4c24db___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c24db_type* @G__0x4c24db to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c24ea___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c24ea_type* @G__0x4c24ea to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1c__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.ue_v(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x64__0x4__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 100
  %16 = icmp ult i32 %14, 100
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
  %25 = xor i32 %14, 100
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

define %struct.Memory* @routine_je_.L_477842(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x6e__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 110
  %16 = icmp ult i32 %14, 110
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
  %25 = xor i32 %14, 110
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

define %struct.Memory* @routine_cmpl__0x7a__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 122
  %16 = icmp ult i32 %14, 122
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
  %25 = xor i32 %14, 122
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

define %struct.Memory* @routine_cmpl__0x90__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 144
  %16 = icmp ult i32 %14, 144
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
  %25 = xor i32 %14, 144
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

define %struct.Memory* @routine_jne_.L_477a82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c2504___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2504_type* @G__0x4c2504 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x3__0x11bfc__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72700
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_47789e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c251b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c251b_type* @G__0x4c251b to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_0x11c14__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2537___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2537_type* @G__0x4c2537 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x48__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2552___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2552_type* @G__0x4c2552 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4c__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c256f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c256f_type* @G__0x4c256f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11c00__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2591___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2591_type* @G__0x4c2591 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x24__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 36
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

define %struct.Memory* @routine_je_.L_477a7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jae_.L_477a78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c25b6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c25b6_type* @G__0x4c25b6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x28__rax__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 40
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

define %struct.Memory* @routine_cmpl__0x0__0x28__rdx__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 40
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

define %struct.Memory* @routine_je_.L_477a65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x6__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 6
  %16 = icmp ult i32 %14, 6
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
  %25 = xor i32 %14, 6
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

define %struct.Memory* @routine_jae_.L_4779ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x10___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6d4520___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6d4520_type* @G__0x6d4520 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6d1fc0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x711780___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x711780_type* @G__0x711780 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 4
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %R8, align 8
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

define %struct.Memory* @routine_shlq__0x1___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %9, 0
  %14 = icmp slt i64 %12, 0
  %15 = xor i1 %13, %14
  store i64 %12, i64* %R8, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %17 = zext i1 %13 to i8
  store i8 %17, i8* %16, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %19 = trunc i64 %12 to i32
  %20 = and i32 %19, 254
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %18, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %27 = icmp eq i64 %12, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %26, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %30 = lshr i64 %12, 63
  %31 = trunc i64 %30 to i8
  store i8 %31, i8* %29, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %33 = zext i1 %15 to i8
  store i8 %33, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R8
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.Scaling_List(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_477a60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x40___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 64, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6d1f9c___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6d1f9c_type* @G__0x6d1f9c to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6f6e20___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6f6e20_type* @G__0x6f6e20 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x721ca0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x6___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 6
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = icmp ult i32 %12, 6
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
  %24 = xor i64 6, %9
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

define %struct.Memory* @routine_movl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x7___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 6
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %R8, align 8
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

define %struct.Memory* @routine_jmpq_.L_477a65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_477a6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47793a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_477a7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_477a82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4c25d9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c25d9_type* @G__0x4c25d9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x50__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c25f8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c25f8_type* @G__0x4c25f8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x54__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x54__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 84
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

define %struct.Memory* @routine_jne_.L_477af5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c2610___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2610_type* @G__0x4c2610 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x58__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_477bd8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__0x54__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 84
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

define %struct.Memory* @routine_jne_.L_477bd3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c2637___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2637_type* @G__0x4c2637 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x5c__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c265d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c265d_type* @G__0x4c265d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x60__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.se_v(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c2679___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2679_type* @G__0x4c2679 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x64__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c269d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c269d_type* @G__0x4c269d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x68__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x68__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 104
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

define %struct.Memory* @routine_jae_.L_477bce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c26c8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c26c8_type* @G__0x4c26c8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x6c__rax__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 108
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

define %struct.Memory* @routine_jmpq_.L_477b8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_477bd3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4c26e2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c26e2_type* @G__0x4c26e2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x46c__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c26f6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c26f6_type* @G__0x4c26f6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x470__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2720___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2720_type* @G__0x4c2720 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x474__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c273d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c273d_type* @G__0x4c273d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x478__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2761___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2761_type* @G__0x4c2761 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x47c__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x47c__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1148
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

define %struct.Memory* @routine_jne_.L_477cbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c277a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c277a_type* @G__0x4c277a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x480__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c279c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c279c_type* @G__0x4c279c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x484__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c27bb___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c27bb_type* @G__0x4c27bb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x488__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x488__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1160
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

define %struct.Memory* @routine_je_.L_477d9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c27d4___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c27d4_type* @G__0x4c27d4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x48c__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c27f9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c27f9_type* @G__0x4c27f9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x490__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c281f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c281f_type* @G__0x4c281f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x494__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2843___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2843_type* @G__0x4c2843 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x498__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c286a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c286a_type* @G__0x4c286a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x49c__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x49c__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1180
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

define %struct.Memory* @routine_je_.L_477de1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.GenerateVUISequenceParameters(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.SODBtoRBSP(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_callq_.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 48, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 48
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
  %25 = xor i64 48, %9
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
