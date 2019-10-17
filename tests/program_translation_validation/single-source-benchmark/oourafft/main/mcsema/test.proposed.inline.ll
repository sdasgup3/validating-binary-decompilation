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

declare %struct.Memory* @sub_400e20.get_time(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400740.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400720.memalign_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400e60.makewt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400fd0.putdata(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_401050.cdft(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4010f0.errorcheck(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4006d0.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4006b0.abort_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4006f0.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400710.memcpy_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4006a0.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400840 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400840, %struct.Memory** %MEMORY
  %loadMem_400841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i99 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i99
  %27 = load i64, i64* %PC.i98
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i98
  store i64 %26, i64* %RBP.i100, align 8
  store %struct.Memory* %loadMem_400841, %struct.Memory** %MEMORY
  %loadMem_400844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i156 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i156
  %36 = load i64, i64* %PC.i155
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i155
  %38 = sub i64 %35, 224
  store i64 %38, i64* %RSP.i156, align 8
  %39 = icmp ult i64 %35, 224
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
  %49 = xor i64 224, %35
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
  store %struct.Memory* %loadMem_400844, %struct.Memory** %MEMORY
  %loadMem_40084b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i581
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i581
  store i64 16, i64* %RAX.i582, align 8
  store %struct.Memory* %loadMem_40084b, %struct.Memory** %MEMORY
  %loadMem_400850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EAX.i729 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 11
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RDI.i730 = bitcast %union.anon* %83 to i64*
  %84 = load i32, i32* %EAX.i729
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %PC.i728
  %87 = add i64 %86, 2
  store i64 %87, i64* %PC.i728
  %88 = and i64 %85, 4294967295
  store i64 %88, i64* %RDI.i730, align 8
  store %struct.Memory* %loadMem_400850, %struct.Memory** %MEMORY
  %loadMem_400852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 33
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %91 to i64*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 15
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %RBP.i784
  %96 = sub i64 %95, 4
  %97 = load i64, i64* %PC.i783
  %98 = add i64 %97, 7
  store i64 %98, i64* %PC.i783
  %99 = inttoptr i64 %96 to i32*
  store i32 0, i32* %99
  store %struct.Memory* %loadMem_400852, %struct.Memory** %MEMORY
  %loadMem_400859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 33
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i782
  %107 = sub i64 %106, 88
  %108 = load i64, i64* %PC.i781
  %109 = add i64 %108, 8
  store i64 %109, i64* %PC.i781
  %110 = inttoptr i64 %107 to i64*
  store i64 0, i64* %110
  store %struct.Memory* %loadMem_400859, %struct.Memory** %MEMORY
  %loadMem_400861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 33
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %113 to i64*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %RDI.i779 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 15
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %119 to i64*
  %120 = load i64, i64* %RBP.i780
  %121 = sub i64 %120, 144
  %122 = load i64, i64* %RDI.i779
  %123 = load i64, i64* %PC.i778
  %124 = add i64 %123, 7
  store i64 %124, i64* %PC.i778
  %125 = inttoptr i64 %121 to i64*
  store i64 %122, i64* %125
  store %struct.Memory* %loadMem_400861, %struct.Memory** %MEMORY
  %loadMem1_400868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 33
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %128 to i64*
  %129 = load i64, i64* %PC.i777
  %130 = add i64 %129, 1464
  %131 = load i64, i64* %PC.i777
  %132 = add i64 %131, 5
  %133 = load i64, i64* %PC.i777
  %134 = add i64 %133, 5
  store i64 %134, i64* %PC.i777
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, -8
  %138 = inttoptr i64 %137 to i64*
  store i64 %132, i64* %138
  store i64 %137, i64* %135, align 8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %130, i64* %139, align 8
  store %struct.Memory* %loadMem1_400868, %struct.Memory** %MEMORY
  %loadMem2_400868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400868 = load i64, i64* %3
  %call2_400868 = call %struct.Memory* @sub_400e20.get_time(%struct.State* %0, i64 %loadPC_400868, %struct.Memory* %loadMem2_400868)
  store %struct.Memory* %call2_400868, %struct.Memory** %MEMORY
  %loadMem_40086d = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 15
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RBP.i775 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %146, i64 0, i64 0
  %XMM0.i776 = bitcast %union.VectorReg* %147 to %union.vec128_t*
  %148 = load i64, i64* %RBP.i775
  %149 = sub i64 %148, 64
  %150 = bitcast %union.vec128_t* %XMM0.i776 to i8*
  %151 = load i64, i64* %PC.i774
  %152 = add i64 %151, 5
  store i64 %152, i64* %PC.i774
  %153 = bitcast i8* %150 to double*
  %154 = load double, double* %153, align 1
  %155 = inttoptr i64 %149 to double*
  store double %154, double* %155
  store %struct.Memory* %loadMem_40086d, %struct.Memory** %MEMORY
  %loadMem1_400872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %PC.i773
  %160 = add i64 %159, 1454
  %161 = load i64, i64* %PC.i773
  %162 = add i64 %161, 5
  %163 = load i64, i64* %PC.i773
  %164 = add i64 %163, 5
  store i64 %164, i64* %PC.i773
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, -8
  %168 = inttoptr i64 %167 to i64*
  store i64 %162, i64* %168
  store i64 %167, i64* %165, align 8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %160, i64* %169, align 8
  store %struct.Memory* %loadMem1_400872, %struct.Memory** %MEMORY
  %loadMem2_400872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400872 = load i64, i64* %3
  %call2_400872 = call %struct.Memory* @sub_400e20.get_time(%struct.State* %0, i64 %loadPC_400872, %struct.Memory* %loadMem2_400872)
  store %struct.Memory* %call2_400872, %struct.Memory** %MEMORY
  %loadMem_400877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 15
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %177 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %176, i64 0, i64 0
  %XMM0.i772 = bitcast %union.VectorReg* %177 to %union.vec128_t*
  %178 = load i64, i64* %RBP.i771
  %179 = sub i64 %178, 72
  %180 = bitcast %union.vec128_t* %XMM0.i772 to i8*
  %181 = load i64, i64* %PC.i770
  %182 = add i64 %181, 5
  store i64 %182, i64* %PC.i770
  %183 = bitcast i8* %180 to double*
  %184 = load double, double* %183, align 1
  %185 = inttoptr i64 %179 to double*
  store double %184, double* %185
  store %struct.Memory* %loadMem_400877, %struct.Memory** %MEMORY
  %loadMem_40087c = load %struct.Memory*, %struct.Memory** %MEMORY
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 33
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 15
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RBP.i768 = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %193 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %192, i64 0, i64 0
  %YMM0.i769 = bitcast %union.VectorReg* %193 to %"class.std::bitset"*
  %194 = bitcast %"class.std::bitset"* %YMM0.i769 to i8*
  %195 = load i64, i64* %RBP.i768
  %196 = sub i64 %195, 72
  %197 = load i64, i64* %PC.i767
  %198 = add i64 %197, 5
  store i64 %198, i64* %PC.i767
  %199 = inttoptr i64 %196 to double*
  %200 = load double, double* %199
  %201 = bitcast i8* %194 to double*
  store double %200, double* %201, align 1
  %202 = getelementptr inbounds i8, i8* %194, i64 8
  %203 = bitcast i8* %202 to double*
  store double 0.000000e+00, double* %203, align 1
  store %struct.Memory* %loadMem_40087c, %struct.Memory** %MEMORY
  %loadMem_400881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %211 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %210, i64 0, i64 1
  %YMM1.i766 = bitcast %union.VectorReg* %211 to %"class.std::bitset"*
  %212 = bitcast %"class.std::bitset"* %YMM1.i766 to i8*
  %213 = load i64, i64* %RBP.i765
  %214 = sub i64 %213, 64
  %215 = load i64, i64* %PC.i764
  %216 = add i64 %215, 5
  store i64 %216, i64* %PC.i764
  %217 = inttoptr i64 %214 to double*
  %218 = load double, double* %217
  %219 = bitcast i8* %212 to double*
  store double %218, double* %219, align 1
  %220 = getelementptr inbounds i8, i8* %212, i64 8
  %221 = bitcast i8* %220 to double*
  store double 0.000000e+00, double* %221, align 1
  store %struct.Memory* %loadMem_400881, %struct.Memory** %MEMORY
  %loadMem_400886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %226 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %225, i64 0, i64 0
  %YMM0.i762 = bitcast %union.VectorReg* %226 to %"class.std::bitset"*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %227, i64 0, i64 1
  %XMM1.i763 = bitcast %union.VectorReg* %228 to %union.vec128_t*
  %229 = bitcast %"class.std::bitset"* %YMM0.i762 to i8*
  %230 = bitcast %"class.std::bitset"* %YMM0.i762 to i8*
  %231 = bitcast %union.vec128_t* %XMM1.i763 to i8*
  %232 = load i64, i64* %PC.i761
  %233 = add i64 %232, 4
  store i64 %233, i64* %PC.i761
  %234 = bitcast i8* %230 to double*
  %235 = load double, double* %234, align 1
  %236 = getelementptr inbounds i8, i8* %230, i64 8
  %237 = bitcast i8* %236 to i64*
  %238 = load i64, i64* %237, align 1
  %239 = bitcast i8* %231 to double*
  %240 = load double, double* %239, align 1
  %241 = fsub double %235, %240
  %242 = bitcast i8* %229 to double*
  store double %241, double* %242, align 1
  %243 = getelementptr inbounds i8, i8* %229, i64 8
  %244 = bitcast i8* %243 to i64*
  store i64 %238, i64* %244, align 1
  store %struct.Memory* %loadMem_400886, %struct.Memory** %MEMORY
  %loadMem_40088a = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 15
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %252 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %251, i64 0, i64 0
  %XMM0.i760 = bitcast %union.VectorReg* %252 to %union.vec128_t*
  %253 = load i64, i64* %RBP.i759
  %254 = sub i64 %253, 80
  %255 = bitcast %union.vec128_t* %XMM0.i760 to i8*
  %256 = load i64, i64* %PC.i758
  %257 = add i64 %256, 5
  store i64 %257, i64* %PC.i758
  %258 = bitcast i8* %255 to double*
  %259 = load double, double* %258, align 1
  %260 = inttoptr i64 %254 to double*
  store double %259, double* %260
  store %struct.Memory* %loadMem_40088a, %struct.Memory** %MEMORY
  %loadMem_40088f = load %struct.Memory*, %struct.Memory** %MEMORY
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 33
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 0
  %YMM0.i757 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*
  %266 = bitcast %"class.std::bitset"* %YMM0.i757 to i8*
  %267 = load i64, i64* %PC.i756
  %268 = add i64 %267, 14361
  %269 = load i64, i64* %PC.i756
  %270 = add i64 %269, 8
  store i64 %270, i64* %PC.i756
  %271 = inttoptr i64 %268 to double*
  %272 = load double, double* %271
  %273 = bitcast i8* %266 to double*
  store double %272, double* %273, align 1
  %274 = getelementptr inbounds i8, i8* %266, i64 8
  %275 = bitcast i8* %274 to double*
  store double 0.000000e+00, double* %275, align 1
  store %struct.Memory* %loadMem_40088f, %struct.Memory** %MEMORY
  %loadMem1_400897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %278 to i64*
  %279 = load i64, i64* %PC.i755
  %280 = add i64 %279, -343
  %281 = load i64, i64* %PC.i755
  %282 = add i64 %281, 5
  %283 = load i64, i64* %PC.i755
  %284 = add i64 %283, 5
  store i64 %284, i64* %PC.i755
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = add i64 %286, -8
  %288 = inttoptr i64 %287 to i64*
  store i64 %282, i64* %288
  store i64 %287, i64* %285, align 8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %280, i64* %289, align 8
  store %struct.Memory* %loadMem1_400897, %struct.Memory** %MEMORY
  %loadMem2_400897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400897 = load i64, i64* %3
  %call2_400897 = call %struct.Memory* @sub_400740.sqrt_plt(%struct.State* %0, i64 %loadPC_400897, %struct.Memory* %loadMem2_400897)
  store %struct.Memory* %call2_400897, %struct.Memory** %MEMORY
  %loadMem_40089c = load %struct.Memory*, %struct.Memory** %MEMORY
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 33
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %294 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %293, i64 0, i64 1
  %YMM1.i754 = bitcast %union.VectorReg* %294 to %"class.std::bitset"*
  %295 = bitcast %"class.std::bitset"* %YMM1.i754 to i8*
  %296 = load i64, i64* %PC.i753
  %297 = add i64 %296, 14356
  %298 = load i64, i64* %PC.i753
  %299 = add i64 %298, 8
  store i64 %299, i64* %PC.i753
  %300 = inttoptr i64 %297 to double*
  %301 = load double, double* %300
  %302 = bitcast i8* %295 to double*
  store double %301, double* %302, align 1
  %303 = getelementptr inbounds i8, i8* %295, i64 8
  %304 = bitcast i8* %303 to double*
  store double 0.000000e+00, double* %304, align 1
  store %struct.Memory* %loadMem_40089c, %struct.Memory** %MEMORY
  %loadMem_4008a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 0
  %YMM0.i751 = bitcast %union.VectorReg* %309 to %"class.std::bitset"*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 1
  %XMM1.i752 = bitcast %union.VectorReg* %311 to %union.vec128_t*
  %312 = bitcast %"class.std::bitset"* %YMM0.i751 to i8*
  %313 = bitcast %"class.std::bitset"* %YMM0.i751 to i8*
  %314 = bitcast %union.vec128_t* %XMM1.i752 to i8*
  %315 = load i64, i64* %PC.i750
  %316 = add i64 %315, 4
  store i64 %316, i64* %PC.i750
  %317 = bitcast i8* %313 to double*
  %318 = load double, double* %317, align 1
  %319 = getelementptr inbounds i8, i8* %313, i64 8
  %320 = bitcast i8* %319 to i64*
  %321 = load i64, i64* %320, align 1
  %322 = bitcast i8* %314 to double*
  %323 = load double, double* %322, align 1
  %324 = fmul double %318, %323
  %325 = bitcast i8* %312 to double*
  store double %324, double* %325, align 1
  %326 = getelementptr inbounds i8, i8* %312, i64 8
  %327 = bitcast i8* %326 to i64*
  store i64 %321, i64* %327, align 1
  store %struct.Memory* %loadMem_4008a4, %struct.Memory** %MEMORY
  %loadMem_4008a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %332 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %331, i64 0, i64 1
  %YMM1.i749 = bitcast %union.VectorReg* %332 to %"class.std::bitset"*
  %333 = bitcast %"class.std::bitset"* %YMM1.i749 to i8*
  %334 = load i64, i64* %PC.i748
  %335 = add i64 %334, 14352
  %336 = load i64, i64* %PC.i748
  %337 = add i64 %336, 8
  store i64 %337, i64* %PC.i748
  %338 = inttoptr i64 %335 to double*
  %339 = load double, double* %338
  %340 = bitcast i8* %333 to double*
  store double %339, double* %340, align 1
  %341 = getelementptr inbounds i8, i8* %333, i64 8
  %342 = bitcast i8* %341 to double*
  store double 0.000000e+00, double* %342, align 1
  store %struct.Memory* %loadMem_4008a8, %struct.Memory** %MEMORY
  %loadMem_4008b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 33
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %347 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %346, i64 0, i64 2
  %YMM2.i746 = bitcast %union.VectorReg* %347 to %"class.std::bitset"*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %349 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %348, i64 0, i64 0
  %XMM0.i747 = bitcast %union.VectorReg* %349 to %union.vec128_t*
  %350 = bitcast %"class.std::bitset"* %YMM2.i746 to i8*
  %351 = bitcast %union.vec128_t* %XMM0.i747 to i8*
  %352 = load i64, i64* %PC.i745
  %353 = add i64 %352, 3
  store i64 %353, i64* %PC.i745
  %354 = bitcast i8* %351 to <2 x i32>*
  %355 = load <2 x i32>, <2 x i32>* %354, align 1
  %356 = getelementptr inbounds i8, i8* %351, i64 8
  %357 = bitcast i8* %356 to <2 x i32>*
  %358 = load <2 x i32>, <2 x i32>* %357, align 1
  %359 = extractelement <2 x i32> %355, i32 0
  %360 = bitcast i8* %350 to i32*
  store i32 %359, i32* %360, align 1
  %361 = extractelement <2 x i32> %355, i32 1
  %362 = getelementptr inbounds i8, i8* %350, i64 4
  %363 = bitcast i8* %362 to i32*
  store i32 %361, i32* %363, align 1
  %364 = extractelement <2 x i32> %358, i32 0
  %365 = getelementptr inbounds i8, i8* %350, i64 8
  %366 = bitcast i8* %365 to i32*
  store i32 %364, i32* %366, align 1
  %367 = extractelement <2 x i32> %358, i32 1
  %368 = getelementptr inbounds i8, i8* %350, i64 12
  %369 = bitcast i8* %368 to i32*
  store i32 %367, i32* %369, align 1
  store %struct.Memory* %loadMem_4008b0, %struct.Memory** %MEMORY
  %loadMem_4008b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %374 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %373, i64 0, i64 2
  %YMM2.i743 = bitcast %union.VectorReg* %374 to %"class.std::bitset"*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %376 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %375, i64 0, i64 1
  %XMM1.i744 = bitcast %union.VectorReg* %376 to %union.vec128_t*
  %377 = bitcast %"class.std::bitset"* %YMM2.i743 to i8*
  %378 = bitcast %"class.std::bitset"* %YMM2.i743 to i8*
  %379 = bitcast %union.vec128_t* %XMM1.i744 to i8*
  %380 = load i64, i64* %PC.i742
  %381 = add i64 %380, 4
  store i64 %381, i64* %PC.i742
  %382 = bitcast i8* %378 to double*
  %383 = load double, double* %382, align 1
  %384 = getelementptr inbounds i8, i8* %378, i64 8
  %385 = bitcast i8* %384 to i64*
  %386 = load i64, i64* %385, align 1
  %387 = bitcast i8* %379 to double*
  %388 = load double, double* %387, align 1
  %389 = fsub double %383, %388
  %390 = bitcast i8* %377 to double*
  store double %389, double* %390, align 1
  %391 = getelementptr inbounds i8, i8* %377, i64 8
  %392 = bitcast i8* %391 to i64*
  store i64 %386, i64* %392, align 1
  store %struct.Memory* %loadMem_4008b3, %struct.Memory** %MEMORY
  %loadMem_4008b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 11
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RDI.i740 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %400 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %399, i64 0, i64 2
  %XMM2.i741 = bitcast %union.VectorReg* %400 to %union.vec128_t*
  %401 = bitcast %union.vec128_t* %XMM2.i741 to i8*
  %402 = load i64, i64* %PC.i739
  %403 = add i64 %402, 5
  store i64 %403, i64* %PC.i739
  %404 = bitcast i8* %401 to double*
  %405 = load double, double* %404, align 1
  %406 = call double @llvm.trunc.f64(double %405)
  %407 = call double @llvm.fabs.f64(double %406)
  %408 = fcmp ogt double %407, 0x43E0000000000000
  %409 = fptosi double %406 to i64
  %410 = select i1 %408, i64 -9223372036854775808, i64 %409
  store i64 %410, i64* %RDI.i740, align 8
  store %struct.Memory* %loadMem_4008b7, %struct.Memory** %MEMORY
  %loadMem_4008bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 5
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %PC.i737
  %418 = add i64 %417, 10
  store i64 %418, i64* %PC.i737
  store i64 -9223372036854775808, i64* %RCX.i738, align 8
  store %struct.Memory* %loadMem_4008bc, %struct.Memory** %MEMORY
  %loadMem_4008c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RCX.i735 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 11
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RDI.i736 = bitcast %union.anon* %427 to i64*
  %428 = load i64, i64* %RDI.i736
  %429 = load i64, i64* %RCX.i735
  %430 = load i64, i64* %PC.i734
  %431 = add i64 %430, 3
  store i64 %431, i64* %PC.i734
  %432 = xor i64 %429, %428
  store i64 %432, i64* %RDI.i736, align 8
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %433, align 1
  %434 = trunc i64 %432 to i32
  %435 = and i32 %434, 255
  %436 = call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %439, i8* %440, align 1
  %441 = icmp eq i64 %432, 0
  %442 = zext i1 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %442, i8* %443, align 1
  %444 = lshr i64 %432, 63
  %445 = trunc i64 %444 to i8
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %445, i8* %446, align 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %447, align 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %448, align 1
  store %struct.Memory* %loadMem_4008c6, %struct.Memory** %MEMORY
  %loadMem_4008c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 5
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RCX.i732 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %456 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %455, i64 0, i64 0
  %XMM0.i733 = bitcast %union.VectorReg* %456 to %union.vec128_t*
  %457 = bitcast %union.vec128_t* %XMM0.i733 to i8*
  %458 = load i64, i64* %PC.i731
  %459 = add i64 %458, 5
  store i64 %459, i64* %PC.i731
  %460 = bitcast i8* %457 to double*
  %461 = load double, double* %460, align 1
  %462 = call double @llvm.trunc.f64(double %461)
  %463 = call double @llvm.fabs.f64(double %462)
  %464 = fcmp ogt double %463, 0x43E0000000000000
  %465 = fptosi double %462 to i64
  %466 = select i1 %464, i64 -9223372036854775808, i64 %465
  store i64 %466, i64* %RCX.i732, align 8
  store %struct.Memory* %loadMem_4008c9, %struct.Memory** %MEMORY
  %loadMem_4008ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 33
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %471 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %470, i64 0, i64 0
  %XMM0.i725 = bitcast %union.VectorReg* %471 to %union.vec128_t*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %472, i64 0, i64 1
  %XMM1.i726 = bitcast %union.VectorReg* %473 to %union.vec128_t*
  %474 = bitcast %union.vec128_t* %XMM0.i725 to i8*
  %475 = bitcast %union.vec128_t* %XMM1.i726 to i8*
  %476 = load i64, i64* %PC.i724
  %477 = add i64 %476, 4
  store i64 %477, i64* %PC.i724
  %478 = bitcast i8* %474 to double*
  %479 = load double, double* %478, align 1
  %480 = bitcast i8* %475 to double*
  %481 = load double, double* %480, align 1
  %482 = fcmp uno double %479, %481
  br i1 %482, label %483, label %495

; <label>:483:                                    ; preds = %entry
  %484 = fadd double %479, %481
  %485 = bitcast double %484 to i64
  %486 = and i64 %485, 9221120237041090560
  %487 = icmp eq i64 %486, 9218868437227405312
  %488 = and i64 %485, 2251799813685247
  %489 = icmp ne i64 %488, 0
  %490 = and i1 %487, %489
  br i1 %490, label %491, label %501

; <label>:491:                                    ; preds = %483
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %493, %struct.Memory* %loadMem_4008ce)
  br label %routine_ucomisd__xmm1___xmm0.exit727

; <label>:495:                                    ; preds = %entry
  %496 = fcmp ogt double %479, %481
  br i1 %496, label %501, label %497

; <label>:497:                                    ; preds = %495
  %498 = fcmp olt double %479, %481
  br i1 %498, label %501, label %499

; <label>:499:                                    ; preds = %497
  %500 = fcmp oeq double %479, %481
  br i1 %500, label %501, label %508

; <label>:501:                                    ; preds = %499, %497, %495, %483
  %502 = phi i8 [ 0, %495 ], [ 0, %497 ], [ 1, %499 ], [ 1, %483 ]
  %503 = phi i8 [ 0, %495 ], [ 0, %497 ], [ 0, %499 ], [ 1, %483 ]
  %504 = phi i8 [ 0, %495 ], [ 1, %497 ], [ 0, %499 ], [ 1, %483 ]
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %502, i8* %505, align 1
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %503, i8* %506, align 1
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %504, i8* %507, align 1
  br label %508

; <label>:508:                                    ; preds = %501, %499
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %509, align 1
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %510, align 1
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %511, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit727

routine_ucomisd__xmm1___xmm0.exit727:             ; preds = %491, %508
  %512 = phi %struct.Memory* [ %494, %491 ], [ %loadMem_4008ce, %508 ]
  store %struct.Memory* %512, %struct.Memory** %MEMORY
  %loadMem_4008d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 5
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %RCX.i722 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 11
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RDI.i723 = bitcast %union.anon* %521 to i64*
  %522 = load i64, i64* %RCX.i722
  %523 = load i64, i64* %PC.i721
  %524 = add i64 %523, 4
  store i64 %524, i64* %PC.i721
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %526 = load i8, i8* %525, align 1
  %527 = icmp ne i8 %526, 0
  %528 = load i64, i64* %RDI.i723, align 8
  %529 = select i1 %527, i64 %522, i64 %528
  store i64 %529, i64* %RDI.i723, align 8
  store %struct.Memory* %loadMem_4008d2, %struct.Memory** %MEMORY
  %loadMem_4008d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 5
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 15
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %RBP.i720
  %540 = sub i64 %539, 144
  %541 = load i64, i64* %PC.i718
  %542 = add i64 %541, 7
  store i64 %542, i64* %PC.i718
  %543 = inttoptr i64 %540 to i64*
  %544 = load i64, i64* %543
  store i64 %544, i64* %RCX.i719, align 8
  store %struct.Memory* %loadMem_4008d6, %struct.Memory** %MEMORY
  %loadMem_4008dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 11
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RDI.i716 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 15
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %553 to i64*
  %554 = load i64, i64* %RBP.i717
  %555 = sub i64 %554, 152
  %556 = load i64, i64* %RDI.i716
  %557 = load i64, i64* %PC.i715
  %558 = add i64 %557, 7
  store i64 %558, i64* %PC.i715
  %559 = inttoptr i64 %555 to i64*
  store i64 %556, i64* %559
  store %struct.Memory* %loadMem_4008dd, %struct.Memory** %MEMORY
  %loadMem_4008e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 5
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RCX.i713 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 11
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RDI.i714 = bitcast %union.anon* %568 to i64*
  %569 = load i64, i64* %RCX.i713
  %570 = load i64, i64* %PC.i712
  %571 = add i64 %570, 3
  store i64 %571, i64* %PC.i712
  store i64 %569, i64* %RDI.i714, align 8
  store %struct.Memory* %loadMem_4008e4, %struct.Memory** %MEMORY
  %loadMem_4008e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 9
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RSI.i710 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 15
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %580 to i64*
  %581 = load i64, i64* %RBP.i711
  %582 = sub i64 %581, 152
  %583 = load i64, i64* %PC.i709
  %584 = add i64 %583, 7
  store i64 %584, i64* %PC.i709
  %585 = inttoptr i64 %582 to i64*
  %586 = load i64, i64* %585
  store i64 %586, i64* %RSI.i710, align 8
  store %struct.Memory* %loadMem_4008e7, %struct.Memory** %MEMORY
  %loadMem1_4008ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 33
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %PC.i708
  %591 = add i64 %590, -462
  %592 = load i64, i64* %PC.i708
  %593 = add i64 %592, 5
  %594 = load i64, i64* %PC.i708
  %595 = add i64 %594, 5
  store i64 %595, i64* %PC.i708
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %597 = load i64, i64* %596, align 8
  %598 = add i64 %597, -8
  %599 = inttoptr i64 %598 to i64*
  store i64 %593, i64* %599
  store i64 %598, i64* %596, align 8
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %591, i64* %600, align 8
  store %struct.Memory* %loadMem1_4008ee, %struct.Memory** %MEMORY
  %loadMem2_4008ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008ee = load i64, i64* %3
  %call2_4008ee = call %struct.Memory* @sub_400720.memalign_plt(%struct.State* %0, i64 %loadPC_4008ee, %struct.Memory* %loadMem2_4008ee)
  store %struct.Memory* %call2_4008ee, %struct.Memory** %MEMORY
  %loadMem_4008f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 7
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RDX.i707 = bitcast %union.anon* %606 to i64*
  %607 = load i64, i64* %PC.i706
  %608 = add i64 %607, 5
  store i64 %608, i64* %PC.i706
  store i64 16, i64* %RDX.i707, align 8
  store %struct.Memory* %loadMem_4008f3, %struct.Memory** %MEMORY
  %loadMem_4008f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 7
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %EDX.i704 = bitcast %union.anon* %614 to i32*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 11
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RDI.i705 = bitcast %union.anon* %617 to i64*
  %618 = load i32, i32* %EDX.i704
  %619 = zext i32 %618 to i64
  %620 = load i64, i64* %PC.i703
  %621 = add i64 %620, 2
  store i64 %621, i64* %PC.i703
  %622 = and i64 %619, 4294967295
  store i64 %622, i64* %RDI.i705, align 8
  store %struct.Memory* %loadMem_4008f8, %struct.Memory** %MEMORY
  %loadMem_4008fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 7
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %RDX.i702 = bitcast %union.anon* %628 to i64*
  %629 = load i64, i64* %PC.i701
  %630 = add i64 %629, 5
  store i64 %630, i64* %PC.i701
  store i64 20480, i64* %RDX.i702, align 8
  store %struct.Memory* %loadMem_4008fa, %struct.Memory** %MEMORY
  %loadMem_4008ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 7
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %EDX.i699 = bitcast %union.anon* %636 to i32*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 9
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RSI.i700 = bitcast %union.anon* %639 to i64*
  %640 = load i32, i32* %EDX.i699
  %641 = zext i32 %640 to i64
  %642 = load i64, i64* %PC.i698
  %643 = add i64 %642, 2
  store i64 %643, i64* %PC.i698
  %644 = and i64 %641, 4294967295
  store i64 %644, i64* %RSI.i700, align 8
  store %struct.Memory* %loadMem_4008ff, %struct.Memory** %MEMORY
  %loadMem_400901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 1
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 15
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %RBP.i697
  %655 = sub i64 %654, 24
  %656 = load i64, i64* %RAX.i696
  %657 = load i64, i64* %PC.i695
  %658 = add i64 %657, 4
  store i64 %658, i64* %PC.i695
  %659 = inttoptr i64 %655 to i64*
  store i64 %656, i64* %659
  store %struct.Memory* %loadMem_400901, %struct.Memory** %MEMORY
  %loadMem1_400905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %662 to i64*
  %663 = load i64, i64* %PC.i694
  %664 = add i64 %663, -485
  %665 = load i64, i64* %PC.i694
  %666 = add i64 %665, 5
  %667 = load i64, i64* %PC.i694
  %668 = add i64 %667, 5
  store i64 %668, i64* %PC.i694
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %670 = load i64, i64* %669, align 8
  %671 = add i64 %670, -8
  %672 = inttoptr i64 %671 to i64*
  store i64 %666, i64* %672
  store i64 %671, i64* %669, align 8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %664, i64* %673, align 8
  store %struct.Memory* %loadMem1_400905, %struct.Memory** %MEMORY
  %loadMem2_400905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400905 = load i64, i64* %3
  %call2_400905 = call %struct.Memory* @sub_400720.memalign_plt(%struct.State* %0, i64 %loadPC_400905, %struct.Memory* %loadMem2_400905)
  store %struct.Memory* %call2_400905, %struct.Memory** %MEMORY
  %loadMem_40090a = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 11
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RDI.i693 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %PC.i692
  %681 = add i64 %680, 5
  store i64 %681, i64* %PC.i692
  store i64 512, i64* %RDI.i693, align 8
  store %struct.Memory* %loadMem_40090a, %struct.Memory** %MEMORY
  %loadMem_40090f = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 1
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RAX.i690 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 15
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %690 to i64*
  %691 = load i64, i64* %RBP.i691
  %692 = sub i64 %691, 56
  %693 = load i64, i64* %RAX.i690
  %694 = load i64, i64* %PC.i689
  %695 = add i64 %694, 4
  store i64 %695, i64* %PC.i689
  %696 = inttoptr i64 %692 to i64*
  store i64 %693, i64* %696
  store %struct.Memory* %loadMem_40090f, %struct.Memory** %MEMORY
  %loadMem_400913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 9
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RSI.i687 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 15
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %RBP.i688
  %707 = sub i64 %706, 24
  %708 = load i64, i64* %PC.i686
  %709 = add i64 %708, 4
  store i64 %709, i64* %PC.i686
  %710 = inttoptr i64 %707 to i64*
  %711 = load i64, i64* %710
  store i64 %711, i64* %RSI.i687, align 8
  store %struct.Memory* %loadMem_400913, %struct.Memory** %MEMORY
  %loadMem_400917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 7
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RDX.i684 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 15
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %720 to i64*
  %721 = load i64, i64* %RBP.i685
  %722 = sub i64 %721, 56
  %723 = load i64, i64* %PC.i683
  %724 = add i64 %723, 4
  store i64 %724, i64* %PC.i683
  %725 = inttoptr i64 %722 to i64*
  %726 = load i64, i64* %725
  store i64 %726, i64* %RDX.i684, align 8
  store %struct.Memory* %loadMem_400917, %struct.Memory** %MEMORY
  %loadMem1_40091b = load %struct.Memory*, %struct.Memory** %MEMORY
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 33
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %PC.i682
  %731 = add i64 %730, 1349
  %732 = load i64, i64* %PC.i682
  %733 = add i64 %732, 5
  %734 = load i64, i64* %PC.i682
  %735 = add i64 %734, 5
  store i64 %735, i64* %PC.i682
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %737 = load i64, i64* %736, align 8
  %738 = add i64 %737, -8
  %739 = inttoptr i64 %738 to i64*
  store i64 %733, i64* %739
  store i64 %738, i64* %736, align 8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %731, i64* %740, align 8
  store %struct.Memory* %loadMem1_40091b, %struct.Memory** %MEMORY
  %loadMem2_40091b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40091b = load i64, i64* %3
  %call2_40091b = call %struct.Memory* @sub_400e60.makewt(%struct.State* %0, i64 %loadPC_40091b, %struct.Memory* %loadMem2_40091b)
  store %struct.Memory* %call2_40091b, %struct.Memory** %MEMORY
  %loadMem_400920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 11
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RDI.i681 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %PC.i680
  %748 = add i64 %747, 5
  store i64 %748, i64* %PC.i680
  store i64 16, i64* %RDI.i681, align 8
  store %struct.Memory* %loadMem_400920, %struct.Memory** %MEMORY
  %loadMem_400925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 17
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %R8D.i679 = bitcast %union.anon* %754 to i32*
  %755 = bitcast i32* %R8D.i679 to i64*
  %756 = load i64, i64* %PC.i678
  %757 = add i64 %756, 6
  store i64 %757, i64* %PC.i678
  store i64 16384, i64* %755, align 8
  store %struct.Memory* %loadMem_400925, %struct.Memory** %MEMORY
  %loadMem_40092b = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 17
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %R8D.i676 = bitcast %union.anon* %763 to i32*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 9
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %RSI.i677 = bitcast %union.anon* %766 to i64*
  %767 = load i32, i32* %R8D.i676
  %768 = zext i32 %767 to i64
  %769 = load i64, i64* %PC.i675
  %770 = add i64 %769, 3
  store i64 %770, i64* %PC.i675
  %771 = and i64 %768, 4294967295
  store i64 %771, i64* %RSI.i677, align 8
  store %struct.Memory* %loadMem_40092b, %struct.Memory** %MEMORY
  %loadMem1_40092e = load %struct.Memory*, %struct.Memory** %MEMORY
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 33
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %774 to i64*
  %775 = load i64, i64* %PC.i674
  %776 = add i64 %775, -526
  %777 = load i64, i64* %PC.i674
  %778 = add i64 %777, 5
  %779 = load i64, i64* %PC.i674
  %780 = add i64 %779, 5
  store i64 %780, i64* %PC.i674
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %782 = load i64, i64* %781, align 8
  %783 = add i64 %782, -8
  %784 = inttoptr i64 %783 to i64*
  store i64 %778, i64* %784
  store i64 %783, i64* %781, align 8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %776, i64* %785, align 8
  store %struct.Memory* %loadMem1_40092e, %struct.Memory** %MEMORY
  %loadMem2_40092e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40092e = load i64, i64* %3
  %call2_40092e = call %struct.Memory* @sub_400720.memalign_plt(%struct.State* %0, i64 %loadPC_40092e, %struct.Memory* %loadMem2_40092e)
  store %struct.Memory* %call2_40092e, %struct.Memory** %MEMORY
  %loadMem_400933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 17
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %R8D.i673 = bitcast %union.anon* %791 to i32*
  %792 = bitcast i32* %R8D.i673 to i64*
  %793 = load i64, i64* %PC.i672
  %794 = add i64 %793, 6
  store i64 %794, i64* %PC.i672
  store i64 16, i64* %792, align 8
  store %struct.Memory* %loadMem_400933, %struct.Memory** %MEMORY
  %loadMem_400939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 17
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %R8D.i670 = bitcast %union.anon* %800 to i32*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 11
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RDI.i671 = bitcast %union.anon* %803 to i64*
  %804 = load i32, i32* %R8D.i670
  %805 = zext i32 %804 to i64
  %806 = load i64, i64* %PC.i669
  %807 = add i64 %806, 3
  store i64 %807, i64* %PC.i669
  %808 = and i64 %805, 4294967295
  store i64 %808, i64* %RDI.i671, align 8
  store %struct.Memory* %loadMem_400939, %struct.Memory** %MEMORY
  %loadMem_40093c = load %struct.Memory*, %struct.Memory** %MEMORY
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 33
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %811 to i64*
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 17
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %R8D.i668 = bitcast %union.anon* %814 to i32*
  %815 = bitcast i32* %R8D.i668 to i64*
  %816 = load i64, i64* %PC.i667
  %817 = add i64 %816, 6
  store i64 %817, i64* %PC.i667
  store i64 16384, i64* %815, align 8
  store %struct.Memory* %loadMem_40093c, %struct.Memory** %MEMORY
  %loadMem_400942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 17
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %R8D.i665 = bitcast %union.anon* %823 to i32*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 9
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %RSI.i666 = bitcast %union.anon* %826 to i64*
  %827 = load i32, i32* %R8D.i665
  %828 = zext i32 %827 to i64
  %829 = load i64, i64* %PC.i664
  %830 = add i64 %829, 3
  store i64 %830, i64* %PC.i664
  %831 = and i64 %828, 4294967295
  store i64 %831, i64* %RSI.i666, align 8
  store %struct.Memory* %loadMem_400942, %struct.Memory** %MEMORY
  %loadMem_400945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 33
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 1
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 15
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %840 to i64*
  %841 = load i64, i64* %RBP.i663
  %842 = sub i64 %841, 32
  %843 = load i64, i64* %RAX.i662
  %844 = load i64, i64* %PC.i661
  %845 = add i64 %844, 4
  store i64 %845, i64* %PC.i661
  %846 = inttoptr i64 %842 to i64*
  store i64 %843, i64* %846
  store %struct.Memory* %loadMem_400945, %struct.Memory** %MEMORY
  %loadMem1_400949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %PC.i660
  %851 = add i64 %850, -553
  %852 = load i64, i64* %PC.i660
  %853 = add i64 %852, 5
  %854 = load i64, i64* %PC.i660
  %855 = add i64 %854, 5
  store i64 %855, i64* %PC.i660
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %857 = load i64, i64* %856, align 8
  %858 = add i64 %857, -8
  %859 = inttoptr i64 %858 to i64*
  store i64 %853, i64* %859
  store i64 %858, i64* %856, align 8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %851, i64* %860, align 8
  store %struct.Memory* %loadMem1_400949, %struct.Memory** %MEMORY
  %loadMem2_400949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400949 = load i64, i64* %3
  %call2_400949 = call %struct.Memory* @sub_400720.memalign_plt(%struct.State* %0, i64 %loadPC_400949, %struct.Memory* %loadMem2_400949)
  store %struct.Memory* %call2_400949, %struct.Memory** %MEMORY
  %loadMem_40094e = load %struct.Memory*, %struct.Memory** %MEMORY
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 33
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 17
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %R8D.i659 = bitcast %union.anon* %866 to i32*
  %867 = bitcast i32* %R8D.i659 to i64*
  %868 = load i64, i64* %PC.i658
  %869 = add i64 %868, 6
  store i64 %869, i64* %PC.i658
  store i64 16, i64* %867, align 8
  store %struct.Memory* %loadMem_40094e, %struct.Memory** %MEMORY
  %loadMem_400954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 17
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %R8D.i656 = bitcast %union.anon* %875 to i32*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 11
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RDI.i657 = bitcast %union.anon* %878 to i64*
  %879 = load i32, i32* %R8D.i656
  %880 = zext i32 %879 to i64
  %881 = load i64, i64* %PC.i655
  %882 = add i64 %881, 3
  store i64 %882, i64* %PC.i655
  %883 = and i64 %880, 4294967295
  store i64 %883, i64* %RDI.i657, align 8
  store %struct.Memory* %loadMem_400954, %struct.Memory** %MEMORY
  %loadMem_400957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 17
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %R8D.i654 = bitcast %union.anon* %889 to i32*
  %890 = bitcast i32* %R8D.i654 to i64*
  %891 = load i64, i64* %PC.i653
  %892 = add i64 %891, 6
  store i64 %892, i64* %PC.i653
  store i64 16384, i64* %890, align 8
  store %struct.Memory* %loadMem_400957, %struct.Memory** %MEMORY
  %loadMem_40095d = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 17
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %898 to i32*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 9
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %RSI.i652 = bitcast %union.anon* %901 to i64*
  %902 = load i32, i32* %R8D.i
  %903 = zext i32 %902 to i64
  %904 = load i64, i64* %PC.i651
  %905 = add i64 %904, 3
  store i64 %905, i64* %PC.i651
  %906 = and i64 %903, 4294967295
  store i64 %906, i64* %RSI.i652, align 8
  store %struct.Memory* %loadMem_40095d, %struct.Memory** %MEMORY
  %loadMem_400960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 33
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 1
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 15
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %915 to i64*
  %916 = load i64, i64* %RBP.i650
  %917 = sub i64 %916, 40
  %918 = load i64, i64* %RAX.i649
  %919 = load i64, i64* %PC.i648
  %920 = add i64 %919, 4
  store i64 %920, i64* %PC.i648
  %921 = inttoptr i64 %917 to i64*
  store i64 %918, i64* %921
  store %struct.Memory* %loadMem_400960, %struct.Memory** %MEMORY
  %loadMem1_400964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 33
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %PC.i647
  %926 = add i64 %925, -580
  %927 = load i64, i64* %PC.i647
  %928 = add i64 %927, 5
  %929 = load i64, i64* %PC.i647
  %930 = add i64 %929, 5
  store i64 %930, i64* %PC.i647
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %932 = load i64, i64* %931, align 8
  %933 = add i64 %932, -8
  %934 = inttoptr i64 %933 to i64*
  store i64 %928, i64* %934
  store i64 %933, i64* %931, align 8
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %926, i64* %935, align 8
  store %struct.Memory* %loadMem1_400964, %struct.Memory** %MEMORY
  %loadMem2_400964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400964 = load i64, i64* %3
  %call2_400964 = call %struct.Memory* @sub_400720.memalign_plt(%struct.State* %0, i64 %loadPC_400964, %struct.Memory* %loadMem2_400964)
  store %struct.Memory* %call2_400964, %struct.Memory** %MEMORY
  %loadMem_400969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 11
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %EDI.i645 = bitcast %union.anon* %941 to i32*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 11
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RDI.i646 = bitcast %union.anon* %944 to i64*
  %945 = load i64, i64* %RDI.i646
  %946 = load i32, i32* %EDI.i645
  %947 = zext i32 %946 to i64
  %948 = load i64, i64* %PC.i644
  %949 = add i64 %948, 2
  store i64 %949, i64* %PC.i644
  %950 = xor i64 %947, %945
  %951 = trunc i64 %950 to i32
  %952 = and i64 %950, 4294967295
  store i64 %952, i64* %RDI.i646, align 8
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %953, align 1
  %954 = and i32 %951, 255
  %955 = call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %958, i8* %959, align 1
  %960 = icmp eq i32 %951, 0
  %961 = zext i1 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %961, i8* %962, align 1
  %963 = lshr i32 %951, 31
  %964 = trunc i32 %963 to i8
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %964, i8* %965, align 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %966, align 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %967, align 1
  store %struct.Memory* %loadMem_400969, %struct.Memory** %MEMORY
  %loadMem_40096b = load %struct.Memory*, %struct.Memory** %MEMORY
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 33
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 9
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %RSI.i643 = bitcast %union.anon* %973 to i64*
  %974 = load i64, i64* %PC.i642
  %975 = add i64 %974, 5
  store i64 %975, i64* %PC.i642
  store i64 2047, i64* %RSI.i643, align 8
  store %struct.Memory* %loadMem_40096b, %struct.Memory** %MEMORY
  %loadMem_400970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 1
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 15
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RBP.i641 = bitcast %union.anon* %984 to i64*
  %985 = load i64, i64* %RBP.i641
  %986 = sub i64 %985, 48
  %987 = load i64, i64* %RAX.i640
  %988 = load i64, i64* %PC.i639
  %989 = add i64 %988, 4
  store i64 %989, i64* %PC.i639
  %990 = inttoptr i64 %986 to i64*
  store i64 %987, i64* %990
  store %struct.Memory* %loadMem_400970, %struct.Memory** %MEMORY
  %loadMem_400974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 7
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RDX.i637 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 15
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %RBP.i638
  %1001 = sub i64 %1000, 32
  %1002 = load i64, i64* %PC.i636
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC.i636
  %1004 = inttoptr i64 %1001 to i64*
  %1005 = load i64, i64* %1004
  store i64 %1005, i64* %RDX.i637, align 8
  store %struct.Memory* %loadMem_400974, %struct.Memory** %MEMORY
  %loadMem1_400978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 33
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %PC.i635
  %1010 = add i64 %1009, 1624
  %1011 = load i64, i64* %PC.i635
  %1012 = add i64 %1011, 5
  %1013 = load i64, i64* %PC.i635
  %1014 = add i64 %1013, 5
  store i64 %1014, i64* %PC.i635
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1016 = load i64, i64* %1015, align 8
  %1017 = add i64 %1016, -8
  %1018 = inttoptr i64 %1017 to i64*
  store i64 %1012, i64* %1018
  store i64 %1017, i64* %1015, align 8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1010, i64* %1019, align 8
  store %struct.Memory* %loadMem1_400978, %struct.Memory** %MEMORY
  %loadMem2_400978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400978 = load i64, i64* %3
  %call2_400978 = call %struct.Memory* @sub_400fd0.putdata(%struct.State* %0, i64 %loadPC_400978, %struct.Memory* %loadMem2_400978)
  store %struct.Memory* %call2_400978, %struct.Memory** %MEMORY
  %loadMem_40097d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 11
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %RDI.i634 = bitcast %union.anon* %1025 to i64*
  %1026 = load i64, i64* %PC.i633
  %1027 = add i64 %1026, 5
  store i64 %1027, i64* %PC.i633
  store i64 2048, i64* %RDI.i634, align 8
  store %struct.Memory* %loadMem_40097d, %struct.Memory** %MEMORY
  %loadMem_400982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 33
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %1030 to i64*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 9
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RSI.i632 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %PC.i631
  %1035 = add i64 %1034, 5
  store i64 %1035, i64* %PC.i631
  store i64 1, i64* %RSI.i632, align 8
  store %struct.Memory* %loadMem_400982, %struct.Memory** %MEMORY
  %loadMem_400987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 33
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 7
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RDX.i629 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 15
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %1044 to i64*
  %1045 = load i64, i64* %RBP.i630
  %1046 = sub i64 %1045, 32
  %1047 = load i64, i64* %PC.i628
  %1048 = add i64 %1047, 4
  store i64 %1048, i64* %PC.i628
  %1049 = inttoptr i64 %1046 to i64*
  %1050 = load i64, i64* %1049
  store i64 %1050, i64* %RDX.i629, align 8
  store %struct.Memory* %loadMem_400987, %struct.Memory** %MEMORY
  %loadMem_40098b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %1053 to i64*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 5
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %RCX.i626 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 15
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %1059 to i64*
  %1060 = load i64, i64* %RBP.i627
  %1061 = sub i64 %1060, 24
  %1062 = load i64, i64* %PC.i625
  %1063 = add i64 %1062, 4
  store i64 %1063, i64* %PC.i625
  %1064 = inttoptr i64 %1061 to i64*
  %1065 = load i64, i64* %1064
  store i64 %1065, i64* %RCX.i626, align 8
  store %struct.Memory* %loadMem_40098b, %struct.Memory** %MEMORY
  %loadMem_40098f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 33
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %1068 to i64*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 15
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %1071 to i64*
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 17
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %R8.i624 = bitcast %union.anon* %1074 to i64*
  %1075 = load i64, i64* %RBP.i623
  %1076 = sub i64 %1075, 56
  %1077 = load i64, i64* %PC.i622
  %1078 = add i64 %1077, 4
  store i64 %1078, i64* %PC.i622
  %1079 = inttoptr i64 %1076 to i64*
  %1080 = load i64, i64* %1079
  store i64 %1080, i64* %R8.i624, align 8
  store %struct.Memory* %loadMem_40098f, %struct.Memory** %MEMORY
  %loadMem1_400993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %1083 to i64*
  %1084 = load i64, i64* %PC.i621
  %1085 = add i64 %1084, 1725
  %1086 = load i64, i64* %PC.i621
  %1087 = add i64 %1086, 5
  %1088 = load i64, i64* %PC.i621
  %1089 = add i64 %1088, 5
  store i64 %1089, i64* %PC.i621
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1091 = load i64, i64* %1090, align 8
  %1092 = add i64 %1091, -8
  %1093 = inttoptr i64 %1092 to i64*
  store i64 %1087, i64* %1093
  store i64 %1092, i64* %1090, align 8
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1085, i64* %1094, align 8
  store %struct.Memory* %loadMem1_400993, %struct.Memory** %MEMORY
  %loadMem2_400993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400993 = load i64, i64* %3
  %call2_400993 = call %struct.Memory* @sub_401050.cdft(%struct.State* %0, i64 %loadPC_400993, %struct.Memory* %loadMem2_400993)
  store %struct.Memory* %call2_400993, %struct.Memory** %MEMORY
  %loadMem_400998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 33
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 11
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %RDI.i620 = bitcast %union.anon* %1100 to i64*
  %1101 = load i64, i64* %PC.i619
  %1102 = add i64 %1101, 5
  store i64 %1102, i64* %PC.i619
  store i64 2048, i64* %RDI.i620, align 8
  store %struct.Memory* %loadMem_400998, %struct.Memory** %MEMORY
  %loadMem_40099d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 9
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %RSI.i618 = bitcast %union.anon* %1108 to i64*
  %1109 = load i64, i64* %PC.i617
  %1110 = add i64 %1109, 5
  store i64 %1110, i64* %PC.i617
  store i64 4294967295, i64* %RSI.i618, align 8
  store %struct.Memory* %loadMem_40099d, %struct.Memory** %MEMORY
  %loadMem_4009a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 7
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RDX.i615 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 15
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %1119 to i64*
  %1120 = load i64, i64* %RBP.i616
  %1121 = sub i64 %1120, 32
  %1122 = load i64, i64* %PC.i614
  %1123 = add i64 %1122, 4
  store i64 %1123, i64* %PC.i614
  %1124 = inttoptr i64 %1121 to i64*
  %1125 = load i64, i64* %1124
  store i64 %1125, i64* %RDX.i615, align 8
  store %struct.Memory* %loadMem_4009a2, %struct.Memory** %MEMORY
  %loadMem_4009a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 33
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %1128 to i64*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 5
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %RCX.i612 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 15
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %1134 to i64*
  %1135 = load i64, i64* %RBP.i613
  %1136 = sub i64 %1135, 24
  %1137 = load i64, i64* %PC.i611
  %1138 = add i64 %1137, 4
  store i64 %1138, i64* %PC.i611
  %1139 = inttoptr i64 %1136 to i64*
  %1140 = load i64, i64* %1139
  store i64 %1140, i64* %RCX.i612, align 8
  store %struct.Memory* %loadMem_4009a6, %struct.Memory** %MEMORY
  %loadMem_4009aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 15
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 17
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %R8.i610 = bitcast %union.anon* %1149 to i64*
  %1150 = load i64, i64* %RBP.i609
  %1151 = sub i64 %1150, 56
  %1152 = load i64, i64* %PC.i608
  %1153 = add i64 %1152, 4
  store i64 %1153, i64* %PC.i608
  %1154 = inttoptr i64 %1151 to i64*
  %1155 = load i64, i64* %1154
  store i64 %1155, i64* %R8.i610, align 8
  store %struct.Memory* %loadMem_4009aa, %struct.Memory** %MEMORY
  %loadMem1_4009ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %PC.i607
  %1160 = add i64 %1159, 1698
  %1161 = load i64, i64* %PC.i607
  %1162 = add i64 %1161, 5
  %1163 = load i64, i64* %PC.i607
  %1164 = add i64 %1163, 5
  store i64 %1164, i64* %PC.i607
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1166 = load i64, i64* %1165, align 8
  %1167 = add i64 %1166, -8
  %1168 = inttoptr i64 %1167 to i64*
  store i64 %1162, i64* %1168
  store i64 %1167, i64* %1165, align 8
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1160, i64* %1169, align 8
  store %struct.Memory* %loadMem1_4009ae, %struct.Memory** %MEMORY
  %loadMem2_4009ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009ae = load i64, i64* %3
  %call2_4009ae = call %struct.Memory* @sub_401050.cdft(%struct.State* %0, i64 %loadPC_4009ae, %struct.Memory* %loadMem2_4009ae)
  store %struct.Memory* %call2_4009ae, %struct.Memory** %MEMORY
  %loadMem_4009b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 33
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 11
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %EDI.i605 = bitcast %union.anon* %1175 to i32*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 11
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RDI.i606 = bitcast %union.anon* %1178 to i64*
  %1179 = load i64, i64* %RDI.i606
  %1180 = load i32, i32* %EDI.i605
  %1181 = zext i32 %1180 to i64
  %1182 = load i64, i64* %PC.i604
  %1183 = add i64 %1182, 2
  store i64 %1183, i64* %PC.i604
  %1184 = xor i64 %1181, %1179
  %1185 = trunc i64 %1184 to i32
  %1186 = and i64 %1184, 4294967295
  store i64 %1186, i64* %RDI.i606, align 8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1187, align 1
  %1188 = and i32 %1185, 255
  %1189 = call i32 @llvm.ctpop.i32(i32 %1188)
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = xor i8 %1191, 1
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1192, i8* %1193, align 1
  %1194 = icmp eq i32 %1185, 0
  %1195 = zext i1 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1195, i8* %1196, align 1
  %1197 = lshr i32 %1185, 31
  %1198 = trunc i32 %1197 to i8
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1198, i8* %1199, align 1
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1200, align 1
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1201, align 1
  store %struct.Memory* %loadMem_4009b3, %struct.Memory** %MEMORY
  %loadMem_4009b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 33
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %1204 to i64*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 9
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RSI.i603 = bitcast %union.anon* %1207 to i64*
  %1208 = load i64, i64* %PC.i602
  %1209 = add i64 %1208, 5
  store i64 %1209, i64* %PC.i602
  store i64 2047, i64* %RSI.i603, align 8
  store %struct.Memory* %loadMem_4009b5, %struct.Memory** %MEMORY
  %loadMem_4009ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 33
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1213, i64 0, i64 0
  %YMM0.i601 = bitcast %union.VectorReg* %1214 to %"class.std::bitset"*
  %1215 = bitcast %"class.std::bitset"* %YMM0.i601 to i8*
  %1216 = load i64, i64* %PC.i600
  %1217 = add i64 %1216, 14054
  %1218 = load i64, i64* %PC.i600
  %1219 = add i64 %1218, 8
  store i64 %1219, i64* %PC.i600
  %1220 = inttoptr i64 %1217 to double*
  %1221 = load double, double* %1220
  %1222 = bitcast i8* %1215 to double*
  store double %1221, double* %1222, align 1
  %1223 = getelementptr inbounds i8, i8* %1215, i64 8
  %1224 = bitcast i8* %1223 to double*
  store double 0.000000e+00, double* %1224, align 1
  store %struct.Memory* %loadMem_4009ba, %struct.Memory** %MEMORY
  %loadMem_4009c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 7
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %RDX.i598 = bitcast %union.anon* %1230 to i64*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 15
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %1233 to i64*
  %1234 = load i64, i64* %RBP.i599
  %1235 = sub i64 %1234, 32
  %1236 = load i64, i64* %PC.i597
  %1237 = add i64 %1236, 4
  store i64 %1237, i64* %PC.i597
  %1238 = inttoptr i64 %1235 to i64*
  %1239 = load i64, i64* %1238
  store i64 %1239, i64* %RDX.i598, align 8
  store %struct.Memory* %loadMem_4009c2, %struct.Memory** %MEMORY
  %loadMem1_4009c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 33
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %PC.i596
  %1244 = add i64 %1243, 1834
  %1245 = load i64, i64* %PC.i596
  %1246 = add i64 %1245, 5
  %1247 = load i64, i64* %PC.i596
  %1248 = add i64 %1247, 5
  store i64 %1248, i64* %PC.i596
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1250 = load i64, i64* %1249, align 8
  %1251 = add i64 %1250, -8
  %1252 = inttoptr i64 %1251 to i64*
  store i64 %1246, i64* %1252
  store i64 %1251, i64* %1249, align 8
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1244, i64* %1253, align 8
  store %struct.Memory* %loadMem1_4009c6, %struct.Memory** %MEMORY
  %loadMem2_4009c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009c6 = load i64, i64* %3
  %call2_4009c6 = call %struct.Memory* @sub_4010f0.errorcheck(%struct.State* %0, i64 %loadPC_4009c6, %struct.Memory* %loadMem2_4009c6)
  store %struct.Memory* %call2_4009c6, %struct.Memory** %MEMORY
  %loadMem_4009cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1258 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1257, i64 0, i64 1
  %YMM1.i595 = bitcast %union.VectorReg* %1258 to %"class.std::bitset"*
  %1259 = bitcast %"class.std::bitset"* %YMM1.i595 to i8*
  %1260 = load i64, i64* %PC.i594
  %1261 = add i64 %1260, 14029
  %1262 = load i64, i64* %PC.i594
  %1263 = add i64 %1262, 8
  store i64 %1263, i64* %PC.i594
  %1264 = inttoptr i64 %1261 to double*
  %1265 = load double, double* %1264
  %1266 = bitcast i8* %1259 to double*
  store double %1265, double* %1266, align 1
  %1267 = getelementptr inbounds i8, i8* %1259, i64 8
  %1268 = bitcast i8* %1267 to double*
  store double 0.000000e+00, double* %1268, align 1
  store %struct.Memory* %loadMem_4009cb, %struct.Memory** %MEMORY
  %loadMem_4009d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 33
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %1271 to i64*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 15
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1276 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1275, i64 0, i64 0
  %XMM0.i593 = bitcast %union.VectorReg* %1276 to %union.vec128_t*
  %1277 = load i64, i64* %RBP.i592
  %1278 = sub i64 %1277, 96
  %1279 = bitcast %union.vec128_t* %XMM0.i593 to i8*
  %1280 = load i64, i64* %PC.i591
  %1281 = add i64 %1280, 5
  store i64 %1281, i64* %PC.i591
  %1282 = bitcast i8* %1279 to double*
  %1283 = load double, double* %1282, align 1
  %1284 = inttoptr i64 %1278 to double*
  store double %1283, double* %1284
  store %struct.Memory* %loadMem_4009d3, %struct.Memory** %MEMORY
  %loadMem_4009d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 33
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 15
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1292 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1291, i64 0, i64 0
  %YMM0.i590 = bitcast %union.VectorReg* %1292 to %"class.std::bitset"*
  %1293 = bitcast %"class.std::bitset"* %YMM0.i590 to i8*
  %1294 = load i64, i64* %RBP.i589
  %1295 = sub i64 %1294, 96
  %1296 = load i64, i64* %PC.i588
  %1297 = add i64 %1296, 5
  store i64 %1297, i64* %PC.i588
  %1298 = inttoptr i64 %1295 to double*
  %1299 = load double, double* %1298
  %1300 = bitcast i8* %1293 to double*
  store double %1299, double* %1300, align 1
  %1301 = getelementptr inbounds i8, i8* %1293, i64 8
  %1302 = bitcast i8* %1301 to double*
  store double 0.000000e+00, double* %1302, align 1
  store %struct.Memory* %loadMem_4009d8, %struct.Memory** %MEMORY
  %loadMem_4009dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 33
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1306, i64 0, i64 2
  %YMM2.i587 = bitcast %union.VectorReg* %1307 to %"class.std::bitset"*
  %1308 = bitcast %"class.std::bitset"* %YMM2.i587 to i8*
  %1309 = load i64, i64* %PC.i586
  %1310 = add i64 %1309, 14099
  %1311 = load i64, i64* %PC.i586
  %1312 = add i64 %1311, 7
  store i64 %1312, i64* %PC.i586
  %1313 = inttoptr i64 %1310 to float*
  %1314 = load float, float* %1313
  %1315 = add i64 %1310, 4
  %1316 = inttoptr i64 %1315 to float*
  %1317 = load float, float* %1316
  %1318 = add i64 %1310, 8
  %1319 = inttoptr i64 %1318 to float*
  %1320 = load float, float* %1319
  %1321 = add i64 %1310, 12
  %1322 = inttoptr i64 %1321 to float*
  %1323 = load float, float* %1322
  %1324 = bitcast i8* %1308 to float*
  store float %1314, float* %1324, align 1
  %1325 = getelementptr inbounds i8, i8* %1308, i64 4
  %1326 = bitcast i8* %1325 to float*
  store float %1317, float* %1326, align 1
  %1327 = getelementptr inbounds i8, i8* %1308, i64 8
  %1328 = bitcast i8* %1327 to float*
  store float %1320, float* %1328, align 1
  %1329 = getelementptr inbounds i8, i8* %1308, i64 12
  %1330 = bitcast i8* %1329 to float*
  store float %1323, float* %1330, align 1
  store %struct.Memory* %loadMem_4009dd, %struct.Memory** %MEMORY
  %loadMem_4009e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 33
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1333 to i64*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1335 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1334, i64 0, i64 0
  %YMM0.i584 = bitcast %union.VectorReg* %1335 to %"class.std::bitset"*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1337 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1336, i64 0, i64 2
  %XMM2.i585 = bitcast %union.VectorReg* %1337 to %union.vec128_t*
  %1338 = bitcast %"class.std::bitset"* %YMM0.i584 to i8*
  %1339 = bitcast %"class.std::bitset"* %YMM0.i584 to i8*
  %1340 = bitcast %union.vec128_t* %XMM2.i585 to i8*
  %1341 = load i64, i64* %PC.i583
  %1342 = add i64 %1341, 4
  store i64 %1342, i64* %PC.i583
  %1343 = bitcast i8* %1339 to i64*
  %1344 = load i64, i64* %1343, align 1
  %1345 = getelementptr inbounds i8, i8* %1339, i64 8
  %1346 = bitcast i8* %1345 to i64*
  %1347 = load i64, i64* %1346, align 1
  %1348 = bitcast i8* %1340 to i64*
  %1349 = load i64, i64* %1348, align 1
  %1350 = getelementptr inbounds i8, i8* %1340, i64 8
  %1351 = bitcast i8* %1350 to i64*
  %1352 = load i64, i64* %1351, align 1
  %1353 = and i64 %1349, %1344
  %1354 = and i64 %1352, %1347
  %1355 = trunc i64 %1353 to i32
  %1356 = lshr i64 %1353, 32
  %1357 = trunc i64 %1356 to i32
  %1358 = bitcast i8* %1338 to i32*
  store i32 %1355, i32* %1358, align 1
  %1359 = getelementptr inbounds i8, i8* %1338, i64 4
  %1360 = bitcast i8* %1359 to i32*
  store i32 %1357, i32* %1360, align 1
  %1361 = trunc i64 %1354 to i32
  %1362 = getelementptr inbounds i8, i8* %1338, i64 8
  %1363 = bitcast i8* %1362 to i32*
  store i32 %1361, i32* %1363, align 1
  %1364 = lshr i64 %1354, 32
  %1365 = trunc i64 %1364 to i32
  %1366 = getelementptr inbounds i8, i8* %1338, i64 12
  %1367 = bitcast i8* %1366 to i32*
  store i32 %1365, i32* %1367, align 1
  store %struct.Memory* %loadMem_4009e4, %struct.Memory** %MEMORY
  %loadMem_4009e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1372 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1371, i64 0, i64 0
  %XMM0.i579 = bitcast %union.VectorReg* %1372 to %union.vec128_t*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1374 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1373, i64 0, i64 1
  %XMM1.i580 = bitcast %union.VectorReg* %1374 to %union.vec128_t*
  %1375 = bitcast %union.vec128_t* %XMM0.i579 to i8*
  %1376 = bitcast %union.vec128_t* %XMM1.i580 to i8*
  %1377 = load i64, i64* %PC.i578
  %1378 = add i64 %1377, 4
  store i64 %1378, i64* %PC.i578
  %1379 = bitcast i8* %1375 to double*
  %1380 = load double, double* %1379, align 1
  %1381 = bitcast i8* %1376 to double*
  %1382 = load double, double* %1381, align 1
  %1383 = fcmp uno double %1380, %1382
  br i1 %1383, label %1384, label %1396

; <label>:1384:                                   ; preds = %routine_ucomisd__xmm1___xmm0.exit727
  %1385 = fadd double %1380, %1382
  %1386 = bitcast double %1385 to i64
  %1387 = and i64 %1386, 9221120237041090560
  %1388 = icmp eq i64 %1387, 9218868437227405312
  %1389 = and i64 %1386, 2251799813685247
  %1390 = icmp ne i64 %1389, 0
  %1391 = and i1 %1388, %1390
  br i1 %1391, label %1392, label %1402

; <label>:1392:                                   ; preds = %1384
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1394 = load i64, i64* %1393, align 8
  %1395 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1394, %struct.Memory* %loadMem_4009e8)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:1396:                                   ; preds = %routine_ucomisd__xmm1___xmm0.exit727
  %1397 = fcmp ogt double %1380, %1382
  br i1 %1397, label %1402, label %1398

; <label>:1398:                                   ; preds = %1396
  %1399 = fcmp olt double %1380, %1382
  br i1 %1399, label %1402, label %1400

; <label>:1400:                                   ; preds = %1398
  %1401 = fcmp oeq double %1380, %1382
  br i1 %1401, label %1402, label %1409

; <label>:1402:                                   ; preds = %1400, %1398, %1396, %1384
  %1403 = phi i8 [ 0, %1396 ], [ 0, %1398 ], [ 1, %1400 ], [ 1, %1384 ]
  %1404 = phi i8 [ 0, %1396 ], [ 0, %1398 ], [ 0, %1400 ], [ 1, %1384 ]
  %1405 = phi i8 [ 0, %1396 ], [ 1, %1398 ], [ 0, %1400 ], [ 1, %1384 ]
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1403, i8* %1406, align 1
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1404, i8* %1407, align 1
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1405, i8* %1408, align 1
  br label %1409

; <label>:1409:                                   ; preds = %1402, %1400
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1410, align 1
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1411, align 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1412, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %1392, %1409
  %1413 = phi %struct.Memory* [ %1395, %1392 ], [ %loadMem_4009e8, %1409 ]
  store %struct.Memory* %1413, %struct.Memory** %MEMORY
  %loadMem_4009ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1416 to i64*
  %1417 = load i64, i64* %PC.i577
  %1418 = add i64 %1417, 39
  %1419 = load i64, i64* %PC.i577
  %1420 = add i64 %1419, 6
  %1421 = load i64, i64* %PC.i577
  %1422 = add i64 %1421, 6
  store i64 %1422, i64* %PC.i577
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1424 = load i8, i8* %1423, align 1
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1426 = load i8, i8* %1425, align 1
  %1427 = or i8 %1426, %1424
  %1428 = icmp ne i8 %1427, 0
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %BRANCH_TAKEN, align 1
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1431 = select i1 %1428, i64 %1418, i64 %1420
  store i64 %1431, i64* %1430, align 8
  store %struct.Memory* %loadMem_4009ec, %struct.Memory** %MEMORY
  %loadBr_4009ec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4009ec = icmp eq i8 %loadBr_4009ec, 1
  br i1 %cmpBr_4009ec, label %block_.L_400a13, label %block_4009f2

block_4009f2:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_4009f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 33
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 11
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RDI.i576 = bitcast %union.anon* %1437 to i64*
  %1438 = load i64, i64* %PC.i575
  %1439 = add i64 %1438, 10
  store i64 %1439, i64* %PC.i575
  store i64 4210944, i64* %RDI.i576, align 8
  store %struct.Memory* %loadMem_4009f2, %struct.Memory** %MEMORY
  %loadMem_4009fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 33
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 15
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1447 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1446, i64 0, i64 0
  %YMM0.i574 = bitcast %union.VectorReg* %1447 to %"class.std::bitset"*
  %1448 = bitcast %"class.std::bitset"* %YMM0.i574 to i8*
  %1449 = load i64, i64* %RBP.i573
  %1450 = sub i64 %1449, 96
  %1451 = load i64, i64* %PC.i572
  %1452 = add i64 %1451, 5
  store i64 %1452, i64* %PC.i572
  %1453 = inttoptr i64 %1450 to double*
  %1454 = load double, double* %1453
  %1455 = bitcast i8* %1448 to double*
  store double %1454, double* %1455, align 1
  %1456 = getelementptr inbounds i8, i8* %1448, i64 8
  %1457 = bitcast i8* %1456 to double*
  store double 0.000000e+00, double* %1457, align 1
  store %struct.Memory* %loadMem_4009fc, %struct.Memory** %MEMORY
  %loadMem_400a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 33
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 1
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %1464 = bitcast %union.anon* %1463 to %struct.anon.2*
  %AL.i571 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1464, i32 0, i32 0
  %1465 = load i64, i64* %PC.i570
  %1466 = add i64 %1465, 2
  store i64 %1466, i64* %PC.i570
  store i8 1, i8* %AL.i571, align 1
  store %struct.Memory* %loadMem_400a01, %struct.Memory** %MEMORY
  %loadMem1_400a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %PC.i569
  %1471 = add i64 %1470, -819
  %1472 = load i64, i64* %PC.i569
  %1473 = add i64 %1472, 5
  %1474 = load i64, i64* %PC.i569
  %1475 = add i64 %1474, 5
  store i64 %1475, i64* %PC.i569
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1477 = load i64, i64* %1476, align 8
  %1478 = add i64 %1477, -8
  %1479 = inttoptr i64 %1478 to i64*
  store i64 %1473, i64* %1479
  store i64 %1478, i64* %1476, align 8
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1471, i64* %1480, align 8
  store %struct.Memory* %loadMem1_400a03, %struct.Memory** %MEMORY
  %loadMem2_400a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a03 = load i64, i64* %3
  %call2_400a03 = call %struct.Memory* @sub_4006d0.printf_plt(%struct.State* %0, i64 %loadPC_400a03, %struct.Memory* %loadMem2_400a03)
  store %struct.Memory* %call2_400a03, %struct.Memory** %MEMORY
  %loadMem_400a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 1
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %EAX.i567 = bitcast %union.anon* %1486 to i32*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 15
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %RBP.i568
  %1491 = sub i64 %1490, 156
  %1492 = load i32, i32* %EAX.i567
  %1493 = zext i32 %1492 to i64
  %1494 = load i64, i64* %PC.i566
  %1495 = add i64 %1494, 6
  store i64 %1495, i64* %PC.i566
  %1496 = inttoptr i64 %1491 to i32*
  store i32 %1492, i32* %1496
  store %struct.Memory* %loadMem_400a08, %struct.Memory** %MEMORY
  %loadMem1_400a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 33
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %PC.i565
  %1501 = add i64 %1500, -862
  %1502 = load i64, i64* %PC.i565
  %1503 = add i64 %1502, 5
  %1504 = load i64, i64* %PC.i565
  %1505 = add i64 %1504, 5
  store i64 %1505, i64* %PC.i565
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1507 = load i64, i64* %1506, align 8
  %1508 = add i64 %1507, -8
  %1509 = inttoptr i64 %1508 to i64*
  store i64 %1503, i64* %1509
  store i64 %1508, i64* %1506, align 8
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1501, i64* %1510, align 8
  store %struct.Memory* %loadMem1_400a0e, %struct.Memory** %MEMORY
  %loadMem2_400a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a0e = load i64, i64* %3
  %call2_400a0e = call %struct.Memory* @sub_4006b0.abort_plt(%struct.State* %0, i64 %loadPC_400a0e, %struct.Memory* %loadMem2_400a0e)
  store %struct.Memory* %call2_400a0e, %struct.Memory** %MEMORY
  br label %block_.L_400a13

block_.L_400a13:                                  ; preds = %block_4009f2, %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_400a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %EAX.i563 = bitcast %union.anon* %1516 to i32*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 1
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RAX.i564
  %1521 = load i32, i32* %EAX.i563
  %1522 = zext i32 %1521 to i64
  %1523 = load i64, i64* %PC.i562
  %1524 = add i64 %1523, 2
  store i64 %1524, i64* %PC.i562
  %1525 = xor i64 %1522, %1520
  %1526 = trunc i64 %1525 to i32
  %1527 = and i64 %1525, 4294967295
  store i64 %1527, i64* %RAX.i564, align 8
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1528, align 1
  %1529 = and i32 %1526, 255
  %1530 = call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1533, i8* %1534, align 1
  %1535 = icmp eq i32 %1526, 0
  %1536 = zext i1 %1535 to i8
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1536, i8* %1537, align 1
  %1538 = lshr i32 %1526, 31
  %1539 = trunc i32 %1538 to i8
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1539, i8* %1540, align 1
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1541, align 1
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1542, align 1
  store %struct.Memory* %loadMem_400a13, %struct.Memory** %MEMORY
  %loadMem_400a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 33
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 9
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RSI.i561 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %PC.i560
  %1550 = add i64 %1549, 5
  store i64 %1550, i64* %PC.i560
  store i64 1023, i64* %RSI.i561, align 8
  store %struct.Memory* %loadMem_400a15, %struct.Memory** %MEMORY
  %loadMem_400a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 33
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %1553 to i64*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 5
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %1556 to i64*
  %1557 = load i64, i64* %PC.i558
  %1558 = add i64 %1557, 5
  store i64 %1558, i64* %PC.i558
  store i64 16384, i64* %RCX.i559, align 8
  store %struct.Memory* %loadMem_400a1a, %struct.Memory** %MEMORY
  %loadMem_400a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 33
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 5
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %ECX.i556 = bitcast %union.anon* %1564 to i32*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 7
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %RDX.i557 = bitcast %union.anon* %1567 to i64*
  %1568 = load i32, i32* %ECX.i556
  %1569 = zext i32 %1568 to i64
  %1570 = load i64, i64* %PC.i555
  %1571 = add i64 %1570, 2
  store i64 %1571, i64* %PC.i555
  %1572 = and i64 %1569, 4294967295
  store i64 %1572, i64* %RDX.i557, align 8
  store %struct.Memory* %loadMem_400a1f, %struct.Memory** %MEMORY
  %loadMem_400a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 11
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %RDI.i553 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 15
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %1581 to i64*
  %1582 = load i64, i64* %RBP.i554
  %1583 = sub i64 %1582, 32
  %1584 = load i64, i64* %PC.i552
  %1585 = add i64 %1584, 4
  store i64 %1585, i64* %PC.i552
  %1586 = inttoptr i64 %1583 to i64*
  %1587 = load i64, i64* %1586
  store i64 %1587, i64* %RDI.i553, align 8
  store %struct.Memory* %loadMem_400a21, %struct.Memory** %MEMORY
  %loadMem_400a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 9
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %ESI.i550 = bitcast %union.anon* %1593 to i32*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 15
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %RBP.i551
  %1598 = sub i64 %1597, 160
  %1599 = load i32, i32* %ESI.i550
  %1600 = zext i32 %1599 to i64
  %1601 = load i64, i64* %PC.i549
  %1602 = add i64 %1601, 6
  store i64 %1602, i64* %PC.i549
  %1603 = inttoptr i64 %1598 to i32*
  store i32 %1599, i32* %1603
  store %struct.Memory* %loadMem_400a25, %struct.Memory** %MEMORY
  %loadMem_400a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 1
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %EAX.i547 = bitcast %union.anon* %1609 to i32*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 9
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RSI.i548 = bitcast %union.anon* %1612 to i64*
  %1613 = load i32, i32* %EAX.i547
  %1614 = zext i32 %1613 to i64
  %1615 = load i64, i64* %PC.i546
  %1616 = add i64 %1615, 2
  store i64 %1616, i64* %PC.i546
  %1617 = and i64 %1614, 4294967295
  store i64 %1617, i64* %RSI.i548, align 8
  store %struct.Memory* %loadMem_400a2b, %struct.Memory** %MEMORY
  %loadMem_400a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 33
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 1
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %EAX.i544 = bitcast %union.anon* %1623 to i32*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 15
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %1626 to i64*
  %1627 = load i64, i64* %RBP.i545
  %1628 = sub i64 %1627, 164
  %1629 = load i32, i32* %EAX.i544
  %1630 = zext i32 %1629 to i64
  %1631 = load i64, i64* %PC.i543
  %1632 = add i64 %1631, 6
  store i64 %1632, i64* %PC.i543
  %1633 = inttoptr i64 %1628 to i32*
  store i32 %1629, i32* %1633
  store %struct.Memory* %loadMem_400a2d, %struct.Memory** %MEMORY
  %loadMem1_400a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %1636 to i64*
  %1637 = load i64, i64* %PC.i542
  %1638 = add i64 %1637, -835
  %1639 = load i64, i64* %PC.i542
  %1640 = add i64 %1639, 5
  %1641 = load i64, i64* %PC.i542
  %1642 = add i64 %1641, 5
  store i64 %1642, i64* %PC.i542
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1644 = load i64, i64* %1643, align 8
  %1645 = add i64 %1644, -8
  %1646 = inttoptr i64 %1645 to i64*
  store i64 %1640, i64* %1646
  store i64 %1645, i64* %1643, align 8
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1638, i64* %1647, align 8
  store %struct.Memory* %loadMem1_400a33, %struct.Memory** %MEMORY
  %loadMem2_400a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a33 = load i64, i64* %3
  %call2_400a33 = call %struct.Memory* @sub_4006f0.memset_plt(%struct.State* %0, i64 %loadPC_400a33, %struct.Memory* %loadMem2_400a33)
  store %struct.Memory* %call2_400a33, %struct.Memory** %MEMORY
  %loadMem_400a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 33
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 7
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RDX.i540 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 15
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %1656 to i64*
  %1657 = load i64, i64* %RBP.i541
  %1658 = sub i64 %1657, 32
  %1659 = load i64, i64* %PC.i539
  %1660 = add i64 %1659, 4
  store i64 %1660, i64* %PC.i539
  %1661 = inttoptr i64 %1658 to i64*
  %1662 = load i64, i64* %1661
  store i64 %1662, i64* %RDX.i540, align 8
  store %struct.Memory* %loadMem_400a38, %struct.Memory** %MEMORY
  %loadMem_400a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 11
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %RDI.i537 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 15
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %1671 to i64*
  %1672 = load i64, i64* %RBP.i538
  %1673 = sub i64 %1672, 164
  %1674 = load i64, i64* %PC.i536
  %1675 = add i64 %1674, 6
  store i64 %1675, i64* %PC.i536
  %1676 = inttoptr i64 %1673 to i32*
  %1677 = load i32, i32* %1676
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RDI.i537, align 8
  store %struct.Memory* %loadMem_400a3c, %struct.Memory** %MEMORY
  %loadMem_400a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 33
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1681 to i64*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 9
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %RSI.i534 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 15
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %1687 to i64*
  %1688 = load i64, i64* %RBP.i535
  %1689 = sub i64 %1688, 160
  %1690 = load i64, i64* %PC.i533
  %1691 = add i64 %1690, 6
  store i64 %1691, i64* %PC.i533
  %1692 = inttoptr i64 %1689 to i32*
  %1693 = load i32, i32* %1692
  %1694 = zext i32 %1693 to i64
  store i64 %1694, i64* %RSI.i534, align 8
  store %struct.Memory* %loadMem_400a42, %struct.Memory** %MEMORY
  %loadMem1_400a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 33
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %1697 to i64*
  %1698 = load i64, i64* %PC.i532
  %1699 = add i64 %1698, 1416
  %1700 = load i64, i64* %PC.i532
  %1701 = add i64 %1700, 5
  %1702 = load i64, i64* %PC.i532
  %1703 = add i64 %1702, 5
  store i64 %1703, i64* %PC.i532
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1705 = load i64, i64* %1704, align 8
  %1706 = add i64 %1705, -8
  %1707 = inttoptr i64 %1706 to i64*
  store i64 %1701, i64* %1707
  store i64 %1706, i64* %1704, align 8
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1699, i64* %1708, align 8
  store %struct.Memory* %loadMem1_400a48, %struct.Memory** %MEMORY
  %loadMem2_400a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a48 = load i64, i64* %3
  %call2_400a48 = call %struct.Memory* @sub_400fd0.putdata(%struct.State* %0, i64 %loadPC_400a48, %struct.Memory* %loadMem2_400a48)
  store %struct.Memory* %call2_400a48, %struct.Memory** %MEMORY
  %loadMem_400a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 33
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 11
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RDI.i531 = bitcast %union.anon* %1714 to i64*
  %1715 = load i64, i64* %PC.i530
  %1716 = add i64 %1715, 5
  store i64 %1716, i64* %PC.i530
  store i64 2048, i64* %RDI.i531, align 8
  store %struct.Memory* %loadMem_400a4d, %struct.Memory** %MEMORY
  %loadMem_400a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 9
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %RSI.i529 = bitcast %union.anon* %1722 to i64*
  %1723 = load i64, i64* %PC.i528
  %1724 = add i64 %1723, 5
  store i64 %1724, i64* %PC.i528
  store i64 1, i64* %RSI.i529, align 8
  store %struct.Memory* %loadMem_400a52, %struct.Memory** %MEMORY
  %loadMem_400a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 33
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 7
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RDX.i526 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 15
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %1733 to i64*
  %1734 = load i64, i64* %RBP.i527
  %1735 = sub i64 %1734, 32
  %1736 = load i64, i64* %PC.i525
  %1737 = add i64 %1736, 4
  store i64 %1737, i64* %PC.i525
  %1738 = inttoptr i64 %1735 to i64*
  %1739 = load i64, i64* %1738
  store i64 %1739, i64* %RDX.i526, align 8
  store %struct.Memory* %loadMem_400a57, %struct.Memory** %MEMORY
  %loadMem_400a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 33
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 5
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 15
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %1748 to i64*
  %1749 = load i64, i64* %RBP.i524
  %1750 = sub i64 %1749, 24
  %1751 = load i64, i64* %PC.i522
  %1752 = add i64 %1751, 4
  store i64 %1752, i64* %PC.i522
  %1753 = inttoptr i64 %1750 to i64*
  %1754 = load i64, i64* %1753
  store i64 %1754, i64* %RCX.i523, align 8
  store %struct.Memory* %loadMem_400a5b, %struct.Memory** %MEMORY
  %loadMem_400a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 33
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %1757 to i64*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 15
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %1760 to i64*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 17
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %R8.i521 = bitcast %union.anon* %1763 to i64*
  %1764 = load i64, i64* %RBP.i520
  %1765 = sub i64 %1764, 56
  %1766 = load i64, i64* %PC.i519
  %1767 = add i64 %1766, 4
  store i64 %1767, i64* %PC.i519
  %1768 = inttoptr i64 %1765 to i64*
  %1769 = load i64, i64* %1768
  store i64 %1769, i64* %R8.i521, align 8
  store %struct.Memory* %loadMem_400a5f, %struct.Memory** %MEMORY
  %loadMem1_400a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1772 to i64*
  %1773 = load i64, i64* %PC.i518
  %1774 = add i64 %1773, 1517
  %1775 = load i64, i64* %PC.i518
  %1776 = add i64 %1775, 5
  %1777 = load i64, i64* %PC.i518
  %1778 = add i64 %1777, 5
  store i64 %1778, i64* %PC.i518
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1780 = load i64, i64* %1779, align 8
  %1781 = add i64 %1780, -8
  %1782 = inttoptr i64 %1781 to i64*
  store i64 %1776, i64* %1782
  store i64 %1781, i64* %1779, align 8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1774, i64* %1783, align 8
  store %struct.Memory* %loadMem1_400a63, %struct.Memory** %MEMORY
  %loadMem2_400a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a63 = load i64, i64* %3
  %call2_400a63 = call %struct.Memory* @sub_401050.cdft(%struct.State* %0, i64 %loadPC_400a63, %struct.Memory* %loadMem2_400a63)
  store %struct.Memory* %call2_400a63, %struct.Memory** %MEMORY
  %loadMem_400a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 15
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %RBP.i517
  %1791 = sub i64 %1790, 12
  %1792 = load i64, i64* %PC.i516
  %1793 = add i64 %1792, 7
  store i64 %1793, i64* %PC.i516
  %1794 = inttoptr i64 %1791 to i32*
  store i32 0, i32* %1794
  store %struct.Memory* %loadMem_400a68, %struct.Memory** %MEMORY
  br label %block_.L_400a6f

block_.L_400a6f:                                  ; preds = %block_400a7c, %block_.L_400a13
  %loadMem_400a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 33
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 15
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %RBP.i515
  %1802 = sub i64 %1801, 12
  %1803 = load i64, i64* %PC.i514
  %1804 = add i64 %1803, 7
  store i64 %1804, i64* %PC.i514
  %1805 = inttoptr i64 %1802 to i32*
  %1806 = load i32, i32* %1805
  %1807 = sub i32 %1806, 1024
  %1808 = icmp ult i32 %1806, 1024
  %1809 = zext i1 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1809, i8* %1810, align 1
  %1811 = and i32 %1807, 255
  %1812 = call i32 @llvm.ctpop.i32(i32 %1811)
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = xor i8 %1814, 1
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1815, i8* %1816, align 1
  %1817 = xor i32 %1806, 1024
  %1818 = xor i32 %1817, %1807
  %1819 = lshr i32 %1818, 4
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1821, i8* %1822, align 1
  %1823 = icmp eq i32 %1807, 0
  %1824 = zext i1 %1823 to i8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1824, i8* %1825, align 1
  %1826 = lshr i32 %1807, 31
  %1827 = trunc i32 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1827, i8* %1828, align 1
  %1829 = lshr i32 %1806, 31
  %1830 = xor i32 %1826, %1829
  %1831 = add i32 %1830, %1829
  %1832 = icmp eq i32 %1831, 2
  %1833 = zext i1 %1832 to i8
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1833, i8* %1834, align 1
  store %struct.Memory* %loadMem_400a6f, %struct.Memory** %MEMORY
  %loadMem_400a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1837 to i64*
  %1838 = load i64, i64* %PC.i513
  %1839 = add i64 %1838, 85
  %1840 = load i64, i64* %PC.i513
  %1841 = add i64 %1840, 6
  %1842 = load i64, i64* %PC.i513
  %1843 = add i64 %1842, 6
  store i64 %1843, i64* %PC.i513
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1845 = load i8, i8* %1844, align 1
  %1846 = icmp ne i8 %1845, 0
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1848 = load i8, i8* %1847, align 1
  %1849 = icmp ne i8 %1848, 0
  %1850 = xor i1 %1846, %1849
  %1851 = xor i1 %1850, true
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %BRANCH_TAKEN, align 1
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1854 = select i1 %1850, i64 %1841, i64 %1839
  store i64 %1854, i64* %1853, align 8
  store %struct.Memory* %loadMem_400a76, %struct.Memory** %MEMORY
  %loadBr_400a76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a76 = icmp eq i8 %loadBr_400a76, 1
  br i1 %cmpBr_400a76, label %block_.L_400acb, label %block_400a7c

block_400a7c:                                     ; preds = %block_.L_400a6f
  %loadMem_400a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 33
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 1
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %PC.i511
  %1862 = add i64 %1861, 10
  store i64 %1862, i64* %PC.i511
  store i64 -9223372036854775808, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_400a7c, %struct.Memory** %MEMORY
  %loadMem_400a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 5
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 15
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %RBP.i510
  %1873 = sub i64 %1872, 32
  %1874 = load i64, i64* %PC.i508
  %1875 = add i64 %1874, 4
  store i64 %1875, i64* %PC.i508
  %1876 = inttoptr i64 %1873 to i64*
  %1877 = load i64, i64* %1876
  store i64 %1877, i64* %RCX.i509, align 8
  store %struct.Memory* %loadMem_400a86, %struct.Memory** %MEMORY
  %loadMem_400a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 33
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 7
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %RDX.i506 = bitcast %union.anon* %1883 to i64*
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 15
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %1886 to i64*
  %1887 = load i64, i64* %RBP.i507
  %1888 = sub i64 %1887, 12
  %1889 = load i64, i64* %PC.i505
  %1890 = add i64 %1889, 3
  store i64 %1890, i64* %PC.i505
  %1891 = inttoptr i64 %1888 to i32*
  %1892 = load i32, i32* %1891
  %1893 = zext i32 %1892 to i64
  store i64 %1893, i64* %RDX.i506, align 8
  store %struct.Memory* %loadMem_400a8a, %struct.Memory** %MEMORY
  %loadMem_400a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 33
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1896 to i64*
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 7
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %RDX.i504 = bitcast %union.anon* %1899 to i64*
  %1900 = load i64, i64* %RDX.i504
  %1901 = load i64, i64* %PC.i503
  %1902 = add i64 %1901, 2
  store i64 %1902, i64* %PC.i503
  %1903 = trunc i64 %1900 to i32
  %1904 = shl i32 %1903, 1
  %1905 = icmp slt i32 %1903, 0
  %1906 = icmp slt i32 %1904, 0
  %1907 = xor i1 %1905, %1906
  %1908 = zext i32 %1904 to i64
  store i64 %1908, i64* %RDX.i504, align 8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1910 = zext i1 %1905 to i8
  store i8 %1910, i8* %1909, align 1
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1912 = and i32 %1904, 254
  %1913 = call i32 @llvm.ctpop.i32(i32 %1912)
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  %1916 = xor i8 %1915, 1
  store i8 %1916, i8* %1911, align 1
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1917, align 1
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1919 = icmp eq i32 %1904, 0
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %1918, align 1
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1922 = lshr i32 %1904, 31
  %1923 = trunc i32 %1922 to i8
  store i8 %1923, i8* %1921, align 1
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1925 = zext i1 %1907 to i8
  store i8 %1925, i8* %1924, align 1
  store %struct.Memory* %loadMem_400a8d, %struct.Memory** %MEMORY
  %loadMem_400a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 7
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %RDX.i502 = bitcast %union.anon* %1931 to i64*
  %1932 = load i64, i64* %RDX.i502
  %1933 = load i64, i64* %PC.i501
  %1934 = add i64 %1933, 3
  store i64 %1934, i64* %PC.i501
  %1935 = trunc i64 %1932 to i32
  %1936 = add i32 1, %1935
  %1937 = zext i32 %1936 to i64
  store i64 %1937, i64* %RDX.i502, align 8
  %1938 = icmp ult i32 %1936, %1935
  %1939 = icmp ult i32 %1936, 1
  %1940 = or i1 %1938, %1939
  %1941 = zext i1 %1940 to i8
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1941, i8* %1942, align 1
  %1943 = and i32 %1936, 255
  %1944 = call i32 @llvm.ctpop.i32(i32 %1943)
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  %1947 = xor i8 %1946, 1
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1947, i8* %1948, align 1
  %1949 = xor i64 1, %1932
  %1950 = trunc i64 %1949 to i32
  %1951 = xor i32 %1950, %1936
  %1952 = lshr i32 %1951, 4
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1954, i8* %1955, align 1
  %1956 = icmp eq i32 %1936, 0
  %1957 = zext i1 %1956 to i8
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1957, i8* %1958, align 1
  %1959 = lshr i32 %1936, 31
  %1960 = trunc i32 %1959 to i8
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1960, i8* %1961, align 1
  %1962 = lshr i32 %1935, 31
  %1963 = xor i32 %1959, %1962
  %1964 = add i32 %1963, %1959
  %1965 = icmp eq i32 %1964, 2
  %1966 = zext i1 %1965 to i8
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1966, i8* %1967, align 1
  store %struct.Memory* %loadMem_400a90, %struct.Memory** %MEMORY
  %loadMem_400a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 33
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 7
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %EDX.i499 = bitcast %union.anon* %1973 to i32*
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 9
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %RSI.i500 = bitcast %union.anon* %1976 to i64*
  %1977 = load i32, i32* %EDX.i499
  %1978 = zext i32 %1977 to i64
  %1979 = load i64, i64* %PC.i498
  %1980 = add i64 %1979, 3
  store i64 %1980, i64* %PC.i498
  %1981 = shl i64 %1978, 32
  %1982 = ashr exact i64 %1981, 32
  store i64 %1982, i64* %RSI.i500, align 8
  store %struct.Memory* %loadMem_400a93, %struct.Memory** %MEMORY
  %loadMem_400a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 33
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %1985 to i64*
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 5
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %1988 to i64*
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 9
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %RSI.i496 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1993 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1992, i64 0, i64 0
  %YMM0.i497 = bitcast %union.VectorReg* %1993 to %"class.std::bitset"*
  %1994 = bitcast %"class.std::bitset"* %YMM0.i497 to i8*
  %1995 = load i64, i64* %RCX.i495
  %1996 = load i64, i64* %RSI.i496
  %1997 = mul i64 %1996, 8
  %1998 = add i64 %1997, %1995
  %1999 = load i64, i64* %PC.i494
  %2000 = add i64 %1999, 5
  store i64 %2000, i64* %PC.i494
  %2001 = inttoptr i64 %1998 to double*
  %2002 = load double, double* %2001
  %2003 = bitcast i8* %1994 to double*
  store double %2002, double* %2003, align 1
  %2004 = getelementptr inbounds i8, i8* %1994, i64 8
  %2005 = bitcast i8* %2004 to double*
  store double 0.000000e+00, double* %2005, align 1
  store %struct.Memory* %loadMem_400a96, %struct.Memory** %MEMORY
  %loadMem_400a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 33
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 5
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2013 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2012, i64 0, i64 0
  %XMM0.i493 = bitcast %union.VectorReg* %2013 to %union.vec128_t*
  %2014 = bitcast %union.vec128_t* %XMM0.i493 to i8*
  %2015 = load i64, i64* %PC.i491
  %2016 = add i64 %2015, 5
  store i64 %2016, i64* %PC.i491
  %2017 = bitcast i8* %2014 to i64*
  %2018 = load i64, i64* %2017, align 1
  store i64 %2018, i64* %RCX.i492, align 1
  store %struct.Memory* %loadMem_400a9b, %struct.Memory** %MEMORY
  %loadMem_400aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 33
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 1
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 5
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %2027 to i64*
  %2028 = load i64, i64* %RCX.i490
  %2029 = load i64, i64* %RAX.i489
  %2030 = load i64, i64* %PC.i488
  %2031 = add i64 %2030, 3
  store i64 %2031, i64* %PC.i488
  %2032 = xor i64 %2029, %2028
  store i64 %2032, i64* %RCX.i490, align 8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2033, align 1
  %2034 = trunc i64 %2032 to i32
  %2035 = and i32 %2034, 255
  %2036 = call i32 @llvm.ctpop.i32(i32 %2035)
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = xor i8 %2038, 1
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2039, i8* %2040, align 1
  %2041 = icmp eq i64 %2032, 0
  %2042 = zext i1 %2041 to i8
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2042, i8* %2043, align 1
  %2044 = lshr i64 %2032, 63
  %2045 = trunc i64 %2044 to i8
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2045, i8* %2046, align 1
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2047, align 1
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2048, align 1
  store %struct.Memory* %loadMem_400aa0, %struct.Memory** %MEMORY
  %loadMem_400aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 33
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 5
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %2054 to i64*
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2056 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2055, i64 0, i64 0
  %YMM0.i487 = bitcast %union.VectorReg* %2056 to %"class.std::bitset"*
  %2057 = bitcast %"class.std::bitset"* %YMM0.i487 to i8*
  %2058 = load i64, i64* %RCX.i486
  %2059 = load i64, i64* %PC.i485
  %2060 = add i64 %2059, 5
  store i64 %2060, i64* %PC.i485
  %2061 = bitcast i8* %2057 to i64*
  store i64 %2058, i64* %2061, align 1
  %2062 = getelementptr inbounds i8, i8* %2057, i64 8
  %2063 = bitcast i8* %2062 to i64*
  store i64 0, i64* %2063, align 1
  store %struct.Memory* %loadMem_400aa3, %struct.Memory** %MEMORY
  %loadMem_400aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 1
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 15
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %2072 to i64*
  %2073 = load i64, i64* %RBP.i484
  %2074 = sub i64 %2073, 32
  %2075 = load i64, i64* %PC.i482
  %2076 = add i64 %2075, 4
  store i64 %2076, i64* %PC.i482
  %2077 = inttoptr i64 %2074 to i64*
  %2078 = load i64, i64* %2077
  store i64 %2078, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_400aa8, %struct.Memory** %MEMORY
  %loadMem_400aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 33
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 7
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %RDX.i480 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 15
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %2087 to i64*
  %2088 = load i64, i64* %RBP.i481
  %2089 = sub i64 %2088, 12
  %2090 = load i64, i64* %PC.i479
  %2091 = add i64 %2090, 3
  store i64 %2091, i64* %PC.i479
  %2092 = inttoptr i64 %2089 to i32*
  %2093 = load i32, i32* %2092
  %2094 = zext i32 %2093 to i64
  store i64 %2094, i64* %RDX.i480, align 8
  store %struct.Memory* %loadMem_400aac, %struct.Memory** %MEMORY
  %loadMem_400aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 33
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 7
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RDX.i478 = bitcast %union.anon* %2100 to i64*
  %2101 = load i64, i64* %RDX.i478
  %2102 = load i64, i64* %PC.i477
  %2103 = add i64 %2102, 2
  store i64 %2103, i64* %PC.i477
  %2104 = trunc i64 %2101 to i32
  %2105 = shl i32 %2104, 1
  %2106 = icmp slt i32 %2104, 0
  %2107 = icmp slt i32 %2105, 0
  %2108 = xor i1 %2106, %2107
  %2109 = zext i32 %2105 to i64
  store i64 %2109, i64* %RDX.i478, align 8
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2111 = zext i1 %2106 to i8
  store i8 %2111, i8* %2110, align 1
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2113 = and i32 %2105, 254
  %2114 = call i32 @llvm.ctpop.i32(i32 %2113)
  %2115 = trunc i32 %2114 to i8
  %2116 = and i8 %2115, 1
  %2117 = xor i8 %2116, 1
  store i8 %2117, i8* %2112, align 1
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2118, align 1
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2120 = icmp eq i32 %2105, 0
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %2119, align 1
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2123 = lshr i32 %2105, 31
  %2124 = trunc i32 %2123 to i8
  store i8 %2124, i8* %2122, align 1
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2126 = zext i1 %2108 to i8
  store i8 %2126, i8* %2125, align 1
  store %struct.Memory* %loadMem_400aaf, %struct.Memory** %MEMORY
  %loadMem_400ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 33
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 7
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RDX.i476 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RDX.i476
  %2134 = load i64, i64* %PC.i475
  %2135 = add i64 %2134, 3
  store i64 %2135, i64* %PC.i475
  %2136 = trunc i64 %2133 to i32
  %2137 = add i32 1, %2136
  %2138 = zext i32 %2137 to i64
  store i64 %2138, i64* %RDX.i476, align 8
  %2139 = icmp ult i32 %2137, %2136
  %2140 = icmp ult i32 %2137, 1
  %2141 = or i1 %2139, %2140
  %2142 = zext i1 %2141 to i8
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2142, i8* %2143, align 1
  %2144 = and i32 %2137, 255
  %2145 = call i32 @llvm.ctpop.i32(i32 %2144)
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = xor i8 %2147, 1
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2148, i8* %2149, align 1
  %2150 = xor i64 1, %2133
  %2151 = trunc i64 %2150 to i32
  %2152 = xor i32 %2151, %2137
  %2153 = lshr i32 %2152, 4
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2155, i8* %2156, align 1
  %2157 = icmp eq i32 %2137, 0
  %2158 = zext i1 %2157 to i8
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2158, i8* %2159, align 1
  %2160 = lshr i32 %2137, 31
  %2161 = trunc i32 %2160 to i8
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2161, i8* %2162, align 1
  %2163 = lshr i32 %2136, 31
  %2164 = xor i32 %2160, %2163
  %2165 = add i32 %2164, %2160
  %2166 = icmp eq i32 %2165, 2
  %2167 = zext i1 %2166 to i8
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2167, i8* %2168, align 1
  store %struct.Memory* %loadMem_400ab2, %struct.Memory** %MEMORY
  %loadMem_400ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 33
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2171 to i64*
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 7
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2174 to i32*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 5
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %2177 to i64*
  %2178 = load i32, i32* %EDX.i
  %2179 = zext i32 %2178 to i64
  %2180 = load i64, i64* %PC.i473
  %2181 = add i64 %2180, 3
  store i64 %2181, i64* %PC.i473
  %2182 = shl i64 %2179, 32
  %2183 = ashr exact i64 %2182, 32
  store i64 %2183, i64* %RCX.i474, align 8
  store %struct.Memory* %loadMem_400ab5, %struct.Memory** %MEMORY
  %loadMem_400ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 33
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 1
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %2189 to i64*
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2191 = getelementptr inbounds %struct.GPR, %struct.GPR* %2190, i32 0, i32 5
  %2192 = getelementptr inbounds %struct.Reg, %struct.Reg* %2191, i32 0, i32 0
  %RCX.i471 = bitcast %union.anon* %2192 to i64*
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2194 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2193, i64 0, i64 0
  %XMM0.i472 = bitcast %union.VectorReg* %2194 to %union.vec128_t*
  %2195 = load i64, i64* %RAX.i470
  %2196 = load i64, i64* %RCX.i471
  %2197 = mul i64 %2196, 8
  %2198 = add i64 %2197, %2195
  %2199 = bitcast %union.vec128_t* %XMM0.i472 to i8*
  %2200 = load i64, i64* %PC.i469
  %2201 = add i64 %2200, 5
  store i64 %2201, i64* %PC.i469
  %2202 = bitcast i8* %2199 to double*
  %2203 = load double, double* %2202, align 1
  %2204 = inttoptr i64 %2198 to double*
  store double %2203, double* %2204
  store %struct.Memory* %loadMem_400ab8, %struct.Memory** %MEMORY
  %loadMem_400abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 1
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %2210 to i64*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 15
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %2213 to i64*
  %2214 = load i64, i64* %RBP.i468
  %2215 = sub i64 %2214, 12
  %2216 = load i64, i64* %PC.i466
  %2217 = add i64 %2216, 3
  store i64 %2217, i64* %PC.i466
  %2218 = inttoptr i64 %2215 to i32*
  %2219 = load i32, i32* %2218
  %2220 = zext i32 %2219 to i64
  store i64 %2220, i64* %RAX.i467, align 8
  store %struct.Memory* %loadMem_400abd, %struct.Memory** %MEMORY
  %loadMem_400ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 1
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %2226 to i64*
  %2227 = load i64, i64* %RAX.i465
  %2228 = load i64, i64* %PC.i464
  %2229 = add i64 %2228, 3
  store i64 %2229, i64* %PC.i464
  %2230 = trunc i64 %2227 to i32
  %2231 = add i32 1, %2230
  %2232 = zext i32 %2231 to i64
  store i64 %2232, i64* %RAX.i465, align 8
  %2233 = icmp ult i32 %2231, %2230
  %2234 = icmp ult i32 %2231, 1
  %2235 = or i1 %2233, %2234
  %2236 = zext i1 %2235 to i8
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2236, i8* %2237, align 1
  %2238 = and i32 %2231, 255
  %2239 = call i32 @llvm.ctpop.i32(i32 %2238)
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  %2242 = xor i8 %2241, 1
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2242, i8* %2243, align 1
  %2244 = xor i64 1, %2227
  %2245 = trunc i64 %2244 to i32
  %2246 = xor i32 %2245, %2231
  %2247 = lshr i32 %2246, 4
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2249, i8* %2250, align 1
  %2251 = icmp eq i32 %2231, 0
  %2252 = zext i1 %2251 to i8
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2252, i8* %2253, align 1
  %2254 = lshr i32 %2231, 31
  %2255 = trunc i32 %2254 to i8
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2255, i8* %2256, align 1
  %2257 = lshr i32 %2230, 31
  %2258 = xor i32 %2254, %2257
  %2259 = add i32 %2258, %2254
  %2260 = icmp eq i32 %2259, 2
  %2261 = zext i1 %2260 to i8
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2261, i8* %2262, align 1
  store %struct.Memory* %loadMem_400ac0, %struct.Memory** %MEMORY
  %loadMem_400ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 1
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %EAX.i462 = bitcast %union.anon* %2268 to i32*
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 15
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %RBP.i463
  %2273 = sub i64 %2272, 12
  %2274 = load i32, i32* %EAX.i462
  %2275 = zext i32 %2274 to i64
  %2276 = load i64, i64* %PC.i461
  %2277 = add i64 %2276, 3
  store i64 %2277, i64* %PC.i461
  %2278 = inttoptr i64 %2273 to i32*
  store i32 %2274, i32* %2278
  store %struct.Memory* %loadMem_400ac3, %struct.Memory** %MEMORY
  %loadMem_400ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 33
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %2281 to i64*
  %2282 = load i64, i64* %PC.i460
  %2283 = add i64 %2282, -87
  %2284 = load i64, i64* %PC.i460
  %2285 = add i64 %2284, 5
  store i64 %2285, i64* %PC.i460
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2283, i64* %2286, align 8
  store %struct.Memory* %loadMem_400ac6, %struct.Memory** %MEMORY
  br label %block_.L_400a6f

block_.L_400acb:                                  ; preds = %block_.L_400a6f
  %loadMem_400acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 33
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 1
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %EAX.i458 = bitcast %union.anon* %2292 to i32*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 1
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %2295 to i64*
  %2296 = load i64, i64* %RAX.i459
  %2297 = load i32, i32* %EAX.i458
  %2298 = zext i32 %2297 to i64
  %2299 = load i64, i64* %PC.i457
  %2300 = add i64 %2299, 2
  store i64 %2300, i64* %PC.i457
  %2301 = xor i64 %2298, %2296
  %2302 = trunc i64 %2301 to i32
  %2303 = and i64 %2301, 4294967295
  store i64 %2303, i64* %RAX.i459, align 8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2304, align 1
  %2305 = and i32 %2302, 255
  %2306 = call i32 @llvm.ctpop.i32(i32 %2305)
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = xor i8 %2308, 1
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2309, i8* %2310, align 1
  %2311 = icmp eq i32 %2302, 0
  %2312 = zext i1 %2311 to i8
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2312, i8* %2313, align 1
  %2314 = lshr i32 %2302, 31
  %2315 = trunc i32 %2314 to i8
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2315, i8* %2316, align 1
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2317, align 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2318, align 1
  store %struct.Memory* %loadMem_400acb, %struct.Memory** %MEMORY
  %loadMem_400acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 33
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 9
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %RSI.i456 = bitcast %union.anon* %2324 to i64*
  %2325 = load i64, i64* %PC.i455
  %2326 = add i64 %2325, 5
  store i64 %2326, i64* %PC.i455
  store i64 1023, i64* %RSI.i456, align 8
  store %struct.Memory* %loadMem_400acd, %struct.Memory** %MEMORY
  %loadMem_400ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 5
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %PC.i453
  %2334 = add i64 %2333, 5
  store i64 %2334, i64* %PC.i453
  store i64 16384, i64* %RCX.i454, align 8
  store %struct.Memory* %loadMem_400ad2, %struct.Memory** %MEMORY
  %loadMem_400ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 5
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %ECX.i451 = bitcast %union.anon* %2340 to i32*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 7
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RDX.i452 = bitcast %union.anon* %2343 to i64*
  %2344 = load i32, i32* %ECX.i451
  %2345 = zext i32 %2344 to i64
  %2346 = load i64, i64* %PC.i450
  %2347 = add i64 %2346, 2
  store i64 %2347, i64* %PC.i450
  %2348 = and i64 %2345, 4294967295
  store i64 %2348, i64* %RDX.i452, align 8
  store %struct.Memory* %loadMem_400ad7, %struct.Memory** %MEMORY
  %loadMem_400ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 33
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %2351 to i64*
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 11
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %RDI.i448 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 15
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %2357 to i64*
  %2358 = load i64, i64* %RBP.i449
  %2359 = sub i64 %2358, 48
  %2360 = load i64, i64* %PC.i447
  %2361 = add i64 %2360, 4
  store i64 %2361, i64* %PC.i447
  %2362 = inttoptr i64 %2359 to i64*
  %2363 = load i64, i64* %2362
  store i64 %2363, i64* %RDI.i448, align 8
  store %struct.Memory* %loadMem_400ad9, %struct.Memory** %MEMORY
  %loadMem_400add = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 9
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %ESI.i445 = bitcast %union.anon* %2369 to i32*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 15
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %2372 to i64*
  %2373 = load i64, i64* %RBP.i446
  %2374 = sub i64 %2373, 168
  %2375 = load i32, i32* %ESI.i445
  %2376 = zext i32 %2375 to i64
  %2377 = load i64, i64* %PC.i444
  %2378 = add i64 %2377, 6
  store i64 %2378, i64* %PC.i444
  %2379 = inttoptr i64 %2374 to i32*
  store i32 %2375, i32* %2379
  store %struct.Memory* %loadMem_400add, %struct.Memory** %MEMORY
  %loadMem_400ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 1
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %EAX.i442 = bitcast %union.anon* %2385 to i32*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 9
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RSI.i443 = bitcast %union.anon* %2388 to i64*
  %2389 = load i32, i32* %EAX.i442
  %2390 = zext i32 %2389 to i64
  %2391 = load i64, i64* %PC.i441
  %2392 = add i64 %2391, 2
  store i64 %2392, i64* %PC.i441
  %2393 = and i64 %2390, 4294967295
  store i64 %2393, i64* %RSI.i443, align 8
  store %struct.Memory* %loadMem_400ae3, %struct.Memory** %MEMORY
  %loadMem_400ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 33
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 1
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %EAX.i439 = bitcast %union.anon* %2399 to i32*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 15
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %2402 to i64*
  %2403 = load i64, i64* %RBP.i440
  %2404 = sub i64 %2403, 172
  %2405 = load i32, i32* %EAX.i439
  %2406 = zext i32 %2405 to i64
  %2407 = load i64, i64* %PC.i438
  %2408 = add i64 %2407, 6
  store i64 %2408, i64* %PC.i438
  %2409 = inttoptr i64 %2404 to i32*
  store i32 %2405, i32* %2409
  store %struct.Memory* %loadMem_400ae5, %struct.Memory** %MEMORY
  %loadMem1_400aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 33
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2412 to i64*
  %2413 = load i64, i64* %PC.i437
  %2414 = add i64 %2413, -1019
  %2415 = load i64, i64* %PC.i437
  %2416 = add i64 %2415, 5
  %2417 = load i64, i64* %PC.i437
  %2418 = add i64 %2417, 5
  store i64 %2418, i64* %PC.i437
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2420 = load i64, i64* %2419, align 8
  %2421 = add i64 %2420, -8
  %2422 = inttoptr i64 %2421 to i64*
  store i64 %2416, i64* %2422
  store i64 %2421, i64* %2419, align 8
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2414, i64* %2423, align 8
  store %struct.Memory* %loadMem1_400aeb, %struct.Memory** %MEMORY
  %loadMem2_400aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400aeb = load i64, i64* %3
  %call2_400aeb = call %struct.Memory* @sub_4006f0.memset_plt(%struct.State* %0, i64 %loadPC_400aeb, %struct.Memory* %loadMem2_400aeb)
  store %struct.Memory* %call2_400aeb, %struct.Memory** %MEMORY
  %loadMem_400af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 33
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 7
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %RDX.i435 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 15
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %2432 to i64*
  %2433 = load i64, i64* %RBP.i436
  %2434 = sub i64 %2433, 48
  %2435 = load i64, i64* %PC.i434
  %2436 = add i64 %2435, 4
  store i64 %2436, i64* %PC.i434
  %2437 = inttoptr i64 %2434 to i64*
  %2438 = load i64, i64* %2437
  store i64 %2438, i64* %RDX.i435, align 8
  store %struct.Memory* %loadMem_400af0, %struct.Memory** %MEMORY
  %loadMem_400af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 33
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %2441 to i64*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 11
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %RDI.i432 = bitcast %union.anon* %2444 to i64*
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 15
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %2447 to i64*
  %2448 = load i64, i64* %RBP.i433
  %2449 = sub i64 %2448, 172
  %2450 = load i64, i64* %PC.i431
  %2451 = add i64 %2450, 6
  store i64 %2451, i64* %PC.i431
  %2452 = inttoptr i64 %2449 to i32*
  %2453 = load i32, i32* %2452
  %2454 = zext i32 %2453 to i64
  store i64 %2454, i64* %RDI.i432, align 8
  store %struct.Memory* %loadMem_400af4, %struct.Memory** %MEMORY
  %loadMem_400afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 33
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %2457 to i64*
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 9
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %RSI.i429 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 15
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %2463 to i64*
  %2464 = load i64, i64* %RBP.i430
  %2465 = sub i64 %2464, 168
  %2466 = load i64, i64* %PC.i428
  %2467 = add i64 %2466, 6
  store i64 %2467, i64* %PC.i428
  %2468 = inttoptr i64 %2465 to i32*
  %2469 = load i32, i32* %2468
  %2470 = zext i32 %2469 to i64
  store i64 %2470, i64* %RSI.i429, align 8
  store %struct.Memory* %loadMem_400afa, %struct.Memory** %MEMORY
  %loadMem1_400b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 33
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %2473 to i64*
  %2474 = load i64, i64* %PC.i427
  %2475 = add i64 %2474, 1232
  %2476 = load i64, i64* %PC.i427
  %2477 = add i64 %2476, 5
  %2478 = load i64, i64* %PC.i427
  %2479 = add i64 %2478, 5
  store i64 %2479, i64* %PC.i427
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2481 = load i64, i64* %2480, align 8
  %2482 = add i64 %2481, -8
  %2483 = inttoptr i64 %2482 to i64*
  store i64 %2477, i64* %2483
  store i64 %2482, i64* %2480, align 8
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2475, i64* %2484, align 8
  store %struct.Memory* %loadMem1_400b00, %struct.Memory** %MEMORY
  %loadMem2_400b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b00 = load i64, i64* %3
  %call2_400b00 = call %struct.Memory* @sub_400fd0.putdata(%struct.State* %0, i64 %loadPC_400b00, %struct.Memory* %loadMem2_400b00)
  store %struct.Memory* %call2_400b00, %struct.Memory** %MEMORY
  %loadMem1_400b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %2487 to i64*
  %2488 = load i64, i64* %PC.i426
  %2489 = add i64 %2488, 795
  %2490 = load i64, i64* %PC.i426
  %2491 = add i64 %2490, 5
  %2492 = load i64, i64* %PC.i426
  %2493 = add i64 %2492, 5
  store i64 %2493, i64* %PC.i426
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2495 = load i64, i64* %2494, align 8
  %2496 = add i64 %2495, -8
  %2497 = inttoptr i64 %2496 to i64*
  store i64 %2491, i64* %2497
  store i64 %2496, i64* %2494, align 8
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2489, i64* %2498, align 8
  store %struct.Memory* %loadMem1_400b05, %struct.Memory** %MEMORY
  %loadMem2_400b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b05 = load i64, i64* %3
  %call2_400b05 = call %struct.Memory* @sub_400e20.get_time(%struct.State* %0, i64 %loadPC_400b05, %struct.Memory* %loadMem2_400b05)
  store %struct.Memory* %call2_400b05, %struct.Memory** %MEMORY
  %loadMem_400b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 15
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2506 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2505, i64 0, i64 0
  %XMM0.i425 = bitcast %union.VectorReg* %2506 to %union.vec128_t*
  %2507 = load i64, i64* %RBP.i424
  %2508 = sub i64 %2507, 64
  %2509 = bitcast %union.vec128_t* %XMM0.i425 to i8*
  %2510 = load i64, i64* %PC.i423
  %2511 = add i64 %2510, 5
  store i64 %2511, i64* %PC.i423
  %2512 = bitcast i8* %2509 to double*
  %2513 = load double, double* %2512, align 1
  %2514 = inttoptr i64 %2508 to double*
  store double %2513, double* %2514
  store %struct.Memory* %loadMem_400b0a, %struct.Memory** %MEMORY
  %loadMem_400b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 33
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 15
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %2520 to i64*
  %2521 = load i64, i64* %RBP.i422
  %2522 = sub i64 %2521, 8
  %2523 = load i64, i64* %PC.i421
  %2524 = add i64 %2523, 7
  store i64 %2524, i64* %PC.i421
  %2525 = inttoptr i64 %2522 to i32*
  store i32 0, i32* %2525
  store %struct.Memory* %loadMem_400b0f, %struct.Memory** %MEMORY
  br label %block_.L_400b16

block_.L_400b16:                                  ; preds = %block_.L_400c54, %block_.L_400acb
  %loadMem_400b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 15
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %RBP.i420
  %2533 = sub i64 %2532, 8
  %2534 = load i64, i64* %PC.i419
  %2535 = add i64 %2534, 7
  store i64 %2535, i64* %PC.i419
  %2536 = inttoptr i64 %2533 to i32*
  %2537 = load i32, i32* %2536
  %2538 = sub i32 %2537, 150000
  %2539 = icmp ult i32 %2537, 150000
  %2540 = zext i1 %2539 to i8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2540, i8* %2541, align 1
  %2542 = and i32 %2538, 255
  %2543 = call i32 @llvm.ctpop.i32(i32 %2542)
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  %2546 = xor i8 %2545, 1
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2546, i8* %2547, align 1
  %2548 = xor i32 %2537, 150000
  %2549 = xor i32 %2548, %2538
  %2550 = lshr i32 %2549, 4
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2552, i8* %2553, align 1
  %2554 = icmp eq i32 %2538, 0
  %2555 = zext i1 %2554 to i8
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2555, i8* %2556, align 1
  %2557 = lshr i32 %2538, 31
  %2558 = trunc i32 %2557 to i8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2558, i8* %2559, align 1
  %2560 = lshr i32 %2537, 31
  %2561 = xor i32 %2557, %2560
  %2562 = add i32 %2561, %2560
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2564, i8* %2565, align 1
  store %struct.Memory* %loadMem_400b16, %struct.Memory** %MEMORY
  %loadMem_400b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 33
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2568 to i64*
  %2569 = load i64, i64* %PC.i418
  %2570 = add i64 %2569, 352
  %2571 = load i64, i64* %PC.i418
  %2572 = add i64 %2571, 6
  %2573 = load i64, i64* %PC.i418
  %2574 = add i64 %2573, 6
  store i64 %2574, i64* %PC.i418
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2576 = load i8, i8* %2575, align 1
  %2577 = icmp ne i8 %2576, 0
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2579 = load i8, i8* %2578, align 1
  %2580 = icmp ne i8 %2579, 0
  %2581 = xor i1 %2577, %2580
  %2582 = xor i1 %2581, true
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %BRANCH_TAKEN, align 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2585 = select i1 %2581, i64 %2572, i64 %2570
  store i64 %2585, i64* %2584, align 8
  store %struct.Memory* %loadMem_400b1d, %struct.Memory** %MEMORY
  %loadBr_400b1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b1d = icmp eq i8 %loadBr_400b1d, 1
  br i1 %cmpBr_400b1d, label %block_.L_400c7d, label %block_400b23

block_400b23:                                     ; preds = %block_.L_400b16
  %loadMem_400b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 11
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RDI.i417 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %PC.i416
  %2593 = add i64 %2592, 5
  store i64 %2593, i64* %PC.i416
  store i64 2048, i64* %RDI.i417, align 8
  store %struct.Memory* %loadMem_400b23, %struct.Memory** %MEMORY
  %loadMem_400b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 9
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RSI.i415 = bitcast %union.anon* %2599 to i64*
  %2600 = load i64, i64* %PC.i414
  %2601 = add i64 %2600, 5
  store i64 %2601, i64* %PC.i414
  store i64 1, i64* %RSI.i415, align 8
  store %struct.Memory* %loadMem_400b28, %struct.Memory** %MEMORY
  %loadMem_400b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 33
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %2604 to i64*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 1
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %2607 to i64*
  %2608 = load i64, i64* %PC.i412
  %2609 = add i64 %2608, 5
  store i64 %2609, i64* %PC.i412
  store i64 16384, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_400b2d, %struct.Memory** %MEMORY
  %loadMem_400b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 1
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %EAX.i410 = bitcast %union.anon* %2615 to i32*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 7
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RDX.i411 = bitcast %union.anon* %2618 to i64*
  %2619 = load i32, i32* %EAX.i410
  %2620 = zext i32 %2619 to i64
  %2621 = load i64, i64* %PC.i409
  %2622 = add i64 %2621, 2
  store i64 %2622, i64* %PC.i409
  %2623 = and i64 %2620, 4294967295
  store i64 %2623, i64* %RDX.i411, align 8
  store %struct.Memory* %loadMem_400b32, %struct.Memory** %MEMORY
  %loadMem_400b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 33
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %2626 to i64*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 5
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %2629 to i64*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 15
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %2632 to i64*
  %2633 = load i64, i64* %RBP.i408
  %2634 = sub i64 %2633, 40
  %2635 = load i64, i64* %PC.i406
  %2636 = add i64 %2635, 4
  store i64 %2636, i64* %PC.i406
  %2637 = inttoptr i64 %2634 to i64*
  %2638 = load i64, i64* %2637
  store i64 %2638, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_400b34, %struct.Memory** %MEMORY
  %loadMem_400b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 33
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 15
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %2644 to i64*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 17
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %R8.i405 = bitcast %union.anon* %2647 to i64*
  %2648 = load i64, i64* %RBP.i404
  %2649 = sub i64 %2648, 48
  %2650 = load i64, i64* %PC.i403
  %2651 = add i64 %2650, 4
  store i64 %2651, i64* %PC.i403
  %2652 = inttoptr i64 %2649 to i64*
  %2653 = load i64, i64* %2652
  store i64 %2653, i64* %R8.i405, align 8
  store %struct.Memory* %loadMem_400b38, %struct.Memory** %MEMORY
  %loadMem_400b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 11
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2659 to i32*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 15
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %2662 to i64*
  %2663 = load i64, i64* %RBP.i402
  %2664 = sub i64 %2663, 176
  %2665 = load i32, i32* %EDI.i
  %2666 = zext i32 %2665 to i64
  %2667 = load i64, i64* %PC.i401
  %2668 = add i64 %2667, 6
  store i64 %2668, i64* %PC.i401
  %2669 = inttoptr i64 %2664 to i32*
  store i32 %2665, i32* %2669
  store %struct.Memory* %loadMem_400b3c, %struct.Memory** %MEMORY
  %loadMem_400b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 33
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 5
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %2675 to i64*
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 11
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %RDI.i400 = bitcast %union.anon* %2678 to i64*
  %2679 = load i64, i64* %RCX.i399
  %2680 = load i64, i64* %PC.i398
  %2681 = add i64 %2680, 3
  store i64 %2681, i64* %PC.i398
  store i64 %2679, i64* %RDI.i400, align 8
  store %struct.Memory* %loadMem_400b42, %struct.Memory** %MEMORY
  %loadMem_400b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 9
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2687 to i32*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 15
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %2690 to i64*
  %2691 = load i64, i64* %RBP.i397
  %2692 = sub i64 %2691, 180
  %2693 = load i32, i32* %ESI.i
  %2694 = zext i32 %2693 to i64
  %2695 = load i64, i64* %PC.i396
  %2696 = add i64 %2695, 6
  store i64 %2696, i64* %PC.i396
  %2697 = inttoptr i64 %2692 to i32*
  store i32 %2693, i32* %2697
  store %struct.Memory* %loadMem_400b45, %struct.Memory** %MEMORY
  %loadMem_400b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 9
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RSI.i394 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 17
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %R8.i395 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %R8.i395
  %2708 = load i64, i64* %PC.i393
  %2709 = add i64 %2708, 3
  store i64 %2709, i64* %PC.i393
  store i64 %2707, i64* %RSI.i394, align 8
  store %struct.Memory* %loadMem_400b4b, %struct.Memory** %MEMORY
  %loadMem1_400b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 33
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %2712 to i64*
  %2713 = load i64, i64* %PC.i392
  %2714 = add i64 %2713, -1086
  %2715 = load i64, i64* %PC.i392
  %2716 = add i64 %2715, 5
  %2717 = load i64, i64* %PC.i392
  %2718 = add i64 %2717, 5
  store i64 %2718, i64* %PC.i392
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2720 = load i64, i64* %2719, align 8
  %2721 = add i64 %2720, -8
  %2722 = inttoptr i64 %2721 to i64*
  store i64 %2716, i64* %2722
  store i64 %2721, i64* %2719, align 8
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2714, i64* %2723, align 8
  store %struct.Memory* %loadMem1_400b4e, %struct.Memory** %MEMORY
  %loadMem2_400b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b4e = load i64, i64* %3
  %call2_400b4e = call %struct.Memory* @sub_400710.memcpy_plt(%struct.State* %0, i64 %loadPC_400b4e, %struct.Memory* %loadMem2_400b4e)
  store %struct.Memory* %call2_400b4e, %struct.Memory** %MEMORY
  %loadMem_400b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 7
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %RDX.i390 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 15
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %RBP.i391
  %2734 = sub i64 %2733, 40
  %2735 = load i64, i64* %PC.i389
  %2736 = add i64 %2735, 4
  store i64 %2736, i64* %PC.i389
  %2737 = inttoptr i64 %2734 to i64*
  %2738 = load i64, i64* %2737
  store i64 %2738, i64* %RDX.i390, align 8
  store %struct.Memory* %loadMem_400b53, %struct.Memory** %MEMORY
  %loadMem_400b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 5
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 15
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %2747 to i64*
  %2748 = load i64, i64* %RBP.i388
  %2749 = sub i64 %2748, 24
  %2750 = load i64, i64* %PC.i386
  %2751 = add i64 %2750, 4
  store i64 %2751, i64* %PC.i386
  %2752 = inttoptr i64 %2749 to i64*
  %2753 = load i64, i64* %2752
  store i64 %2753, i64* %RCX.i387, align 8
  store %struct.Memory* %loadMem_400b57, %struct.Memory** %MEMORY
  %loadMem_400b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 15
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %2759 to i64*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 17
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %R8.i385 = bitcast %union.anon* %2762 to i64*
  %2763 = load i64, i64* %RBP.i384
  %2764 = sub i64 %2763, 56
  %2765 = load i64, i64* %PC.i383
  %2766 = add i64 %2765, 4
  store i64 %2766, i64* %PC.i383
  %2767 = inttoptr i64 %2764 to i64*
  %2768 = load i64, i64* %2767
  store i64 %2768, i64* %R8.i385, align 8
  store %struct.Memory* %loadMem_400b5b, %struct.Memory** %MEMORY
  %loadMem_400b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 11
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RDI.i381 = bitcast %union.anon* %2774 to i64*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 15
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %2777 to i64*
  %2778 = load i64, i64* %RBP.i382
  %2779 = sub i64 %2778, 176
  %2780 = load i64, i64* %PC.i380
  %2781 = add i64 %2780, 6
  store i64 %2781, i64* %PC.i380
  %2782 = inttoptr i64 %2779 to i32*
  %2783 = load i32, i32* %2782
  %2784 = zext i32 %2783 to i64
  store i64 %2784, i64* %RDI.i381, align 8
  store %struct.Memory* %loadMem_400b5f, %struct.Memory** %MEMORY
  %loadMem_400b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 9
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RSI.i378 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 15
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %2793 to i64*
  %2794 = load i64, i64* %RBP.i379
  %2795 = sub i64 %2794, 180
  %2796 = load i64, i64* %PC.i377
  %2797 = add i64 %2796, 6
  store i64 %2797, i64* %PC.i377
  %2798 = inttoptr i64 %2795 to i32*
  %2799 = load i32, i32* %2798
  %2800 = zext i32 %2799 to i64
  store i64 %2800, i64* %RSI.i378, align 8
  store %struct.Memory* %loadMem_400b65, %struct.Memory** %MEMORY
  %loadMem1_400b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %2803 to i64*
  %2804 = load i64, i64* %PC.i376
  %2805 = add i64 %2804, 1253
  %2806 = load i64, i64* %PC.i376
  %2807 = add i64 %2806, 5
  %2808 = load i64, i64* %PC.i376
  %2809 = add i64 %2808, 5
  store i64 %2809, i64* %PC.i376
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2811 = load i64, i64* %2810, align 8
  %2812 = add i64 %2811, -8
  %2813 = inttoptr i64 %2812 to i64*
  store i64 %2807, i64* %2813
  store i64 %2812, i64* %2810, align 8
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2805, i64* %2814, align 8
  store %struct.Memory* %loadMem1_400b6b, %struct.Memory** %MEMORY
  %loadMem2_400b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b6b = load i64, i64* %3
  %call2_400b6b = call %struct.Memory* @sub_401050.cdft(%struct.State* %0, i64 %loadPC_400b6b, %struct.Memory* %loadMem2_400b6b)
  store %struct.Memory* %call2_400b6b, %struct.Memory** %MEMORY
  %loadMem_400b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 15
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %2820 to i64*
  %2821 = load i64, i64* %RBP.i375
  %2822 = sub i64 %2821, 100
  %2823 = load i64, i64* %PC.i374
  %2824 = add i64 %2823, 7
  store i64 %2824, i64* %PC.i374
  %2825 = inttoptr i64 %2822 to i32*
  store i32 0, i32* %2825
  store %struct.Memory* %loadMem_400b70, %struct.Memory** %MEMORY
  br label %block_.L_400b77

block_.L_400b77:                                  ; preds = %block_400b84, %block_400b23
  %loadMem_400b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 33
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 15
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %2831 to i64*
  %2832 = load i64, i64* %RBP.i373
  %2833 = sub i64 %2832, 100
  %2834 = load i64, i64* %PC.i372
  %2835 = add i64 %2834, 7
  store i64 %2835, i64* %PC.i372
  %2836 = inttoptr i64 %2833 to i32*
  %2837 = load i32, i32* %2836
  %2838 = sub i32 %2837, 1024
  %2839 = icmp ult i32 %2837, 1024
  %2840 = zext i1 %2839 to i8
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2840, i8* %2841, align 1
  %2842 = and i32 %2838, 255
  %2843 = call i32 @llvm.ctpop.i32(i32 %2842)
  %2844 = trunc i32 %2843 to i8
  %2845 = and i8 %2844, 1
  %2846 = xor i8 %2845, 1
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2846, i8* %2847, align 1
  %2848 = xor i32 %2837, 1024
  %2849 = xor i32 %2848, %2838
  %2850 = lshr i32 %2849, 4
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2852, i8* %2853, align 1
  %2854 = icmp eq i32 %2838, 0
  %2855 = zext i1 %2854 to i8
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2855, i8* %2856, align 1
  %2857 = lshr i32 %2838, 31
  %2858 = trunc i32 %2857 to i8
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2858, i8* %2859, align 1
  %2860 = lshr i32 %2837, 31
  %2861 = xor i32 %2857, %2860
  %2862 = add i32 %2861, %2860
  %2863 = icmp eq i32 %2862, 2
  %2864 = zext i1 %2863 to i8
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2864, i8* %2865, align 1
  store %struct.Memory* %loadMem_400b77, %struct.Memory** %MEMORY
  %loadMem_400b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 33
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2868 to i64*
  %2869 = load i64, i64* %PC.i371
  %2870 = add i64 %2869, 214
  %2871 = load i64, i64* %PC.i371
  %2872 = add i64 %2871, 6
  %2873 = load i64, i64* %PC.i371
  %2874 = add i64 %2873, 6
  store i64 %2874, i64* %PC.i371
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2876 = load i8, i8* %2875, align 1
  %2877 = icmp ne i8 %2876, 0
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2879 = load i8, i8* %2878, align 1
  %2880 = icmp ne i8 %2879, 0
  %2881 = xor i1 %2877, %2880
  %2882 = xor i1 %2881, true
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %BRANCH_TAKEN, align 1
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2885 = select i1 %2881, i64 %2872, i64 %2870
  store i64 %2885, i64* %2884, align 8
  store %struct.Memory* %loadMem_400b7e, %struct.Memory** %MEMORY
  %loadBr_400b7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b7e = icmp eq i8 %loadBr_400b7e, 1
  br i1 %cmpBr_400b7e, label %block_.L_400c54, label %block_400b84

block_400b84:                                     ; preds = %block_.L_400b77
  %loadMem_400b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 33
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 1
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %2891 to i64*
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 15
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %2894 to i64*
  %2895 = load i64, i64* %RBP.i370
  %2896 = sub i64 %2895, 40
  %2897 = load i64, i64* %PC.i368
  %2898 = add i64 %2897, 4
  store i64 %2898, i64* %PC.i368
  %2899 = inttoptr i64 %2896 to i64*
  %2900 = load i64, i64* %2899
  store i64 %2900, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_400b84, %struct.Memory** %MEMORY
  %loadMem_400b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 33
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 5
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 15
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %2909 to i64*
  %2910 = load i64, i64* %RBP.i367
  %2911 = sub i64 %2910, 100
  %2912 = load i64, i64* %PC.i365
  %2913 = add i64 %2912, 3
  store i64 %2913, i64* %PC.i365
  %2914 = inttoptr i64 %2911 to i32*
  %2915 = load i32, i32* %2914
  %2916 = zext i32 %2915 to i64
  store i64 %2916, i64* %RCX.i366, align 8
  store %struct.Memory* %loadMem_400b88, %struct.Memory** %MEMORY
  %loadMem_400b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 33
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 5
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %2922 to i64*
  %2923 = load i64, i64* %RCX.i364
  %2924 = load i64, i64* %PC.i363
  %2925 = add i64 %2924, 2
  store i64 %2925, i64* %PC.i363
  %2926 = trunc i64 %2923 to i32
  %2927 = shl i32 %2926, 1
  %2928 = icmp slt i32 %2926, 0
  %2929 = icmp slt i32 %2927, 0
  %2930 = xor i1 %2928, %2929
  %2931 = zext i32 %2927 to i64
  store i64 %2931, i64* %RCX.i364, align 8
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2933 = zext i1 %2928 to i8
  store i8 %2933, i8* %2932, align 1
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2935 = and i32 %2927, 254
  %2936 = call i32 @llvm.ctpop.i32(i32 %2935)
  %2937 = trunc i32 %2936 to i8
  %2938 = and i8 %2937, 1
  %2939 = xor i8 %2938, 1
  store i8 %2939, i8* %2934, align 1
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2940, align 1
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2942 = icmp eq i32 %2927, 0
  %2943 = zext i1 %2942 to i8
  store i8 %2943, i8* %2941, align 1
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2945 = lshr i32 %2927, 31
  %2946 = trunc i32 %2945 to i8
  store i8 %2946, i8* %2944, align 1
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2948 = zext i1 %2930 to i8
  store i8 %2948, i8* %2947, align 1
  store %struct.Memory* %loadMem_400b8b, %struct.Memory** %MEMORY
  %loadMem_400b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 33
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 5
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %ECX.i361 = bitcast %union.anon* %2954 to i32*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 7
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %2957 to i64*
  %2958 = load i32, i32* %ECX.i361
  %2959 = zext i32 %2958 to i64
  %2960 = load i64, i64* %PC.i360
  %2961 = add i64 %2960, 3
  store i64 %2961, i64* %PC.i360
  %2962 = shl i64 %2959, 32
  %2963 = ashr exact i64 %2962, 32
  store i64 %2963, i64* %RDX.i362, align 8
  store %struct.Memory* %loadMem_400b8e, %struct.Memory** %MEMORY
  %loadMem_400b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 33
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 1
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 7
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2974 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2973, i64 0, i64 0
  %YMM0.i359 = bitcast %union.VectorReg* %2974 to %"class.std::bitset"*
  %2975 = bitcast %"class.std::bitset"* %YMM0.i359 to i8*
  %2976 = load i64, i64* %RAX.i357
  %2977 = load i64, i64* %RDX.i358
  %2978 = mul i64 %2977, 8
  %2979 = add i64 %2978, %2976
  %2980 = load i64, i64* %PC.i356
  %2981 = add i64 %2980, 5
  store i64 %2981, i64* %PC.i356
  %2982 = inttoptr i64 %2979 to double*
  %2983 = load double, double* %2982
  %2984 = bitcast i8* %2975 to double*
  store double %2983, double* %2984, align 1
  %2985 = getelementptr inbounds i8, i8* %2975, i64 8
  %2986 = bitcast i8* %2985 to double*
  store double 0.000000e+00, double* %2986, align 1
  store %struct.Memory* %loadMem_400b91, %struct.Memory** %MEMORY
  %loadMem_400b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 33
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 15
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2994 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2993, i64 0, i64 0
  %XMM0.i355 = bitcast %union.VectorReg* %2994 to %union.vec128_t*
  %2995 = load i64, i64* %RBP.i354
  %2996 = sub i64 %2995, 112
  %2997 = bitcast %union.vec128_t* %XMM0.i355 to i8*
  %2998 = load i64, i64* %PC.i353
  %2999 = add i64 %2998, 5
  store i64 %2999, i64* %PC.i353
  %3000 = bitcast i8* %2997 to double*
  %3001 = load double, double* %3000, align 1
  %3002 = inttoptr i64 %2996 to double*
  store double %3001, double* %3002
  store %struct.Memory* %loadMem_400b96, %struct.Memory** %MEMORY
  %loadMem_400b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 1
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 15
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %3011 to i64*
  %3012 = load i64, i64* %RBP.i352
  %3013 = sub i64 %3012, 32
  %3014 = load i64, i64* %PC.i350
  %3015 = add i64 %3014, 4
  store i64 %3015, i64* %PC.i350
  %3016 = inttoptr i64 %3013 to i64*
  %3017 = load i64, i64* %3016
  store i64 %3017, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_400b9b, %struct.Memory** %MEMORY
  %loadMem_400b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 5
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %3023 to i64*
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 15
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %3026 to i64*
  %3027 = load i64, i64* %RBP.i349
  %3028 = sub i64 %3027, 100
  %3029 = load i64, i64* %PC.i347
  %3030 = add i64 %3029, 3
  store i64 %3030, i64* %PC.i347
  %3031 = inttoptr i64 %3028 to i32*
  %3032 = load i32, i32* %3031
  %3033 = zext i32 %3032 to i64
  store i64 %3033, i64* %RCX.i348, align 8
  store %struct.Memory* %loadMem_400b9f, %struct.Memory** %MEMORY
  %loadMem_400ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 33
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 5
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %RCX.i346
  %3041 = load i64, i64* %PC.i345
  %3042 = add i64 %3041, 2
  store i64 %3042, i64* %PC.i345
  %3043 = trunc i64 %3040 to i32
  %3044 = shl i32 %3043, 1
  %3045 = icmp slt i32 %3043, 0
  %3046 = icmp slt i32 %3044, 0
  %3047 = xor i1 %3045, %3046
  %3048 = zext i32 %3044 to i64
  store i64 %3048, i64* %RCX.i346, align 8
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3050 = zext i1 %3045 to i8
  store i8 %3050, i8* %3049, align 1
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3052 = and i32 %3044, 254
  %3053 = call i32 @llvm.ctpop.i32(i32 %3052)
  %3054 = trunc i32 %3053 to i8
  %3055 = and i8 %3054, 1
  %3056 = xor i8 %3055, 1
  store i8 %3056, i8* %3051, align 1
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3057, align 1
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3059 = icmp eq i32 %3044, 0
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %3058, align 1
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3062 = lshr i32 %3044, 31
  %3063 = trunc i32 %3062 to i8
  store i8 %3063, i8* %3061, align 1
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3065 = zext i1 %3047 to i8
  store i8 %3065, i8* %3064, align 1
  store %struct.Memory* %loadMem_400ba2, %struct.Memory** %MEMORY
  %loadMem_400ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 33
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3068 to i64*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 5
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %ECX.i343 = bitcast %union.anon* %3071 to i32*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 7
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %3074 to i64*
  %3075 = load i32, i32* %ECX.i343
  %3076 = zext i32 %3075 to i64
  %3077 = load i64, i64* %PC.i342
  %3078 = add i64 %3077, 3
  store i64 %3078, i64* %PC.i342
  %3079 = shl i64 %3076, 32
  %3080 = ashr exact i64 %3079, 32
  store i64 %3080, i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_400ba5, %struct.Memory** %MEMORY
  %loadMem_400ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 33
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 1
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %3086 to i64*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 7
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RDX.i340 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3091 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3090, i64 0, i64 0
  %YMM0.i341 = bitcast %union.VectorReg* %3091 to %"class.std::bitset"*
  %3092 = bitcast %"class.std::bitset"* %YMM0.i341 to i8*
  %3093 = load i64, i64* %RAX.i339
  %3094 = load i64, i64* %RDX.i340
  %3095 = mul i64 %3094, 8
  %3096 = add i64 %3095, %3093
  %3097 = load i64, i64* %PC.i338
  %3098 = add i64 %3097, 5
  store i64 %3098, i64* %PC.i338
  %3099 = inttoptr i64 %3096 to double*
  %3100 = load double, double* %3099
  %3101 = bitcast i8* %3092 to double*
  store double %3100, double* %3101, align 1
  %3102 = getelementptr inbounds i8, i8* %3092, i64 8
  %3103 = bitcast i8* %3102 to double*
  store double 0.000000e+00, double* %3103, align 1
  store %struct.Memory* %loadMem_400ba8, %struct.Memory** %MEMORY
  %loadMem_400bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 33
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 15
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3111 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3110, i64 0, i64 0
  %XMM0.i337 = bitcast %union.VectorReg* %3111 to %union.vec128_t*
  %3112 = load i64, i64* %RBP.i336
  %3113 = sub i64 %3112, 120
  %3114 = bitcast %union.vec128_t* %XMM0.i337 to i8*
  %3115 = load i64, i64* %PC.i335
  %3116 = add i64 %3115, 5
  store i64 %3116, i64* %PC.i335
  %3117 = bitcast i8* %3114 to double*
  %3118 = load double, double* %3117, align 1
  %3119 = inttoptr i64 %3113 to double*
  store double %3118, double* %3119
  store %struct.Memory* %loadMem_400bad, %struct.Memory** %MEMORY
  %loadMem_400bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 33
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 1
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 15
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %3128 to i64*
  %3129 = load i64, i64* %RBP.i334
  %3130 = sub i64 %3129, 40
  %3131 = load i64, i64* %PC.i332
  %3132 = add i64 %3131, 4
  store i64 %3132, i64* %PC.i332
  %3133 = inttoptr i64 %3130 to i64*
  %3134 = load i64, i64* %3133
  store i64 %3134, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_400bb2, %struct.Memory** %MEMORY
  %loadMem_400bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 33
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %3137 to i64*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 5
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 15
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %3143 to i64*
  %3144 = load i64, i64* %RBP.i331
  %3145 = sub i64 %3144, 100
  %3146 = load i64, i64* %PC.i329
  %3147 = add i64 %3146, 3
  store i64 %3147, i64* %PC.i329
  %3148 = inttoptr i64 %3145 to i32*
  %3149 = load i32, i32* %3148
  %3150 = zext i32 %3149 to i64
  store i64 %3150, i64* %RCX.i330, align 8
  store %struct.Memory* %loadMem_400bb6, %struct.Memory** %MEMORY
  %loadMem_400bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 33
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 5
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %3156 to i64*
  %3157 = load i64, i64* %RCX.i328
  %3158 = load i64, i64* %PC.i327
  %3159 = add i64 %3158, 2
  store i64 %3159, i64* %PC.i327
  %3160 = trunc i64 %3157 to i32
  %3161 = shl i32 %3160, 1
  %3162 = icmp slt i32 %3160, 0
  %3163 = icmp slt i32 %3161, 0
  %3164 = xor i1 %3162, %3163
  %3165 = zext i32 %3161 to i64
  store i64 %3165, i64* %RCX.i328, align 8
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3167 = zext i1 %3162 to i8
  store i8 %3167, i8* %3166, align 1
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3169 = and i32 %3161, 254
  %3170 = call i32 @llvm.ctpop.i32(i32 %3169)
  %3171 = trunc i32 %3170 to i8
  %3172 = and i8 %3171, 1
  %3173 = xor i8 %3172, 1
  store i8 %3173, i8* %3168, align 1
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3174, align 1
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3176 = icmp eq i32 %3161, 0
  %3177 = zext i1 %3176 to i8
  store i8 %3177, i8* %3175, align 1
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3179 = lshr i32 %3161, 31
  %3180 = trunc i32 %3179 to i8
  store i8 %3180, i8* %3178, align 1
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3182 = zext i1 %3164 to i8
  store i8 %3182, i8* %3181, align 1
  store %struct.Memory* %loadMem_400bb9, %struct.Memory** %MEMORY
  %loadMem_400bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 5
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %3188 to i64*
  %3189 = load i64, i64* %RCX.i326
  %3190 = load i64, i64* %PC.i325
  %3191 = add i64 %3190, 3
  store i64 %3191, i64* %PC.i325
  %3192 = trunc i64 %3189 to i32
  %3193 = add i32 1, %3192
  %3194 = zext i32 %3193 to i64
  store i64 %3194, i64* %RCX.i326, align 8
  %3195 = icmp ult i32 %3193, %3192
  %3196 = icmp ult i32 %3193, 1
  %3197 = or i1 %3195, %3196
  %3198 = zext i1 %3197 to i8
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3198, i8* %3199, align 1
  %3200 = and i32 %3193, 255
  %3201 = call i32 @llvm.ctpop.i32(i32 %3200)
  %3202 = trunc i32 %3201 to i8
  %3203 = and i8 %3202, 1
  %3204 = xor i8 %3203, 1
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3204, i8* %3205, align 1
  %3206 = xor i64 1, %3189
  %3207 = trunc i64 %3206 to i32
  %3208 = xor i32 %3207, %3193
  %3209 = lshr i32 %3208, 4
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3211, i8* %3212, align 1
  %3213 = icmp eq i32 %3193, 0
  %3214 = zext i1 %3213 to i8
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3214, i8* %3215, align 1
  %3216 = lshr i32 %3193, 31
  %3217 = trunc i32 %3216 to i8
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3217, i8* %3218, align 1
  %3219 = lshr i32 %3192, 31
  %3220 = xor i32 %3216, %3219
  %3221 = add i32 %3220, %3216
  %3222 = icmp eq i32 %3221, 2
  %3223 = zext i1 %3222 to i8
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3223, i8* %3224, align 1
  store %struct.Memory* %loadMem_400bbc, %struct.Memory** %MEMORY
  %loadMem_400bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 5
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %ECX.i323 = bitcast %union.anon* %3230 to i32*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 7
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %3233 to i64*
  %3234 = load i32, i32* %ECX.i323
  %3235 = zext i32 %3234 to i64
  %3236 = load i64, i64* %PC.i322
  %3237 = add i64 %3236, 3
  store i64 %3237, i64* %PC.i322
  %3238 = shl i64 %3235, 32
  %3239 = ashr exact i64 %3238, 32
  store i64 %3239, i64* %RDX.i324, align 8
  store %struct.Memory* %loadMem_400bbf, %struct.Memory** %MEMORY
  %loadMem_400bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 1
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 7
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RDX.i320 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3250 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3249, i64 0, i64 0
  %YMM0.i321 = bitcast %union.VectorReg* %3250 to %"class.std::bitset"*
  %3251 = bitcast %"class.std::bitset"* %YMM0.i321 to i8*
  %3252 = load i64, i64* %RAX.i319
  %3253 = load i64, i64* %RDX.i320
  %3254 = mul i64 %3253, 8
  %3255 = add i64 %3254, %3252
  %3256 = load i64, i64* %PC.i318
  %3257 = add i64 %3256, 5
  store i64 %3257, i64* %PC.i318
  %3258 = inttoptr i64 %3255 to double*
  %3259 = load double, double* %3258
  %3260 = bitcast i8* %3251 to double*
  store double %3259, double* %3260, align 1
  %3261 = getelementptr inbounds i8, i8* %3251, i64 8
  %3262 = bitcast i8* %3261 to double*
  store double 0.000000e+00, double* %3262, align 1
  store %struct.Memory* %loadMem_400bc2, %struct.Memory** %MEMORY
  %loadMem_400bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 33
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 15
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %3268 to i64*
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3270 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3269, i64 0, i64 0
  %XMM0.i317 = bitcast %union.VectorReg* %3270 to %union.vec128_t*
  %3271 = load i64, i64* %RBP.i316
  %3272 = sub i64 %3271, 128
  %3273 = bitcast %union.vec128_t* %XMM0.i317 to i8*
  %3274 = load i64, i64* %PC.i315
  %3275 = add i64 %3274, 5
  store i64 %3275, i64* %PC.i315
  %3276 = bitcast i8* %3273 to double*
  %3277 = load double, double* %3276, align 1
  %3278 = inttoptr i64 %3272 to double*
  store double %3277, double* %3278
  store %struct.Memory* %loadMem_400bc7, %struct.Memory** %MEMORY
  %loadMem_400bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %3281 to i64*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 1
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 15
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %3287 to i64*
  %3288 = load i64, i64* %RBP.i314
  %3289 = sub i64 %3288, 32
  %3290 = load i64, i64* %PC.i312
  %3291 = add i64 %3290, 4
  store i64 %3291, i64* %PC.i312
  %3292 = inttoptr i64 %3289 to i64*
  %3293 = load i64, i64* %3292
  store i64 %3293, i64* %RAX.i313, align 8
  store %struct.Memory* %loadMem_400bcc, %struct.Memory** %MEMORY
  %loadMem_400bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 5
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 15
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %3302 to i64*
  %3303 = load i64, i64* %RBP.i311
  %3304 = sub i64 %3303, 100
  %3305 = load i64, i64* %PC.i309
  %3306 = add i64 %3305, 3
  store i64 %3306, i64* %PC.i309
  %3307 = inttoptr i64 %3304 to i32*
  %3308 = load i32, i32* %3307
  %3309 = zext i32 %3308 to i64
  store i64 %3309, i64* %RCX.i310, align 8
  store %struct.Memory* %loadMem_400bd0, %struct.Memory** %MEMORY
  %loadMem_400bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 33
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3312 to i64*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 5
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %3315 to i64*
  %3316 = load i64, i64* %RCX.i308
  %3317 = load i64, i64* %PC.i307
  %3318 = add i64 %3317, 2
  store i64 %3318, i64* %PC.i307
  %3319 = trunc i64 %3316 to i32
  %3320 = shl i32 %3319, 1
  %3321 = icmp slt i32 %3319, 0
  %3322 = icmp slt i32 %3320, 0
  %3323 = xor i1 %3321, %3322
  %3324 = zext i32 %3320 to i64
  store i64 %3324, i64* %RCX.i308, align 8
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3326 = zext i1 %3321 to i8
  store i8 %3326, i8* %3325, align 1
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3328 = and i32 %3320, 254
  %3329 = call i32 @llvm.ctpop.i32(i32 %3328)
  %3330 = trunc i32 %3329 to i8
  %3331 = and i8 %3330, 1
  %3332 = xor i8 %3331, 1
  store i8 %3332, i8* %3327, align 1
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3333, align 1
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3335 = icmp eq i32 %3320, 0
  %3336 = zext i1 %3335 to i8
  store i8 %3336, i8* %3334, align 1
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3338 = lshr i32 %3320, 31
  %3339 = trunc i32 %3338 to i8
  store i8 %3339, i8* %3337, align 1
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3341 = zext i1 %3323 to i8
  store i8 %3341, i8* %3340, align 1
  store %struct.Memory* %loadMem_400bd3, %struct.Memory** %MEMORY
  %loadMem_400bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 33
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %3344 to i64*
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 5
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %3347 to i64*
  %3348 = load i64, i64* %RCX.i306
  %3349 = load i64, i64* %PC.i305
  %3350 = add i64 %3349, 3
  store i64 %3350, i64* %PC.i305
  %3351 = trunc i64 %3348 to i32
  %3352 = add i32 1, %3351
  %3353 = zext i32 %3352 to i64
  store i64 %3353, i64* %RCX.i306, align 8
  %3354 = icmp ult i32 %3352, %3351
  %3355 = icmp ult i32 %3352, 1
  %3356 = or i1 %3354, %3355
  %3357 = zext i1 %3356 to i8
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3357, i8* %3358, align 1
  %3359 = and i32 %3352, 255
  %3360 = call i32 @llvm.ctpop.i32(i32 %3359)
  %3361 = trunc i32 %3360 to i8
  %3362 = and i8 %3361, 1
  %3363 = xor i8 %3362, 1
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3363, i8* %3364, align 1
  %3365 = xor i64 1, %3348
  %3366 = trunc i64 %3365 to i32
  %3367 = xor i32 %3366, %3352
  %3368 = lshr i32 %3367, 4
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3370, i8* %3371, align 1
  %3372 = icmp eq i32 %3352, 0
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3373, i8* %3374, align 1
  %3375 = lshr i32 %3352, 31
  %3376 = trunc i32 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3376, i8* %3377, align 1
  %3378 = lshr i32 %3351, 31
  %3379 = xor i32 %3375, %3378
  %3380 = add i32 %3379, %3375
  %3381 = icmp eq i32 %3380, 2
  %3382 = zext i1 %3381 to i8
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3382, i8* %3383, align 1
  store %struct.Memory* %loadMem_400bd6, %struct.Memory** %MEMORY
  %loadMem_400bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 33
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3386 to i64*
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 5
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %ECX.i303 = bitcast %union.anon* %3389 to i32*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 7
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %RDX.i304 = bitcast %union.anon* %3392 to i64*
  %3393 = load i32, i32* %ECX.i303
  %3394 = zext i32 %3393 to i64
  %3395 = load i64, i64* %PC.i302
  %3396 = add i64 %3395, 3
  store i64 %3396, i64* %PC.i302
  %3397 = shl i64 %3394, 32
  %3398 = ashr exact i64 %3397, 32
  store i64 %3398, i64* %RDX.i304, align 8
  store %struct.Memory* %loadMem_400bd9, %struct.Memory** %MEMORY
  %loadMem_400bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 33
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 1
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 7
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3409 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3408, i64 0, i64 0
  %YMM0.i301 = bitcast %union.VectorReg* %3409 to %"class.std::bitset"*
  %3410 = bitcast %"class.std::bitset"* %YMM0.i301 to i8*
  %3411 = load i64, i64* %RAX.i299
  %3412 = load i64, i64* %RDX.i300
  %3413 = mul i64 %3412, 8
  %3414 = add i64 %3413, %3411
  %3415 = load i64, i64* %PC.i298
  %3416 = add i64 %3415, 5
  store i64 %3416, i64* %PC.i298
  %3417 = inttoptr i64 %3414 to double*
  %3418 = load double, double* %3417
  %3419 = bitcast i8* %3410 to double*
  store double %3418, double* %3419, align 1
  %3420 = getelementptr inbounds i8, i8* %3410, i64 8
  %3421 = bitcast i8* %3420 to double*
  store double 0.000000e+00, double* %3421, align 1
  store %struct.Memory* %loadMem_400bdc, %struct.Memory** %MEMORY
  %loadMem_400be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 33
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %3424 to i64*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 15
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %3427 to i64*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3429 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3428, i64 0, i64 0
  %XMM0.i297 = bitcast %union.VectorReg* %3429 to %union.vec128_t*
  %3430 = load i64, i64* %RBP.i296
  %3431 = sub i64 %3430, 136
  %3432 = bitcast %union.vec128_t* %XMM0.i297 to i8*
  %3433 = load i64, i64* %PC.i295
  %3434 = add i64 %3433, 8
  store i64 %3434, i64* %PC.i295
  %3435 = bitcast i8* %3432 to double*
  %3436 = load double, double* %3435, align 1
  %3437 = inttoptr i64 %3431 to double*
  store double %3436, double* %3437
  store %struct.Memory* %loadMem_400be1, %struct.Memory** %MEMORY
  %loadMem_400be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 33
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %3440 to i64*
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 15
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %3443 to i64*
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3445 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3444, i64 0, i64 0
  %YMM0.i294 = bitcast %union.VectorReg* %3445 to %"class.std::bitset"*
  %3446 = bitcast %"class.std::bitset"* %YMM0.i294 to i8*
  %3447 = load i64, i64* %RBP.i293
  %3448 = sub i64 %3447, 112
  %3449 = load i64, i64* %PC.i292
  %3450 = add i64 %3449, 5
  store i64 %3450, i64* %PC.i292
  %3451 = inttoptr i64 %3448 to double*
  %3452 = load double, double* %3451
  %3453 = bitcast i8* %3446 to double*
  store double %3452, double* %3453, align 1
  %3454 = getelementptr inbounds i8, i8* %3446, i64 8
  %3455 = bitcast i8* %3454 to double*
  store double 0.000000e+00, double* %3455, align 1
  store %struct.Memory* %loadMem_400be9, %struct.Memory** %MEMORY
  %loadMem_400bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 33
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 15
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3462, i64 0, i64 0
  %YMM0.i291 = bitcast %union.VectorReg* %3463 to %"class.std::bitset"*
  %3464 = bitcast %"class.std::bitset"* %YMM0.i291 to i8*
  %3465 = bitcast %"class.std::bitset"* %YMM0.i291 to i8*
  %3466 = load i64, i64* %RBP.i290
  %3467 = sub i64 %3466, 120
  %3468 = load i64, i64* %PC.i289
  %3469 = add i64 %3468, 5
  store i64 %3469, i64* %PC.i289
  %3470 = bitcast i8* %3465 to double*
  %3471 = load double, double* %3470, align 1
  %3472 = getelementptr inbounds i8, i8* %3465, i64 8
  %3473 = bitcast i8* %3472 to i64*
  %3474 = load i64, i64* %3473, align 1
  %3475 = inttoptr i64 %3467 to double*
  %3476 = load double, double* %3475
  %3477 = fmul double %3471, %3476
  %3478 = bitcast i8* %3464 to double*
  store double %3477, double* %3478, align 1
  %3479 = getelementptr inbounds i8, i8* %3464, i64 8
  %3480 = bitcast i8* %3479 to i64*
  store i64 %3474, i64* %3480, align 1
  store %struct.Memory* %loadMem_400bee, %struct.Memory** %MEMORY
  %loadMem_400bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 33
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 15
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3487, i64 0, i64 1
  %YMM1.i288 = bitcast %union.VectorReg* %3488 to %"class.std::bitset"*
  %3489 = bitcast %"class.std::bitset"* %YMM1.i288 to i8*
  %3490 = load i64, i64* %RBP.i287
  %3491 = sub i64 %3490, 128
  %3492 = load i64, i64* %PC.i286
  %3493 = add i64 %3492, 5
  store i64 %3493, i64* %PC.i286
  %3494 = inttoptr i64 %3491 to double*
  %3495 = load double, double* %3494
  %3496 = bitcast i8* %3489 to double*
  store double %3495, double* %3496, align 1
  %3497 = getelementptr inbounds i8, i8* %3489, i64 8
  %3498 = bitcast i8* %3497 to double*
  store double 0.000000e+00, double* %3498, align 1
  store %struct.Memory* %loadMem_400bf3, %struct.Memory** %MEMORY
  %loadMem_400bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 33
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3501 to i64*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 15
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %3504 to i64*
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3506 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3505, i64 0, i64 1
  %YMM1.i285 = bitcast %union.VectorReg* %3506 to %"class.std::bitset"*
  %3507 = bitcast %"class.std::bitset"* %YMM1.i285 to i8*
  %3508 = bitcast %"class.std::bitset"* %YMM1.i285 to i8*
  %3509 = load i64, i64* %RBP.i284
  %3510 = sub i64 %3509, 136
  %3511 = load i64, i64* %PC.i283
  %3512 = add i64 %3511, 8
  store i64 %3512, i64* %PC.i283
  %3513 = bitcast i8* %3508 to double*
  %3514 = load double, double* %3513, align 1
  %3515 = getelementptr inbounds i8, i8* %3508, i64 8
  %3516 = bitcast i8* %3515 to i64*
  %3517 = load i64, i64* %3516, align 1
  %3518 = inttoptr i64 %3510 to double*
  %3519 = load double, double* %3518
  %3520 = fmul double %3514, %3519
  %3521 = bitcast i8* %3507 to double*
  store double %3520, double* %3521, align 1
  %3522 = getelementptr inbounds i8, i8* %3507, i64 8
  %3523 = bitcast i8* %3522 to i64*
  store i64 %3517, i64* %3523, align 1
  store %struct.Memory* %loadMem_400bf8, %struct.Memory** %MEMORY
  %loadMem_400c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 33
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3526 to i64*
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3528 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3527, i64 0, i64 0
  %YMM0.i281 = bitcast %union.VectorReg* %3528 to %"class.std::bitset"*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3530 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3529, i64 0, i64 1
  %XMM1.i282 = bitcast %union.VectorReg* %3530 to %union.vec128_t*
  %3531 = bitcast %"class.std::bitset"* %YMM0.i281 to i8*
  %3532 = bitcast %"class.std::bitset"* %YMM0.i281 to i8*
  %3533 = bitcast %union.vec128_t* %XMM1.i282 to i8*
  %3534 = load i64, i64* %PC.i280
  %3535 = add i64 %3534, 4
  store i64 %3535, i64* %PC.i280
  %3536 = bitcast i8* %3532 to double*
  %3537 = load double, double* %3536, align 1
  %3538 = getelementptr inbounds i8, i8* %3532, i64 8
  %3539 = bitcast i8* %3538 to i64*
  %3540 = load i64, i64* %3539, align 1
  %3541 = bitcast i8* %3533 to double*
  %3542 = load double, double* %3541, align 1
  %3543 = fsub double %3537, %3542
  %3544 = bitcast i8* %3531 to double*
  store double %3543, double* %3544, align 1
  %3545 = getelementptr inbounds i8, i8* %3531, i64 8
  %3546 = bitcast i8* %3545 to i64*
  store i64 %3540, i64* %3546, align 1
  store %struct.Memory* %loadMem_400c00, %struct.Memory** %MEMORY
  %loadMem_400c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 33
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3549 to i64*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 1
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %3552 to i64*
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 15
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %3555 to i64*
  %3556 = load i64, i64* %RBP.i279
  %3557 = sub i64 %3556, 40
  %3558 = load i64, i64* %PC.i277
  %3559 = add i64 %3558, 4
  store i64 %3559, i64* %PC.i277
  %3560 = inttoptr i64 %3557 to i64*
  %3561 = load i64, i64* %3560
  store i64 %3561, i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_400c04, %struct.Memory** %MEMORY
  %loadMem_400c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 33
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 5
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 15
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %3570 to i64*
  %3571 = load i64, i64* %RBP.i276
  %3572 = sub i64 %3571, 100
  %3573 = load i64, i64* %PC.i274
  %3574 = add i64 %3573, 3
  store i64 %3574, i64* %PC.i274
  %3575 = inttoptr i64 %3572 to i32*
  %3576 = load i32, i32* %3575
  %3577 = zext i32 %3576 to i64
  store i64 %3577, i64* %RCX.i275, align 8
  store %struct.Memory* %loadMem_400c08, %struct.Memory** %MEMORY
  %loadMem_400c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 33
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %3580 to i64*
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 5
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %3583 to i64*
  %3584 = load i64, i64* %RCX.i273
  %3585 = load i64, i64* %PC.i272
  %3586 = add i64 %3585, 2
  store i64 %3586, i64* %PC.i272
  %3587 = trunc i64 %3584 to i32
  %3588 = shl i32 %3587, 1
  %3589 = icmp slt i32 %3587, 0
  %3590 = icmp slt i32 %3588, 0
  %3591 = xor i1 %3589, %3590
  %3592 = zext i32 %3588 to i64
  store i64 %3592, i64* %RCX.i273, align 8
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3594 = zext i1 %3589 to i8
  store i8 %3594, i8* %3593, align 1
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3596 = and i32 %3588, 254
  %3597 = call i32 @llvm.ctpop.i32(i32 %3596)
  %3598 = trunc i32 %3597 to i8
  %3599 = and i8 %3598, 1
  %3600 = xor i8 %3599, 1
  store i8 %3600, i8* %3595, align 1
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3601, align 1
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3603 = icmp eq i32 %3588, 0
  %3604 = zext i1 %3603 to i8
  store i8 %3604, i8* %3602, align 1
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3606 = lshr i32 %3588, 31
  %3607 = trunc i32 %3606 to i8
  store i8 %3607, i8* %3605, align 1
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3609 = zext i1 %3591 to i8
  store i8 %3609, i8* %3608, align 1
  store %struct.Memory* %loadMem_400c0b, %struct.Memory** %MEMORY
  %loadMem_400c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 33
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3612 to i64*
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 5
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %ECX.i270 = bitcast %union.anon* %3615 to i32*
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 7
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %RDX.i271 = bitcast %union.anon* %3618 to i64*
  %3619 = load i32, i32* %ECX.i270
  %3620 = zext i32 %3619 to i64
  %3621 = load i64, i64* %PC.i269
  %3622 = add i64 %3621, 3
  store i64 %3622, i64* %PC.i269
  %3623 = shl i64 %3620, 32
  %3624 = ashr exact i64 %3623, 32
  store i64 %3624, i64* %RDX.i271, align 8
  store %struct.Memory* %loadMem_400c0e, %struct.Memory** %MEMORY
  %loadMem_400c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 33
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3627 to i64*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 1
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %3630 to i64*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 7
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RDX.i267 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3635 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3634, i64 0, i64 0
  %XMM0.i268 = bitcast %union.VectorReg* %3635 to %union.vec128_t*
  %3636 = load i64, i64* %RAX.i266
  %3637 = load i64, i64* %RDX.i267
  %3638 = mul i64 %3637, 8
  %3639 = add i64 %3638, %3636
  %3640 = bitcast %union.vec128_t* %XMM0.i268 to i8*
  %3641 = load i64, i64* %PC.i265
  %3642 = add i64 %3641, 5
  store i64 %3642, i64* %PC.i265
  %3643 = bitcast i8* %3640 to double*
  %3644 = load double, double* %3643, align 1
  %3645 = inttoptr i64 %3639 to double*
  store double %3644, double* %3645
  store %struct.Memory* %loadMem_400c11, %struct.Memory** %MEMORY
  %loadMem_400c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 15
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %3651 to i64*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3653 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3652, i64 0, i64 0
  %YMM0.i264 = bitcast %union.VectorReg* %3653 to %"class.std::bitset"*
  %3654 = bitcast %"class.std::bitset"* %YMM0.i264 to i8*
  %3655 = load i64, i64* %RBP.i263
  %3656 = sub i64 %3655, 112
  %3657 = load i64, i64* %PC.i262
  %3658 = add i64 %3657, 5
  store i64 %3658, i64* %PC.i262
  %3659 = inttoptr i64 %3656 to double*
  %3660 = load double, double* %3659
  %3661 = bitcast i8* %3654 to double*
  store double %3660, double* %3661, align 1
  %3662 = getelementptr inbounds i8, i8* %3654, i64 8
  %3663 = bitcast i8* %3662 to double*
  store double 0.000000e+00, double* %3663, align 1
  store %struct.Memory* %loadMem_400c16, %struct.Memory** %MEMORY
  %loadMem_400c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 33
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %3666 to i64*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 15
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3671 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3670, i64 0, i64 0
  %YMM0.i261 = bitcast %union.VectorReg* %3671 to %"class.std::bitset"*
  %3672 = bitcast %"class.std::bitset"* %YMM0.i261 to i8*
  %3673 = bitcast %"class.std::bitset"* %YMM0.i261 to i8*
  %3674 = load i64, i64* %RBP.i260
  %3675 = sub i64 %3674, 136
  %3676 = load i64, i64* %PC.i259
  %3677 = add i64 %3676, 8
  store i64 %3677, i64* %PC.i259
  %3678 = bitcast i8* %3673 to double*
  %3679 = load double, double* %3678, align 1
  %3680 = getelementptr inbounds i8, i8* %3673, i64 8
  %3681 = bitcast i8* %3680 to i64*
  %3682 = load i64, i64* %3681, align 1
  %3683 = inttoptr i64 %3675 to double*
  %3684 = load double, double* %3683
  %3685 = fmul double %3679, %3684
  %3686 = bitcast i8* %3672 to double*
  store double %3685, double* %3686, align 1
  %3687 = getelementptr inbounds i8, i8* %3672, i64 8
  %3688 = bitcast i8* %3687 to i64*
  store i64 %3682, i64* %3688, align 1
  store %struct.Memory* %loadMem_400c1b, %struct.Memory** %MEMORY
  %loadMem_400c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 33
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3691 to i64*
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 15
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %3694 to i64*
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3696 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3695, i64 0, i64 1
  %YMM1.i258 = bitcast %union.VectorReg* %3696 to %"class.std::bitset"*
  %3697 = bitcast %"class.std::bitset"* %YMM1.i258 to i8*
  %3698 = load i64, i64* %RBP.i257
  %3699 = sub i64 %3698, 128
  %3700 = load i64, i64* %PC.i256
  %3701 = add i64 %3700, 5
  store i64 %3701, i64* %PC.i256
  %3702 = inttoptr i64 %3699 to double*
  %3703 = load double, double* %3702
  %3704 = bitcast i8* %3697 to double*
  store double %3703, double* %3704, align 1
  %3705 = getelementptr inbounds i8, i8* %3697, i64 8
  %3706 = bitcast i8* %3705 to double*
  store double 0.000000e+00, double* %3706, align 1
  store %struct.Memory* %loadMem_400c23, %struct.Memory** %MEMORY
  %loadMem_400c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 15
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %3712 to i64*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3714 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3713, i64 0, i64 1
  %YMM1.i255 = bitcast %union.VectorReg* %3714 to %"class.std::bitset"*
  %3715 = bitcast %"class.std::bitset"* %YMM1.i255 to i8*
  %3716 = bitcast %"class.std::bitset"* %YMM1.i255 to i8*
  %3717 = load i64, i64* %RBP.i254
  %3718 = sub i64 %3717, 120
  %3719 = load i64, i64* %PC.i253
  %3720 = add i64 %3719, 5
  store i64 %3720, i64* %PC.i253
  %3721 = bitcast i8* %3716 to double*
  %3722 = load double, double* %3721, align 1
  %3723 = getelementptr inbounds i8, i8* %3716, i64 8
  %3724 = bitcast i8* %3723 to i64*
  %3725 = load i64, i64* %3724, align 1
  %3726 = inttoptr i64 %3718 to double*
  %3727 = load double, double* %3726
  %3728 = fmul double %3722, %3727
  %3729 = bitcast i8* %3715 to double*
  store double %3728, double* %3729, align 1
  %3730 = getelementptr inbounds i8, i8* %3715, i64 8
  %3731 = bitcast i8* %3730 to i64*
  store i64 %3725, i64* %3731, align 1
  store %struct.Memory* %loadMem_400c28, %struct.Memory** %MEMORY
  %loadMem_400c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 33
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3736 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3735, i64 0, i64 0
  %YMM0.i251 = bitcast %union.VectorReg* %3736 to %"class.std::bitset"*
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3738 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3737, i64 0, i64 1
  %XMM1.i252 = bitcast %union.VectorReg* %3738 to %union.vec128_t*
  %3739 = bitcast %"class.std::bitset"* %YMM0.i251 to i8*
  %3740 = bitcast %"class.std::bitset"* %YMM0.i251 to i8*
  %3741 = bitcast %union.vec128_t* %XMM1.i252 to i8*
  %3742 = load i64, i64* %PC.i250
  %3743 = add i64 %3742, 4
  store i64 %3743, i64* %PC.i250
  %3744 = bitcast i8* %3740 to double*
  %3745 = load double, double* %3744, align 1
  %3746 = getelementptr inbounds i8, i8* %3740, i64 8
  %3747 = bitcast i8* %3746 to i64*
  %3748 = load i64, i64* %3747, align 1
  %3749 = bitcast i8* %3741 to double*
  %3750 = load double, double* %3749, align 1
  %3751 = fadd double %3745, %3750
  %3752 = bitcast i8* %3739 to double*
  store double %3751, double* %3752, align 1
  %3753 = getelementptr inbounds i8, i8* %3739, i64 8
  %3754 = bitcast i8* %3753 to i64*
  store i64 %3748, i64* %3754, align 1
  store %struct.Memory* %loadMem_400c2d, %struct.Memory** %MEMORY
  %loadMem_400c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 33
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 1
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %3760 to i64*
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 15
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %3763 to i64*
  %3764 = load i64, i64* %RBP.i249
  %3765 = sub i64 %3764, 40
  %3766 = load i64, i64* %PC.i247
  %3767 = add i64 %3766, 4
  store i64 %3767, i64* %PC.i247
  %3768 = inttoptr i64 %3765 to i64*
  %3769 = load i64, i64* %3768
  store i64 %3769, i64* %RAX.i248, align 8
  store %struct.Memory* %loadMem_400c31, %struct.Memory** %MEMORY
  %loadMem_400c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 33
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3772 to i64*
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 5
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 15
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %3778 to i64*
  %3779 = load i64, i64* %RBP.i246
  %3780 = sub i64 %3779, 100
  %3781 = load i64, i64* %PC.i244
  %3782 = add i64 %3781, 3
  store i64 %3782, i64* %PC.i244
  %3783 = inttoptr i64 %3780 to i32*
  %3784 = load i32, i32* %3783
  %3785 = zext i32 %3784 to i64
  store i64 %3785, i64* %RCX.i245, align 8
  store %struct.Memory* %loadMem_400c35, %struct.Memory** %MEMORY
  %loadMem_400c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 33
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 5
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %3791 to i64*
  %3792 = load i64, i64* %RCX.i243
  %3793 = load i64, i64* %PC.i242
  %3794 = add i64 %3793, 2
  store i64 %3794, i64* %PC.i242
  %3795 = trunc i64 %3792 to i32
  %3796 = shl i32 %3795, 1
  %3797 = icmp slt i32 %3795, 0
  %3798 = icmp slt i32 %3796, 0
  %3799 = xor i1 %3797, %3798
  %3800 = zext i32 %3796 to i64
  store i64 %3800, i64* %RCX.i243, align 8
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3802 = zext i1 %3797 to i8
  store i8 %3802, i8* %3801, align 1
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3804 = and i32 %3796, 254
  %3805 = call i32 @llvm.ctpop.i32(i32 %3804)
  %3806 = trunc i32 %3805 to i8
  %3807 = and i8 %3806, 1
  %3808 = xor i8 %3807, 1
  store i8 %3808, i8* %3803, align 1
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3809, align 1
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3811 = icmp eq i32 %3796, 0
  %3812 = zext i1 %3811 to i8
  store i8 %3812, i8* %3810, align 1
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3814 = lshr i32 %3796, 31
  %3815 = trunc i32 %3814 to i8
  store i8 %3815, i8* %3813, align 1
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3817 = zext i1 %3799 to i8
  store i8 %3817, i8* %3816, align 1
  store %struct.Memory* %loadMem_400c38, %struct.Memory** %MEMORY
  %loadMem_400c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 33
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3820 to i64*
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 5
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %3823 to i64*
  %3824 = load i64, i64* %RCX.i241
  %3825 = load i64, i64* %PC.i240
  %3826 = add i64 %3825, 3
  store i64 %3826, i64* %PC.i240
  %3827 = trunc i64 %3824 to i32
  %3828 = add i32 1, %3827
  %3829 = zext i32 %3828 to i64
  store i64 %3829, i64* %RCX.i241, align 8
  %3830 = icmp ult i32 %3828, %3827
  %3831 = icmp ult i32 %3828, 1
  %3832 = or i1 %3830, %3831
  %3833 = zext i1 %3832 to i8
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3833, i8* %3834, align 1
  %3835 = and i32 %3828, 255
  %3836 = call i32 @llvm.ctpop.i32(i32 %3835)
  %3837 = trunc i32 %3836 to i8
  %3838 = and i8 %3837, 1
  %3839 = xor i8 %3838, 1
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3839, i8* %3840, align 1
  %3841 = xor i64 1, %3824
  %3842 = trunc i64 %3841 to i32
  %3843 = xor i32 %3842, %3828
  %3844 = lshr i32 %3843, 4
  %3845 = trunc i32 %3844 to i8
  %3846 = and i8 %3845, 1
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3846, i8* %3847, align 1
  %3848 = icmp eq i32 %3828, 0
  %3849 = zext i1 %3848 to i8
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3849, i8* %3850, align 1
  %3851 = lshr i32 %3828, 31
  %3852 = trunc i32 %3851 to i8
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3852, i8* %3853, align 1
  %3854 = lshr i32 %3827, 31
  %3855 = xor i32 %3851, %3854
  %3856 = add i32 %3855, %3851
  %3857 = icmp eq i32 %3856, 2
  %3858 = zext i1 %3857 to i8
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3858, i8* %3859, align 1
  store %struct.Memory* %loadMem_400c3b, %struct.Memory** %MEMORY
  %loadMem_400c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 5
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %ECX.i238 = bitcast %union.anon* %3865 to i32*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 7
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %RDX.i239 = bitcast %union.anon* %3868 to i64*
  %3869 = load i32, i32* %ECX.i238
  %3870 = zext i32 %3869 to i64
  %3871 = load i64, i64* %PC.i237
  %3872 = add i64 %3871, 3
  store i64 %3872, i64* %PC.i237
  %3873 = shl i64 %3870, 32
  %3874 = ashr exact i64 %3873, 32
  store i64 %3874, i64* %RDX.i239, align 8
  store %struct.Memory* %loadMem_400c3e, %struct.Memory** %MEMORY
  %loadMem_400c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 33
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3877 to i64*
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 1
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 7
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %RDX.i235 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3885 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3884, i64 0, i64 0
  %XMM0.i236 = bitcast %union.VectorReg* %3885 to %union.vec128_t*
  %3886 = load i64, i64* %RAX.i234
  %3887 = load i64, i64* %RDX.i235
  %3888 = mul i64 %3887, 8
  %3889 = add i64 %3888, %3886
  %3890 = bitcast %union.vec128_t* %XMM0.i236 to i8*
  %3891 = load i64, i64* %PC.i233
  %3892 = add i64 %3891, 5
  store i64 %3892, i64* %PC.i233
  %3893 = bitcast i8* %3890 to double*
  %3894 = load double, double* %3893, align 1
  %3895 = inttoptr i64 %3889 to double*
  store double %3894, double* %3895
  store %struct.Memory* %loadMem_400c41, %struct.Memory** %MEMORY
  %loadMem_400c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 33
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3898 to i64*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 1
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %3901 to i64*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 15
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %3904 to i64*
  %3905 = load i64, i64* %RBP.i232
  %3906 = sub i64 %3905, 100
  %3907 = load i64, i64* %PC.i230
  %3908 = add i64 %3907, 3
  store i64 %3908, i64* %PC.i230
  %3909 = inttoptr i64 %3906 to i32*
  %3910 = load i32, i32* %3909
  %3911 = zext i32 %3910 to i64
  store i64 %3911, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_400c46, %struct.Memory** %MEMORY
  %loadMem_400c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 33
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3914 to i64*
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 1
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %3917 to i64*
  %3918 = load i64, i64* %RAX.i229
  %3919 = load i64, i64* %PC.i228
  %3920 = add i64 %3919, 3
  store i64 %3920, i64* %PC.i228
  %3921 = trunc i64 %3918 to i32
  %3922 = add i32 1, %3921
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %RAX.i229, align 8
  %3924 = icmp ult i32 %3922, %3921
  %3925 = icmp ult i32 %3922, 1
  %3926 = or i1 %3924, %3925
  %3927 = zext i1 %3926 to i8
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3927, i8* %3928, align 1
  %3929 = and i32 %3922, 255
  %3930 = call i32 @llvm.ctpop.i32(i32 %3929)
  %3931 = trunc i32 %3930 to i8
  %3932 = and i8 %3931, 1
  %3933 = xor i8 %3932, 1
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3933, i8* %3934, align 1
  %3935 = xor i64 1, %3918
  %3936 = trunc i64 %3935 to i32
  %3937 = xor i32 %3936, %3922
  %3938 = lshr i32 %3937, 4
  %3939 = trunc i32 %3938 to i8
  %3940 = and i8 %3939, 1
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3940, i8* %3941, align 1
  %3942 = icmp eq i32 %3922, 0
  %3943 = zext i1 %3942 to i8
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3943, i8* %3944, align 1
  %3945 = lshr i32 %3922, 31
  %3946 = trunc i32 %3945 to i8
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3946, i8* %3947, align 1
  %3948 = lshr i32 %3921, 31
  %3949 = xor i32 %3945, %3948
  %3950 = add i32 %3949, %3945
  %3951 = icmp eq i32 %3950, 2
  %3952 = zext i1 %3951 to i8
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3952, i8* %3953, align 1
  store %struct.Memory* %loadMem_400c49, %struct.Memory** %MEMORY
  %loadMem_400c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 33
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 1
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %EAX.i226 = bitcast %union.anon* %3959 to i32*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 15
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %3962 to i64*
  %3963 = load i64, i64* %RBP.i227
  %3964 = sub i64 %3963, 100
  %3965 = load i32, i32* %EAX.i226
  %3966 = zext i32 %3965 to i64
  %3967 = load i64, i64* %PC.i225
  %3968 = add i64 %3967, 3
  store i64 %3968, i64* %PC.i225
  %3969 = inttoptr i64 %3964 to i32*
  store i32 %3965, i32* %3969
  store %struct.Memory* %loadMem_400c4c, %struct.Memory** %MEMORY
  %loadMem_400c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 33
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3972 to i64*
  %3973 = load i64, i64* %PC.i224
  %3974 = add i64 %3973, -216
  %3975 = load i64, i64* %PC.i224
  %3976 = add i64 %3975, 5
  store i64 %3976, i64* %PC.i224
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3974, i64* %3977, align 8
  store %struct.Memory* %loadMem_400c4f, %struct.Memory** %MEMORY
  br label %block_.L_400b77

block_.L_400c54:                                  ; preds = %block_.L_400b77
  %loadMem_400c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 33
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3980 to i64*
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 11
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %RDI.i223 = bitcast %union.anon* %3983 to i64*
  %3984 = load i64, i64* %PC.i222
  %3985 = add i64 %3984, 5
  store i64 %3985, i64* %PC.i222
  store i64 2048, i64* %RDI.i223, align 8
  store %struct.Memory* %loadMem_400c54, %struct.Memory** %MEMORY
  %loadMem_400c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 33
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3988 to i64*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 9
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3991 to i64*
  %3992 = load i64, i64* %PC.i221
  %3993 = add i64 %3992, 5
  store i64 %3993, i64* %PC.i221
  store i64 4294967295, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_400c59, %struct.Memory** %MEMORY
  %loadMem_400c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 33
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3996 to i64*
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 7
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %RDX.i219 = bitcast %union.anon* %3999 to i64*
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 15
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %4002 to i64*
  %4003 = load i64, i64* %RBP.i220
  %4004 = sub i64 %4003, 40
  %4005 = load i64, i64* %PC.i218
  %4006 = add i64 %4005, 4
  store i64 %4006, i64* %PC.i218
  %4007 = inttoptr i64 %4004 to i64*
  %4008 = load i64, i64* %4007
  store i64 %4008, i64* %RDX.i219, align 8
  store %struct.Memory* %loadMem_400c5e, %struct.Memory** %MEMORY
  %loadMem_400c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 33
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4011 to i64*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 5
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %4014 to i64*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 15
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %4017 to i64*
  %4018 = load i64, i64* %RBP.i217
  %4019 = sub i64 %4018, 24
  %4020 = load i64, i64* %PC.i215
  %4021 = add i64 %4020, 4
  store i64 %4021, i64* %PC.i215
  %4022 = inttoptr i64 %4019 to i64*
  %4023 = load i64, i64* %4022
  store i64 %4023, i64* %RCX.i216, align 8
  store %struct.Memory* %loadMem_400c62, %struct.Memory** %MEMORY
  %loadMem_400c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 33
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %4026 to i64*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 15
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %4029 to i64*
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 17
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4032 to i64*
  %4033 = load i64, i64* %RBP.i214
  %4034 = sub i64 %4033, 56
  %4035 = load i64, i64* %PC.i213
  %4036 = add i64 %4035, 4
  store i64 %4036, i64* %PC.i213
  %4037 = inttoptr i64 %4034 to i64*
  %4038 = load i64, i64* %4037
  store i64 %4038, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_400c66, %struct.Memory** %MEMORY
  %loadMem1_400c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 33
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4041 to i64*
  %4042 = load i64, i64* %PC.i212
  %4043 = add i64 %4042, 998
  %4044 = load i64, i64* %PC.i212
  %4045 = add i64 %4044, 5
  %4046 = load i64, i64* %PC.i212
  %4047 = add i64 %4046, 5
  store i64 %4047, i64* %PC.i212
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4049 = load i64, i64* %4048, align 8
  %4050 = add i64 %4049, -8
  %4051 = inttoptr i64 %4050 to i64*
  store i64 %4045, i64* %4051
  store i64 %4050, i64* %4048, align 8
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4043, i64* %4052, align 8
  store %struct.Memory* %loadMem1_400c6a, %struct.Memory** %MEMORY
  %loadMem2_400c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400c6a = load i64, i64* %3
  %call2_400c6a = call %struct.Memory* @sub_401050.cdft(%struct.State* %0, i64 %loadPC_400c6a, %struct.Memory* %loadMem2_400c6a)
  store %struct.Memory* %call2_400c6a, %struct.Memory** %MEMORY
  %loadMem_400c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 33
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %4055 to i64*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 1
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %4058 to i64*
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 15
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %4061 to i64*
  %4062 = load i64, i64* %RBP.i211
  %4063 = sub i64 %4062, 8
  %4064 = load i64, i64* %PC.i209
  %4065 = add i64 %4064, 3
  store i64 %4065, i64* %PC.i209
  %4066 = inttoptr i64 %4063 to i32*
  %4067 = load i32, i32* %4066
  %4068 = zext i32 %4067 to i64
  store i64 %4068, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_400c6f, %struct.Memory** %MEMORY
  %loadMem_400c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 33
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %4071 to i64*
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 1
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %4074 to i64*
  %4075 = load i64, i64* %RAX.i208
  %4076 = load i64, i64* %PC.i207
  %4077 = add i64 %4076, 3
  store i64 %4077, i64* %PC.i207
  %4078 = trunc i64 %4075 to i32
  %4079 = add i32 1, %4078
  %4080 = zext i32 %4079 to i64
  store i64 %4080, i64* %RAX.i208, align 8
  %4081 = icmp ult i32 %4079, %4078
  %4082 = icmp ult i32 %4079, 1
  %4083 = or i1 %4081, %4082
  %4084 = zext i1 %4083 to i8
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4084, i8* %4085, align 1
  %4086 = and i32 %4079, 255
  %4087 = call i32 @llvm.ctpop.i32(i32 %4086)
  %4088 = trunc i32 %4087 to i8
  %4089 = and i8 %4088, 1
  %4090 = xor i8 %4089, 1
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4090, i8* %4091, align 1
  %4092 = xor i64 1, %4075
  %4093 = trunc i64 %4092 to i32
  %4094 = xor i32 %4093, %4079
  %4095 = lshr i32 %4094, 4
  %4096 = trunc i32 %4095 to i8
  %4097 = and i8 %4096, 1
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4097, i8* %4098, align 1
  %4099 = icmp eq i32 %4079, 0
  %4100 = zext i1 %4099 to i8
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4100, i8* %4101, align 1
  %4102 = lshr i32 %4079, 31
  %4103 = trunc i32 %4102 to i8
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4103, i8* %4104, align 1
  %4105 = lshr i32 %4078, 31
  %4106 = xor i32 %4102, %4105
  %4107 = add i32 %4106, %4102
  %4108 = icmp eq i32 %4107, 2
  %4109 = zext i1 %4108 to i8
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4109, i8* %4110, align 1
  store %struct.Memory* %loadMem_400c72, %struct.Memory** %MEMORY
  %loadMem_400c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4112 = getelementptr inbounds %struct.GPR, %struct.GPR* %4111, i32 0, i32 33
  %4113 = getelementptr inbounds %struct.Reg, %struct.Reg* %4112, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %4113 to i64*
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4115 = getelementptr inbounds %struct.GPR, %struct.GPR* %4114, i32 0, i32 1
  %4116 = getelementptr inbounds %struct.Reg, %struct.Reg* %4115, i32 0, i32 0
  %EAX.i205 = bitcast %union.anon* %4116 to i32*
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 15
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %4119 to i64*
  %4120 = load i64, i64* %RBP.i206
  %4121 = sub i64 %4120, 8
  %4122 = load i32, i32* %EAX.i205
  %4123 = zext i32 %4122 to i64
  %4124 = load i64, i64* %PC.i204
  %4125 = add i64 %4124, 3
  store i64 %4125, i64* %PC.i204
  %4126 = inttoptr i64 %4121 to i32*
  store i32 %4122, i32* %4126
  store %struct.Memory* %loadMem_400c75, %struct.Memory** %MEMORY
  %loadMem_400c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4128 = getelementptr inbounds %struct.GPR, %struct.GPR* %4127, i32 0, i32 33
  %4129 = getelementptr inbounds %struct.Reg, %struct.Reg* %4128, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %4129 to i64*
  %4130 = load i64, i64* %PC.i203
  %4131 = add i64 %4130, -354
  %4132 = load i64, i64* %PC.i203
  %4133 = add i64 %4132, 5
  store i64 %4133, i64* %PC.i203
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4131, i64* %4134, align 8
  store %struct.Memory* %loadMem_400c78, %struct.Memory** %MEMORY
  br label %block_.L_400b16

block_.L_400c7d:                                  ; preds = %block_.L_400b16
  %loadMem1_400c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 33
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %4137 to i64*
  %4138 = load i64, i64* %PC.i202
  %4139 = add i64 %4138, 419
  %4140 = load i64, i64* %PC.i202
  %4141 = add i64 %4140, 5
  %4142 = load i64, i64* %PC.i202
  %4143 = add i64 %4142, 5
  store i64 %4143, i64* %PC.i202
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4145 = load i64, i64* %4144, align 8
  %4146 = add i64 %4145, -8
  %4147 = inttoptr i64 %4146 to i64*
  store i64 %4141, i64* %4147
  store i64 %4146, i64* %4144, align 8
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4139, i64* %4148, align 8
  store %struct.Memory* %loadMem1_400c7d, %struct.Memory** %MEMORY
  %loadMem2_400c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400c7d = load i64, i64* %3
  %call2_400c7d = call %struct.Memory* @sub_400e20.get_time(%struct.State* %0, i64 %loadPC_400c7d, %struct.Memory* %loadMem2_400c7d)
  store %struct.Memory* %call2_400c7d, %struct.Memory** %MEMORY
  %loadMem_400c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 33
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 15
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4156 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4155, i64 0, i64 0
  %XMM0.i201 = bitcast %union.VectorReg* %4156 to %union.vec128_t*
  %4157 = load i64, i64* %RBP.i200
  %4158 = sub i64 %4157, 72
  %4159 = bitcast %union.vec128_t* %XMM0.i201 to i8*
  %4160 = load i64, i64* %PC.i199
  %4161 = add i64 %4160, 5
  store i64 %4161, i64* %PC.i199
  %4162 = bitcast i8* %4159 to double*
  %4163 = load double, double* %4162, align 1
  %4164 = inttoptr i64 %4158 to double*
  store double %4163, double* %4164
  store %struct.Memory* %loadMem_400c82, %struct.Memory** %MEMORY
  %loadMem_400c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 33
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4167 to i64*
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 15
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %4170 to i64*
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4171, i64 0, i64 0
  %YMM0.i198 = bitcast %union.VectorReg* %4172 to %"class.std::bitset"*
  %4173 = bitcast %"class.std::bitset"* %YMM0.i198 to i8*
  %4174 = load i64, i64* %RBP.i197
  %4175 = sub i64 %4174, 72
  %4176 = load i64, i64* %PC.i196
  %4177 = add i64 %4176, 5
  store i64 %4177, i64* %PC.i196
  %4178 = inttoptr i64 %4175 to double*
  %4179 = load double, double* %4178
  %4180 = bitcast i8* %4173 to double*
  store double %4179, double* %4180, align 1
  %4181 = getelementptr inbounds i8, i8* %4173, i64 8
  %4182 = bitcast i8* %4181 to double*
  store double 0.000000e+00, double* %4182, align 1
  store %struct.Memory* %loadMem_400c87, %struct.Memory** %MEMORY
  %loadMem_400c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 33
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %4185 to i64*
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 15
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %4188 to i64*
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4190 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4189, i64 0, i64 0
  %YMM0.i195 = bitcast %union.VectorReg* %4190 to %"class.std::bitset"*
  %4191 = bitcast %"class.std::bitset"* %YMM0.i195 to i8*
  %4192 = bitcast %"class.std::bitset"* %YMM0.i195 to i8*
  %4193 = load i64, i64* %RBP.i194
  %4194 = sub i64 %4193, 64
  %4195 = load i64, i64* %PC.i193
  %4196 = add i64 %4195, 5
  store i64 %4196, i64* %PC.i193
  %4197 = bitcast i8* %4192 to double*
  %4198 = load double, double* %4197, align 1
  %4199 = getelementptr inbounds i8, i8* %4192, i64 8
  %4200 = bitcast i8* %4199 to i64*
  %4201 = load i64, i64* %4200, align 1
  %4202 = inttoptr i64 %4194 to double*
  %4203 = load double, double* %4202
  %4204 = fsub double %4198, %4203
  %4205 = bitcast i8* %4191 to double*
  store double %4204, double* %4205, align 1
  %4206 = getelementptr inbounds i8, i8* %4191, i64 8
  %4207 = bitcast i8* %4206 to i64*
  store i64 %4201, i64* %4207, align 1
  store %struct.Memory* %loadMem_400c8c, %struct.Memory** %MEMORY
  %loadMem_400c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 33
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %4210 to i64*
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 15
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %4213 to i64*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4215 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4214, i64 0, i64 0
  %YMM0.i192 = bitcast %union.VectorReg* %4215 to %"class.std::bitset"*
  %4216 = bitcast %"class.std::bitset"* %YMM0.i192 to i8*
  %4217 = bitcast %"class.std::bitset"* %YMM0.i192 to i8*
  %4218 = load i64, i64* %RBP.i191
  %4219 = sub i64 %4218, 80
  %4220 = load i64, i64* %PC.i190
  %4221 = add i64 %4220, 5
  store i64 %4221, i64* %PC.i190
  %4222 = bitcast i8* %4217 to double*
  %4223 = load double, double* %4222, align 1
  %4224 = getelementptr inbounds i8, i8* %4217, i64 8
  %4225 = bitcast i8* %4224 to i64*
  %4226 = load i64, i64* %4225, align 1
  %4227 = inttoptr i64 %4219 to double*
  %4228 = load double, double* %4227
  %4229 = fsub double %4223, %4228
  %4230 = bitcast i8* %4216 to double*
  store double %4229, double* %4230, align 1
  %4231 = getelementptr inbounds i8, i8* %4216, i64 8
  %4232 = bitcast i8* %4231 to i64*
  store i64 %4226, i64* %4232, align 1
  store %struct.Memory* %loadMem_400c91, %struct.Memory** %MEMORY
  %loadMem_400c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 33
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %4235 to i64*
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 15
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4240 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4239, i64 0, i64 0
  %YMM0.i189 = bitcast %union.VectorReg* %4240 to %"class.std::bitset"*
  %4241 = bitcast %"class.std::bitset"* %YMM0.i189 to i8*
  %4242 = bitcast %"class.std::bitset"* %YMM0.i189 to i8*
  %4243 = load i64, i64* %RBP.i188
  %4244 = sub i64 %4243, 88
  %4245 = load i64, i64* %PC.i187
  %4246 = add i64 %4245, 5
  store i64 %4246, i64* %PC.i187
  %4247 = bitcast i8* %4242 to double*
  %4248 = load double, double* %4247, align 1
  %4249 = getelementptr inbounds i8, i8* %4242, i64 8
  %4250 = bitcast i8* %4249 to i64*
  %4251 = load i64, i64* %4250, align 1
  %4252 = inttoptr i64 %4244 to double*
  %4253 = load double, double* %4252
  %4254 = fadd double %4248, %4253
  %4255 = bitcast i8* %4241 to double*
  store double %4254, double* %4255, align 1
  %4256 = getelementptr inbounds i8, i8* %4241, i64 8
  %4257 = bitcast i8* %4256 to i64*
  store i64 %4251, i64* %4257, align 1
  store %struct.Memory* %loadMem_400c96, %struct.Memory** %MEMORY
  %loadMem_400c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 33
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %4260 to i64*
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4262 = getelementptr inbounds %struct.GPR, %struct.GPR* %4261, i32 0, i32 15
  %4263 = getelementptr inbounds %struct.Reg, %struct.Reg* %4262, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %4263 to i64*
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4264, i64 0, i64 0
  %XMM0.i186 = bitcast %union.VectorReg* %4265 to %union.vec128_t*
  %4266 = load i64, i64* %RBP.i185
  %4267 = sub i64 %4266, 88
  %4268 = bitcast %union.vec128_t* %XMM0.i186 to i8*
  %4269 = load i64, i64* %PC.i184
  %4270 = add i64 %4269, 5
  store i64 %4270, i64* %PC.i184
  %4271 = bitcast i8* %4268 to double*
  %4272 = load double, double* %4271, align 1
  %4273 = inttoptr i64 %4267 to double*
  store double %4272, double* %4273
  store %struct.Memory* %loadMem_400c9b, %struct.Memory** %MEMORY
  %loadMem_400ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4275 = getelementptr inbounds %struct.GPR, %struct.GPR* %4274, i32 0, i32 33
  %4276 = getelementptr inbounds %struct.Reg, %struct.Reg* %4275, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %4276 to i64*
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4278 = getelementptr inbounds %struct.GPR, %struct.GPR* %4277, i32 0, i32 15
  %4279 = getelementptr inbounds %struct.Reg, %struct.Reg* %4278, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %4279 to i64*
  %4280 = load i64, i64* %RBP.i183
  %4281 = sub i64 %4280, 12
  %4282 = load i64, i64* %PC.i182
  %4283 = add i64 %4282, 7
  store i64 %4283, i64* %PC.i182
  %4284 = inttoptr i64 %4281 to i32*
  store i32 0, i32* %4284
  store %struct.Memory* %loadMem_400ca0, %struct.Memory** %MEMORY
  br label %block_.L_400ca7

block_.L_400ca7:                                  ; preds = %block_.L_400d86, %block_.L_400c7d
  %loadMem_400ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 33
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4287 to i64*
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 15
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %4290 to i64*
  %4291 = load i64, i64* %RBP.i181
  %4292 = sub i64 %4291, 12
  %4293 = load i64, i64* %PC.i180
  %4294 = add i64 %4293, 7
  store i64 %4294, i64* %PC.i180
  %4295 = inttoptr i64 %4292 to i32*
  %4296 = load i32, i32* %4295
  %4297 = sub i32 %4296, 1024
  %4298 = icmp ult i32 %4296, 1024
  %4299 = zext i1 %4298 to i8
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4299, i8* %4300, align 1
  %4301 = and i32 %4297, 255
  %4302 = call i32 @llvm.ctpop.i32(i32 %4301)
  %4303 = trunc i32 %4302 to i8
  %4304 = and i8 %4303, 1
  %4305 = xor i8 %4304, 1
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4305, i8* %4306, align 1
  %4307 = xor i32 %4296, 1024
  %4308 = xor i32 %4307, %4297
  %4309 = lshr i32 %4308, 4
  %4310 = trunc i32 %4309 to i8
  %4311 = and i8 %4310, 1
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4311, i8* %4312, align 1
  %4313 = icmp eq i32 %4297, 0
  %4314 = zext i1 %4313 to i8
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4314, i8* %4315, align 1
  %4316 = lshr i32 %4297, 31
  %4317 = trunc i32 %4316 to i8
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4317, i8* %4318, align 1
  %4319 = lshr i32 %4296, 31
  %4320 = xor i32 %4316, %4319
  %4321 = add i32 %4320, %4319
  %4322 = icmp eq i32 %4321, 2
  %4323 = zext i1 %4322 to i8
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4323, i8* %4324, align 1
  store %struct.Memory* %loadMem_400ca7, %struct.Memory** %MEMORY
  %loadMem_400cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 33
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %4327 to i64*
  %4328 = load i64, i64* %PC.i179
  %4329 = add i64 %4328, 288
  %4330 = load i64, i64* %PC.i179
  %4331 = add i64 %4330, 6
  %4332 = load i64, i64* %PC.i179
  %4333 = add i64 %4332, 6
  store i64 %4333, i64* %PC.i179
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4335 = load i8, i8* %4334, align 1
  %4336 = icmp ne i8 %4335, 0
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4338 = load i8, i8* %4337, align 1
  %4339 = icmp ne i8 %4338, 0
  %4340 = xor i1 %4336, %4339
  %4341 = xor i1 %4340, true
  %4342 = zext i1 %4341 to i8
  store i8 %4342, i8* %BRANCH_TAKEN, align 1
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4344 = select i1 %4340, i64 %4331, i64 %4329
  store i64 %4344, i64* %4343, align 8
  store %struct.Memory* %loadMem_400cae, %struct.Memory** %MEMORY
  %loadBr_400cae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cae = icmp eq i8 %loadBr_400cae, 1
  br i1 %cmpBr_400cae, label %block_.L_400dce, label %block_400cb4

block_400cb4:                                     ; preds = %block_.L_400ca7
  %loadMem_400cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 33
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4347 to i64*
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4349 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4348, i64 0, i64 0
  %YMM0.i178 = bitcast %union.VectorReg* %4349 to %"class.std::bitset"*
  %4350 = bitcast %"class.std::bitset"* %YMM0.i178 to i8*
  %4351 = load i64, i64* %PC.i177
  %4352 = add i64 %4351, 13324
  %4353 = load i64, i64* %PC.i177
  %4354 = add i64 %4353, 8
  store i64 %4354, i64* %PC.i177
  %4355 = inttoptr i64 %4352 to double*
  %4356 = load double, double* %4355
  %4357 = bitcast i8* %4350 to double*
  store double %4356, double* %4357, align 1
  %4358 = getelementptr inbounds i8, i8* %4350, i64 8
  %4359 = bitcast i8* %4358 to double*
  store double 0.000000e+00, double* %4359, align 1
  store %struct.Memory* %loadMem_400cb4, %struct.Memory** %MEMORY
  %loadMem_400cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 33
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %4362 to i64*
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 1
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %4365 to i64*
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 15
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %4368 to i64*
  %4369 = load i64, i64* %RBP.i176
  %4370 = sub i64 %4369, 40
  %4371 = load i64, i64* %PC.i174
  %4372 = add i64 %4371, 4
  store i64 %4372, i64* %PC.i174
  %4373 = inttoptr i64 %4370 to i64*
  %4374 = load i64, i64* %4373
  store i64 %4374, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_400cbc, %struct.Memory** %MEMORY
  %loadMem_400cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 5
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 15
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %4383 to i64*
  %4384 = load i64, i64* %RBP.i173
  %4385 = sub i64 %4384, 12
  %4386 = load i64, i64* %PC.i171
  %4387 = add i64 %4386, 3
  store i64 %4387, i64* %PC.i171
  %4388 = inttoptr i64 %4385 to i32*
  %4389 = load i32, i32* %4388
  %4390 = zext i32 %4389 to i64
  store i64 %4390, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_400cc0, %struct.Memory** %MEMORY
  %loadMem_400cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 33
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %4393 to i64*
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4395 = getelementptr inbounds %struct.GPR, %struct.GPR* %4394, i32 0, i32 5
  %4396 = getelementptr inbounds %struct.Reg, %struct.Reg* %4395, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %4396 to i64*
  %4397 = load i64, i64* %RCX.i170
  %4398 = load i64, i64* %PC.i169
  %4399 = add i64 %4398, 2
  store i64 %4399, i64* %PC.i169
  %4400 = trunc i64 %4397 to i32
  %4401 = shl i32 %4400, 1
  %4402 = icmp slt i32 %4400, 0
  %4403 = icmp slt i32 %4401, 0
  %4404 = xor i1 %4402, %4403
  %4405 = zext i32 %4401 to i64
  store i64 %4405, i64* %RCX.i170, align 8
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4407 = zext i1 %4402 to i8
  store i8 %4407, i8* %4406, align 1
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4409 = and i32 %4401, 254
  %4410 = call i32 @llvm.ctpop.i32(i32 %4409)
  %4411 = trunc i32 %4410 to i8
  %4412 = and i8 %4411, 1
  %4413 = xor i8 %4412, 1
  store i8 %4413, i8* %4408, align 1
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4414, align 1
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4416 = icmp eq i32 %4401, 0
  %4417 = zext i1 %4416 to i8
  store i8 %4417, i8* %4415, align 1
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4419 = lshr i32 %4401, 31
  %4420 = trunc i32 %4419 to i8
  store i8 %4420, i8* %4418, align 1
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4422 = zext i1 %4404 to i8
  store i8 %4422, i8* %4421, align 1
  store %struct.Memory* %loadMem_400cc3, %struct.Memory** %MEMORY
  %loadMem_400cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 33
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4425 to i64*
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 5
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %ECX.i167 = bitcast %union.anon* %4428 to i32*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 7
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %RDX.i168 = bitcast %union.anon* %4431 to i64*
  %4432 = load i32, i32* %ECX.i167
  %4433 = zext i32 %4432 to i64
  %4434 = load i64, i64* %PC.i166
  %4435 = add i64 %4434, 3
  store i64 %4435, i64* %PC.i166
  %4436 = shl i64 %4433, 32
  %4437 = ashr exact i64 %4436, 32
  store i64 %4437, i64* %RDX.i168, align 8
  store %struct.Memory* %loadMem_400cc6, %struct.Memory** %MEMORY
  %loadMem_400cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 33
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4440 to i64*
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 1
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 7
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %4446 to i64*
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4448 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4447, i64 0, i64 1
  %YMM1.i165 = bitcast %union.VectorReg* %4448 to %"class.std::bitset"*
  %4449 = bitcast %"class.std::bitset"* %YMM1.i165 to i8*
  %4450 = load i64, i64* %RAX.i163
  %4451 = load i64, i64* %RDX.i164
  %4452 = mul i64 %4451, 8
  %4453 = add i64 %4452, %4450
  %4454 = load i64, i64* %PC.i162
  %4455 = add i64 %4454, 5
  store i64 %4455, i64* %PC.i162
  %4456 = inttoptr i64 %4453 to double*
  %4457 = load double, double* %4456
  %4458 = bitcast i8* %4449 to double*
  store double %4457, double* %4458, align 1
  %4459 = getelementptr inbounds i8, i8* %4449, i64 8
  %4460 = bitcast i8* %4459 to double*
  store double 0.000000e+00, double* %4460, align 1
  store %struct.Memory* %loadMem_400cc9, %struct.Memory** %MEMORY
  %loadMem_400cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 33
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4465 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4464, i64 0, i64 2
  %YMM2.i161 = bitcast %union.VectorReg* %4465 to %"class.std::bitset"*
  %4466 = bitcast %"class.std::bitset"* %YMM2.i161 to i8*
  %4467 = load i64, i64* %PC.i160
  %4468 = add i64 %4467, 13346
  %4469 = load i64, i64* %PC.i160
  %4470 = add i64 %4469, 7
  store i64 %4470, i64* %PC.i160
  %4471 = inttoptr i64 %4468 to float*
  %4472 = load float, float* %4471
  %4473 = add i64 %4468, 4
  %4474 = inttoptr i64 %4473 to float*
  %4475 = load float, float* %4474
  %4476 = add i64 %4468, 8
  %4477 = inttoptr i64 %4476 to float*
  %4478 = load float, float* %4477
  %4479 = add i64 %4468, 12
  %4480 = inttoptr i64 %4479 to float*
  %4481 = load float, float* %4480
  %4482 = bitcast i8* %4466 to float*
  store float %4472, float* %4482, align 1
  %4483 = getelementptr inbounds i8, i8* %4466, i64 4
  %4484 = bitcast i8* %4483 to float*
  store float %4475, float* %4484, align 1
  %4485 = getelementptr inbounds i8, i8* %4466, i64 8
  %4486 = bitcast i8* %4485 to float*
  store float %4478, float* %4486, align 1
  %4487 = getelementptr inbounds i8, i8* %4466, i64 12
  %4488 = bitcast i8* %4487 to float*
  store float %4481, float* %4488, align 1
  store %struct.Memory* %loadMem_400cce, %struct.Memory** %MEMORY
  %loadMem_400cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 33
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4491 to i64*
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4493 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4492, i64 0, i64 1
  %YMM1.i158 = bitcast %union.VectorReg* %4493 to %"class.std::bitset"*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4495 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4494, i64 0, i64 2
  %XMM2.i159 = bitcast %union.VectorReg* %4495 to %union.vec128_t*
  %4496 = bitcast %"class.std::bitset"* %YMM1.i158 to i8*
  %4497 = bitcast %"class.std::bitset"* %YMM1.i158 to i8*
  %4498 = bitcast %union.vec128_t* %XMM2.i159 to i8*
  %4499 = load i64, i64* %PC.i157
  %4500 = add i64 %4499, 4
  store i64 %4500, i64* %PC.i157
  %4501 = bitcast i8* %4497 to i64*
  %4502 = load i64, i64* %4501, align 1
  %4503 = getelementptr inbounds i8, i8* %4497, i64 8
  %4504 = bitcast i8* %4503 to i64*
  %4505 = load i64, i64* %4504, align 1
  %4506 = bitcast i8* %4498 to i64*
  %4507 = load i64, i64* %4506, align 1
  %4508 = getelementptr inbounds i8, i8* %4498, i64 8
  %4509 = bitcast i8* %4508 to i64*
  %4510 = load i64, i64* %4509, align 1
  %4511 = and i64 %4507, %4502
  %4512 = and i64 %4510, %4505
  %4513 = trunc i64 %4511 to i32
  %4514 = lshr i64 %4511, 32
  %4515 = trunc i64 %4514 to i32
  %4516 = bitcast i8* %4496 to i32*
  store i32 %4513, i32* %4516, align 1
  %4517 = getelementptr inbounds i8, i8* %4496, i64 4
  %4518 = bitcast i8* %4517 to i32*
  store i32 %4515, i32* %4518, align 1
  %4519 = trunc i64 %4512 to i32
  %4520 = getelementptr inbounds i8, i8* %4496, i64 8
  %4521 = bitcast i8* %4520 to i32*
  store i32 %4519, i32* %4521, align 1
  %4522 = lshr i64 %4512, 32
  %4523 = trunc i64 %4522 to i32
  %4524 = getelementptr inbounds i8, i8* %4496, i64 12
  %4525 = bitcast i8* %4524 to i32*
  store i32 %4523, i32* %4525, align 1
  store %struct.Memory* %loadMem_400cd5, %struct.Memory** %MEMORY
  %loadMem_400cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 33
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4528 to i64*
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4530 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4529, i64 0, i64 0
  %XMM0.i153 = bitcast %union.VectorReg* %4530 to %union.vec128_t*
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4531, i64 0, i64 1
  %XMM1.i154 = bitcast %union.VectorReg* %4532 to %union.vec128_t*
  %4533 = bitcast %union.vec128_t* %XMM1.i154 to i8*
  %4534 = bitcast %union.vec128_t* %XMM0.i153 to i8*
  %4535 = load i64, i64* %PC.i152
  %4536 = add i64 %4535, 4
  store i64 %4536, i64* %PC.i152
  %4537 = bitcast i8* %4533 to double*
  %4538 = load double, double* %4537, align 1
  %4539 = bitcast i8* %4534 to double*
  %4540 = load double, double* %4539, align 1
  %4541 = fcmp uno double %4538, %4540
  br i1 %4541, label %4542, label %4554

; <label>:4542:                                   ; preds = %block_400cb4
  %4543 = fadd double %4538, %4540
  %4544 = bitcast double %4543 to i64
  %4545 = and i64 %4544, 9221120237041090560
  %4546 = icmp eq i64 %4545, 9218868437227405312
  %4547 = and i64 %4544, 2251799813685247
  %4548 = icmp ne i64 %4547, 0
  %4549 = and i1 %4546, %4548
  br i1 %4549, label %4550, label %4560

; <label>:4550:                                   ; preds = %4542
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4552 = load i64, i64* %4551, align 8
  %4553 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4552, %struct.Memory* %loadMem_400cd9)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:4554:                                   ; preds = %block_400cb4
  %4555 = fcmp ogt double %4538, %4540
  br i1 %4555, label %4560, label %4556

; <label>:4556:                                   ; preds = %4554
  %4557 = fcmp olt double %4538, %4540
  br i1 %4557, label %4560, label %4558

; <label>:4558:                                   ; preds = %4556
  %4559 = fcmp oeq double %4538, %4540
  br i1 %4559, label %4560, label %4567

; <label>:4560:                                   ; preds = %4558, %4556, %4554, %4542
  %4561 = phi i8 [ 0, %4554 ], [ 0, %4556 ], [ 1, %4558 ], [ 1, %4542 ]
  %4562 = phi i8 [ 0, %4554 ], [ 0, %4556 ], [ 0, %4558 ], [ 1, %4542 ]
  %4563 = phi i8 [ 0, %4554 ], [ 1, %4556 ], [ 0, %4558 ], [ 1, %4542 ]
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4561, i8* %4564, align 1
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4562, i8* %4565, align 1
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4563, i8* %4566, align 1
  br label %4567

; <label>:4567:                                   ; preds = %4560, %4558
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4568, align 1
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4569, align 1
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4570, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %4550, %4567
  %4571 = phi %struct.Memory* [ %4553, %4550 ], [ %loadMem_400cd9, %4567 ]
  store %struct.Memory* %4571, %struct.Memory** %MEMORY
  %loadMem_400cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4574 to i64*
  %4575 = load i64, i64* %PC.i151
  %4576 = add i64 %4575, 37
  %4577 = load i64, i64* %PC.i151
  %4578 = add i64 %4577, 6
  %4579 = load i64, i64* %PC.i151
  %4580 = add i64 %4579, 6
  store i64 %4580, i64* %PC.i151
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4582 = load i8, i8* %4581, align 1
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4584 = load i8, i8* %4583, align 1
  %4585 = or i8 %4584, %4582
  %4586 = icmp ne i8 %4585, 0
  %4587 = zext i1 %4586 to i8
  store i8 %4587, i8* %BRANCH_TAKEN, align 1
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4589 = select i1 %4586, i64 %4576, i64 %4578
  store i64 %4589, i64* %4588, align 8
  store %struct.Memory* %loadMem_400cdd, %struct.Memory** %MEMORY
  %loadBr_400cdd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cdd = icmp eq i8 %loadBr_400cdd, 1
  br i1 %cmpBr_400cdd, label %block_.L_400d02, label %block_400ce3

block_400ce3:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_400ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 33
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %4592 to i64*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 1
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %4595 to i64*
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4597 = getelementptr inbounds %struct.GPR, %struct.GPR* %4596, i32 0, i32 15
  %4598 = getelementptr inbounds %struct.Reg, %struct.Reg* %4597, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %4598 to i64*
  %4599 = load i64, i64* %RBP.i150
  %4600 = sub i64 %4599, 40
  %4601 = load i64, i64* %PC.i148
  %4602 = add i64 %4601, 4
  store i64 %4602, i64* %PC.i148
  %4603 = inttoptr i64 %4600 to i64*
  %4604 = load i64, i64* %4603
  store i64 %4604, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_400ce3, %struct.Memory** %MEMORY
  %loadMem_400ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 5
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 15
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %4613 to i64*
  %4614 = load i64, i64* %RBP.i147
  %4615 = sub i64 %4614, 12
  %4616 = load i64, i64* %PC.i145
  %4617 = add i64 %4616, 3
  store i64 %4617, i64* %PC.i145
  %4618 = inttoptr i64 %4615 to i32*
  %4619 = load i32, i32* %4618
  %4620 = zext i32 %4619 to i64
  store i64 %4620, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_400ce7, %struct.Memory** %MEMORY
  %loadMem_400cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 33
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4623 to i64*
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 5
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %4626 to i64*
  %4627 = load i64, i64* %RCX.i144
  %4628 = load i64, i64* %PC.i143
  %4629 = add i64 %4628, 2
  store i64 %4629, i64* %PC.i143
  %4630 = trunc i64 %4627 to i32
  %4631 = shl i32 %4630, 1
  %4632 = icmp slt i32 %4630, 0
  %4633 = icmp slt i32 %4631, 0
  %4634 = xor i1 %4632, %4633
  %4635 = zext i32 %4631 to i64
  store i64 %4635, i64* %RCX.i144, align 8
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4637 = zext i1 %4632 to i8
  store i8 %4637, i8* %4636, align 1
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4639 = and i32 %4631, 254
  %4640 = call i32 @llvm.ctpop.i32(i32 %4639)
  %4641 = trunc i32 %4640 to i8
  %4642 = and i8 %4641, 1
  %4643 = xor i8 %4642, 1
  store i8 %4643, i8* %4638, align 1
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4644, align 1
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4646 = icmp eq i32 %4631, 0
  %4647 = zext i1 %4646 to i8
  store i8 %4647, i8* %4645, align 1
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4649 = lshr i32 %4631, 31
  %4650 = trunc i32 %4649 to i8
  store i8 %4650, i8* %4648, align 1
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4652 = zext i1 %4634 to i8
  store i8 %4652, i8* %4651, align 1
  store %struct.Memory* %loadMem_400cea, %struct.Memory** %MEMORY
  %loadMem_400ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4654 = getelementptr inbounds %struct.GPR, %struct.GPR* %4653, i32 0, i32 33
  %4655 = getelementptr inbounds %struct.Reg, %struct.Reg* %4654, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %4655 to i64*
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 5
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %ECX.i141 = bitcast %union.anon* %4658 to i32*
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 7
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %4661 to i64*
  %4662 = load i32, i32* %ECX.i141
  %4663 = zext i32 %4662 to i64
  %4664 = load i64, i64* %PC.i140
  %4665 = add i64 %4664, 3
  store i64 %4665, i64* %PC.i140
  %4666 = shl i64 %4663, 32
  %4667 = ashr exact i64 %4666, 32
  store i64 %4667, i64* %RDX.i142, align 8
  store %struct.Memory* %loadMem_400ced, %struct.Memory** %MEMORY
  %loadMem_400cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4669 = getelementptr inbounds %struct.GPR, %struct.GPR* %4668, i32 0, i32 33
  %4670 = getelementptr inbounds %struct.Reg, %struct.Reg* %4669, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4670 to i64*
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4672 = getelementptr inbounds %struct.GPR, %struct.GPR* %4671, i32 0, i32 1
  %4673 = getelementptr inbounds %struct.Reg, %struct.Reg* %4672, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %4673 to i64*
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 7
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %RDX.i138 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4678 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4677, i64 0, i64 0
  %YMM0.i139 = bitcast %union.VectorReg* %4678 to %"class.std::bitset"*
  %4679 = bitcast %"class.std::bitset"* %YMM0.i139 to i8*
  %4680 = load i64, i64* %RAX.i137
  %4681 = load i64, i64* %RDX.i138
  %4682 = mul i64 %4681, 8
  %4683 = add i64 %4682, %4680
  %4684 = load i64, i64* %PC.i136
  %4685 = add i64 %4684, 5
  store i64 %4685, i64* %PC.i136
  %4686 = inttoptr i64 %4683 to double*
  %4687 = load double, double* %4686
  %4688 = bitcast i8* %4679 to double*
  store double %4687, double* %4688, align 1
  %4689 = getelementptr inbounds i8, i8* %4679, i64 8
  %4690 = bitcast i8* %4689 to double*
  store double 0.000000e+00, double* %4690, align 1
  store %struct.Memory* %loadMem_400cf0, %struct.Memory** %MEMORY
  %loadMem_400cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 33
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %4693 to i64*
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4695 = getelementptr inbounds %struct.GPR, %struct.GPR* %4694, i32 0, i32 15
  %4696 = getelementptr inbounds %struct.Reg, %struct.Reg* %4695, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %4696 to i64*
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4698 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4697, i64 0, i64 0
  %XMM0.i135 = bitcast %union.VectorReg* %4698 to %union.vec128_t*
  %4699 = load i64, i64* %RBP.i134
  %4700 = sub i64 %4699, 192
  %4701 = bitcast %union.vec128_t* %XMM0.i135 to i8*
  %4702 = load i64, i64* %PC.i133
  %4703 = add i64 %4702, 8
  store i64 %4703, i64* %PC.i133
  %4704 = bitcast i8* %4701 to double*
  %4705 = load double, double* %4704, align 1
  %4706 = inttoptr i64 %4700 to double*
  store double %4705, double* %4706
  store %struct.Memory* %loadMem_400cf5, %struct.Memory** %MEMORY
  %loadMem_400cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 33
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4709 to i64*
  %4710 = load i64, i64* %PC.i132
  %4711 = add i64 %4710, 21
  %4712 = load i64, i64* %PC.i132
  %4713 = add i64 %4712, 5
  store i64 %4713, i64* %PC.i132
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4711, i64* %4714, align 8
  store %struct.Memory* %loadMem_400cfd, %struct.Memory** %MEMORY
  br label %block_.L_400d12

block_.L_400d02:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_400d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 33
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4718, i64 0, i64 0
  %YMM0.i130 = bitcast %union.VectorReg* %4719 to %"class.std::bitset"*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4720, i64 0, i64 0
  %XMM0.i131 = bitcast %union.VectorReg* %4721 to %union.vec128_t*
  %4722 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %4723 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %4724 = bitcast %union.vec128_t* %XMM0.i131 to i8*
  %4725 = load i64, i64* %PC.i129
  %4726 = add i64 %4725, 3
  store i64 %4726, i64* %PC.i129
  %4727 = bitcast i8* %4723 to i64*
  %4728 = load i64, i64* %4727, align 1
  %4729 = getelementptr inbounds i8, i8* %4723, i64 8
  %4730 = bitcast i8* %4729 to i64*
  %4731 = load i64, i64* %4730, align 1
  %4732 = bitcast i8* %4724 to i64*
  %4733 = load i64, i64* %4732, align 1
  %4734 = getelementptr inbounds i8, i8* %4724, i64 8
  %4735 = bitcast i8* %4734 to i64*
  %4736 = load i64, i64* %4735, align 1
  %4737 = xor i64 %4733, %4728
  %4738 = xor i64 %4736, %4731
  %4739 = trunc i64 %4737 to i32
  %4740 = lshr i64 %4737, 32
  %4741 = trunc i64 %4740 to i32
  %4742 = bitcast i8* %4722 to i32*
  store i32 %4739, i32* %4742, align 1
  %4743 = getelementptr inbounds i8, i8* %4722, i64 4
  %4744 = bitcast i8* %4743 to i32*
  store i32 %4741, i32* %4744, align 1
  %4745 = trunc i64 %4738 to i32
  %4746 = getelementptr inbounds i8, i8* %4722, i64 8
  %4747 = bitcast i8* %4746 to i32*
  store i32 %4745, i32* %4747, align 1
  %4748 = lshr i64 %4738, 32
  %4749 = trunc i64 %4748 to i32
  %4750 = getelementptr inbounds i8, i8* %4722, i64 12
  %4751 = bitcast i8* %4750 to i32*
  store i32 %4749, i32* %4751, align 1
  store %struct.Memory* %loadMem_400d02, %struct.Memory** %MEMORY
  %loadMem_400d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4753 = getelementptr inbounds %struct.GPR, %struct.GPR* %4752, i32 0, i32 33
  %4754 = getelementptr inbounds %struct.Reg, %struct.Reg* %4753, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4754 to i64*
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 15
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %4757 to i64*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4759 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4758, i64 0, i64 0
  %XMM0.i128 = bitcast %union.VectorReg* %4759 to %union.vec128_t*
  %4760 = load i64, i64* %RBP.i127
  %4761 = sub i64 %4760, 192
  %4762 = bitcast %union.vec128_t* %XMM0.i128 to i8*
  %4763 = load i64, i64* %PC.i126
  %4764 = add i64 %4763, 8
  store i64 %4764, i64* %PC.i126
  %4765 = bitcast i8* %4762 to double*
  %4766 = load double, double* %4765, align 1
  %4767 = inttoptr i64 %4761 to double*
  store double %4766, double* %4767
  store %struct.Memory* %loadMem_400d05, %struct.Memory** %MEMORY
  %loadMem_400d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4769 = getelementptr inbounds %struct.GPR, %struct.GPR* %4768, i32 0, i32 33
  %4770 = getelementptr inbounds %struct.Reg, %struct.Reg* %4769, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4770 to i64*
  %4771 = load i64, i64* %PC.i125
  %4772 = add i64 %4771, 5
  %4773 = load i64, i64* %PC.i125
  %4774 = add i64 %4773, 5
  store i64 %4774, i64* %PC.i125
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4772, i64* %4775, align 8
  store %struct.Memory* %loadMem_400d0d, %struct.Memory** %MEMORY
  br label %block_.L_400d12

block_.L_400d12:                                  ; preds = %block_.L_400d02, %block_400ce3
  %loadMem_400d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 33
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4778 to i64*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 15
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %4781 to i64*
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4783 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4782, i64 0, i64 0
  %YMM0.i124 = bitcast %union.VectorReg* %4783 to %"class.std::bitset"*
  %4784 = bitcast %"class.std::bitset"* %YMM0.i124 to i8*
  %4785 = load i64, i64* %RBP.i123
  %4786 = sub i64 %4785, 192
  %4787 = load i64, i64* %PC.i122
  %4788 = add i64 %4787, 8
  store i64 %4788, i64* %PC.i122
  %4789 = inttoptr i64 %4786 to double*
  %4790 = load double, double* %4789
  %4791 = bitcast i8* %4784 to double*
  store double %4790, double* %4791, align 1
  %4792 = getelementptr inbounds i8, i8* %4784, i64 8
  %4793 = bitcast i8* %4792 to double*
  store double 0.000000e+00, double* %4793, align 1
  store %struct.Memory* %loadMem_400d12, %struct.Memory** %MEMORY
  %loadMem_400d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 33
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4796 to i64*
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4798 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4797, i64 0, i64 1
  %YMM1.i121 = bitcast %union.VectorReg* %4798 to %"class.std::bitset"*
  %4799 = bitcast %"class.std::bitset"* %YMM1.i121 to i8*
  %4800 = load i64, i64* %PC.i120
  %4801 = add i64 %4800, 13222
  %4802 = load i64, i64* %PC.i120
  %4803 = add i64 %4802, 8
  store i64 %4803, i64* %PC.i120
  %4804 = inttoptr i64 %4801 to double*
  %4805 = load double, double* %4804
  %4806 = bitcast i8* %4799 to double*
  store double %4805, double* %4806, align 1
  %4807 = getelementptr inbounds i8, i8* %4799, i64 8
  %4808 = bitcast i8* %4807 to double*
  store double 0.000000e+00, double* %4808, align 1
  store %struct.Memory* %loadMem_400d1a, %struct.Memory** %MEMORY
  %loadMem_400d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 33
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4811 to i64*
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 1
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %4814 to i64*
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 15
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %4817 to i64*
  %4818 = load i64, i64* %RBP.i119
  %4819 = sub i64 %4818, 40
  %4820 = load i64, i64* %PC.i117
  %4821 = add i64 %4820, 4
  store i64 %4821, i64* %PC.i117
  %4822 = inttoptr i64 %4819 to i64*
  %4823 = load i64, i64* %4822
  store i64 %4823, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_400d22, %struct.Memory** %MEMORY
  %loadMem_400d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4825 = getelementptr inbounds %struct.GPR, %struct.GPR* %4824, i32 0, i32 33
  %4826 = getelementptr inbounds %struct.Reg, %struct.Reg* %4825, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4826 to i64*
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4828 = getelementptr inbounds %struct.GPR, %struct.GPR* %4827, i32 0, i32 5
  %4829 = getelementptr inbounds %struct.Reg, %struct.Reg* %4828, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %4829 to i64*
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 15
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %4832 to i64*
  %4833 = load i64, i64* %RBP.i116
  %4834 = sub i64 %4833, 12
  %4835 = load i64, i64* %PC.i114
  %4836 = add i64 %4835, 3
  store i64 %4836, i64* %PC.i114
  %4837 = inttoptr i64 %4834 to i32*
  %4838 = load i32, i32* %4837
  %4839 = zext i32 %4838 to i64
  store i64 %4839, i64* %RCX.i115, align 8
  store %struct.Memory* %loadMem_400d26, %struct.Memory** %MEMORY
  %loadMem_400d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 33
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4842 to i64*
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 5
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %4845 to i64*
  %4846 = load i64, i64* %RCX.i113
  %4847 = load i64, i64* %PC.i112
  %4848 = add i64 %4847, 2
  store i64 %4848, i64* %PC.i112
  %4849 = trunc i64 %4846 to i32
  %4850 = shl i32 %4849, 1
  %4851 = icmp slt i32 %4849, 0
  %4852 = icmp slt i32 %4850, 0
  %4853 = xor i1 %4851, %4852
  %4854 = zext i32 %4850 to i64
  store i64 %4854, i64* %RCX.i113, align 8
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4856 = zext i1 %4851 to i8
  store i8 %4856, i8* %4855, align 1
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4858 = and i32 %4850, 254
  %4859 = call i32 @llvm.ctpop.i32(i32 %4858)
  %4860 = trunc i32 %4859 to i8
  %4861 = and i8 %4860, 1
  %4862 = xor i8 %4861, 1
  store i8 %4862, i8* %4857, align 1
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4863, align 1
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4865 = icmp eq i32 %4850, 0
  %4866 = zext i1 %4865 to i8
  store i8 %4866, i8* %4864, align 1
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4868 = lshr i32 %4850, 31
  %4869 = trunc i32 %4868 to i8
  store i8 %4869, i8* %4867, align 1
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4871 = zext i1 %4853 to i8
  store i8 %4871, i8* %4870, align 1
  store %struct.Memory* %loadMem_400d29, %struct.Memory** %MEMORY
  %loadMem_400d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 33
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4874 to i64*
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 5
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %4877 to i64*
  %4878 = load i64, i64* %RCX.i111
  %4879 = load i64, i64* %PC.i110
  %4880 = add i64 %4879, 3
  store i64 %4880, i64* %PC.i110
  %4881 = trunc i64 %4878 to i32
  %4882 = add i32 1, %4881
  %4883 = zext i32 %4882 to i64
  store i64 %4883, i64* %RCX.i111, align 8
  %4884 = icmp ult i32 %4882, %4881
  %4885 = icmp ult i32 %4882, 1
  %4886 = or i1 %4884, %4885
  %4887 = zext i1 %4886 to i8
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4887, i8* %4888, align 1
  %4889 = and i32 %4882, 255
  %4890 = call i32 @llvm.ctpop.i32(i32 %4889)
  %4891 = trunc i32 %4890 to i8
  %4892 = and i8 %4891, 1
  %4893 = xor i8 %4892, 1
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4893, i8* %4894, align 1
  %4895 = xor i64 1, %4878
  %4896 = trunc i64 %4895 to i32
  %4897 = xor i32 %4896, %4882
  %4898 = lshr i32 %4897, 4
  %4899 = trunc i32 %4898 to i8
  %4900 = and i8 %4899, 1
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4900, i8* %4901, align 1
  %4902 = icmp eq i32 %4882, 0
  %4903 = zext i1 %4902 to i8
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4903, i8* %4904, align 1
  %4905 = lshr i32 %4882, 31
  %4906 = trunc i32 %4905 to i8
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4906, i8* %4907, align 1
  %4908 = lshr i32 %4881, 31
  %4909 = xor i32 %4905, %4908
  %4910 = add i32 %4909, %4905
  %4911 = icmp eq i32 %4910, 2
  %4912 = zext i1 %4911 to i8
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4912, i8* %4913, align 1
  store %struct.Memory* %loadMem_400d2c, %struct.Memory** %MEMORY
  %loadMem_400d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 33
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4916 to i64*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 5
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %ECX.i108 = bitcast %union.anon* %4919 to i32*
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 7
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %RDX.i109 = bitcast %union.anon* %4922 to i64*
  %4923 = load i32, i32* %ECX.i108
  %4924 = zext i32 %4923 to i64
  %4925 = load i64, i64* %PC.i107
  %4926 = add i64 %4925, 3
  store i64 %4926, i64* %PC.i107
  %4927 = shl i64 %4924, 32
  %4928 = ashr exact i64 %4927, 32
  store i64 %4928, i64* %RDX.i109, align 8
  store %struct.Memory* %loadMem_400d2f, %struct.Memory** %MEMORY
  %loadMem_400d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 33
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4931 to i64*
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 1
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %4934 to i64*
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 7
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %RDX.i105 = bitcast %union.anon* %4937 to i64*
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4939 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4938, i64 0, i64 2
  %YMM2.i106 = bitcast %union.VectorReg* %4939 to %"class.std::bitset"*
  %4940 = bitcast %"class.std::bitset"* %YMM2.i106 to i8*
  %4941 = load i64, i64* %RAX.i104
  %4942 = load i64, i64* %RDX.i105
  %4943 = mul i64 %4942, 8
  %4944 = add i64 %4943, %4941
  %4945 = load i64, i64* %PC.i103
  %4946 = add i64 %4945, 5
  store i64 %4946, i64* %PC.i103
  %4947 = inttoptr i64 %4944 to double*
  %4948 = load double, double* %4947
  %4949 = bitcast i8* %4940 to double*
  store double %4948, double* %4949, align 1
  %4950 = getelementptr inbounds i8, i8* %4940, i64 8
  %4951 = bitcast i8* %4950 to double*
  store double 0.000000e+00, double* %4951, align 1
  store %struct.Memory* %loadMem_400d32, %struct.Memory** %MEMORY
  %loadMem_400d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 33
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %4954 to i64*
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4956 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4955, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %4956 to %"class.std::bitset"*
  %4957 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %4958 = load i64, i64* %PC.i102
  %4959 = add i64 %4958, 13241
  %4960 = load i64, i64* %PC.i102
  %4961 = add i64 %4960, 7
  store i64 %4961, i64* %PC.i102
  %4962 = inttoptr i64 %4959 to float*
  %4963 = load float, float* %4962
  %4964 = add i64 %4959, 4
  %4965 = inttoptr i64 %4964 to float*
  %4966 = load float, float* %4965
  %4967 = add i64 %4959, 8
  %4968 = inttoptr i64 %4967 to float*
  %4969 = load float, float* %4968
  %4970 = add i64 %4959, 12
  %4971 = inttoptr i64 %4970 to float*
  %4972 = load float, float* %4971
  %4973 = bitcast i8* %4957 to float*
  store float %4963, float* %4973, align 1
  %4974 = getelementptr inbounds i8, i8* %4957, i64 4
  %4975 = bitcast i8* %4974 to float*
  store float %4966, float* %4975, align 1
  %4976 = getelementptr inbounds i8, i8* %4957, i64 8
  %4977 = bitcast i8* %4976 to float*
  store float %4969, float* %4977, align 1
  %4978 = getelementptr inbounds i8, i8* %4957, i64 12
  %4979 = bitcast i8* %4978 to float*
  store float %4972, float* %4979, align 1
  store %struct.Memory* %loadMem_400d37, %struct.Memory** %MEMORY
  %loadMem_400d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 33
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4982 to i64*
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4984 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4983, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4984 to %"class.std::bitset"*
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4986 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4985, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %4986 to %union.vec128_t*
  %4987 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4988 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4989 = bitcast %union.vec128_t* %XMM3.i to i8*
  %4990 = load i64, i64* %PC.i101
  %4991 = add i64 %4990, 4
  store i64 %4991, i64* %PC.i101
  %4992 = bitcast i8* %4988 to i64*
  %4993 = load i64, i64* %4992, align 1
  %4994 = getelementptr inbounds i8, i8* %4988, i64 8
  %4995 = bitcast i8* %4994 to i64*
  %4996 = load i64, i64* %4995, align 1
  %4997 = bitcast i8* %4989 to i64*
  %4998 = load i64, i64* %4997, align 1
  %4999 = getelementptr inbounds i8, i8* %4989, i64 8
  %5000 = bitcast i8* %4999 to i64*
  %5001 = load i64, i64* %5000, align 1
  %5002 = and i64 %4998, %4993
  %5003 = and i64 %5001, %4996
  %5004 = trunc i64 %5002 to i32
  %5005 = lshr i64 %5002, 32
  %5006 = trunc i64 %5005 to i32
  %5007 = bitcast i8* %4987 to i32*
  store i32 %5004, i32* %5007, align 1
  %5008 = getelementptr inbounds i8, i8* %4987, i64 4
  %5009 = bitcast i8* %5008 to i32*
  store i32 %5006, i32* %5009, align 1
  %5010 = trunc i64 %5003 to i32
  %5011 = getelementptr inbounds i8, i8* %4987, i64 8
  %5012 = bitcast i8* %5011 to i32*
  store i32 %5010, i32* %5012, align 1
  %5013 = lshr i64 %5003, 32
  %5014 = trunc i64 %5013 to i32
  %5015 = getelementptr inbounds i8, i8* %4987, i64 12
  %5016 = bitcast i8* %5015 to i32*
  store i32 %5014, i32* %5016, align 1
  store %struct.Memory* %loadMem_400d3e, %struct.Memory** %MEMORY
  %loadMem_400d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5018 = getelementptr inbounds %struct.GPR, %struct.GPR* %5017, i32 0, i32 33
  %5019 = getelementptr inbounds %struct.Reg, %struct.Reg* %5018, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %5019 to i64*
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5021 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5020, i64 0, i64 1
  %XMM1.i97 = bitcast %union.VectorReg* %5021 to %union.vec128_t*
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5023 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5022, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %5023 to %union.vec128_t*
  %5024 = bitcast %union.vec128_t* %XMM2.i to i8*
  %5025 = bitcast %union.vec128_t* %XMM1.i97 to i8*
  %5026 = load i64, i64* %PC.i96
  %5027 = add i64 %5026, 4
  store i64 %5027, i64* %PC.i96
  %5028 = bitcast i8* %5024 to double*
  %5029 = load double, double* %5028, align 1
  %5030 = bitcast i8* %5025 to double*
  %5031 = load double, double* %5030, align 1
  %5032 = fcmp uno double %5029, %5031
  br i1 %5032, label %5033, label %5045

; <label>:5033:                                   ; preds = %block_.L_400d12
  %5034 = fadd double %5029, %5031
  %5035 = bitcast double %5034 to i64
  %5036 = and i64 %5035, 9221120237041090560
  %5037 = icmp eq i64 %5036, 9218868437227405312
  %5038 = and i64 %5035, 2251799813685247
  %5039 = icmp ne i64 %5038, 0
  %5040 = and i1 %5037, %5039
  br i1 %5040, label %5041, label %5051

; <label>:5041:                                   ; preds = %5033
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5043 = load i64, i64* %5042, align 8
  %5044 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5043, %struct.Memory* %loadMem_400d42)
  br label %routine_ucomisd__xmm1___xmm2.exit

; <label>:5045:                                   ; preds = %block_.L_400d12
  %5046 = fcmp ogt double %5029, %5031
  br i1 %5046, label %5051, label %5047

; <label>:5047:                                   ; preds = %5045
  %5048 = fcmp olt double %5029, %5031
  br i1 %5048, label %5051, label %5049

; <label>:5049:                                   ; preds = %5047
  %5050 = fcmp oeq double %5029, %5031
  br i1 %5050, label %5051, label %5058

; <label>:5051:                                   ; preds = %5049, %5047, %5045, %5033
  %5052 = phi i8 [ 0, %5045 ], [ 0, %5047 ], [ 1, %5049 ], [ 1, %5033 ]
  %5053 = phi i8 [ 0, %5045 ], [ 0, %5047 ], [ 0, %5049 ], [ 1, %5033 ]
  %5054 = phi i8 [ 0, %5045 ], [ 1, %5047 ], [ 0, %5049 ], [ 1, %5033 ]
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5052, i8* %5055, align 1
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5053, i8* %5056, align 1
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5054, i8* %5057, align 1
  br label %5058

; <label>:5058:                                   ; preds = %5051, %5049
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5059, align 1
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5060, align 1
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5061, align 1
  br label %routine_ucomisd__xmm1___xmm2.exit

routine_ucomisd__xmm1___xmm2.exit:                ; preds = %5041, %5058
  %5062 = phi %struct.Memory* [ %5044, %5041 ], [ %loadMem_400d42, %5058 ]
  store %struct.Memory* %5062, %struct.Memory** %MEMORY
  %loadMem_400d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 33
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5065 to i64*
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 15
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %5068 to i64*
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5070 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5069, i64 0, i64 0
  %XMM0.i95 = bitcast %union.VectorReg* %5070 to %union.vec128_t*
  %5071 = load i64, i64* %RBP.i94
  %5072 = sub i64 %5071, 200
  %5073 = bitcast %union.vec128_t* %XMM0.i95 to i8*
  %5074 = load i64, i64* %PC.i93
  %5075 = add i64 %5074, 8
  store i64 %5075, i64* %PC.i93
  %5076 = bitcast i8* %5073 to double*
  %5077 = load double, double* %5076, align 1
  %5078 = inttoptr i64 %5072 to double*
  store double %5077, double* %5078
  store %struct.Memory* %loadMem_400d46, %struct.Memory** %MEMORY
  %loadMem_400d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 33
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %5081 to i64*
  %5082 = load i64, i64* %PC.i92
  %5083 = add i64 %5082, 40
  %5084 = load i64, i64* %PC.i92
  %5085 = add i64 %5084, 6
  %5086 = load i64, i64* %PC.i92
  %5087 = add i64 %5086, 6
  store i64 %5087, i64* %PC.i92
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5089 = load i8, i8* %5088, align 1
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5091 = load i8, i8* %5090, align 1
  %5092 = or i8 %5091, %5089
  %5093 = icmp ne i8 %5092, 0
  %5094 = zext i1 %5093 to i8
  store i8 %5094, i8* %BRANCH_TAKEN, align 1
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5096 = select i1 %5093, i64 %5083, i64 %5085
  store i64 %5096, i64* %5095, align 8
  store %struct.Memory* %loadMem_400d4e, %struct.Memory** %MEMORY
  %loadBr_400d4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d4e = icmp eq i8 %loadBr_400d4e, 1
  br i1 %cmpBr_400d4e, label %block_.L_400d76, label %block_400d54

block_400d54:                                     ; preds = %routine_ucomisd__xmm1___xmm2.exit
  %loadMem_400d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5098 = getelementptr inbounds %struct.GPR, %struct.GPR* %5097, i32 0, i32 33
  %5099 = getelementptr inbounds %struct.Reg, %struct.Reg* %5098, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %5099 to i64*
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 1
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %5102 to i64*
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 15
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %5105 to i64*
  %5106 = load i64, i64* %RBP.i91
  %5107 = sub i64 %5106, 40
  %5108 = load i64, i64* %PC.i89
  %5109 = add i64 %5108, 4
  store i64 %5109, i64* %PC.i89
  %5110 = inttoptr i64 %5107 to i64*
  %5111 = load i64, i64* %5110
  store i64 %5111, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_400d54, %struct.Memory** %MEMORY
  %loadMem_400d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5113 = getelementptr inbounds %struct.GPR, %struct.GPR* %5112, i32 0, i32 33
  %5114 = getelementptr inbounds %struct.Reg, %struct.Reg* %5113, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %5114 to i64*
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 5
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %5117 to i64*
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 15
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %5120 to i64*
  %5121 = load i64, i64* %RBP.i88
  %5122 = sub i64 %5121, 12
  %5123 = load i64, i64* %PC.i86
  %5124 = add i64 %5123, 3
  store i64 %5124, i64* %PC.i86
  %5125 = inttoptr i64 %5122 to i32*
  %5126 = load i32, i32* %5125
  %5127 = zext i32 %5126 to i64
  store i64 %5127, i64* %RCX.i87, align 8
  store %struct.Memory* %loadMem_400d58, %struct.Memory** %MEMORY
  %loadMem_400d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 33
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 5
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %5133 to i64*
  %5134 = load i64, i64* %RCX.i85
  %5135 = load i64, i64* %PC.i84
  %5136 = add i64 %5135, 2
  store i64 %5136, i64* %PC.i84
  %5137 = trunc i64 %5134 to i32
  %5138 = shl i32 %5137, 1
  %5139 = icmp slt i32 %5137, 0
  %5140 = icmp slt i32 %5138, 0
  %5141 = xor i1 %5139, %5140
  %5142 = zext i32 %5138 to i64
  store i64 %5142, i64* %RCX.i85, align 8
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5144 = zext i1 %5139 to i8
  store i8 %5144, i8* %5143, align 1
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5146 = and i32 %5138, 254
  %5147 = call i32 @llvm.ctpop.i32(i32 %5146)
  %5148 = trunc i32 %5147 to i8
  %5149 = and i8 %5148, 1
  %5150 = xor i8 %5149, 1
  store i8 %5150, i8* %5145, align 1
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5151, align 1
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5153 = icmp eq i32 %5138, 0
  %5154 = zext i1 %5153 to i8
  store i8 %5154, i8* %5152, align 1
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5156 = lshr i32 %5138, 31
  %5157 = trunc i32 %5156 to i8
  store i8 %5157, i8* %5155, align 1
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5159 = zext i1 %5141 to i8
  store i8 %5159, i8* %5158, align 1
  store %struct.Memory* %loadMem_400d5b, %struct.Memory** %MEMORY
  %loadMem_400d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 33
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 5
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5165 to i64*
  %5166 = load i64, i64* %RCX.i
  %5167 = load i64, i64* %PC.i83
  %5168 = add i64 %5167, 3
  store i64 %5168, i64* %PC.i83
  %5169 = trunc i64 %5166 to i32
  %5170 = add i32 1, %5169
  %5171 = zext i32 %5170 to i64
  store i64 %5171, i64* %RCX.i, align 8
  %5172 = icmp ult i32 %5170, %5169
  %5173 = icmp ult i32 %5170, 1
  %5174 = or i1 %5172, %5173
  %5175 = zext i1 %5174 to i8
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5175, i8* %5176, align 1
  %5177 = and i32 %5170, 255
  %5178 = call i32 @llvm.ctpop.i32(i32 %5177)
  %5179 = trunc i32 %5178 to i8
  %5180 = and i8 %5179, 1
  %5181 = xor i8 %5180, 1
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5181, i8* %5182, align 1
  %5183 = xor i64 1, %5166
  %5184 = trunc i64 %5183 to i32
  %5185 = xor i32 %5184, %5170
  %5186 = lshr i32 %5185, 4
  %5187 = trunc i32 %5186 to i8
  %5188 = and i8 %5187, 1
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5188, i8* %5189, align 1
  %5190 = icmp eq i32 %5170, 0
  %5191 = zext i1 %5190 to i8
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5191, i8* %5192, align 1
  %5193 = lshr i32 %5170, 31
  %5194 = trunc i32 %5193 to i8
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5194, i8* %5195, align 1
  %5196 = lshr i32 %5169, 31
  %5197 = xor i32 %5193, %5196
  %5198 = add i32 %5197, %5193
  %5199 = icmp eq i32 %5198, 2
  %5200 = zext i1 %5199 to i8
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5200, i8* %5201, align 1
  store %struct.Memory* %loadMem_400d5e, %struct.Memory** %MEMORY
  %loadMem_400d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 33
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %5204 to i64*
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 5
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5207 to i32*
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 7
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %RDX.i82 = bitcast %union.anon* %5210 to i64*
  %5211 = load i32, i32* %ECX.i
  %5212 = zext i32 %5211 to i64
  %5213 = load i64, i64* %PC.i81
  %5214 = add i64 %5213, 3
  store i64 %5214, i64* %PC.i81
  %5215 = shl i64 %5212, 32
  %5216 = ashr exact i64 %5215, 32
  store i64 %5216, i64* %RDX.i82, align 8
  store %struct.Memory* %loadMem_400d61, %struct.Memory** %MEMORY
  %loadMem_400d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 33
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %5219 to i64*
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 1
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %5222 to i64*
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 7
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5225 to i64*
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5226, i64 0, i64 0
  %YMM0.i80 = bitcast %union.VectorReg* %5227 to %"class.std::bitset"*
  %5228 = bitcast %"class.std::bitset"* %YMM0.i80 to i8*
  %5229 = load i64, i64* %RAX.i79
  %5230 = load i64, i64* %RDX.i
  %5231 = mul i64 %5230, 8
  %5232 = add i64 %5231, %5229
  %5233 = load i64, i64* %PC.i78
  %5234 = add i64 %5233, 5
  store i64 %5234, i64* %PC.i78
  %5235 = inttoptr i64 %5232 to double*
  %5236 = load double, double* %5235
  %5237 = bitcast i8* %5228 to double*
  store double %5236, double* %5237, align 1
  %5238 = getelementptr inbounds i8, i8* %5228, i64 8
  %5239 = bitcast i8* %5238 to double*
  store double 0.000000e+00, double* %5239, align 1
  store %struct.Memory* %loadMem_400d64, %struct.Memory** %MEMORY
  %loadMem_400d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 33
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %5242 to i64*
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 15
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %5245 to i64*
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5247 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5246, i64 0, i64 0
  %XMM0.i77 = bitcast %union.VectorReg* %5247 to %union.vec128_t*
  %5248 = load i64, i64* %RBP.i76
  %5249 = sub i64 %5248, 208
  %5250 = bitcast %union.vec128_t* %XMM0.i77 to i8*
  %5251 = load i64, i64* %PC.i75
  %5252 = add i64 %5251, 8
  store i64 %5252, i64* %PC.i75
  %5253 = bitcast i8* %5250 to double*
  %5254 = load double, double* %5253, align 1
  %5255 = inttoptr i64 %5249 to double*
  store double %5254, double* %5255
  store %struct.Memory* %loadMem_400d69, %struct.Memory** %MEMORY
  %loadMem_400d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 33
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %5258 to i64*
  %5259 = load i64, i64* %PC.i74
  %5260 = add i64 %5259, 21
  %5261 = load i64, i64* %PC.i74
  %5262 = add i64 %5261, 5
  store i64 %5262, i64* %PC.i74
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5260, i64* %5263, align 8
  store %struct.Memory* %loadMem_400d71, %struct.Memory** %MEMORY
  br label %block_.L_400d86

block_.L_400d76:                                  ; preds = %routine_ucomisd__xmm1___xmm2.exit
  %loadMem_400d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 33
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %5266 to i64*
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5267, i64 0, i64 0
  %YMM0.i72 = bitcast %union.VectorReg* %5268 to %"class.std::bitset"*
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5270 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5269, i64 0, i64 0
  %XMM0.i73 = bitcast %union.VectorReg* %5270 to %union.vec128_t*
  %5271 = bitcast %"class.std::bitset"* %YMM0.i72 to i8*
  %5272 = bitcast %"class.std::bitset"* %YMM0.i72 to i8*
  %5273 = bitcast %union.vec128_t* %XMM0.i73 to i8*
  %5274 = load i64, i64* %PC.i71
  %5275 = add i64 %5274, 3
  store i64 %5275, i64* %PC.i71
  %5276 = bitcast i8* %5272 to i64*
  %5277 = load i64, i64* %5276, align 1
  %5278 = getelementptr inbounds i8, i8* %5272, i64 8
  %5279 = bitcast i8* %5278 to i64*
  %5280 = load i64, i64* %5279, align 1
  %5281 = bitcast i8* %5273 to i64*
  %5282 = load i64, i64* %5281, align 1
  %5283 = getelementptr inbounds i8, i8* %5273, i64 8
  %5284 = bitcast i8* %5283 to i64*
  %5285 = load i64, i64* %5284, align 1
  %5286 = xor i64 %5282, %5277
  %5287 = xor i64 %5285, %5280
  %5288 = trunc i64 %5286 to i32
  %5289 = lshr i64 %5286, 32
  %5290 = trunc i64 %5289 to i32
  %5291 = bitcast i8* %5271 to i32*
  store i32 %5288, i32* %5291, align 1
  %5292 = getelementptr inbounds i8, i8* %5271, i64 4
  %5293 = bitcast i8* %5292 to i32*
  store i32 %5290, i32* %5293, align 1
  %5294 = trunc i64 %5287 to i32
  %5295 = getelementptr inbounds i8, i8* %5271, i64 8
  %5296 = bitcast i8* %5295 to i32*
  store i32 %5294, i32* %5296, align 1
  %5297 = lshr i64 %5287, 32
  %5298 = trunc i64 %5297 to i32
  %5299 = getelementptr inbounds i8, i8* %5271, i64 12
  %5300 = bitcast i8* %5299 to i32*
  store i32 %5298, i32* %5300, align 1
  store %struct.Memory* %loadMem_400d76, %struct.Memory** %MEMORY
  %loadMem_400d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 33
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5303 to i64*
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 15
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %5306 to i64*
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5308 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5307, i64 0, i64 0
  %XMM0.i70 = bitcast %union.VectorReg* %5308 to %union.vec128_t*
  %5309 = load i64, i64* %RBP.i69
  %5310 = sub i64 %5309, 208
  %5311 = bitcast %union.vec128_t* %XMM0.i70 to i8*
  %5312 = load i64, i64* %PC.i68
  %5313 = add i64 %5312, 8
  store i64 %5313, i64* %PC.i68
  %5314 = bitcast i8* %5311 to double*
  %5315 = load double, double* %5314, align 1
  %5316 = inttoptr i64 %5310 to double*
  store double %5315, double* %5316
  store %struct.Memory* %loadMem_400d79, %struct.Memory** %MEMORY
  %loadMem_400d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 33
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %5319 to i64*
  %5320 = load i64, i64* %PC.i67
  %5321 = add i64 %5320, 5
  %5322 = load i64, i64* %PC.i67
  %5323 = add i64 %5322, 5
  store i64 %5323, i64* %PC.i67
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5321, i64* %5324, align 8
  store %struct.Memory* %loadMem_400d81, %struct.Memory** %MEMORY
  br label %block_.L_400d86

block_.L_400d86:                                  ; preds = %block_.L_400d76, %block_400d54
  %loadMem_400d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5326 = getelementptr inbounds %struct.GPR, %struct.GPR* %5325, i32 0, i32 33
  %5327 = getelementptr inbounds %struct.Reg, %struct.Reg* %5326, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5327 to i64*
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 15
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %5330 to i64*
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5332 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5331, i64 0, i64 0
  %YMM0.i66 = bitcast %union.VectorReg* %5332 to %"class.std::bitset"*
  %5333 = bitcast %"class.std::bitset"* %YMM0.i66 to i8*
  %5334 = load i64, i64* %RBP.i65
  %5335 = sub i64 %5334, 208
  %5336 = load i64, i64* %PC.i64
  %5337 = add i64 %5336, 8
  store i64 %5337, i64* %PC.i64
  %5338 = inttoptr i64 %5335 to double*
  %5339 = load double, double* %5338
  %5340 = bitcast i8* %5333 to double*
  store double %5339, double* %5340, align 1
  %5341 = getelementptr inbounds i8, i8* %5333, i64 8
  %5342 = bitcast i8* %5341 to double*
  store double 0.000000e+00, double* %5342, align 1
  store %struct.Memory* %loadMem_400d86, %struct.Memory** %MEMORY
  %loadMem_400d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 33
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5345 to i64*
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5347 = getelementptr inbounds %struct.GPR, %struct.GPR* %5346, i32 0, i32 11
  %5348 = getelementptr inbounds %struct.Reg, %struct.Reg* %5347, i32 0, i32 0
  %RDI.i63 = bitcast %union.anon* %5348 to i64*
  %5349 = load i64, i64* %PC.i62
  %5350 = add i64 %5349, 10
  store i64 %5350, i64* %PC.i62
  store i64 4210989, i64* %RDI.i63, align 8
  store %struct.Memory* %loadMem_400d8e, %struct.Memory** %MEMORY
  %loadMem_400d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 33
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %5353 to i64*
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5355 = getelementptr inbounds %struct.GPR, %struct.GPR* %5354, i32 0, i32 15
  %5356 = getelementptr inbounds %struct.Reg, %struct.Reg* %5355, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %5356 to i64*
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5358 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5357, i64 0, i64 1
  %YMM1.i61 = bitcast %union.VectorReg* %5358 to %"class.std::bitset"*
  %5359 = bitcast %"class.std::bitset"* %YMM1.i61 to i8*
  %5360 = load i64, i64* %RBP.i60
  %5361 = sub i64 %5360, 200
  %5362 = load i64, i64* %PC.i59
  %5363 = add i64 %5362, 8
  store i64 %5363, i64* %PC.i59
  %5364 = inttoptr i64 %5361 to double*
  %5365 = load double, double* %5364
  %5366 = bitcast i8* %5359 to double*
  store double %5365, double* %5366, align 1
  %5367 = getelementptr inbounds i8, i8* %5359, i64 8
  %5368 = bitcast i8* %5367 to double*
  store double 0.000000e+00, double* %5368, align 1
  store %struct.Memory* %loadMem_400d98, %struct.Memory** %MEMORY
  %loadMem_400da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 33
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5371 to i64*
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5373 = getelementptr inbounds %struct.GPR, %struct.GPR* %5372, i32 0, i32 15
  %5374 = getelementptr inbounds %struct.Reg, %struct.Reg* %5373, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %5374 to i64*
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5376 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5375, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5376 to %union.vec128_t*
  %5377 = load i64, i64* %RBP.i58
  %5378 = sub i64 %5377, 216
  %5379 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5380 = load i64, i64* %PC.i57
  %5381 = add i64 %5380, 8
  store i64 %5381, i64* %PC.i57
  %5382 = bitcast i8* %5379 to double*
  %5383 = load double, double* %5382, align 1
  %5384 = inttoptr i64 %5378 to double*
  store double %5383, double* %5384
  store %struct.Memory* %loadMem_400da0, %struct.Memory** %MEMORY
  %loadMem_400da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 33
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %5387 to i64*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5389 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5388, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5389 to %"class.std::bitset"*
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5391 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5390, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %5391 to %union.vec128_t*
  %5392 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5393 = bitcast %union.vec128_t* %XMM1.i to i8*
  %5394 = load i64, i64* %PC.i56
  %5395 = add i64 %5394, 3
  store i64 %5395, i64* %PC.i56
  %5396 = bitcast i8* %5393 to <2 x i32>*
  %5397 = load <2 x i32>, <2 x i32>* %5396, align 1
  %5398 = getelementptr inbounds i8, i8* %5393, i64 8
  %5399 = bitcast i8* %5398 to <2 x i32>*
  %5400 = load <2 x i32>, <2 x i32>* %5399, align 1
  %5401 = extractelement <2 x i32> %5397, i32 0
  %5402 = bitcast i8* %5392 to i32*
  store i32 %5401, i32* %5402, align 1
  %5403 = extractelement <2 x i32> %5397, i32 1
  %5404 = getelementptr inbounds i8, i8* %5392, i64 4
  %5405 = bitcast i8* %5404 to i32*
  store i32 %5403, i32* %5405, align 1
  %5406 = extractelement <2 x i32> %5400, i32 0
  %5407 = getelementptr inbounds i8, i8* %5392, i64 8
  %5408 = bitcast i8* %5407 to i32*
  store i32 %5406, i32* %5408, align 1
  %5409 = extractelement <2 x i32> %5400, i32 1
  %5410 = getelementptr inbounds i8, i8* %5392, i64 12
  %5411 = bitcast i8* %5410 to i32*
  store i32 %5409, i32* %5411, align 1
  store %struct.Memory* %loadMem_400da8, %struct.Memory** %MEMORY
  %loadMem_400dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 33
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5414 to i64*
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 15
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %5417 to i64*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5419 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5418, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5419 to %"class.std::bitset"*
  %5420 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5421 = load i64, i64* %RBP.i55
  %5422 = sub i64 %5421, 216
  %5423 = load i64, i64* %PC.i54
  %5424 = add i64 %5423, 8
  store i64 %5424, i64* %PC.i54
  %5425 = inttoptr i64 %5422 to double*
  %5426 = load double, double* %5425
  %5427 = bitcast i8* %5420 to double*
  store double %5426, double* %5427, align 1
  %5428 = getelementptr inbounds i8, i8* %5420, i64 8
  %5429 = bitcast i8* %5428 to double*
  store double 0.000000e+00, double* %5429, align 1
  store %struct.Memory* %loadMem_400dab, %struct.Memory** %MEMORY
  %loadMem_400db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5431 = getelementptr inbounds %struct.GPR, %struct.GPR* %5430, i32 0, i32 33
  %5432 = getelementptr inbounds %struct.Reg, %struct.Reg* %5431, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5432 to i64*
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 1
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %5436 = bitcast %union.anon* %5435 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5436, i32 0, i32 0
  %5437 = load i64, i64* %PC.i53
  %5438 = add i64 %5437, 2
  store i64 %5438, i64* %PC.i53
  store i8 2, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_400db3, %struct.Memory** %MEMORY
  %loadMem1_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 33
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5441 to i64*
  %5442 = load i64, i64* %PC.i52
  %5443 = add i64 %5442, -1765
  %5444 = load i64, i64* %PC.i52
  %5445 = add i64 %5444, 5
  %5446 = load i64, i64* %PC.i52
  %5447 = add i64 %5446, 5
  store i64 %5447, i64* %PC.i52
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5449 = load i64, i64* %5448, align 8
  %5450 = add i64 %5449, -8
  %5451 = inttoptr i64 %5450 to i64*
  store i64 %5445, i64* %5451
  store i64 %5450, i64* %5448, align 8
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5443, i64* %5452, align 8
  store %struct.Memory* %loadMem1_400db5, %struct.Memory** %MEMORY
  %loadMem2_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400db5 = load i64, i64* %3
  %call2_400db5 = call %struct.Memory* @sub_4006d0.printf_plt(%struct.State* %0, i64 %loadPC_400db5, %struct.Memory* %loadMem2_400db5)
  store %struct.Memory* %call2_400db5, %struct.Memory** %MEMORY
  %loadMem_400dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5454 = getelementptr inbounds %struct.GPR, %struct.GPR* %5453, i32 0, i32 33
  %5455 = getelementptr inbounds %struct.Reg, %struct.Reg* %5454, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5455 to i64*
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5457 = getelementptr inbounds %struct.GPR, %struct.GPR* %5456, i32 0, i32 1
  %5458 = getelementptr inbounds %struct.Reg, %struct.Reg* %5457, i32 0, i32 0
  %EAX.i50 = bitcast %union.anon* %5458 to i32*
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 15
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %5461 to i64*
  %5462 = load i64, i64* %RBP.i51
  %5463 = sub i64 %5462, 220
  %5464 = load i32, i32* %EAX.i50
  %5465 = zext i32 %5464 to i64
  %5466 = load i64, i64* %PC.i49
  %5467 = add i64 %5466, 6
  store i64 %5467, i64* %PC.i49
  %5468 = inttoptr i64 %5463 to i32*
  store i32 %5464, i32* %5468
  store %struct.Memory* %loadMem_400dba, %struct.Memory** %MEMORY
  %loadMem_400dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 33
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %5471 to i64*
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5473 = getelementptr inbounds %struct.GPR, %struct.GPR* %5472, i32 0, i32 1
  %5474 = getelementptr inbounds %struct.Reg, %struct.Reg* %5473, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %5474 to i64*
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5476 = getelementptr inbounds %struct.GPR, %struct.GPR* %5475, i32 0, i32 15
  %5477 = getelementptr inbounds %struct.Reg, %struct.Reg* %5476, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %5477 to i64*
  %5478 = load i64, i64* %RBP.i48
  %5479 = sub i64 %5478, 12
  %5480 = load i64, i64* %PC.i46
  %5481 = add i64 %5480, 3
  store i64 %5481, i64* %PC.i46
  %5482 = inttoptr i64 %5479 to i32*
  %5483 = load i32, i32* %5482
  %5484 = zext i32 %5483 to i64
  store i64 %5484, i64* %RAX.i47, align 8
  store %struct.Memory* %loadMem_400dc0, %struct.Memory** %MEMORY
  %loadMem_400dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 33
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5487 to i64*
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 1
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %5490 to i64*
  %5491 = load i64, i64* %RAX.i45
  %5492 = load i64, i64* %PC.i44
  %5493 = add i64 %5492, 3
  store i64 %5493, i64* %PC.i44
  %5494 = trunc i64 %5491 to i32
  %5495 = add i32 1, %5494
  %5496 = zext i32 %5495 to i64
  store i64 %5496, i64* %RAX.i45, align 8
  %5497 = icmp ult i32 %5495, %5494
  %5498 = icmp ult i32 %5495, 1
  %5499 = or i1 %5497, %5498
  %5500 = zext i1 %5499 to i8
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5500, i8* %5501, align 1
  %5502 = and i32 %5495, 255
  %5503 = call i32 @llvm.ctpop.i32(i32 %5502)
  %5504 = trunc i32 %5503 to i8
  %5505 = and i8 %5504, 1
  %5506 = xor i8 %5505, 1
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5506, i8* %5507, align 1
  %5508 = xor i64 1, %5491
  %5509 = trunc i64 %5508 to i32
  %5510 = xor i32 %5509, %5495
  %5511 = lshr i32 %5510, 4
  %5512 = trunc i32 %5511 to i8
  %5513 = and i8 %5512, 1
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5513, i8* %5514, align 1
  %5515 = icmp eq i32 %5495, 0
  %5516 = zext i1 %5515 to i8
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5516, i8* %5517, align 1
  %5518 = lshr i32 %5495, 31
  %5519 = trunc i32 %5518 to i8
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5519, i8* %5520, align 1
  %5521 = lshr i32 %5494, 31
  %5522 = xor i32 %5518, %5521
  %5523 = add i32 %5522, %5518
  %5524 = icmp eq i32 %5523, 2
  %5525 = zext i1 %5524 to i8
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5525, i8* %5526, align 1
  store %struct.Memory* %loadMem_400dc3, %struct.Memory** %MEMORY
  %loadMem_400dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 33
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5529 to i64*
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 1
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %EAX.i42 = bitcast %union.anon* %5532 to i32*
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 15
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %5535 to i64*
  %5536 = load i64, i64* %RBP.i43
  %5537 = sub i64 %5536, 12
  %5538 = load i32, i32* %EAX.i42
  %5539 = zext i32 %5538 to i64
  %5540 = load i64, i64* %PC.i41
  %5541 = add i64 %5540, 3
  store i64 %5541, i64* %PC.i41
  %5542 = inttoptr i64 %5537 to i32*
  store i32 %5538, i32* %5542
  store %struct.Memory* %loadMem_400dc6, %struct.Memory** %MEMORY
  %loadMem_400dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 33
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %5545 to i64*
  %5546 = load i64, i64* %PC.i40
  %5547 = add i64 %5546, -290
  %5548 = load i64, i64* %PC.i40
  %5549 = add i64 %5548, 5
  store i64 %5549, i64* %PC.i40
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5547, i64* %5550, align 8
  store %struct.Memory* %loadMem_400dc9, %struct.Memory** %MEMORY
  br label %block_.L_400ca7

block_.L_400dce:                                  ; preds = %block_.L_400ca7
  %loadMem_400dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 33
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5553 to i64*
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5555 = getelementptr inbounds %struct.GPR, %struct.GPR* %5554, i32 0, i32 1
  %5556 = getelementptr inbounds %struct.Reg, %struct.Reg* %5555, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %5556 to i64*
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5558 = getelementptr inbounds %struct.GPR, %struct.GPR* %5557, i32 0, i32 15
  %5559 = getelementptr inbounds %struct.Reg, %struct.Reg* %5558, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %5559 to i64*
  %5560 = load i64, i64* %RBP.i39
  %5561 = sub i64 %5560, 32
  %5562 = load i64, i64* %PC.i37
  %5563 = add i64 %5562, 4
  store i64 %5563, i64* %PC.i37
  %5564 = inttoptr i64 %5561 to i64*
  %5565 = load i64, i64* %5564
  store i64 %5565, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_400dce, %struct.Memory** %MEMORY
  %loadMem_400dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 33
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5568 to i64*
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 1
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %5571 to i64*
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5573 = getelementptr inbounds %struct.GPR, %struct.GPR* %5572, i32 0, i32 11
  %5574 = getelementptr inbounds %struct.Reg, %struct.Reg* %5573, i32 0, i32 0
  %RDI.i36 = bitcast %union.anon* %5574 to i64*
  %5575 = load i64, i64* %RAX.i35
  %5576 = load i64, i64* %PC.i34
  %5577 = add i64 %5576, 3
  store i64 %5577, i64* %PC.i34
  store i64 %5575, i64* %RDI.i36, align 8
  store %struct.Memory* %loadMem_400dd2, %struct.Memory** %MEMORY
  %loadMem1_400dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 33
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5580 to i64*
  %5581 = load i64, i64* %PC.i33
  %5582 = add i64 %5581, -1845
  %5583 = load i64, i64* %PC.i33
  %5584 = add i64 %5583, 5
  %5585 = load i64, i64* %PC.i33
  %5586 = add i64 %5585, 5
  store i64 %5586, i64* %PC.i33
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5588 = load i64, i64* %5587, align 8
  %5589 = add i64 %5588, -8
  %5590 = inttoptr i64 %5589 to i64*
  store i64 %5584, i64* %5590
  store i64 %5589, i64* %5587, align 8
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5582, i64* %5591, align 8
  store %struct.Memory* %loadMem1_400dd5, %struct.Memory** %MEMORY
  %loadMem2_400dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400dd5 = load i64, i64* %3
  %call2_400dd5 = call %struct.Memory* @sub_4006a0.free_plt(%struct.State* %0, i64 %loadPC_400dd5, %struct.Memory* %loadMem2_400dd5)
  store %struct.Memory* %call2_400dd5, %struct.Memory** %MEMORY
  %loadMem_400dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5593 = getelementptr inbounds %struct.GPR, %struct.GPR* %5592, i32 0, i32 33
  %5594 = getelementptr inbounds %struct.Reg, %struct.Reg* %5593, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5594 to i64*
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5596 = getelementptr inbounds %struct.GPR, %struct.GPR* %5595, i32 0, i32 1
  %5597 = getelementptr inbounds %struct.Reg, %struct.Reg* %5596, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %5597 to i64*
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 15
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %5600 to i64*
  %5601 = load i64, i64* %RBP.i32
  %5602 = sub i64 %5601, 56
  %5603 = load i64, i64* %PC.i30
  %5604 = add i64 %5603, 4
  store i64 %5604, i64* %PC.i30
  %5605 = inttoptr i64 %5602 to i64*
  %5606 = load i64, i64* %5605
  store i64 %5606, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_400dda, %struct.Memory** %MEMORY
  %loadMem_400dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5608 = getelementptr inbounds %struct.GPR, %struct.GPR* %5607, i32 0, i32 33
  %5609 = getelementptr inbounds %struct.Reg, %struct.Reg* %5608, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5609 to i64*
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 1
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %5612 to i64*
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 11
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %RDI.i29 = bitcast %union.anon* %5615 to i64*
  %5616 = load i64, i64* %RAX.i28
  %5617 = load i64, i64* %PC.i27
  %5618 = add i64 %5617, 3
  store i64 %5618, i64* %PC.i27
  store i64 %5616, i64* %RDI.i29, align 8
  store %struct.Memory* %loadMem_400dde, %struct.Memory** %MEMORY
  %loadMem1_400de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5620 = getelementptr inbounds %struct.GPR, %struct.GPR* %5619, i32 0, i32 33
  %5621 = getelementptr inbounds %struct.Reg, %struct.Reg* %5620, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5621 to i64*
  %5622 = load i64, i64* %PC.i26
  %5623 = add i64 %5622, -1857
  %5624 = load i64, i64* %PC.i26
  %5625 = add i64 %5624, 5
  %5626 = load i64, i64* %PC.i26
  %5627 = add i64 %5626, 5
  store i64 %5627, i64* %PC.i26
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5629 = load i64, i64* %5628, align 8
  %5630 = add i64 %5629, -8
  %5631 = inttoptr i64 %5630 to i64*
  store i64 %5625, i64* %5631
  store i64 %5630, i64* %5628, align 8
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5623, i64* %5632, align 8
  store %struct.Memory* %loadMem1_400de1, %struct.Memory** %MEMORY
  %loadMem2_400de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400de1 = load i64, i64* %3
  %call2_400de1 = call %struct.Memory* @sub_4006a0.free_plt(%struct.State* %0, i64 %loadPC_400de1, %struct.Memory* %loadMem2_400de1)
  store %struct.Memory* %call2_400de1, %struct.Memory** %MEMORY
  %loadMem_400de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 33
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5635 to i64*
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5637 = getelementptr inbounds %struct.GPR, %struct.GPR* %5636, i32 0, i32 1
  %5638 = getelementptr inbounds %struct.Reg, %struct.Reg* %5637, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %5638 to i64*
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 15
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %5641 to i64*
  %5642 = load i64, i64* %RBP.i25
  %5643 = sub i64 %5642, 24
  %5644 = load i64, i64* %PC.i23
  %5645 = add i64 %5644, 4
  store i64 %5645, i64* %PC.i23
  %5646 = inttoptr i64 %5643 to i64*
  %5647 = load i64, i64* %5646
  store i64 %5647, i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_400de6, %struct.Memory** %MEMORY
  %loadMem_400dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 33
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5650 to i64*
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 1
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %5653 to i64*
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 11
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %RDI.i22 = bitcast %union.anon* %5656 to i64*
  %5657 = load i64, i64* %RAX.i21
  %5658 = load i64, i64* %PC.i20
  %5659 = add i64 %5658, 3
  store i64 %5659, i64* %PC.i20
  store i64 %5657, i64* %RDI.i22, align 8
  store %struct.Memory* %loadMem_400dea, %struct.Memory** %MEMORY
  %loadMem1_400ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5661 = getelementptr inbounds %struct.GPR, %struct.GPR* %5660, i32 0, i32 33
  %5662 = getelementptr inbounds %struct.Reg, %struct.Reg* %5661, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5662 to i64*
  %5663 = load i64, i64* %PC.i19
  %5664 = add i64 %5663, -1869
  %5665 = load i64, i64* %PC.i19
  %5666 = add i64 %5665, 5
  %5667 = load i64, i64* %PC.i19
  %5668 = add i64 %5667, 5
  store i64 %5668, i64* %PC.i19
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5670 = load i64, i64* %5669, align 8
  %5671 = add i64 %5670, -8
  %5672 = inttoptr i64 %5671 to i64*
  store i64 %5666, i64* %5672
  store i64 %5671, i64* %5669, align 8
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5664, i64* %5673, align 8
  store %struct.Memory* %loadMem1_400ded, %struct.Memory** %MEMORY
  %loadMem2_400ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ded = load i64, i64* %3
  %call2_400ded = call %struct.Memory* @sub_4006a0.free_plt(%struct.State* %0, i64 %loadPC_400ded, %struct.Memory* %loadMem2_400ded)
  store %struct.Memory* %call2_400ded, %struct.Memory** %MEMORY
  %loadMem_400df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 33
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 1
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %5679 to i64*
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 15
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %5682 to i64*
  %5683 = load i64, i64* %RBP.i18
  %5684 = sub i64 %5683, 40
  %5685 = load i64, i64* %PC.i16
  %5686 = add i64 %5685, 4
  store i64 %5686, i64* %PC.i16
  %5687 = inttoptr i64 %5684 to i64*
  %5688 = load i64, i64* %5687
  store i64 %5688, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_400df2, %struct.Memory** %MEMORY
  %loadMem_400df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5690 = getelementptr inbounds %struct.GPR, %struct.GPR* %5689, i32 0, i32 33
  %5691 = getelementptr inbounds %struct.Reg, %struct.Reg* %5690, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5691 to i64*
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5693 = getelementptr inbounds %struct.GPR, %struct.GPR* %5692, i32 0, i32 1
  %5694 = getelementptr inbounds %struct.Reg, %struct.Reg* %5693, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %5694 to i64*
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5696 = getelementptr inbounds %struct.GPR, %struct.GPR* %5695, i32 0, i32 11
  %5697 = getelementptr inbounds %struct.Reg, %struct.Reg* %5696, i32 0, i32 0
  %RDI.i15 = bitcast %union.anon* %5697 to i64*
  %5698 = load i64, i64* %RAX.i14
  %5699 = load i64, i64* %PC.i13
  %5700 = add i64 %5699, 3
  store i64 %5700, i64* %PC.i13
  store i64 %5698, i64* %RDI.i15, align 8
  store %struct.Memory* %loadMem_400df6, %struct.Memory** %MEMORY
  %loadMem1_400df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5702 = getelementptr inbounds %struct.GPR, %struct.GPR* %5701, i32 0, i32 33
  %5703 = getelementptr inbounds %struct.Reg, %struct.Reg* %5702, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5703 to i64*
  %5704 = load i64, i64* %PC.i12
  %5705 = add i64 %5704, -1881
  %5706 = load i64, i64* %PC.i12
  %5707 = add i64 %5706, 5
  %5708 = load i64, i64* %PC.i12
  %5709 = add i64 %5708, 5
  store i64 %5709, i64* %PC.i12
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5711 = load i64, i64* %5710, align 8
  %5712 = add i64 %5711, -8
  %5713 = inttoptr i64 %5712 to i64*
  store i64 %5707, i64* %5713
  store i64 %5712, i64* %5710, align 8
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5705, i64* %5714, align 8
  store %struct.Memory* %loadMem1_400df9, %struct.Memory** %MEMORY
  %loadMem2_400df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400df9 = load i64, i64* %3
  %call2_400df9 = call %struct.Memory* @sub_4006a0.free_plt(%struct.State* %0, i64 %loadPC_400df9, %struct.Memory* %loadMem2_400df9)
  store %struct.Memory* %call2_400df9, %struct.Memory** %MEMORY
  %loadMem_400dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5716 = getelementptr inbounds %struct.GPR, %struct.GPR* %5715, i32 0, i32 33
  %5717 = getelementptr inbounds %struct.Reg, %struct.Reg* %5716, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5717 to i64*
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5719 = getelementptr inbounds %struct.GPR, %struct.GPR* %5718, i32 0, i32 1
  %5720 = getelementptr inbounds %struct.Reg, %struct.Reg* %5719, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %5720 to i64*
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 15
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5723 to i64*
  %5724 = load i64, i64* %RBP.i11
  %5725 = sub i64 %5724, 48
  %5726 = load i64, i64* %PC.i9
  %5727 = add i64 %5726, 4
  store i64 %5727, i64* %PC.i9
  %5728 = inttoptr i64 %5725 to i64*
  %5729 = load i64, i64* %5728
  store i64 %5729, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_400dfe, %struct.Memory** %MEMORY
  %loadMem_400e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5731 = getelementptr inbounds %struct.GPR, %struct.GPR* %5730, i32 0, i32 33
  %5732 = getelementptr inbounds %struct.Reg, %struct.Reg* %5731, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5732 to i64*
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 1
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %5735 to i64*
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 11
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5738 to i64*
  %5739 = load i64, i64* %RAX.i8
  %5740 = load i64, i64* %PC.i7
  %5741 = add i64 %5740, 3
  store i64 %5741, i64* %PC.i7
  store i64 %5739, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400e02, %struct.Memory** %MEMORY
  %loadMem1_400e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5743 = getelementptr inbounds %struct.GPR, %struct.GPR* %5742, i32 0, i32 33
  %5744 = getelementptr inbounds %struct.Reg, %struct.Reg* %5743, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5744 to i64*
  %5745 = load i64, i64* %PC.i6
  %5746 = add i64 %5745, -1893
  %5747 = load i64, i64* %PC.i6
  %5748 = add i64 %5747, 5
  %5749 = load i64, i64* %PC.i6
  %5750 = add i64 %5749, 5
  store i64 %5750, i64* %PC.i6
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5752 = load i64, i64* %5751, align 8
  %5753 = add i64 %5752, -8
  %5754 = inttoptr i64 %5753 to i64*
  store i64 %5748, i64* %5754
  store i64 %5753, i64* %5751, align 8
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5746, i64* %5755, align 8
  store %struct.Memory* %loadMem1_400e05, %struct.Memory** %MEMORY
  %loadMem2_400e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e05 = load i64, i64* %3
  %call2_400e05 = call %struct.Memory* @sub_4006a0.free_plt(%struct.State* %0, i64 %loadPC_400e05, %struct.Memory* %loadMem2_400e05)
  store %struct.Memory* %call2_400e05, %struct.Memory** %MEMORY
  %loadMem_400e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 33
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5758 to i64*
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5760 = getelementptr inbounds %struct.GPR, %struct.GPR* %5759, i32 0, i32 1
  %5761 = getelementptr inbounds %struct.Reg, %struct.Reg* %5760, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5761 to i32*
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5763 = getelementptr inbounds %struct.GPR, %struct.GPR* %5762, i32 0, i32 1
  %5764 = getelementptr inbounds %struct.Reg, %struct.Reg* %5763, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5764 to i64*
  %5765 = load i64, i64* %RAX.i
  %5766 = load i32, i32* %EAX.i
  %5767 = zext i32 %5766 to i64
  %5768 = load i64, i64* %PC.i5
  %5769 = add i64 %5768, 2
  store i64 %5769, i64* %PC.i5
  %5770 = xor i64 %5767, %5765
  %5771 = trunc i64 %5770 to i32
  %5772 = and i64 %5770, 4294967295
  store i64 %5772, i64* %RAX.i, align 8
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5773, align 1
  %5774 = and i32 %5771, 255
  %5775 = call i32 @llvm.ctpop.i32(i32 %5774)
  %5776 = trunc i32 %5775 to i8
  %5777 = and i8 %5776, 1
  %5778 = xor i8 %5777, 1
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5778, i8* %5779, align 1
  %5780 = icmp eq i32 %5771, 0
  %5781 = zext i1 %5780 to i8
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5781, i8* %5782, align 1
  %5783 = lshr i32 %5771, 31
  %5784 = trunc i32 %5783 to i8
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5784, i8* %5785, align 1
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5786, align 1
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5787, align 1
  store %struct.Memory* %loadMem_400e0a, %struct.Memory** %MEMORY
  %loadMem_400e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5789 = getelementptr inbounds %struct.GPR, %struct.GPR* %5788, i32 0, i32 33
  %5790 = getelementptr inbounds %struct.Reg, %struct.Reg* %5789, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5790 to i64*
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5792 = getelementptr inbounds %struct.GPR, %struct.GPR* %5791, i32 0, i32 13
  %5793 = getelementptr inbounds %struct.Reg, %struct.Reg* %5792, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5793 to i64*
  %5794 = load i64, i64* %RSP.i
  %5795 = load i64, i64* %PC.i4
  %5796 = add i64 %5795, 7
  store i64 %5796, i64* %PC.i4
  %5797 = add i64 224, %5794
  store i64 %5797, i64* %RSP.i, align 8
  %5798 = icmp ult i64 %5797, %5794
  %5799 = icmp ult i64 %5797, 224
  %5800 = or i1 %5798, %5799
  %5801 = zext i1 %5800 to i8
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5801, i8* %5802, align 1
  %5803 = trunc i64 %5797 to i32
  %5804 = and i32 %5803, 255
  %5805 = call i32 @llvm.ctpop.i32(i32 %5804)
  %5806 = trunc i32 %5805 to i8
  %5807 = and i8 %5806, 1
  %5808 = xor i8 %5807, 1
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5808, i8* %5809, align 1
  %5810 = xor i64 224, %5794
  %5811 = xor i64 %5810, %5797
  %5812 = lshr i64 %5811, 4
  %5813 = trunc i64 %5812 to i8
  %5814 = and i8 %5813, 1
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5814, i8* %5815, align 1
  %5816 = icmp eq i64 %5797, 0
  %5817 = zext i1 %5816 to i8
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5817, i8* %5818, align 1
  %5819 = lshr i64 %5797, 63
  %5820 = trunc i64 %5819 to i8
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5820, i8* %5821, align 1
  %5822 = lshr i64 %5794, 63
  %5823 = xor i64 %5819, %5822
  %5824 = add i64 %5823, %5819
  %5825 = icmp eq i64 %5824, 2
  %5826 = zext i1 %5825 to i8
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5826, i8* %5827, align 1
  store %struct.Memory* %loadMem_400e0c, %struct.Memory** %MEMORY
  %loadMem_400e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 33
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 15
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5833 to i64*
  %5834 = load i64, i64* %PC.i2
  %5835 = add i64 %5834, 1
  store i64 %5835, i64* %PC.i2
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5837 = load i64, i64* %5836, align 8
  %5838 = add i64 %5837, 8
  %5839 = inttoptr i64 %5837 to i64*
  %5840 = load i64, i64* %5839
  store i64 %5840, i64* %RBP.i3, align 8
  store i64 %5838, i64* %5836, align 8
  store %struct.Memory* %loadMem_400e13, %struct.Memory** %MEMORY
  %loadMem_400e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5842 = getelementptr inbounds %struct.GPR, %struct.GPR* %5841, i32 0, i32 33
  %5843 = getelementptr inbounds %struct.Reg, %struct.Reg* %5842, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5843 to i64*
  %5844 = load i64, i64* %PC.i1
  %5845 = add i64 %5844, 1
  store i64 %5845, i64* %PC.i1
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5848 = load i64, i64* %5847, align 8
  %5849 = inttoptr i64 %5848 to i64*
  %5850 = load i64, i64* %5849
  store i64 %5850, i64* %5846, align 8
  %5851 = add i64 %5848, 8
  store i64 %5851, i64* %5847, align 8
  store %struct.Memory* %loadMem_400e14, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400e14
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

define %struct.Memory* @routine_subq__0xe0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 224
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 224
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
  %23 = xor i64 224, %9
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_time(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 64
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
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

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_movsd_0x3811__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14361
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

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x380c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14356
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

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x3808__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14352
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

define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to double*
  %15 = load double, double* %14, align 1
  %16 = call double @llvm.trunc.f64(double %15)
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ogt double %17, 0x43E0000000000000
  %19 = fptosi double %16 to i64
  %20 = select i1 %18, i64 -9223372036854775808, i64 %19
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x8000000000000000___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 -9223372036854775808, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RDI, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %17, align 1
  %18 = trunc i64 %16 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %16, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %16, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to double*
  %15 = load double, double* %14, align 1
  %16 = call double @llvm.trunc.f64(double %15)
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ogt double %17, 0x43E0000000000000
  %19 = fptosi double %16 to i64
  %20 = select i1 %18, i64 -9223372036854775808, i64 %19
  store i64 %20, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmovbq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = load i64, i64* %RDI, align 8
  %19 = select i1 %17, i64 %12, i64 %18
  store i64 %19, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memalign_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__edx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x5000___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 20480, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x200___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 512, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.makewt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x10___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4000___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16384, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x10___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__0x7ff___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2047, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.putdata(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x800___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2048, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.cdft(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x36de__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14054
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

define %struct.Memory* @routine_callq_.errorcheck(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x36c5__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14029
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movaps_0x370c__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14099
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
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
  %25 = and i64 %21, %16
  %26 = and i64 %24, %19
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

define %struct.Memory* @routine_jbe_.L_400a13(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x404100___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4210944, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.abort_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x3ff___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1023, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4000___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16384, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0xa4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa0__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x400__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 1024
  %16 = icmp ult i32 %14, 1024
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
  %25 = xor i32 %14, 1024
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

define %struct.Memory* @routine_jge_.L_400acb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 -9223372036854775808, i64* %RAX, align 8
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

define %struct.Memory* @routine_shll__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rcx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RCX, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %17, align 1
  %18 = trunc i64 %16 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %16, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %16, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  store i64 %12, i64* %15, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 1
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

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
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

define %struct.Memory* @routine_jmpq_.L_400a6f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xac__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__0x249f0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 150000
  %16 = icmp ult i32 %14, 150000
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
  %25 = xor i32 %14, 150000
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

define %struct.Memory* @routine_jge_.L_400c7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x4000___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16384, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0xb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xb0__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xb4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x400__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 1024
  %16 = icmp ult i32 %14, 1024
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
  %25 = xor i32 %14, 1024
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

define %struct.Memory* @routine_jge_.L_400c54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 112
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 120
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 128
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
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

define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
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

define %struct.Memory* @routine_mulsd_MINUS0x88__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_400b77(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400b16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subsd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 88
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

define %struct.Memory* @routine_jge_.L_400dce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x3404__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 13324
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x341b__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 13346
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
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
  %25 = and i64 %21, %16
  %26 = and i64 %24, %19
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

define %struct.Memory* @routine_jbe_.L_400d02(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_0x339e__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 13222
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

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x33b2__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 13241
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
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
  %25 = and i64 %21, %16
  %26 = and i64 %24, %19
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

define %struct.Memory* @routine_ucomisd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 200
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_400d76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 208
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d86(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_MINUS0xd0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movq__0x40412d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4210989, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xc8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 216
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0xd8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movb__0x2___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 2, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 220
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ca7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xe0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 224, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 224
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
  %25 = xor i64 224, %9
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
