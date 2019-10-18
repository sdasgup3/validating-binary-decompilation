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

declare %struct.Memory* @sub_400470.floor_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400ba0.fade(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400bf0.grad(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400d40.lerp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @noise(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4006e0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006e0, %struct.Memory** %MEMORY
  %loadMem_4006e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i633 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i633
  %27 = load i64, i64* %PC.i632
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i632
  store i64 %26, i64* %RBP.i634, align 8
  store %struct.Memory* %loadMem_4006e1, %struct.Memory** %MEMORY
  %loadMem_4006e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i631 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i631
  %36 = load i64, i64* %PC.i630
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i630
  %38 = sub i64 %35, 272
  store i64 %38, i64* %RSP.i631, align 8
  %39 = icmp ult i64 %35, 272
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
  %49 = xor i64 272, %35
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
  store %struct.Memory* %loadMem_4006e4, %struct.Memory** %MEMORY
  %loadMem_4006eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %74 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %73, i64 0, i64 0
  %XMM0.i629 = bitcast %union.VectorReg* %74 to %union.vec128_t*
  %75 = load i64, i64* %RBP.i628
  %76 = sub i64 %75, 8
  %77 = bitcast %union.vec128_t* %XMM0.i629 to i8*
  %78 = load i64, i64* %PC.i627
  %79 = add i64 %78, 5
  store i64 %79, i64* %PC.i627
  %80 = bitcast i8* %77 to double*
  %81 = load double, double* %80, align 1
  %82 = inttoptr i64 %76 to double*
  store double %81, double* %82
  store %struct.Memory* %loadMem_4006eb, %struct.Memory** %MEMORY
  %loadMem_4006f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %90 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %89, i64 0, i64 1
  %XMM1.i626 = bitcast %union.VectorReg* %90 to %union.vec128_t*
  %91 = load i64, i64* %RBP.i625
  %92 = sub i64 %91, 16
  %93 = bitcast %union.vec128_t* %XMM1.i626 to i8*
  %94 = load i64, i64* %PC.i624
  %95 = add i64 %94, 5
  store i64 %95, i64* %PC.i624
  %96 = bitcast i8* %93 to double*
  %97 = load double, double* %96, align 1
  %98 = inttoptr i64 %92 to double*
  store double %97, double* %98
  store %struct.Memory* %loadMem_4006f0, %struct.Memory** %MEMORY
  %loadMem_4006f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %105, i64 0, i64 2
  %XMM2.i623 = bitcast %union.VectorReg* %106 to %union.vec128_t*
  %107 = load i64, i64* %RBP.i622
  %108 = sub i64 %107, 24
  %109 = bitcast %union.vec128_t* %XMM2.i623 to i8*
  %110 = load i64, i64* %PC.i621
  %111 = add i64 %110, 5
  store i64 %111, i64* %PC.i621
  %112 = bitcast i8* %109 to double*
  %113 = load double, double* %112, align 1
  %114 = inttoptr i64 %108 to double*
  store double %113, double* %114
  store %struct.Memory* %loadMem_4006f5, %struct.Memory** %MEMORY
  %loadMem_4006fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %121, i64 0, i64 0
  %YMM0.i620 = bitcast %union.VectorReg* %122 to %"class.std::bitset"*
  %123 = bitcast %"class.std::bitset"* %YMM0.i620 to i8*
  %124 = load i64, i64* %RBP.i619
  %125 = sub i64 %124, 8
  %126 = load i64, i64* %PC.i618
  %127 = add i64 %126, 5
  store i64 %127, i64* %PC.i618
  %128 = inttoptr i64 %125 to double*
  %129 = load double, double* %128
  %130 = bitcast i8* %123 to double*
  store double %129, double* %130, align 1
  %131 = getelementptr inbounds i8, i8* %123, i64 8
  %132 = bitcast i8* %131 to double*
  store double 0.000000e+00, double* %132, align 1
  store %struct.Memory* %loadMem_4006fa, %struct.Memory** %MEMORY
  %loadMem1_4006ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 33
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %135 to i64*
  %136 = load i64, i64* %PC.i617
  %137 = add i64 %136, -655
  %138 = load i64, i64* %PC.i617
  %139 = add i64 %138, 5
  %140 = load i64, i64* %PC.i617
  %141 = add i64 %140, 5
  store i64 %141, i64* %PC.i617
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, -8
  %145 = inttoptr i64 %144 to i64*
  store i64 %139, i64* %145
  store i64 %144, i64* %142, align 8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %137, i64* %146, align 8
  store %struct.Memory* %loadMem1_4006ff, %struct.Memory** %MEMORY
  %loadMem2_4006ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4006ff = load i64, i64* %3
  %call2_4006ff = call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %loadPC_4006ff, %struct.Memory* %loadMem2_4006ff)
  store %struct.Memory* %call2_4006ff, %struct.Memory** %MEMORY
  %loadMem_400704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 33
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %154 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %153, i64 0, i64 0
  %XMM0.i616 = bitcast %union.VectorReg* %154 to %union.vec128_t*
  %155 = bitcast %union.vec128_t* %XMM0.i616 to i8*
  %156 = load i64, i64* %PC.i614
  %157 = add i64 %156, 4
  store i64 %157, i64* %PC.i614
  %158 = bitcast i8* %155 to double*
  %159 = load double, double* %158, align 1
  %160 = call double @llvm.trunc.f64(double %159)
  %161 = call double @llvm.fabs.f64(double %160)
  %162 = fcmp ogt double %161, 0x41DFFFFFFFC00000
  %163 = fptosi double %160 to i32
  %164 = zext i32 %163 to i64
  %165 = select i1 %162, i64 2147483648, i64 %164
  store i64 %165, i64* %RAX.i615, align 8
  store %struct.Memory* %loadMem_400704, %struct.Memory** %MEMORY
  %loadMem_400708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %171 to i64*
  %172 = load i64, i64* %RAX.i613
  %173 = load i64, i64* %PC.i612
  %174 = add i64 %173, 5
  store i64 %174, i64* %PC.i612
  %175 = and i64 255, %172
  %176 = trunc i64 %175 to i32
  store i64 %175, i64* %RAX.i613, align 8
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %177, align 1
  %178 = and i32 %176, 255
  %179 = call i32 @llvm.ctpop.i32(i32 %178)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %182, i8* %183, align 1
  %184 = icmp eq i32 %176, 0
  %185 = zext i1 %184 to i8
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %185, i8* %186, align 1
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %187, align 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %188, align 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %189, align 1
  store %struct.Memory* %loadMem_400708, %struct.Memory** %MEMORY
  %loadMem_40070d = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %EAX.i610 = bitcast %union.anon* %195 to i32*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 15
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %198 to i64*
  %199 = load i64, i64* %RBP.i611
  %200 = sub i64 %199, 28
  %201 = load i32, i32* %EAX.i610
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC.i609
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC.i609
  %205 = inttoptr i64 %200 to i32*
  store i32 %201, i32* %205
  store %struct.Memory* %loadMem_40070d, %struct.Memory** %MEMORY
  %loadMem_400710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %213 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %212, i64 0, i64 0
  %YMM0.i608 = bitcast %union.VectorReg* %213 to %"class.std::bitset"*
  %214 = bitcast %"class.std::bitset"* %YMM0.i608 to i8*
  %215 = load i64, i64* %RBP.i607
  %216 = sub i64 %215, 16
  %217 = load i64, i64* %PC.i606
  %218 = add i64 %217, 5
  store i64 %218, i64* %PC.i606
  %219 = inttoptr i64 %216 to double*
  %220 = load double, double* %219
  %221 = bitcast i8* %214 to double*
  store double %220, double* %221, align 1
  %222 = getelementptr inbounds i8, i8* %214, i64 8
  %223 = bitcast i8* %222 to double*
  store double 0.000000e+00, double* %223, align 1
  store %struct.Memory* %loadMem_400710, %struct.Memory** %MEMORY
  %loadMem1_400715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 33
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %PC.i605
  %228 = add i64 %227, -677
  %229 = load i64, i64* %PC.i605
  %230 = add i64 %229, 5
  %231 = load i64, i64* %PC.i605
  %232 = add i64 %231, 5
  store i64 %232, i64* %PC.i605
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = add i64 %234, -8
  %236 = inttoptr i64 %235 to i64*
  store i64 %230, i64* %236
  store i64 %235, i64* %233, align 8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %228, i64* %237, align 8
  store %struct.Memory* %loadMem1_400715, %struct.Memory** %MEMORY
  %loadMem2_400715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400715 = load i64, i64* %3
  %call2_400715 = call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %loadPC_400715, %struct.Memory* %loadMem2_400715)
  store %struct.Memory* %call2_400715, %struct.Memory** %MEMORY
  %loadMem_40071a = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %245 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %244, i64 0, i64 0
  %XMM0.i604 = bitcast %union.VectorReg* %245 to %union.vec128_t*
  %246 = bitcast %union.vec128_t* %XMM0.i604 to i8*
  %247 = load i64, i64* %PC.i602
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC.i602
  %249 = bitcast i8* %246 to double*
  %250 = load double, double* %249, align 1
  %251 = call double @llvm.trunc.f64(double %250)
  %252 = call double @llvm.fabs.f64(double %251)
  %253 = fcmp ogt double %252, 0x41DFFFFFFFC00000
  %254 = fptosi double %251 to i32
  %255 = zext i32 %254 to i64
  %256 = select i1 %253, i64 2147483648, i64 %255
  store i64 %256, i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_40071a, %struct.Memory** %MEMORY
  %loadMem_40071e = load %struct.Memory*, %struct.Memory** %MEMORY
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 33
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %262 to i64*
  %263 = load i64, i64* %RAX.i601
  %264 = load i64, i64* %PC.i600
  %265 = add i64 %264, 5
  store i64 %265, i64* %PC.i600
  %266 = and i64 255, %263
  %267 = trunc i64 %266 to i32
  store i64 %266, i64* %RAX.i601, align 8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %268, align 1
  %269 = and i32 %267, 255
  %270 = call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %273, i8* %274, align 1
  %275 = icmp eq i32 %267, 0
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %276, i8* %277, align 1
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %278, align 1
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %279, align 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %280, align 1
  store %struct.Memory* %loadMem_40071e, %struct.Memory** %MEMORY
  %loadMem_400723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %EAX.i598 = bitcast %union.anon* %286 to i32*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 15
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %289 to i64*
  %290 = load i64, i64* %RBP.i599
  %291 = sub i64 %290, 32
  %292 = load i32, i32* %EAX.i598
  %293 = zext i32 %292 to i64
  %294 = load i64, i64* %PC.i597
  %295 = add i64 %294, 3
  store i64 %295, i64* %PC.i597
  %296 = inttoptr i64 %291 to i32*
  store i32 %292, i32* %296
  store %struct.Memory* %loadMem_400723, %struct.Memory** %MEMORY
  %loadMem_400726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 15
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %304 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %303, i64 0, i64 0
  %YMM0.i596 = bitcast %union.VectorReg* %304 to %"class.std::bitset"*
  %305 = bitcast %"class.std::bitset"* %YMM0.i596 to i8*
  %306 = load i64, i64* %RBP.i595
  %307 = sub i64 %306, 24
  %308 = load i64, i64* %PC.i594
  %309 = add i64 %308, 5
  store i64 %309, i64* %PC.i594
  %310 = inttoptr i64 %307 to double*
  %311 = load double, double* %310
  %312 = bitcast i8* %305 to double*
  store double %311, double* %312, align 1
  %313 = getelementptr inbounds i8, i8* %305, i64 8
  %314 = bitcast i8* %313 to double*
  store double 0.000000e+00, double* %314, align 1
  store %struct.Memory* %loadMem_400726, %struct.Memory** %MEMORY
  %loadMem1_40072b = load %struct.Memory*, %struct.Memory** %MEMORY
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 33
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %317 to i64*
  %318 = load i64, i64* %PC.i593
  %319 = add i64 %318, -699
  %320 = load i64, i64* %PC.i593
  %321 = add i64 %320, 5
  %322 = load i64, i64* %PC.i593
  %323 = add i64 %322, 5
  store i64 %323, i64* %PC.i593
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %321, i64* %327
  store i64 %326, i64* %324, align 8
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %319, i64* %328, align 8
  store %struct.Memory* %loadMem1_40072b, %struct.Memory** %MEMORY
  %loadMem2_40072b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40072b = load i64, i64* %3
  %call2_40072b = call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %loadPC_40072b, %struct.Memory* %loadMem2_40072b)
  store %struct.Memory* %call2_40072b, %struct.Memory** %MEMORY
  %loadMem_400730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %336 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %335, i64 0, i64 0
  %XMM0.i592 = bitcast %union.VectorReg* %336 to %union.vec128_t*
  %337 = bitcast %union.vec128_t* %XMM0.i592 to i8*
  %338 = load i64, i64* %PC.i590
  %339 = add i64 %338, 4
  store i64 %339, i64* %PC.i590
  %340 = bitcast i8* %337 to double*
  %341 = load double, double* %340, align 1
  %342 = call double @llvm.trunc.f64(double %341)
  %343 = call double @llvm.fabs.f64(double %342)
  %344 = fcmp ogt double %343, 0x41DFFFFFFFC00000
  %345 = fptosi double %342 to i32
  %346 = zext i32 %345 to i64
  %347 = select i1 %344, i64 2147483648, i64 %346
  store i64 %347, i64* %RAX.i591, align 8
  store %struct.Memory* %loadMem_400730, %struct.Memory** %MEMORY
  %loadMem_400734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RAX.i589
  %355 = load i64, i64* %PC.i588
  %356 = add i64 %355, 5
  store i64 %356, i64* %PC.i588
  %357 = and i64 255, %354
  %358 = trunc i64 %357 to i32
  store i64 %357, i64* %RAX.i589, align 8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %359, align 1
  %360 = and i32 %358, 255
  %361 = call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %364, i8* %365, align 1
  %366 = icmp eq i32 %358, 0
  %367 = zext i1 %366 to i8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %367, i8* %368, align 1
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %369, align 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %370, align 1
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %371, align 1
  store %struct.Memory* %loadMem_400734, %struct.Memory** %MEMORY
  %loadMem_400739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %EAX.i586 = bitcast %union.anon* %377 to i32*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 15
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %RBP.i587
  %382 = sub i64 %381, 36
  %383 = load i32, i32* %EAX.i586
  %384 = zext i32 %383 to i64
  %385 = load i64, i64* %PC.i585
  %386 = add i64 %385, 3
  store i64 %386, i64* %PC.i585
  %387 = inttoptr i64 %382 to i32*
  store i32 %383, i32* %387
  store %struct.Memory* %loadMem_400739, %struct.Memory** %MEMORY
  %loadMem_40073c = load %struct.Memory*, %struct.Memory** %MEMORY
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 33
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 15
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %395 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %394, i64 0, i64 0
  %YMM0.i584 = bitcast %union.VectorReg* %395 to %"class.std::bitset"*
  %396 = bitcast %"class.std::bitset"* %YMM0.i584 to i8*
  %397 = load i64, i64* %RBP.i583
  %398 = sub i64 %397, 8
  %399 = load i64, i64* %PC.i582
  %400 = add i64 %399, 5
  store i64 %400, i64* %PC.i582
  %401 = inttoptr i64 %398 to double*
  %402 = load double, double* %401
  %403 = bitcast i8* %396 to double*
  store double %402, double* %403, align 1
  %404 = getelementptr inbounds i8, i8* %396, i64 8
  %405 = bitcast i8* %404 to double*
  store double 0.000000e+00, double* %405, align 1
  store %struct.Memory* %loadMem_40073c, %struct.Memory** %MEMORY
  %loadMem1_400741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %408 to i64*
  %409 = load i64, i64* %PC.i581
  %410 = add i64 %409, -721
  %411 = load i64, i64* %PC.i581
  %412 = add i64 %411, 5
  %413 = load i64, i64* %PC.i581
  %414 = add i64 %413, 5
  store i64 %414, i64* %PC.i581
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = add i64 %416, -8
  %418 = inttoptr i64 %417 to i64*
  store i64 %412, i64* %418
  store i64 %417, i64* %415, align 8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %410, i64* %419, align 8
  store %struct.Memory* %loadMem1_400741, %struct.Memory** %MEMORY
  %loadMem2_400741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400741 = load i64, i64* %3
  %call2_400741 = call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %loadPC_400741, %struct.Memory* %loadMem2_400741)
  store %struct.Memory* %call2_400741, %struct.Memory** %MEMORY
  %loadMem_400746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 15
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %427 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %426, i64 0, i64 1
  %YMM1.i580 = bitcast %union.VectorReg* %427 to %"class.std::bitset"*
  %428 = bitcast %"class.std::bitset"* %YMM1.i580 to i8*
  %429 = load i64, i64* %RBP.i579
  %430 = sub i64 %429, 8
  %431 = load i64, i64* %PC.i578
  %432 = add i64 %431, 5
  store i64 %432, i64* %PC.i578
  %433 = inttoptr i64 %430 to double*
  %434 = load double, double* %433
  %435 = bitcast i8* %428 to double*
  store double %434, double* %435, align 1
  %436 = getelementptr inbounds i8, i8* %428, i64 8
  %437 = bitcast i8* %436 to double*
  store double 0.000000e+00, double* %437, align 1
  store %struct.Memory* %loadMem_400746, %struct.Memory** %MEMORY
  %loadMem_40074b = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %442 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %441, i64 0, i64 1
  %YMM1.i576 = bitcast %union.VectorReg* %442 to %"class.std::bitset"*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %444 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %443, i64 0, i64 0
  %XMM0.i577 = bitcast %union.VectorReg* %444 to %union.vec128_t*
  %445 = bitcast %"class.std::bitset"* %YMM1.i576 to i8*
  %446 = bitcast %"class.std::bitset"* %YMM1.i576 to i8*
  %447 = bitcast %union.vec128_t* %XMM0.i577 to i8*
  %448 = load i64, i64* %PC.i575
  %449 = add i64 %448, 4
  store i64 %449, i64* %PC.i575
  %450 = bitcast i8* %446 to double*
  %451 = load double, double* %450, align 1
  %452 = getelementptr inbounds i8, i8* %446, i64 8
  %453 = bitcast i8* %452 to i64*
  %454 = load i64, i64* %453, align 1
  %455 = bitcast i8* %447 to double*
  %456 = load double, double* %455, align 1
  %457 = fsub double %451, %456
  %458 = bitcast i8* %445 to double*
  store double %457, double* %458, align 1
  %459 = getelementptr inbounds i8, i8* %445, i64 8
  %460 = bitcast i8* %459 to i64*
  store i64 %454, i64* %460, align 1
  store %struct.Memory* %loadMem_40074b, %struct.Memory** %MEMORY
  %loadMem_40074f = load %struct.Memory*, %struct.Memory** %MEMORY
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 33
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %463 to i64*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 15
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %468 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %467, i64 0, i64 1
  %XMM1.i574 = bitcast %union.VectorReg* %468 to %union.vec128_t*
  %469 = load i64, i64* %RBP.i573
  %470 = sub i64 %469, 8
  %471 = bitcast %union.vec128_t* %XMM1.i574 to i8*
  %472 = load i64, i64* %PC.i572
  %473 = add i64 %472, 5
  store i64 %473, i64* %PC.i572
  %474 = bitcast i8* %471 to double*
  %475 = load double, double* %474, align 1
  %476 = inttoptr i64 %470 to double*
  store double %475, double* %476
  store %struct.Memory* %loadMem_40074f, %struct.Memory** %MEMORY
  %loadMem_400754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 15
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %484 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %483, i64 0, i64 0
  %YMM0.i571 = bitcast %union.VectorReg* %484 to %"class.std::bitset"*
  %485 = bitcast %"class.std::bitset"* %YMM0.i571 to i8*
  %486 = load i64, i64* %RBP.i570
  %487 = sub i64 %486, 16
  %488 = load i64, i64* %PC.i569
  %489 = add i64 %488, 5
  store i64 %489, i64* %PC.i569
  %490 = inttoptr i64 %487 to double*
  %491 = load double, double* %490
  %492 = bitcast i8* %485 to double*
  store double %491, double* %492, align 1
  %493 = getelementptr inbounds i8, i8* %485, i64 8
  %494 = bitcast i8* %493 to double*
  store double 0.000000e+00, double* %494, align 1
  store %struct.Memory* %loadMem_400754, %struct.Memory** %MEMORY
  %loadMem1_400759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %497 to i64*
  %498 = load i64, i64* %PC.i568
  %499 = add i64 %498, -745
  %500 = load i64, i64* %PC.i568
  %501 = add i64 %500, 5
  %502 = load i64, i64* %PC.i568
  %503 = add i64 %502, 5
  store i64 %503, i64* %PC.i568
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = add i64 %505, -8
  %507 = inttoptr i64 %506 to i64*
  store i64 %501, i64* %507
  store i64 %506, i64* %504, align 8
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %499, i64* %508, align 8
  store %struct.Memory* %loadMem1_400759, %struct.Memory** %MEMORY
  %loadMem2_400759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400759 = load i64, i64* %3
  %call2_400759 = call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %loadPC_400759, %struct.Memory* %loadMem2_400759)
  store %struct.Memory* %call2_400759, %struct.Memory** %MEMORY
  %loadMem_40075e = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 15
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %516 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %515, i64 0, i64 1
  %YMM1.i567 = bitcast %union.VectorReg* %516 to %"class.std::bitset"*
  %517 = bitcast %"class.std::bitset"* %YMM1.i567 to i8*
  %518 = load i64, i64* %RBP.i566
  %519 = sub i64 %518, 16
  %520 = load i64, i64* %PC.i565
  %521 = add i64 %520, 5
  store i64 %521, i64* %PC.i565
  %522 = inttoptr i64 %519 to double*
  %523 = load double, double* %522
  %524 = bitcast i8* %517 to double*
  store double %523, double* %524, align 1
  %525 = getelementptr inbounds i8, i8* %517, i64 8
  %526 = bitcast i8* %525 to double*
  store double 0.000000e+00, double* %526, align 1
  store %struct.Memory* %loadMem_40075e, %struct.Memory** %MEMORY
  %loadMem_400763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %531 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %530, i64 0, i64 1
  %YMM1.i563 = bitcast %union.VectorReg* %531 to %"class.std::bitset"*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %532, i64 0, i64 0
  %XMM0.i564 = bitcast %union.VectorReg* %533 to %union.vec128_t*
  %534 = bitcast %"class.std::bitset"* %YMM1.i563 to i8*
  %535 = bitcast %"class.std::bitset"* %YMM1.i563 to i8*
  %536 = bitcast %union.vec128_t* %XMM0.i564 to i8*
  %537 = load i64, i64* %PC.i562
  %538 = add i64 %537, 4
  store i64 %538, i64* %PC.i562
  %539 = bitcast i8* %535 to double*
  %540 = load double, double* %539, align 1
  %541 = getelementptr inbounds i8, i8* %535, i64 8
  %542 = bitcast i8* %541 to i64*
  %543 = load i64, i64* %542, align 1
  %544 = bitcast i8* %536 to double*
  %545 = load double, double* %544, align 1
  %546 = fsub double %540, %545
  %547 = bitcast i8* %534 to double*
  store double %546, double* %547, align 1
  %548 = getelementptr inbounds i8, i8* %534, i64 8
  %549 = bitcast i8* %548 to i64*
  store i64 %543, i64* %549, align 1
  store %struct.Memory* %loadMem_400763, %struct.Memory** %MEMORY
  %loadMem_400767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 15
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %557 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %556, i64 0, i64 1
  %XMM1.i561 = bitcast %union.VectorReg* %557 to %union.vec128_t*
  %558 = load i64, i64* %RBP.i560
  %559 = sub i64 %558, 16
  %560 = bitcast %union.vec128_t* %XMM1.i561 to i8*
  %561 = load i64, i64* %PC.i559
  %562 = add i64 %561, 5
  store i64 %562, i64* %PC.i559
  %563 = bitcast i8* %560 to double*
  %564 = load double, double* %563, align 1
  %565 = inttoptr i64 %559 to double*
  store double %564, double* %565
  store %struct.Memory* %loadMem_400767, %struct.Memory** %MEMORY
  %loadMem_40076c = load %struct.Memory*, %struct.Memory** %MEMORY
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 33
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %568 to i64*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 15
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %572, i64 0, i64 0
  %YMM0.i558 = bitcast %union.VectorReg* %573 to %"class.std::bitset"*
  %574 = bitcast %"class.std::bitset"* %YMM0.i558 to i8*
  %575 = load i64, i64* %RBP.i557
  %576 = sub i64 %575, 24
  %577 = load i64, i64* %PC.i556
  %578 = add i64 %577, 5
  store i64 %578, i64* %PC.i556
  %579 = inttoptr i64 %576 to double*
  %580 = load double, double* %579
  %581 = bitcast i8* %574 to double*
  store double %580, double* %581, align 1
  %582 = getelementptr inbounds i8, i8* %574, i64 8
  %583 = bitcast i8* %582 to double*
  store double 0.000000e+00, double* %583, align 1
  store %struct.Memory* %loadMem_40076c, %struct.Memory** %MEMORY
  %loadMem1_400771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 33
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %586 to i64*
  %587 = load i64, i64* %PC.i555
  %588 = add i64 %587, -769
  %589 = load i64, i64* %PC.i555
  %590 = add i64 %589, 5
  %591 = load i64, i64* %PC.i555
  %592 = add i64 %591, 5
  store i64 %592, i64* %PC.i555
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %594 = load i64, i64* %593, align 8
  %595 = add i64 %594, -8
  %596 = inttoptr i64 %595 to i64*
  store i64 %590, i64* %596
  store i64 %595, i64* %593, align 8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %588, i64* %597, align 8
  store %struct.Memory* %loadMem1_400771, %struct.Memory** %MEMORY
  %loadMem2_400771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400771 = load i64, i64* %3
  %call2_400771 = call %struct.Memory* @sub_400470.floor_plt(%struct.State* %0, i64 %loadPC_400771, %struct.Memory* %loadMem2_400771)
  store %struct.Memory* %call2_400771, %struct.Memory** %MEMORY
  %loadMem_400776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 33
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %600 to i64*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 15
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %605 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %604, i64 0, i64 1
  %YMM1.i554 = bitcast %union.VectorReg* %605 to %"class.std::bitset"*
  %606 = bitcast %"class.std::bitset"* %YMM1.i554 to i8*
  %607 = load i64, i64* %RBP.i553
  %608 = sub i64 %607, 24
  %609 = load i64, i64* %PC.i552
  %610 = add i64 %609, 5
  store i64 %610, i64* %PC.i552
  %611 = inttoptr i64 %608 to double*
  %612 = load double, double* %611
  %613 = bitcast i8* %606 to double*
  store double %612, double* %613, align 1
  %614 = getelementptr inbounds i8, i8* %606, i64 8
  %615 = bitcast i8* %614 to double*
  store double 0.000000e+00, double* %615, align 1
  store %struct.Memory* %loadMem_400776, %struct.Memory** %MEMORY
  %loadMem_40077b = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %620 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %619, i64 0, i64 1
  %YMM1.i550 = bitcast %union.VectorReg* %620 to %"class.std::bitset"*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %621, i64 0, i64 0
  %XMM0.i551 = bitcast %union.VectorReg* %622 to %union.vec128_t*
  %623 = bitcast %"class.std::bitset"* %YMM1.i550 to i8*
  %624 = bitcast %"class.std::bitset"* %YMM1.i550 to i8*
  %625 = bitcast %union.vec128_t* %XMM0.i551 to i8*
  %626 = load i64, i64* %PC.i549
  %627 = add i64 %626, 4
  store i64 %627, i64* %PC.i549
  %628 = bitcast i8* %624 to double*
  %629 = load double, double* %628, align 1
  %630 = getelementptr inbounds i8, i8* %624, i64 8
  %631 = bitcast i8* %630 to i64*
  %632 = load i64, i64* %631, align 1
  %633 = bitcast i8* %625 to double*
  %634 = load double, double* %633, align 1
  %635 = fsub double %629, %634
  %636 = bitcast i8* %623 to double*
  store double %635, double* %636, align 1
  %637 = getelementptr inbounds i8, i8* %623, i64 8
  %638 = bitcast i8* %637 to i64*
  store i64 %632, i64* %638, align 1
  store %struct.Memory* %loadMem_40077b, %struct.Memory** %MEMORY
  %loadMem_40077f = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 15
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %646 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %645, i64 0, i64 1
  %XMM1.i548 = bitcast %union.VectorReg* %646 to %union.vec128_t*
  %647 = load i64, i64* %RBP.i547
  %648 = sub i64 %647, 24
  %649 = bitcast %union.vec128_t* %XMM1.i548 to i8*
  %650 = load i64, i64* %PC.i546
  %651 = add i64 %650, 5
  store i64 %651, i64* %PC.i546
  %652 = bitcast i8* %649 to double*
  %653 = load double, double* %652, align 1
  %654 = inttoptr i64 %648 to double*
  store double %653, double* %654
  store %struct.Memory* %loadMem_40077f, %struct.Memory** %MEMORY
  %loadMem_400784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 15
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %662 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %661, i64 0, i64 0
  %YMM0.i545 = bitcast %union.VectorReg* %662 to %"class.std::bitset"*
  %663 = bitcast %"class.std::bitset"* %YMM0.i545 to i8*
  %664 = load i64, i64* %RBP.i544
  %665 = sub i64 %664, 8
  %666 = load i64, i64* %PC.i543
  %667 = add i64 %666, 5
  store i64 %667, i64* %PC.i543
  %668 = inttoptr i64 %665 to double*
  %669 = load double, double* %668
  %670 = bitcast i8* %663 to double*
  store double %669, double* %670, align 1
  %671 = getelementptr inbounds i8, i8* %663, i64 8
  %672 = bitcast i8* %671 to double*
  store double 0.000000e+00, double* %672, align 1
  store %struct.Memory* %loadMem_400784, %struct.Memory** %MEMORY
  %loadMem1_400789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 33
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %PC.i542
  %677 = add i64 %676, 1047
  %678 = load i64, i64* %PC.i542
  %679 = add i64 %678, 5
  %680 = load i64, i64* %PC.i542
  %681 = add i64 %680, 5
  store i64 %681, i64* %PC.i542
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %683 = load i64, i64* %682, align 8
  %684 = add i64 %683, -8
  %685 = inttoptr i64 %684 to i64*
  store i64 %679, i64* %685
  store i64 %684, i64* %682, align 8
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %677, i64* %686, align 8
  store %struct.Memory* %loadMem1_400789, %struct.Memory** %MEMORY
  %loadMem2_400789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400789 = load i64, i64* %3
  %call2_400789 = call %struct.Memory* @sub_400ba0.fade(%struct.State* %0, i64 %loadPC_400789, %struct.Memory* %loadMem2_400789)
  store %struct.Memory* %call2_400789, %struct.Memory** %MEMORY
  %loadMem_40078e = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 15
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %693, i64 0, i64 0
  %XMM0.i541 = bitcast %union.VectorReg* %694 to %union.vec128_t*
  %695 = load i64, i64* %RBP.i540
  %696 = sub i64 %695, 48
  %697 = bitcast %union.vec128_t* %XMM0.i541 to i8*
  %698 = load i64, i64* %PC.i539
  %699 = add i64 %698, 5
  store i64 %699, i64* %PC.i539
  %700 = bitcast i8* %697 to double*
  %701 = load double, double* %700, align 1
  %702 = inttoptr i64 %696 to double*
  store double %701, double* %702
  store %struct.Memory* %loadMem_40078e, %struct.Memory** %MEMORY
  %loadMem_400793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 15
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %709, i64 0, i64 0
  %YMM0.i538 = bitcast %union.VectorReg* %710 to %"class.std::bitset"*
  %711 = bitcast %"class.std::bitset"* %YMM0.i538 to i8*
  %712 = load i64, i64* %RBP.i537
  %713 = sub i64 %712, 16
  %714 = load i64, i64* %PC.i536
  %715 = add i64 %714, 5
  store i64 %715, i64* %PC.i536
  %716 = inttoptr i64 %713 to double*
  %717 = load double, double* %716
  %718 = bitcast i8* %711 to double*
  store double %717, double* %718, align 1
  %719 = getelementptr inbounds i8, i8* %711, i64 8
  %720 = bitcast i8* %719 to double*
  store double 0.000000e+00, double* %720, align 1
  store %struct.Memory* %loadMem_400793, %struct.Memory** %MEMORY
  %loadMem1_400798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 33
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %723 to i64*
  %724 = load i64, i64* %PC.i535
  %725 = add i64 %724, 1032
  %726 = load i64, i64* %PC.i535
  %727 = add i64 %726, 5
  %728 = load i64, i64* %PC.i535
  %729 = add i64 %728, 5
  store i64 %729, i64* %PC.i535
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %731 = load i64, i64* %730, align 8
  %732 = add i64 %731, -8
  %733 = inttoptr i64 %732 to i64*
  store i64 %727, i64* %733
  store i64 %732, i64* %730, align 8
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %725, i64* %734, align 8
  store %struct.Memory* %loadMem1_400798, %struct.Memory** %MEMORY
  %loadMem2_400798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400798 = load i64, i64* %3
  %call2_400798 = call %struct.Memory* @sub_400ba0.fade(%struct.State* %0, i64 %loadPC_400798, %struct.Memory* %loadMem2_400798)
  store %struct.Memory* %call2_400798, %struct.Memory** %MEMORY
  %loadMem_40079d = load %struct.Memory*, %struct.Memory** %MEMORY
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 33
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %737 to i64*
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 15
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %742 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %741, i64 0, i64 0
  %XMM0.i534 = bitcast %union.VectorReg* %742 to %union.vec128_t*
  %743 = load i64, i64* %RBP.i533
  %744 = sub i64 %743, 56
  %745 = bitcast %union.vec128_t* %XMM0.i534 to i8*
  %746 = load i64, i64* %PC.i532
  %747 = add i64 %746, 5
  store i64 %747, i64* %PC.i532
  %748 = bitcast i8* %745 to double*
  %749 = load double, double* %748, align 1
  %750 = inttoptr i64 %744 to double*
  store double %749, double* %750
  store %struct.Memory* %loadMem_40079d, %struct.Memory** %MEMORY
  %loadMem_4007a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 33
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 15
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %758 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %757, i64 0, i64 0
  %YMM0.i531 = bitcast %union.VectorReg* %758 to %"class.std::bitset"*
  %759 = bitcast %"class.std::bitset"* %YMM0.i531 to i8*
  %760 = load i64, i64* %RBP.i530
  %761 = sub i64 %760, 24
  %762 = load i64, i64* %PC.i529
  %763 = add i64 %762, 5
  store i64 %763, i64* %PC.i529
  %764 = inttoptr i64 %761 to double*
  %765 = load double, double* %764
  %766 = bitcast i8* %759 to double*
  store double %765, double* %766, align 1
  %767 = getelementptr inbounds i8, i8* %759, i64 8
  %768 = bitcast i8* %767 to double*
  store double 0.000000e+00, double* %768, align 1
  store %struct.Memory* %loadMem_4007a2, %struct.Memory** %MEMORY
  %loadMem1_4007a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %771 to i64*
  %772 = load i64, i64* %PC.i528
  %773 = add i64 %772, 1017
  %774 = load i64, i64* %PC.i528
  %775 = add i64 %774, 5
  %776 = load i64, i64* %PC.i528
  %777 = add i64 %776, 5
  store i64 %777, i64* %PC.i528
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %779 = load i64, i64* %778, align 8
  %780 = add i64 %779, -8
  %781 = inttoptr i64 %780 to i64*
  store i64 %775, i64* %781
  store i64 %780, i64* %778, align 8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %773, i64* %782, align 8
  store %struct.Memory* %loadMem1_4007a7, %struct.Memory** %MEMORY
  %loadMem2_4007a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4007a7 = load i64, i64* %3
  %call2_4007a7 = call %struct.Memory* @sub_400ba0.fade(%struct.State* %0, i64 %loadPC_4007a7, %struct.Memory* %loadMem2_4007a7)
  store %struct.Memory* %call2_4007a7, %struct.Memory** %MEMORY
  %loadMem_4007ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 15
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %790 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %789, i64 0, i64 0
  %XMM0.i527 = bitcast %union.VectorReg* %790 to %union.vec128_t*
  %791 = load i64, i64* %RBP.i526
  %792 = sub i64 %791, 64
  %793 = bitcast %union.vec128_t* %XMM0.i527 to i8*
  %794 = load i64, i64* %PC.i525
  %795 = add i64 %794, 5
  store i64 %795, i64* %PC.i525
  %796 = bitcast i8* %793 to double*
  %797 = load double, double* %796, align 1
  %798 = inttoptr i64 %792 to double*
  store double %797, double* %798
  store %struct.Memory* %loadMem_4007ac, %struct.Memory** %MEMORY
  %loadMem_4007b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 33
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 5
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 15
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %807 to i64*
  %808 = load i64, i64* %RBP.i524
  %809 = sub i64 %808, 28
  %810 = load i64, i64* %PC.i522
  %811 = add i64 %810, 4
  store i64 %811, i64* %PC.i522
  %812 = inttoptr i64 %809 to i32*
  %813 = load i32, i32* %812
  %814 = sext i32 %813 to i64
  store i64 %814, i64* %RCX.i523, align 8
  store %struct.Memory* %loadMem_4007b1, %struct.Memory** %MEMORY
  %loadMem_4007b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 33
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %817 to i64*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 1
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 5
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %823 to i64*
  %824 = load i64, i64* %RCX.i521
  %825 = mul i64 %824, 4
  %826 = add i64 %825, 6300752
  %827 = load i64, i64* %PC.i519
  %828 = add i64 %827, 7
  store i64 %828, i64* %PC.i519
  %829 = inttoptr i64 %826 to i32*
  %830 = load i32, i32* %829
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_4007b5, %struct.Memory** %MEMORY
  %loadMem_4007bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 33
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 1
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 15
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %840 to i64*
  %841 = load i64, i64* %RAX.i517
  %842 = load i64, i64* %RBP.i518
  %843 = sub i64 %842, 32
  %844 = load i64, i64* %PC.i516
  %845 = add i64 %844, 3
  store i64 %845, i64* %PC.i516
  %846 = trunc i64 %841 to i32
  %847 = inttoptr i64 %843 to i32*
  %848 = load i32, i32* %847
  %849 = add i32 %848, %846
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RAX.i517, align 8
  %851 = icmp ult i32 %849, %846
  %852 = icmp ult i32 %849, %848
  %853 = or i1 %851, %852
  %854 = zext i1 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %854, i8* %855, align 1
  %856 = and i32 %849, 255
  %857 = call i32 @llvm.ctpop.i32(i32 %856)
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %860, i8* %861, align 1
  %862 = xor i32 %848, %846
  %863 = xor i32 %862, %849
  %864 = lshr i32 %863, 4
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %866, i8* %867, align 1
  %868 = icmp eq i32 %849, 0
  %869 = zext i1 %868 to i8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %869, i8* %870, align 1
  %871 = lshr i32 %849, 31
  %872 = trunc i32 %871 to i8
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %872, i8* %873, align 1
  %874 = lshr i32 %846, 31
  %875 = lshr i32 %848, 31
  %876 = xor i32 %871, %874
  %877 = xor i32 %871, %875
  %878 = add i32 %876, %877
  %879 = icmp eq i32 %878, 2
  %880 = zext i1 %879 to i8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %880, i8* %881, align 1
  store %struct.Memory* %loadMem_4007bc, %struct.Memory** %MEMORY
  %loadMem_4007bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 1
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %EAX.i514 = bitcast %union.anon* %887 to i32*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 15
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %890 to i64*
  %891 = load i64, i64* %RBP.i515
  %892 = sub i64 %891, 68
  %893 = load i32, i32* %EAX.i514
  %894 = zext i32 %893 to i64
  %895 = load i64, i64* %PC.i513
  %896 = add i64 %895, 3
  store i64 %896, i64* %PC.i513
  %897 = inttoptr i64 %892 to i32*
  store i32 %893, i32* %897
  store %struct.Memory* %loadMem_4007bf, %struct.Memory** %MEMORY
  %loadMem_4007c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 5
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 15
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %RBP.i512
  %908 = sub i64 %907, 68
  %909 = load i64, i64* %PC.i510
  %910 = add i64 %909, 4
  store i64 %910, i64* %PC.i510
  %911 = inttoptr i64 %908 to i32*
  %912 = load i32, i32* %911
  %913 = sext i32 %912 to i64
  store i64 %913, i64* %RCX.i511, align 8
  store %struct.Memory* %loadMem_4007c2, %struct.Memory** %MEMORY
  %loadMem_4007c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 1
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 5
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %RCX.i509
  %924 = mul i64 %923, 4
  %925 = add i64 %924, 6300752
  %926 = load i64, i64* %PC.i507
  %927 = add i64 %926, 7
  store i64 %927, i64* %PC.i507
  %928 = inttoptr i64 %925 to i32*
  %929 = load i32, i32* %928
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_4007c6, %struct.Memory** %MEMORY
  %loadMem_4007cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RAX.i505
  %941 = load i64, i64* %RBP.i506
  %942 = sub i64 %941, 36
  %943 = load i64, i64* %PC.i504
  %944 = add i64 %943, 3
  store i64 %944, i64* %PC.i504
  %945 = trunc i64 %940 to i32
  %946 = inttoptr i64 %942 to i32*
  %947 = load i32, i32* %946
  %948 = add i32 %947, %945
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RAX.i505, align 8
  %950 = icmp ult i32 %948, %945
  %951 = icmp ult i32 %948, %947
  %952 = or i1 %950, %951
  %953 = zext i1 %952 to i8
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %953, i8* %954, align 1
  %955 = and i32 %948, 255
  %956 = call i32 @llvm.ctpop.i32(i32 %955)
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  %959 = xor i8 %958, 1
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %959, i8* %960, align 1
  %961 = xor i32 %947, %945
  %962 = xor i32 %961, %948
  %963 = lshr i32 %962, 4
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %965, i8* %966, align 1
  %967 = icmp eq i32 %948, 0
  %968 = zext i1 %967 to i8
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %968, i8* %969, align 1
  %970 = lshr i32 %948, 31
  %971 = trunc i32 %970 to i8
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %971, i8* %972, align 1
  %973 = lshr i32 %945, 31
  %974 = lshr i32 %947, 31
  %975 = xor i32 %970, %973
  %976 = xor i32 %970, %974
  %977 = add i32 %975, %976
  %978 = icmp eq i32 %977, 2
  %979 = zext i1 %978 to i8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %979, i8* %980, align 1
  store %struct.Memory* %loadMem_4007cd, %struct.Memory** %MEMORY
  %loadMem_4007d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 1
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %EAX.i502 = bitcast %union.anon* %986 to i32*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 15
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %989 to i64*
  %990 = load i64, i64* %RBP.i503
  %991 = sub i64 %990, 72
  %992 = load i32, i32* %EAX.i502
  %993 = zext i32 %992 to i64
  %994 = load i64, i64* %PC.i501
  %995 = add i64 %994, 3
  store i64 %995, i64* %PC.i501
  %996 = inttoptr i64 %991 to i32*
  store i32 %992, i32* %996
  store %struct.Memory* %loadMem_4007d0, %struct.Memory** %MEMORY
  %loadMem_4007d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 15
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %1005 to i64*
  %1006 = load i64, i64* %RBP.i500
  %1007 = sub i64 %1006, 68
  %1008 = load i64, i64* %PC.i498
  %1009 = add i64 %1008, 3
  store i64 %1009, i64* %PC.i498
  %1010 = inttoptr i64 %1007 to i32*
  %1011 = load i32, i32* %1010
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_4007d3, %struct.Memory** %MEMORY
  %loadMem_4007d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 1
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %1018 to i64*
  %1019 = load i64, i64* %RAX.i497
  %1020 = load i64, i64* %PC.i496
  %1021 = add i64 %1020, 3
  store i64 %1021, i64* %PC.i496
  %1022 = trunc i64 %1019 to i32
  %1023 = add i32 1, %1022
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RAX.i497, align 8
  %1025 = icmp ult i32 %1023, %1022
  %1026 = icmp ult i32 %1023, 1
  %1027 = or i1 %1025, %1026
  %1028 = zext i1 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1028, i8* %1029, align 1
  %1030 = and i32 %1023, 255
  %1031 = call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1034, i8* %1035, align 1
  %1036 = xor i64 1, %1019
  %1037 = trunc i64 %1036 to i32
  %1038 = xor i32 %1037, %1023
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1041, i8* %1042, align 1
  %1043 = icmp eq i32 %1023, 0
  %1044 = zext i1 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1044, i8* %1045, align 1
  %1046 = lshr i32 %1023, 31
  %1047 = trunc i32 %1046 to i8
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1047, i8* %1048, align 1
  %1049 = lshr i32 %1022, 31
  %1050 = xor i32 %1046, %1049
  %1051 = add i32 %1050, %1046
  %1052 = icmp eq i32 %1051, 2
  %1053 = zext i1 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1053, i8* %1054, align 1
  store %struct.Memory* %loadMem_4007d6, %struct.Memory** %MEMORY
  %loadMem_4007d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 33
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1057 to i64*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 1
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %EAX.i494 = bitcast %union.anon* %1060 to i32*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 5
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %1063 to i64*
  %1064 = load i32, i32* %EAX.i494
  %1065 = zext i32 %1064 to i64
  %1066 = load i64, i64* %PC.i493
  %1067 = add i64 %1066, 3
  store i64 %1067, i64* %PC.i493
  %1068 = shl i64 %1065, 32
  %1069 = ashr exact i64 %1068, 32
  store i64 %1069, i64* %RCX.i495, align 8
  store %struct.Memory* %loadMem_4007d9, %struct.Memory** %MEMORY
  %loadMem_4007dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 1
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 5
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %1078 to i64*
  %1079 = load i64, i64* %RCX.i492
  %1080 = mul i64 %1079, 4
  %1081 = add i64 %1080, 6300752
  %1082 = load i64, i64* %PC.i490
  %1083 = add i64 %1082, 7
  store i64 %1083, i64* %PC.i490
  %1084 = inttoptr i64 %1081 to i32*
  %1085 = load i32, i32* %1084
  %1086 = zext i32 %1085 to i64
  store i64 %1086, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_4007dc, %struct.Memory** %MEMORY
  %loadMem_4007e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 33
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 1
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 15
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %1095 to i64*
  %1096 = load i64, i64* %RAX.i488
  %1097 = load i64, i64* %RBP.i489
  %1098 = sub i64 %1097, 36
  %1099 = load i64, i64* %PC.i487
  %1100 = add i64 %1099, 3
  store i64 %1100, i64* %PC.i487
  %1101 = trunc i64 %1096 to i32
  %1102 = inttoptr i64 %1098 to i32*
  %1103 = load i32, i32* %1102
  %1104 = add i32 %1103, %1101
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RAX.i488, align 8
  %1106 = icmp ult i32 %1104, %1101
  %1107 = icmp ult i32 %1104, %1103
  %1108 = or i1 %1106, %1107
  %1109 = zext i1 %1108 to i8
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1109, i8* %1110, align 1
  %1111 = and i32 %1104, 255
  %1112 = call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1115, i8* %1116, align 1
  %1117 = xor i32 %1103, %1101
  %1118 = xor i32 %1117, %1104
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1121, i8* %1122, align 1
  %1123 = icmp eq i32 %1104, 0
  %1124 = zext i1 %1123 to i8
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1124, i8* %1125, align 1
  %1126 = lshr i32 %1104, 31
  %1127 = trunc i32 %1126 to i8
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1127, i8* %1128, align 1
  %1129 = lshr i32 %1101, 31
  %1130 = lshr i32 %1103, 31
  %1131 = xor i32 %1126, %1129
  %1132 = xor i32 %1126, %1130
  %1133 = add i32 %1131, %1132
  %1134 = icmp eq i32 %1133, 2
  %1135 = zext i1 %1134 to i8
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1135, i8* %1136, align 1
  store %struct.Memory* %loadMem_4007e3, %struct.Memory** %MEMORY
  %loadMem_4007e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 33
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 1
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %EAX.i485 = bitcast %union.anon* %1142 to i32*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 15
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %1145 to i64*
  %1146 = load i64, i64* %RBP.i486
  %1147 = sub i64 %1146, 76
  %1148 = load i32, i32* %EAX.i485
  %1149 = zext i32 %1148 to i64
  %1150 = load i64, i64* %PC.i484
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %PC.i484
  %1152 = inttoptr i64 %1147 to i32*
  store i32 %1148, i32* %1152
  store %struct.Memory* %loadMem_4007e6, %struct.Memory** %MEMORY
  %loadMem_4007e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 1
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 15
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %RBP.i483
  %1163 = sub i64 %1162, 28
  %1164 = load i64, i64* %PC.i481
  %1165 = add i64 %1164, 3
  store i64 %1165, i64* %PC.i481
  %1166 = inttoptr i64 %1163 to i32*
  %1167 = load i32, i32* %1166
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RAX.i482, align 8
  store %struct.Memory* %loadMem_4007e9, %struct.Memory** %MEMORY
  %loadMem_4007ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 1
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %RAX.i480
  %1176 = load i64, i64* %PC.i479
  %1177 = add i64 %1176, 3
  store i64 %1177, i64* %PC.i479
  %1178 = trunc i64 %1175 to i32
  %1179 = add i32 1, %1178
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RAX.i480, align 8
  %1181 = icmp ult i32 %1179, %1178
  %1182 = icmp ult i32 %1179, 1
  %1183 = or i1 %1181, %1182
  %1184 = zext i1 %1183 to i8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1184, i8* %1185, align 1
  %1186 = and i32 %1179, 255
  %1187 = call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1190, i8* %1191, align 1
  %1192 = xor i64 1, %1175
  %1193 = trunc i64 %1192 to i32
  %1194 = xor i32 %1193, %1179
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1197, i8* %1198, align 1
  %1199 = icmp eq i32 %1179, 0
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1200, i8* %1201, align 1
  %1202 = lshr i32 %1179, 31
  %1203 = trunc i32 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1203, i8* %1204, align 1
  %1205 = lshr i32 %1178, 31
  %1206 = xor i32 %1202, %1205
  %1207 = add i32 %1206, %1202
  %1208 = icmp eq i32 %1207, 2
  %1209 = zext i1 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1209, i8* %1210, align 1
  store %struct.Memory* %loadMem_4007ec, %struct.Memory** %MEMORY
  %loadMem_4007ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 1
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %EAX.i477 = bitcast %union.anon* %1216 to i32*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 5
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RCX.i478 = bitcast %union.anon* %1219 to i64*
  %1220 = load i32, i32* %EAX.i477
  %1221 = zext i32 %1220 to i64
  %1222 = load i64, i64* %PC.i476
  %1223 = add i64 %1222, 3
  store i64 %1223, i64* %PC.i476
  %1224 = shl i64 %1221, 32
  %1225 = ashr exact i64 %1224, 32
  store i64 %1225, i64* %RCX.i478, align 8
  store %struct.Memory* %loadMem_4007ef, %struct.Memory** %MEMORY
  %loadMem_4007f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 33
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 1
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %1231 to i64*
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 5
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %1234 to i64*
  %1235 = load i64, i64* %RCX.i475
  %1236 = mul i64 %1235, 4
  %1237 = add i64 %1236, 6300752
  %1238 = load i64, i64* %PC.i473
  %1239 = add i64 %1238, 7
  store i64 %1239, i64* %PC.i473
  %1240 = inttoptr i64 %1237 to i32*
  %1241 = load i32, i32* %1240
  %1242 = zext i32 %1241 to i64
  store i64 %1242, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_4007f2, %struct.Memory** %MEMORY
  %loadMem_4007f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 1
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 15
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %RAX.i471
  %1253 = load i64, i64* %RBP.i472
  %1254 = sub i64 %1253, 32
  %1255 = load i64, i64* %PC.i470
  %1256 = add i64 %1255, 3
  store i64 %1256, i64* %PC.i470
  %1257 = trunc i64 %1252 to i32
  %1258 = inttoptr i64 %1254 to i32*
  %1259 = load i32, i32* %1258
  %1260 = add i32 %1259, %1257
  %1261 = zext i32 %1260 to i64
  store i64 %1261, i64* %RAX.i471, align 8
  %1262 = icmp ult i32 %1260, %1257
  %1263 = icmp ult i32 %1260, %1259
  %1264 = or i1 %1262, %1263
  %1265 = zext i1 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1265, i8* %1266, align 1
  %1267 = and i32 %1260, 255
  %1268 = call i32 @llvm.ctpop.i32(i32 %1267)
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1271, i8* %1272, align 1
  %1273 = xor i32 %1259, %1257
  %1274 = xor i32 %1273, %1260
  %1275 = lshr i32 %1274, 4
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1277, i8* %1278, align 1
  %1279 = icmp eq i32 %1260, 0
  %1280 = zext i1 %1279 to i8
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1280, i8* %1281, align 1
  %1282 = lshr i32 %1260, 31
  %1283 = trunc i32 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1283, i8* %1284, align 1
  %1285 = lshr i32 %1257, 31
  %1286 = lshr i32 %1259, 31
  %1287 = xor i32 %1282, %1285
  %1288 = xor i32 %1282, %1286
  %1289 = add i32 %1287, %1288
  %1290 = icmp eq i32 %1289, 2
  %1291 = zext i1 %1290 to i8
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1291, i8* %1292, align 1
  store %struct.Memory* %loadMem_4007f9, %struct.Memory** %MEMORY
  %loadMem_4007fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 1
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %EAX.i468 = bitcast %union.anon* %1298 to i32*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 15
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %RBP.i469
  %1303 = sub i64 %1302, 80
  %1304 = load i32, i32* %EAX.i468
  %1305 = zext i32 %1304 to i64
  %1306 = load i64, i64* %PC.i467
  %1307 = add i64 %1306, 3
  store i64 %1307, i64* %PC.i467
  %1308 = inttoptr i64 %1303 to i32*
  store i32 %1304, i32* %1308
  store %struct.Memory* %loadMem_4007fc, %struct.Memory** %MEMORY
  %loadMem_4007ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 5
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 15
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %RBP.i466
  %1319 = sub i64 %1318, 80
  %1320 = load i64, i64* %PC.i464
  %1321 = add i64 %1320, 4
  store i64 %1321, i64* %PC.i464
  %1322 = inttoptr i64 %1319 to i32*
  %1323 = load i32, i32* %1322
  %1324 = sext i32 %1323 to i64
  store i64 %1324, i64* %RCX.i465, align 8
  store %struct.Memory* %loadMem_4007ff, %struct.Memory** %MEMORY
  %loadMem_400803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 33
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 1
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 5
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %1333 to i64*
  %1334 = load i64, i64* %RCX.i463
  %1335 = mul i64 %1334, 4
  %1336 = add i64 %1335, 6300752
  %1337 = load i64, i64* %PC.i461
  %1338 = add i64 %1337, 7
  store i64 %1338, i64* %PC.i461
  %1339 = inttoptr i64 %1336 to i32*
  %1340 = load i32, i32* %1339
  %1341 = zext i32 %1340 to i64
  store i64 %1341, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_400803, %struct.Memory** %MEMORY
  %loadMem_40080a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 33
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1344 to i64*
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 1
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 15
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %1350 to i64*
  %1351 = load i64, i64* %RAX.i459
  %1352 = load i64, i64* %RBP.i460
  %1353 = sub i64 %1352, 36
  %1354 = load i64, i64* %PC.i458
  %1355 = add i64 %1354, 3
  store i64 %1355, i64* %PC.i458
  %1356 = trunc i64 %1351 to i32
  %1357 = inttoptr i64 %1353 to i32*
  %1358 = load i32, i32* %1357
  %1359 = add i32 %1358, %1356
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RAX.i459, align 8
  %1361 = icmp ult i32 %1359, %1356
  %1362 = icmp ult i32 %1359, %1358
  %1363 = or i1 %1361, %1362
  %1364 = zext i1 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1364, i8* %1365, align 1
  %1366 = and i32 %1359, 255
  %1367 = call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1370, i8* %1371, align 1
  %1372 = xor i32 %1358, %1356
  %1373 = xor i32 %1372, %1359
  %1374 = lshr i32 %1373, 4
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1376, i8* %1377, align 1
  %1378 = icmp eq i32 %1359, 0
  %1379 = zext i1 %1378 to i8
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1379, i8* %1380, align 1
  %1381 = lshr i32 %1359, 31
  %1382 = trunc i32 %1381 to i8
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1382, i8* %1383, align 1
  %1384 = lshr i32 %1356, 31
  %1385 = lshr i32 %1358, 31
  %1386 = xor i32 %1381, %1384
  %1387 = xor i32 %1381, %1385
  %1388 = add i32 %1386, %1387
  %1389 = icmp eq i32 %1388, 2
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1390, i8* %1391, align 1
  store %struct.Memory* %loadMem_40080a, %struct.Memory** %MEMORY
  %loadMem_40080d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 1
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %EAX.i456 = bitcast %union.anon* %1397 to i32*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 15
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RBP.i457
  %1402 = sub i64 %1401, 84
  %1403 = load i32, i32* %EAX.i456
  %1404 = zext i32 %1403 to i64
  %1405 = load i64, i64* %PC.i455
  %1406 = add i64 %1405, 3
  store i64 %1406, i64* %PC.i455
  %1407 = inttoptr i64 %1402 to i32*
  store i32 %1403, i32* %1407
  store %struct.Memory* %loadMem_40080d, %struct.Memory** %MEMORY
  %loadMem_400810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 33
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 1
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %1413 to i64*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 15
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %1416 to i64*
  %1417 = load i64, i64* %RBP.i454
  %1418 = sub i64 %1417, 80
  %1419 = load i64, i64* %PC.i452
  %1420 = add i64 %1419, 3
  store i64 %1420, i64* %PC.i452
  %1421 = inttoptr i64 %1418 to i32*
  %1422 = load i32, i32* %1421
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_400810, %struct.Memory** %MEMORY
  %loadMem_400813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 33
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 1
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %1429 to i64*
  %1430 = load i64, i64* %RAX.i451
  %1431 = load i64, i64* %PC.i450
  %1432 = add i64 %1431, 3
  store i64 %1432, i64* %PC.i450
  %1433 = trunc i64 %1430 to i32
  %1434 = add i32 1, %1433
  %1435 = zext i32 %1434 to i64
  store i64 %1435, i64* %RAX.i451, align 8
  %1436 = icmp ult i32 %1434, %1433
  %1437 = icmp ult i32 %1434, 1
  %1438 = or i1 %1436, %1437
  %1439 = zext i1 %1438 to i8
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1439, i8* %1440, align 1
  %1441 = and i32 %1434, 255
  %1442 = call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1445, i8* %1446, align 1
  %1447 = xor i64 1, %1430
  %1448 = trunc i64 %1447 to i32
  %1449 = xor i32 %1448, %1434
  %1450 = lshr i32 %1449, 4
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1452, i8* %1453, align 1
  %1454 = icmp eq i32 %1434, 0
  %1455 = zext i1 %1454 to i8
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1455, i8* %1456, align 1
  %1457 = lshr i32 %1434, 31
  %1458 = trunc i32 %1457 to i8
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1458, i8* %1459, align 1
  %1460 = lshr i32 %1433, 31
  %1461 = xor i32 %1457, %1460
  %1462 = add i32 %1461, %1457
  %1463 = icmp eq i32 %1462, 2
  %1464 = zext i1 %1463 to i8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1464, i8* %1465, align 1
  store %struct.Memory* %loadMem_400813, %struct.Memory** %MEMORY
  %loadMem_400816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 1
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %EAX.i448 = bitcast %union.anon* %1471 to i32*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 5
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %1474 to i64*
  %1475 = load i32, i32* %EAX.i448
  %1476 = zext i32 %1475 to i64
  %1477 = load i64, i64* %PC.i447
  %1478 = add i64 %1477, 3
  store i64 %1478, i64* %PC.i447
  %1479 = shl i64 %1476, 32
  %1480 = ashr exact i64 %1479, 32
  store i64 %1480, i64* %RCX.i449, align 8
  store %struct.Memory* %loadMem_400816, %struct.Memory** %MEMORY
  %loadMem_400819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 1
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 5
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %RCX.i446
  %1491 = mul i64 %1490, 4
  %1492 = add i64 %1491, 6300752
  %1493 = load i64, i64* %PC.i444
  %1494 = add i64 %1493, 7
  store i64 %1494, i64* %PC.i444
  %1495 = inttoptr i64 %1492 to i32*
  %1496 = load i32, i32* %1495
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RAX.i445, align 8
  store %struct.Memory* %loadMem_400819, %struct.Memory** %MEMORY
  %loadMem_400820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 33
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 1
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %1503 to i64*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 15
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %1506 to i64*
  %1507 = load i64, i64* %RAX.i442
  %1508 = load i64, i64* %RBP.i443
  %1509 = sub i64 %1508, 36
  %1510 = load i64, i64* %PC.i441
  %1511 = add i64 %1510, 3
  store i64 %1511, i64* %PC.i441
  %1512 = trunc i64 %1507 to i32
  %1513 = inttoptr i64 %1509 to i32*
  %1514 = load i32, i32* %1513
  %1515 = add i32 %1514, %1512
  %1516 = zext i32 %1515 to i64
  store i64 %1516, i64* %RAX.i442, align 8
  %1517 = icmp ult i32 %1515, %1512
  %1518 = icmp ult i32 %1515, %1514
  %1519 = or i1 %1517, %1518
  %1520 = zext i1 %1519 to i8
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1520, i8* %1521, align 1
  %1522 = and i32 %1515, 255
  %1523 = call i32 @llvm.ctpop.i32(i32 %1522)
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  %1526 = xor i8 %1525, 1
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1526, i8* %1527, align 1
  %1528 = xor i32 %1514, %1512
  %1529 = xor i32 %1528, %1515
  %1530 = lshr i32 %1529, 4
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1532, i8* %1533, align 1
  %1534 = icmp eq i32 %1515, 0
  %1535 = zext i1 %1534 to i8
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1535, i8* %1536, align 1
  %1537 = lshr i32 %1515, 31
  %1538 = trunc i32 %1537 to i8
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1538, i8* %1539, align 1
  %1540 = lshr i32 %1512, 31
  %1541 = lshr i32 %1514, 31
  %1542 = xor i32 %1537, %1540
  %1543 = xor i32 %1537, %1541
  %1544 = add i32 %1542, %1543
  %1545 = icmp eq i32 %1544, 2
  %1546 = zext i1 %1545 to i8
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1546, i8* %1547, align 1
  store %struct.Memory* %loadMem_400820, %struct.Memory** %MEMORY
  %loadMem_400823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 33
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 1
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %EAX.i439 = bitcast %union.anon* %1553 to i32*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 15
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %1556 to i64*
  %1557 = load i64, i64* %RBP.i440
  %1558 = sub i64 %1557, 88
  %1559 = load i32, i32* %EAX.i439
  %1560 = zext i32 %1559 to i64
  %1561 = load i64, i64* %PC.i438
  %1562 = add i64 %1561, 3
  store i64 %1562, i64* %PC.i438
  %1563 = inttoptr i64 %1558 to i32*
  store i32 %1559, i32* %1563
  store %struct.Memory* %loadMem_400823, %struct.Memory** %MEMORY
  %loadMem_400826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 33
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 15
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1570, i64 0, i64 0
  %YMM0.i437 = bitcast %union.VectorReg* %1571 to %"class.std::bitset"*
  %1572 = bitcast %"class.std::bitset"* %YMM0.i437 to i8*
  %1573 = load i64, i64* %RBP.i436
  %1574 = sub i64 %1573, 64
  %1575 = load i64, i64* %PC.i435
  %1576 = add i64 %1575, 5
  store i64 %1576, i64* %PC.i435
  %1577 = inttoptr i64 %1574 to double*
  %1578 = load double, double* %1577
  %1579 = bitcast i8* %1572 to double*
  store double %1578, double* %1579, align 1
  %1580 = getelementptr inbounds i8, i8* %1572, i64 8
  %1581 = bitcast i8* %1580 to double*
  store double 0.000000e+00, double* %1581, align 1
  store %struct.Memory* %loadMem_400826, %struct.Memory** %MEMORY
  %loadMem_40082b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 15
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1589 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1588, i64 0, i64 1
  %YMM1.i434 = bitcast %union.VectorReg* %1589 to %"class.std::bitset"*
  %1590 = bitcast %"class.std::bitset"* %YMM1.i434 to i8*
  %1591 = load i64, i64* %RBP.i433
  %1592 = sub i64 %1591, 56
  %1593 = load i64, i64* %PC.i432
  %1594 = add i64 %1593, 5
  store i64 %1594, i64* %PC.i432
  %1595 = inttoptr i64 %1592 to double*
  %1596 = load double, double* %1595
  %1597 = bitcast i8* %1590 to double*
  store double %1596, double* %1597, align 1
  %1598 = getelementptr inbounds i8, i8* %1590, i64 8
  %1599 = bitcast i8* %1598 to double*
  store double 0.000000e+00, double* %1599, align 1
  store %struct.Memory* %loadMem_40082b, %struct.Memory** %MEMORY
  %loadMem_400830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 33
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 15
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1607 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1606, i64 0, i64 2
  %YMM2.i431 = bitcast %union.VectorReg* %1607 to %"class.std::bitset"*
  %1608 = bitcast %"class.std::bitset"* %YMM2.i431 to i8*
  %1609 = load i64, i64* %RBP.i430
  %1610 = sub i64 %1609, 48
  %1611 = load i64, i64* %PC.i429
  %1612 = add i64 %1611, 5
  store i64 %1612, i64* %PC.i429
  %1613 = inttoptr i64 %1610 to double*
  %1614 = load double, double* %1613
  %1615 = bitcast i8* %1608 to double*
  store double %1614, double* %1615, align 1
  %1616 = getelementptr inbounds i8, i8* %1608, i64 8
  %1617 = bitcast i8* %1616 to double*
  store double 0.000000e+00, double* %1617, align 1
  store %struct.Memory* %loadMem_400830, %struct.Memory** %MEMORY
  %loadMem_400835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 33
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 5
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 15
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %1626 to i64*
  %1627 = load i64, i64* %RBP.i428
  %1628 = sub i64 %1627, 72
  %1629 = load i64, i64* %PC.i426
  %1630 = add i64 %1629, 4
  store i64 %1630, i64* %PC.i426
  %1631 = inttoptr i64 %1628 to i32*
  %1632 = load i32, i32* %1631
  %1633 = sext i32 %1632 to i64
  store i64 %1633, i64* %RCX.i427, align 8
  store %struct.Memory* %loadMem_400835, %struct.Memory** %MEMORY
  %loadMem_400839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 5
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 11
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RDI.i425 = bitcast %union.anon* %1642 to i64*
  %1643 = load i64, i64* %RCX.i424
  %1644 = mul i64 %1643, 4
  %1645 = add i64 %1644, 6300752
  %1646 = load i64, i64* %PC.i423
  %1647 = add i64 %1646, 7
  store i64 %1647, i64* %PC.i423
  %1648 = inttoptr i64 %1645 to i32*
  %1649 = load i32, i32* %1648
  %1650 = zext i32 %1649 to i64
  store i64 %1650, i64* %RDI.i425, align 8
  store %struct.Memory* %loadMem_400839, %struct.Memory** %MEMORY
  %loadMem_400840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 33
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 15
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1658 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1657, i64 0, i64 3
  %YMM3.i422 = bitcast %union.VectorReg* %1658 to %"class.std::bitset"*
  %1659 = bitcast %"class.std::bitset"* %YMM3.i422 to i8*
  %1660 = load i64, i64* %RBP.i421
  %1661 = sub i64 %1660, 8
  %1662 = load i64, i64* %PC.i420
  %1663 = add i64 %1662, 5
  store i64 %1663, i64* %PC.i420
  %1664 = inttoptr i64 %1661 to double*
  %1665 = load double, double* %1664
  %1666 = bitcast i8* %1659 to double*
  store double %1665, double* %1666, align 1
  %1667 = getelementptr inbounds i8, i8* %1659, i64 8
  %1668 = bitcast i8* %1667 to double*
  store double 0.000000e+00, double* %1668, align 1
  store %struct.Memory* %loadMem_400840, %struct.Memory** %MEMORY
  %loadMem_400845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 33
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1671 to i64*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 15
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1676 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1675, i64 0, i64 4
  %YMM4.i419 = bitcast %union.VectorReg* %1676 to %"class.std::bitset"*
  %1677 = bitcast %"class.std::bitset"* %YMM4.i419 to i8*
  %1678 = load i64, i64* %RBP.i418
  %1679 = sub i64 %1678, 16
  %1680 = load i64, i64* %PC.i417
  %1681 = add i64 %1680, 5
  store i64 %1681, i64* %PC.i417
  %1682 = inttoptr i64 %1679 to double*
  %1683 = load double, double* %1682
  %1684 = bitcast i8* %1677 to double*
  store double %1683, double* %1684, align 1
  %1685 = getelementptr inbounds i8, i8* %1677, i64 8
  %1686 = bitcast i8* %1685 to double*
  store double 0.000000e+00, double* %1686, align 1
  store %struct.Memory* %loadMem_400845, %struct.Memory** %MEMORY
  %loadMem_40084a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 15
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1693, i64 0, i64 5
  %YMM5.i416 = bitcast %union.VectorReg* %1694 to %"class.std::bitset"*
  %1695 = bitcast %"class.std::bitset"* %YMM5.i416 to i8*
  %1696 = load i64, i64* %RBP.i415
  %1697 = sub i64 %1696, 24
  %1698 = load i64, i64* %PC.i414
  %1699 = add i64 %1698, 5
  store i64 %1699, i64* %PC.i414
  %1700 = inttoptr i64 %1697 to double*
  %1701 = load double, double* %1700
  %1702 = bitcast i8* %1695 to double*
  store double %1701, double* %1702, align 1
  %1703 = getelementptr inbounds i8, i8* %1695, i64 8
  %1704 = bitcast i8* %1703 to double*
  store double 0.000000e+00, double* %1704, align 1
  store %struct.Memory* %loadMem_40084a, %struct.Memory** %MEMORY
  %loadMem_40084f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 15
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %1710 to i64*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1712 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1711, i64 0, i64 0
  %XMM0.i413 = bitcast %union.VectorReg* %1712 to %union.vec128_t*
  %1713 = load i64, i64* %RBP.i412
  %1714 = sub i64 %1713, 96
  %1715 = bitcast %union.vec128_t* %XMM0.i413 to i8*
  %1716 = load i64, i64* %PC.i411
  %1717 = add i64 %1716, 5
  store i64 %1717, i64* %PC.i411
  %1718 = bitcast i8* %1715 to double*
  %1719 = load double, double* %1718, align 1
  %1720 = inttoptr i64 %1714 to double*
  store double %1719, double* %1720
  store %struct.Memory* %loadMem_40084f, %struct.Memory** %MEMORY
  %loadMem_400854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 33
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1723 to i64*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1725 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1724, i64 0, i64 0
  %YMM0.i409 = bitcast %union.VectorReg* %1725 to %"class.std::bitset"*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1726, i64 0, i64 3
  %XMM3.i410 = bitcast %union.VectorReg* %1727 to %union.vec128_t*
  %1728 = bitcast %"class.std::bitset"* %YMM0.i409 to i8*
  %1729 = bitcast %union.vec128_t* %XMM3.i410 to i8*
  %1730 = load i64, i64* %PC.i408
  %1731 = add i64 %1730, 3
  store i64 %1731, i64* %PC.i408
  %1732 = bitcast i8* %1729 to <2 x i32>*
  %1733 = load <2 x i32>, <2 x i32>* %1732, align 1
  %1734 = getelementptr inbounds i8, i8* %1729, i64 8
  %1735 = bitcast i8* %1734 to <2 x i32>*
  %1736 = load <2 x i32>, <2 x i32>* %1735, align 1
  %1737 = extractelement <2 x i32> %1733, i32 0
  %1738 = bitcast i8* %1728 to i32*
  store i32 %1737, i32* %1738, align 1
  %1739 = extractelement <2 x i32> %1733, i32 1
  %1740 = getelementptr inbounds i8, i8* %1728, i64 4
  %1741 = bitcast i8* %1740 to i32*
  store i32 %1739, i32* %1741, align 1
  %1742 = extractelement <2 x i32> %1736, i32 0
  %1743 = getelementptr inbounds i8, i8* %1728, i64 8
  %1744 = bitcast i8* %1743 to i32*
  store i32 %1742, i32* %1744, align 1
  %1745 = extractelement <2 x i32> %1736, i32 1
  %1746 = getelementptr inbounds i8, i8* %1728, i64 12
  %1747 = bitcast i8* %1746 to i32*
  store i32 %1745, i32* %1747, align 1
  store %struct.Memory* %loadMem_400854, %struct.Memory** %MEMORY
  %loadMem_400857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 33
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 15
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %1753 to i64*
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1755 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1754, i64 0, i64 1
  %XMM1.i407 = bitcast %union.VectorReg* %1755 to %union.vec128_t*
  %1756 = load i64, i64* %RBP.i406
  %1757 = sub i64 %1756, 104
  %1758 = bitcast %union.vec128_t* %XMM1.i407 to i8*
  %1759 = load i64, i64* %PC.i405
  %1760 = add i64 %1759, 5
  store i64 %1760, i64* %PC.i405
  %1761 = bitcast i8* %1758 to double*
  %1762 = load double, double* %1761, align 1
  %1763 = inttoptr i64 %1757 to double*
  store double %1762, double* %1763
  store %struct.Memory* %loadMem_400857, %struct.Memory** %MEMORY
  %loadMem_40085c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 33
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1768 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1767, i64 0, i64 1
  %YMM1.i403 = bitcast %union.VectorReg* %1768 to %"class.std::bitset"*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1769, i64 0, i64 4
  %XMM4.i404 = bitcast %union.VectorReg* %1770 to %union.vec128_t*
  %1771 = bitcast %"class.std::bitset"* %YMM1.i403 to i8*
  %1772 = bitcast %union.vec128_t* %XMM4.i404 to i8*
  %1773 = load i64, i64* %PC.i402
  %1774 = add i64 %1773, 3
  store i64 %1774, i64* %PC.i402
  %1775 = bitcast i8* %1772 to <2 x i32>*
  %1776 = load <2 x i32>, <2 x i32>* %1775, align 1
  %1777 = getelementptr inbounds i8, i8* %1772, i64 8
  %1778 = bitcast i8* %1777 to <2 x i32>*
  %1779 = load <2 x i32>, <2 x i32>* %1778, align 1
  %1780 = extractelement <2 x i32> %1776, i32 0
  %1781 = bitcast i8* %1771 to i32*
  store i32 %1780, i32* %1781, align 1
  %1782 = extractelement <2 x i32> %1776, i32 1
  %1783 = getelementptr inbounds i8, i8* %1771, i64 4
  %1784 = bitcast i8* %1783 to i32*
  store i32 %1782, i32* %1784, align 1
  %1785 = extractelement <2 x i32> %1779, i32 0
  %1786 = getelementptr inbounds i8, i8* %1771, i64 8
  %1787 = bitcast i8* %1786 to i32*
  store i32 %1785, i32* %1787, align 1
  %1788 = extractelement <2 x i32> %1779, i32 1
  %1789 = getelementptr inbounds i8, i8* %1771, i64 12
  %1790 = bitcast i8* %1789 to i32*
  store i32 %1788, i32* %1790, align 1
  store %struct.Memory* %loadMem_40085c, %struct.Memory** %MEMORY
  %loadMem_40085f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 15
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1798 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1797, i64 0, i64 2
  %XMM2.i401 = bitcast %union.VectorReg* %1798 to %union.vec128_t*
  %1799 = load i64, i64* %RBP.i400
  %1800 = sub i64 %1799, 112
  %1801 = bitcast %union.vec128_t* %XMM2.i401 to i8*
  %1802 = load i64, i64* %PC.i399
  %1803 = add i64 %1802, 5
  store i64 %1803, i64* %PC.i399
  %1804 = bitcast i8* %1801 to double*
  %1805 = load double, double* %1804, align 1
  %1806 = inttoptr i64 %1800 to double*
  store double %1805, double* %1806
  store %struct.Memory* %loadMem_40085f, %struct.Memory** %MEMORY
  %loadMem_400864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1811 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1810, i64 0, i64 2
  %YMM2.i397 = bitcast %union.VectorReg* %1811 to %"class.std::bitset"*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1813 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1812, i64 0, i64 5
  %XMM5.i398 = bitcast %union.VectorReg* %1813 to %union.vec128_t*
  %1814 = bitcast %"class.std::bitset"* %YMM2.i397 to i8*
  %1815 = bitcast %union.vec128_t* %XMM5.i398 to i8*
  %1816 = load i64, i64* %PC.i396
  %1817 = add i64 %1816, 3
  store i64 %1817, i64* %PC.i396
  %1818 = bitcast i8* %1815 to <2 x i32>*
  %1819 = load <2 x i32>, <2 x i32>* %1818, align 1
  %1820 = getelementptr inbounds i8, i8* %1815, i64 8
  %1821 = bitcast i8* %1820 to <2 x i32>*
  %1822 = load <2 x i32>, <2 x i32>* %1821, align 1
  %1823 = extractelement <2 x i32> %1819, i32 0
  %1824 = bitcast i8* %1814 to i32*
  store i32 %1823, i32* %1824, align 1
  %1825 = extractelement <2 x i32> %1819, i32 1
  %1826 = getelementptr inbounds i8, i8* %1814, i64 4
  %1827 = bitcast i8* %1826 to i32*
  store i32 %1825, i32* %1827, align 1
  %1828 = extractelement <2 x i32> %1822, i32 0
  %1829 = getelementptr inbounds i8, i8* %1814, i64 8
  %1830 = bitcast i8* %1829 to i32*
  store i32 %1828, i32* %1830, align 1
  %1831 = extractelement <2 x i32> %1822, i32 1
  %1832 = getelementptr inbounds i8, i8* %1814, i64 12
  %1833 = bitcast i8* %1832 to i32*
  store i32 %1831, i32* %1833, align 1
  store %struct.Memory* %loadMem_400864, %struct.Memory** %MEMORY
  %loadMem1_400867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 33
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1836 to i64*
  %1837 = load i64, i64* %PC.i395
  %1838 = add i64 %1837, 905
  %1839 = load i64, i64* %PC.i395
  %1840 = add i64 %1839, 5
  %1841 = load i64, i64* %PC.i395
  %1842 = add i64 %1841, 5
  store i64 %1842, i64* %PC.i395
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1844 = load i64, i64* %1843, align 8
  %1845 = add i64 %1844, -8
  %1846 = inttoptr i64 %1845 to i64*
  store i64 %1840, i64* %1846
  store i64 %1845, i64* %1843, align 8
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1838, i64* %1847, align 8
  store %struct.Memory* %loadMem1_400867, %struct.Memory** %MEMORY
  %loadMem2_400867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400867 = load i64, i64* %3
  %call2_400867 = call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %loadPC_400867, %struct.Memory* %loadMem2_400867)
  store %struct.Memory* %call2_400867, %struct.Memory** %MEMORY
  %loadMem_40086c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 33
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1852 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1851, i64 0, i64 1
  %YMM1.i394 = bitcast %union.VectorReg* %1852 to %"class.std::bitset"*
  %1853 = bitcast %"class.std::bitset"* %YMM1.i394 to i8*
  %1854 = load i64, i64* %PC.i393
  %1855 = add i64 %1854, 1508
  %1856 = load i64, i64* %PC.i393
  %1857 = add i64 %1856, 8
  store i64 %1857, i64* %PC.i393
  %1858 = inttoptr i64 %1855 to double*
  %1859 = load double, double* %1858
  %1860 = bitcast i8* %1853 to double*
  store double %1859, double* %1860, align 1
  %1861 = getelementptr inbounds i8, i8* %1853, i64 8
  %1862 = bitcast i8* %1861 to double*
  store double 0.000000e+00, double* %1862, align 1
  store %struct.Memory* %loadMem_40086c, %struct.Memory** %MEMORY
  %loadMem_400874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 5
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 15
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %RBP.i392
  %1873 = sub i64 %1872, 84
  %1874 = load i64, i64* %PC.i390
  %1875 = add i64 %1874, 4
  store i64 %1875, i64* %PC.i390
  %1876 = inttoptr i64 %1873 to i32*
  %1877 = load i32, i32* %1876
  %1878 = sext i32 %1877 to i64
  store i64 %1878, i64* %RCX.i391, align 8
  store %struct.Memory* %loadMem_400874, %struct.Memory** %MEMORY
  %loadMem_400878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 33
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1881 to i64*
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 5
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %1884 to i64*
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 11
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %RDI.i389 = bitcast %union.anon* %1887 to i64*
  %1888 = load i64, i64* %RCX.i388
  %1889 = mul i64 %1888, 4
  %1890 = add i64 %1889, 6300752
  %1891 = load i64, i64* %PC.i387
  %1892 = add i64 %1891, 7
  store i64 %1892, i64* %PC.i387
  %1893 = inttoptr i64 %1890 to i32*
  %1894 = load i32, i32* %1893
  %1895 = zext i32 %1894 to i64
  store i64 %1895, i64* %RDI.i389, align 8
  store %struct.Memory* %loadMem_400878, %struct.Memory** %MEMORY
  %loadMem_40087f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 15
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1903 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1902, i64 0, i64 2
  %YMM2.i386 = bitcast %union.VectorReg* %1903 to %"class.std::bitset"*
  %1904 = bitcast %"class.std::bitset"* %YMM2.i386 to i8*
  %1905 = load i64, i64* %RBP.i385
  %1906 = sub i64 %1905, 8
  %1907 = load i64, i64* %PC.i384
  %1908 = add i64 %1907, 5
  store i64 %1908, i64* %PC.i384
  %1909 = inttoptr i64 %1906 to double*
  %1910 = load double, double* %1909
  %1911 = bitcast i8* %1904 to double*
  store double %1910, double* %1911, align 1
  %1912 = getelementptr inbounds i8, i8* %1904, i64 8
  %1913 = bitcast i8* %1912 to double*
  store double 0.000000e+00, double* %1913, align 1
  store %struct.Memory* %loadMem_40087f, %struct.Memory** %MEMORY
  %loadMem_400884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 33
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1916 to i64*
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1918 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1917, i64 0, i64 2
  %YMM2.i382 = bitcast %union.VectorReg* %1918 to %"class.std::bitset"*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1920 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1919, i64 0, i64 1
  %XMM1.i383 = bitcast %union.VectorReg* %1920 to %union.vec128_t*
  %1921 = bitcast %"class.std::bitset"* %YMM2.i382 to i8*
  %1922 = bitcast %"class.std::bitset"* %YMM2.i382 to i8*
  %1923 = bitcast %union.vec128_t* %XMM1.i383 to i8*
  %1924 = load i64, i64* %PC.i381
  %1925 = add i64 %1924, 4
  store i64 %1925, i64* %PC.i381
  %1926 = bitcast i8* %1922 to double*
  %1927 = load double, double* %1926, align 1
  %1928 = getelementptr inbounds i8, i8* %1922, i64 8
  %1929 = bitcast i8* %1928 to i64*
  %1930 = load i64, i64* %1929, align 1
  %1931 = bitcast i8* %1923 to double*
  %1932 = load double, double* %1931, align 1
  %1933 = fsub double %1927, %1932
  %1934 = bitcast i8* %1921 to double*
  store double %1933, double* %1934, align 1
  %1935 = getelementptr inbounds i8, i8* %1921, i64 8
  %1936 = bitcast i8* %1935 to i64*
  store i64 %1930, i64* %1936, align 1
  store %struct.Memory* %loadMem_400884, %struct.Memory** %MEMORY
  %loadMem_400888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 33
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 15
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1944 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1943, i64 0, i64 1
  %YMM1.i380 = bitcast %union.VectorReg* %1944 to %"class.std::bitset"*
  %1945 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %1946 = load i64, i64* %RBP.i379
  %1947 = sub i64 %1946, 16
  %1948 = load i64, i64* %PC.i378
  %1949 = add i64 %1948, 5
  store i64 %1949, i64* %PC.i378
  %1950 = inttoptr i64 %1947 to double*
  %1951 = load double, double* %1950
  %1952 = bitcast i8* %1945 to double*
  store double %1951, double* %1952, align 1
  %1953 = getelementptr inbounds i8, i8* %1945, i64 8
  %1954 = bitcast i8* %1953 to double*
  store double 0.000000e+00, double* %1954, align 1
  store %struct.Memory* %loadMem_400888, %struct.Memory** %MEMORY
  %loadMem_40088d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 33
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1957 to i64*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 15
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1962 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1961, i64 0, i64 3
  %YMM3.i377 = bitcast %union.VectorReg* %1962 to %"class.std::bitset"*
  %1963 = bitcast %"class.std::bitset"* %YMM3.i377 to i8*
  %1964 = load i64, i64* %RBP.i376
  %1965 = sub i64 %1964, 24
  %1966 = load i64, i64* %PC.i375
  %1967 = add i64 %1966, 5
  store i64 %1967, i64* %PC.i375
  %1968 = inttoptr i64 %1965 to double*
  %1969 = load double, double* %1968
  %1970 = bitcast i8* %1963 to double*
  store double %1969, double* %1970, align 1
  %1971 = getelementptr inbounds i8, i8* %1963, i64 8
  %1972 = bitcast i8* %1971 to double*
  store double 0.000000e+00, double* %1972, align 1
  store %struct.Memory* %loadMem_40088d, %struct.Memory** %MEMORY
  %loadMem_400892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 15
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1979, i64 0, i64 0
  %XMM0.i374 = bitcast %union.VectorReg* %1980 to %union.vec128_t*
  %1981 = load i64, i64* %RBP.i373
  %1982 = sub i64 %1981, 120
  %1983 = bitcast %union.vec128_t* %XMM0.i374 to i8*
  %1984 = load i64, i64* %PC.i372
  %1985 = add i64 %1984, 5
  store i64 %1985, i64* %PC.i372
  %1986 = bitcast i8* %1983 to double*
  %1987 = load double, double* %1986, align 1
  %1988 = inttoptr i64 %1982 to double*
  store double %1987, double* %1988
  store %struct.Memory* %loadMem_400892, %struct.Memory** %MEMORY
  %loadMem_400897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1993 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1992, i64 0, i64 0
  %YMM0.i370 = bitcast %union.VectorReg* %1993 to %"class.std::bitset"*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1995 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1994, i64 0, i64 2
  %XMM2.i371 = bitcast %union.VectorReg* %1995 to %union.vec128_t*
  %1996 = bitcast %"class.std::bitset"* %YMM0.i370 to i8*
  %1997 = bitcast %union.vec128_t* %XMM2.i371 to i8*
  %1998 = load i64, i64* %PC.i369
  %1999 = add i64 %1998, 3
  store i64 %1999, i64* %PC.i369
  %2000 = bitcast i8* %1997 to <2 x i32>*
  %2001 = load <2 x i32>, <2 x i32>* %2000, align 1
  %2002 = getelementptr inbounds i8, i8* %1997, i64 8
  %2003 = bitcast i8* %2002 to <2 x i32>*
  %2004 = load <2 x i32>, <2 x i32>* %2003, align 1
  %2005 = extractelement <2 x i32> %2001, i32 0
  %2006 = bitcast i8* %1996 to i32*
  store i32 %2005, i32* %2006, align 1
  %2007 = extractelement <2 x i32> %2001, i32 1
  %2008 = getelementptr inbounds i8, i8* %1996, i64 4
  %2009 = bitcast i8* %2008 to i32*
  store i32 %2007, i32* %2009, align 1
  %2010 = extractelement <2 x i32> %2004, i32 0
  %2011 = getelementptr inbounds i8, i8* %1996, i64 8
  %2012 = bitcast i8* %2011 to i32*
  store i32 %2010, i32* %2012, align 1
  %2013 = extractelement <2 x i32> %2004, i32 1
  %2014 = getelementptr inbounds i8, i8* %1996, i64 12
  %2015 = bitcast i8* %2014 to i32*
  store i32 %2013, i32* %2015, align 1
  store %struct.Memory* %loadMem_400897, %struct.Memory** %MEMORY
  %loadMem_40089a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 33
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2020 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2019, i64 0, i64 2
  %YMM2.i367 = bitcast %union.VectorReg* %2020 to %"class.std::bitset"*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2022 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2021, i64 0, i64 3
  %XMM3.i368 = bitcast %union.VectorReg* %2022 to %union.vec128_t*
  %2023 = bitcast %"class.std::bitset"* %YMM2.i367 to i8*
  %2024 = bitcast %union.vec128_t* %XMM3.i368 to i8*
  %2025 = load i64, i64* %PC.i366
  %2026 = add i64 %2025, 3
  store i64 %2026, i64* %PC.i366
  %2027 = bitcast i8* %2024 to <2 x i32>*
  %2028 = load <2 x i32>, <2 x i32>* %2027, align 1
  %2029 = getelementptr inbounds i8, i8* %2024, i64 8
  %2030 = bitcast i8* %2029 to <2 x i32>*
  %2031 = load <2 x i32>, <2 x i32>* %2030, align 1
  %2032 = extractelement <2 x i32> %2028, i32 0
  %2033 = bitcast i8* %2023 to i32*
  store i32 %2032, i32* %2033, align 1
  %2034 = extractelement <2 x i32> %2028, i32 1
  %2035 = getelementptr inbounds i8, i8* %2023, i64 4
  %2036 = bitcast i8* %2035 to i32*
  store i32 %2034, i32* %2036, align 1
  %2037 = extractelement <2 x i32> %2031, i32 0
  %2038 = getelementptr inbounds i8, i8* %2023, i64 8
  %2039 = bitcast i8* %2038 to i32*
  store i32 %2037, i32* %2039, align 1
  %2040 = extractelement <2 x i32> %2031, i32 1
  %2041 = getelementptr inbounds i8, i8* %2023, i64 12
  %2042 = bitcast i8* %2041 to i32*
  store i32 %2040, i32* %2042, align 1
  store %struct.Memory* %loadMem_40089a, %struct.Memory** %MEMORY
  %loadMem1_40089d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2045 to i64*
  %2046 = load i64, i64* %PC.i365
  %2047 = add i64 %2046, 851
  %2048 = load i64, i64* %PC.i365
  %2049 = add i64 %2048, 5
  %2050 = load i64, i64* %PC.i365
  %2051 = add i64 %2050, 5
  store i64 %2051, i64* %PC.i365
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2053 = load i64, i64* %2052, align 8
  %2054 = add i64 %2053, -8
  %2055 = inttoptr i64 %2054 to i64*
  store i64 %2049, i64* %2055
  store i64 %2054, i64* %2052, align 8
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2047, i64* %2056, align 8
  store %struct.Memory* %loadMem1_40089d, %struct.Memory** %MEMORY
  %loadMem2_40089d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40089d = load i64, i64* %3
  %call2_40089d = call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %loadPC_40089d, %struct.Memory* %loadMem2_40089d)
  store %struct.Memory* %call2_40089d, %struct.Memory** %MEMORY
  %loadMem_4008a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 15
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2064 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2063, i64 0, i64 1
  %YMM1.i364 = bitcast %union.VectorReg* %2064 to %"class.std::bitset"*
  %2065 = bitcast %"class.std::bitset"* %YMM1.i364 to i8*
  %2066 = load i64, i64* %RBP.i363
  %2067 = sub i64 %2066, 112
  %2068 = load i64, i64* %PC.i362
  %2069 = add i64 %2068, 5
  store i64 %2069, i64* %PC.i362
  %2070 = inttoptr i64 %2067 to double*
  %2071 = load double, double* %2070
  %2072 = bitcast i8* %2065 to double*
  store double %2071, double* %2072, align 1
  %2073 = getelementptr inbounds i8, i8* %2065, i64 8
  %2074 = bitcast i8* %2073 to double*
  store double 0.000000e+00, double* %2074, align 1
  store %struct.Memory* %loadMem_4008a2, %struct.Memory** %MEMORY
  %loadMem_4008a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 15
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2082 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2081, i64 0, i64 0
  %XMM0.i361 = bitcast %union.VectorReg* %2082 to %union.vec128_t*
  %2083 = load i64, i64* %RBP.i360
  %2084 = sub i64 %2083, 128
  %2085 = bitcast %union.vec128_t* %XMM0.i361 to i8*
  %2086 = load i64, i64* %PC.i359
  %2087 = add i64 %2086, 5
  store i64 %2087, i64* %PC.i359
  %2088 = bitcast i8* %2085 to double*
  %2089 = load double, double* %2088, align 1
  %2090 = inttoptr i64 %2084 to double*
  store double %2089, double* %2090
  store %struct.Memory* %loadMem_4008a7, %struct.Memory** %MEMORY
  %loadMem_4008ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2095 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2094, i64 0, i64 0
  %YMM0.i357 = bitcast %union.VectorReg* %2095 to %"class.std::bitset"*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2097 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2096, i64 0, i64 1
  %XMM1.i358 = bitcast %union.VectorReg* %2097 to %union.vec128_t*
  %2098 = bitcast %"class.std::bitset"* %YMM0.i357 to i8*
  %2099 = bitcast %union.vec128_t* %XMM1.i358 to i8*
  %2100 = load i64, i64* %PC.i356
  %2101 = add i64 %2100, 3
  store i64 %2101, i64* %PC.i356
  %2102 = bitcast i8* %2099 to <2 x i32>*
  %2103 = load <2 x i32>, <2 x i32>* %2102, align 1
  %2104 = getelementptr inbounds i8, i8* %2099, i64 8
  %2105 = bitcast i8* %2104 to <2 x i32>*
  %2106 = load <2 x i32>, <2 x i32>* %2105, align 1
  %2107 = extractelement <2 x i32> %2103, i32 0
  %2108 = bitcast i8* %2098 to i32*
  store i32 %2107, i32* %2108, align 1
  %2109 = extractelement <2 x i32> %2103, i32 1
  %2110 = getelementptr inbounds i8, i8* %2098, i64 4
  %2111 = bitcast i8* %2110 to i32*
  store i32 %2109, i32* %2111, align 1
  %2112 = extractelement <2 x i32> %2106, i32 0
  %2113 = getelementptr inbounds i8, i8* %2098, i64 8
  %2114 = bitcast i8* %2113 to i32*
  store i32 %2112, i32* %2114, align 1
  %2115 = extractelement <2 x i32> %2106, i32 1
  %2116 = getelementptr inbounds i8, i8* %2098, i64 12
  %2117 = bitcast i8* %2116 to i32*
  store i32 %2115, i32* %2117, align 1
  store %struct.Memory* %loadMem_4008ac, %struct.Memory** %MEMORY
  %loadMem_4008af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 33
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2120 to i64*
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 15
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2125 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2124, i64 0, i64 1
  %YMM1.i355 = bitcast %union.VectorReg* %2125 to %"class.std::bitset"*
  %2126 = bitcast %"class.std::bitset"* %YMM1.i355 to i8*
  %2127 = load i64, i64* %RBP.i354
  %2128 = sub i64 %2127, 120
  %2129 = load i64, i64* %PC.i353
  %2130 = add i64 %2129, 5
  store i64 %2130, i64* %PC.i353
  %2131 = inttoptr i64 %2128 to double*
  %2132 = load double, double* %2131
  %2133 = bitcast i8* %2126 to double*
  store double %2132, double* %2133, align 1
  %2134 = getelementptr inbounds i8, i8* %2126, i64 8
  %2135 = bitcast i8* %2134 to double*
  store double 0.000000e+00, double* %2135, align 1
  store %struct.Memory* %loadMem_4008af, %struct.Memory** %MEMORY
  %loadMem_4008b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 15
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2143 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2142, i64 0, i64 2
  %YMM2.i352 = bitcast %union.VectorReg* %2143 to %"class.std::bitset"*
  %2144 = bitcast %"class.std::bitset"* %YMM2.i352 to i8*
  %2145 = load i64, i64* %RBP.i351
  %2146 = sub i64 %2145, 128
  %2147 = load i64, i64* %PC.i350
  %2148 = add i64 %2147, 5
  store i64 %2148, i64* %PC.i350
  %2149 = inttoptr i64 %2146 to double*
  %2150 = load double, double* %2149
  %2151 = bitcast i8* %2144 to double*
  store double %2150, double* %2151, align 1
  %2152 = getelementptr inbounds i8, i8* %2144, i64 8
  %2153 = bitcast i8* %2152 to double*
  store double 0.000000e+00, double* %2153, align 1
  store %struct.Memory* %loadMem_4008b4, %struct.Memory** %MEMORY
  %loadMem1_4008b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2156 to i64*
  %2157 = load i64, i64* %PC.i349
  %2158 = add i64 %2157, 1159
  %2159 = load i64, i64* %PC.i349
  %2160 = add i64 %2159, 5
  %2161 = load i64, i64* %PC.i349
  %2162 = add i64 %2161, 5
  store i64 %2162, i64* %PC.i349
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2164 = load i64, i64* %2163, align 8
  %2165 = add i64 %2164, -8
  %2166 = inttoptr i64 %2165 to i64*
  store i64 %2160, i64* %2166
  store i64 %2165, i64* %2163, align 8
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2158, i64* %2167, align 8
  store %struct.Memory* %loadMem1_4008b9, %struct.Memory** %MEMORY
  %loadMem2_4008b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008b9 = load i64, i64* %3
  %call2_4008b9 = call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %loadPC_4008b9, %struct.Memory* %loadMem2_4008b9)
  store %struct.Memory* %call2_4008b9, %struct.Memory** %MEMORY
  %loadMem_4008be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 33
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2171, i64 0, i64 1
  %YMM1.i348 = bitcast %union.VectorReg* %2172 to %"class.std::bitset"*
  %2173 = bitcast %"class.std::bitset"* %YMM1.i348 to i8*
  %2174 = load i64, i64* %PC.i347
  %2175 = add i64 %2174, 1426
  %2176 = load i64, i64* %PC.i347
  %2177 = add i64 %2176, 8
  store i64 %2177, i64* %PC.i347
  %2178 = inttoptr i64 %2175 to double*
  %2179 = load double, double* %2178
  %2180 = bitcast i8* %2173 to double*
  store double %2179, double* %2180, align 1
  %2181 = getelementptr inbounds i8, i8* %2173, i64 8
  %2182 = bitcast i8* %2181 to double*
  store double 0.000000e+00, double* %2182, align 1
  store %struct.Memory* %loadMem_4008be, %struct.Memory** %MEMORY
  %loadMem_4008c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 33
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2185 to i64*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 15
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2190 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2189, i64 0, i64 2
  %YMM2.i346 = bitcast %union.VectorReg* %2190 to %"class.std::bitset"*
  %2191 = bitcast %"class.std::bitset"* %YMM2.i346 to i8*
  %2192 = load i64, i64* %RBP.i345
  %2193 = sub i64 %2192, 48
  %2194 = load i64, i64* %PC.i344
  %2195 = add i64 %2194, 5
  store i64 %2195, i64* %PC.i344
  %2196 = inttoptr i64 %2193 to double*
  %2197 = load double, double* %2196
  %2198 = bitcast i8* %2191 to double*
  store double %2197, double* %2198, align 1
  %2199 = getelementptr inbounds i8, i8* %2191, i64 8
  %2200 = bitcast i8* %2199 to double*
  store double 0.000000e+00, double* %2200, align 1
  store %struct.Memory* %loadMem_4008c6, %struct.Memory** %MEMORY
  %loadMem_4008cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 5
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 15
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %2209 to i64*
  %2210 = load i64, i64* %RBP.i343
  %2211 = sub i64 %2210, 76
  %2212 = load i64, i64* %PC.i341
  %2213 = add i64 %2212, 4
  store i64 %2213, i64* %PC.i341
  %2214 = inttoptr i64 %2211 to i32*
  %2215 = load i32, i32* %2214
  %2216 = sext i32 %2215 to i64
  store i64 %2216, i64* %RCX.i342, align 8
  store %struct.Memory* %loadMem_4008cb, %struct.Memory** %MEMORY
  %loadMem_4008cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 33
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 5
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 11
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RDI.i340 = bitcast %union.anon* %2225 to i64*
  %2226 = load i64, i64* %RCX.i339
  %2227 = mul i64 %2226, 4
  %2228 = add i64 %2227, 6300752
  %2229 = load i64, i64* %PC.i338
  %2230 = add i64 %2229, 7
  store i64 %2230, i64* %PC.i338
  %2231 = inttoptr i64 %2228 to i32*
  %2232 = load i32, i32* %2231
  %2233 = zext i32 %2232 to i64
  store i64 %2233, i64* %RDI.i340, align 8
  store %struct.Memory* %loadMem_4008cf, %struct.Memory** %MEMORY
  %loadMem_4008d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 33
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 15
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2240, i64 0, i64 3
  %YMM3.i337 = bitcast %union.VectorReg* %2241 to %"class.std::bitset"*
  %2242 = bitcast %"class.std::bitset"* %YMM3.i337 to i8*
  %2243 = load i64, i64* %RBP.i336
  %2244 = sub i64 %2243, 8
  %2245 = load i64, i64* %PC.i335
  %2246 = add i64 %2245, 5
  store i64 %2246, i64* %PC.i335
  %2247 = inttoptr i64 %2244 to double*
  %2248 = load double, double* %2247
  %2249 = bitcast i8* %2242 to double*
  store double %2248, double* %2249, align 1
  %2250 = getelementptr inbounds i8, i8* %2242, i64 8
  %2251 = bitcast i8* %2250 to double*
  store double 0.000000e+00, double* %2251, align 1
  store %struct.Memory* %loadMem_4008d6, %struct.Memory** %MEMORY
  %loadMem_4008db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 15
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2258, i64 0, i64 4
  %YMM4.i334 = bitcast %union.VectorReg* %2259 to %"class.std::bitset"*
  %2260 = bitcast %"class.std::bitset"* %YMM4.i334 to i8*
  %2261 = load i64, i64* %RBP.i333
  %2262 = sub i64 %2261, 16
  %2263 = load i64, i64* %PC.i332
  %2264 = add i64 %2263, 5
  store i64 %2264, i64* %PC.i332
  %2265 = inttoptr i64 %2262 to double*
  %2266 = load double, double* %2265
  %2267 = bitcast i8* %2260 to double*
  store double %2266, double* %2267, align 1
  %2268 = getelementptr inbounds i8, i8* %2260, i64 8
  %2269 = bitcast i8* %2268 to double*
  store double 0.000000e+00, double* %2269, align 1
  store %struct.Memory* %loadMem_4008db, %struct.Memory** %MEMORY
  %loadMem_4008e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 33
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2274 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2273, i64 0, i64 4
  %YMM4.i330 = bitcast %union.VectorReg* %2274 to %"class.std::bitset"*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2276 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2275, i64 0, i64 1
  %XMM1.i331 = bitcast %union.VectorReg* %2276 to %union.vec128_t*
  %2277 = bitcast %"class.std::bitset"* %YMM4.i330 to i8*
  %2278 = bitcast %"class.std::bitset"* %YMM4.i330 to i8*
  %2279 = bitcast %union.vec128_t* %XMM1.i331 to i8*
  %2280 = load i64, i64* %PC.i329
  %2281 = add i64 %2280, 4
  store i64 %2281, i64* %PC.i329
  %2282 = bitcast i8* %2278 to double*
  %2283 = load double, double* %2282, align 1
  %2284 = getelementptr inbounds i8, i8* %2278, i64 8
  %2285 = bitcast i8* %2284 to i64*
  %2286 = load i64, i64* %2285, align 1
  %2287 = bitcast i8* %2279 to double*
  %2288 = load double, double* %2287, align 1
  %2289 = fsub double %2283, %2288
  %2290 = bitcast i8* %2277 to double*
  store double %2289, double* %2290, align 1
  %2291 = getelementptr inbounds i8, i8* %2277, i64 8
  %2292 = bitcast i8* %2291 to i64*
  store i64 %2286, i64* %2292, align 1
  store %struct.Memory* %loadMem_4008e0, %struct.Memory** %MEMORY
  %loadMem_4008e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 15
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2299, i64 0, i64 1
  %YMM1.i328 = bitcast %union.VectorReg* %2300 to %"class.std::bitset"*
  %2301 = bitcast %"class.std::bitset"* %YMM1.i328 to i8*
  %2302 = load i64, i64* %RBP.i327
  %2303 = sub i64 %2302, 24
  %2304 = load i64, i64* %PC.i326
  %2305 = add i64 %2304, 5
  store i64 %2305, i64* %PC.i326
  %2306 = inttoptr i64 %2303 to double*
  %2307 = load double, double* %2306
  %2308 = bitcast i8* %2301 to double*
  store double %2307, double* %2308, align 1
  %2309 = getelementptr inbounds i8, i8* %2301, i64 8
  %2310 = bitcast i8* %2309 to double*
  store double 0.000000e+00, double* %2310, align 1
  store %struct.Memory* %loadMem_4008e4, %struct.Memory** %MEMORY
  %loadMem_4008e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 33
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 15
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2318 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2317, i64 0, i64 0
  %XMM0.i325 = bitcast %union.VectorReg* %2318 to %union.vec128_t*
  %2319 = load i64, i64* %RBP.i324
  %2320 = sub i64 %2319, 136
  %2321 = bitcast %union.vec128_t* %XMM0.i325 to i8*
  %2322 = load i64, i64* %PC.i323
  %2323 = add i64 %2322, 8
  store i64 %2323, i64* %PC.i323
  %2324 = bitcast i8* %2321 to double*
  %2325 = load double, double* %2324, align 1
  %2326 = inttoptr i64 %2320 to double*
  store double %2325, double* %2326
  store %struct.Memory* %loadMem_4008e9, %struct.Memory** %MEMORY
  %loadMem_4008f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2331 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2330, i64 0, i64 0
  %YMM0.i321 = bitcast %union.VectorReg* %2331 to %"class.std::bitset"*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2332, i64 0, i64 3
  %XMM3.i322 = bitcast %union.VectorReg* %2333 to %union.vec128_t*
  %2334 = bitcast %"class.std::bitset"* %YMM0.i321 to i8*
  %2335 = bitcast %union.vec128_t* %XMM3.i322 to i8*
  %2336 = load i64, i64* %PC.i320
  %2337 = add i64 %2336, 3
  store i64 %2337, i64* %PC.i320
  %2338 = bitcast i8* %2335 to <2 x i32>*
  %2339 = load <2 x i32>, <2 x i32>* %2338, align 1
  %2340 = getelementptr inbounds i8, i8* %2335, i64 8
  %2341 = bitcast i8* %2340 to <2 x i32>*
  %2342 = load <2 x i32>, <2 x i32>* %2341, align 1
  %2343 = extractelement <2 x i32> %2339, i32 0
  %2344 = bitcast i8* %2334 to i32*
  store i32 %2343, i32* %2344, align 1
  %2345 = extractelement <2 x i32> %2339, i32 1
  %2346 = getelementptr inbounds i8, i8* %2334, i64 4
  %2347 = bitcast i8* %2346 to i32*
  store i32 %2345, i32* %2347, align 1
  %2348 = extractelement <2 x i32> %2342, i32 0
  %2349 = getelementptr inbounds i8, i8* %2334, i64 8
  %2350 = bitcast i8* %2349 to i32*
  store i32 %2348, i32* %2350, align 1
  %2351 = extractelement <2 x i32> %2342, i32 1
  %2352 = getelementptr inbounds i8, i8* %2334, i64 12
  %2353 = bitcast i8* %2352 to i32*
  store i32 %2351, i32* %2353, align 1
  store %struct.Memory* %loadMem_4008f1, %struct.Memory** %MEMORY
  %loadMem_4008f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 33
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2356 to i64*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 15
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2361 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2360, i64 0, i64 1
  %XMM1.i319 = bitcast %union.VectorReg* %2361 to %union.vec128_t*
  %2362 = load i64, i64* %RBP.i318
  %2363 = sub i64 %2362, 144
  %2364 = bitcast %union.vec128_t* %XMM1.i319 to i8*
  %2365 = load i64, i64* %PC.i317
  %2366 = add i64 %2365, 8
  store i64 %2366, i64* %PC.i317
  %2367 = bitcast i8* %2364 to double*
  %2368 = load double, double* %2367, align 1
  %2369 = inttoptr i64 %2363 to double*
  store double %2368, double* %2369
  store %struct.Memory* %loadMem_4008f4, %struct.Memory** %MEMORY
  %loadMem_4008fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 33
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %2372 to i64*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2374 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2373, i64 0, i64 1
  %YMM1.i315 = bitcast %union.VectorReg* %2374 to %"class.std::bitset"*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2376 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2375, i64 0, i64 4
  %XMM4.i316 = bitcast %union.VectorReg* %2376 to %union.vec128_t*
  %2377 = bitcast %"class.std::bitset"* %YMM1.i315 to i8*
  %2378 = bitcast %union.vec128_t* %XMM4.i316 to i8*
  %2379 = load i64, i64* %PC.i314
  %2380 = add i64 %2379, 3
  store i64 %2380, i64* %PC.i314
  %2381 = bitcast i8* %2378 to <2 x i32>*
  %2382 = load <2 x i32>, <2 x i32>* %2381, align 1
  %2383 = getelementptr inbounds i8, i8* %2378, i64 8
  %2384 = bitcast i8* %2383 to <2 x i32>*
  %2385 = load <2 x i32>, <2 x i32>* %2384, align 1
  %2386 = extractelement <2 x i32> %2382, i32 0
  %2387 = bitcast i8* %2377 to i32*
  store i32 %2386, i32* %2387, align 1
  %2388 = extractelement <2 x i32> %2382, i32 1
  %2389 = getelementptr inbounds i8, i8* %2377, i64 4
  %2390 = bitcast i8* %2389 to i32*
  store i32 %2388, i32* %2390, align 1
  %2391 = extractelement <2 x i32> %2385, i32 0
  %2392 = getelementptr inbounds i8, i8* %2377, i64 8
  %2393 = bitcast i8* %2392 to i32*
  store i32 %2391, i32* %2393, align 1
  %2394 = extractelement <2 x i32> %2385, i32 1
  %2395 = getelementptr inbounds i8, i8* %2377, i64 12
  %2396 = bitcast i8* %2395 to i32*
  store i32 %2394, i32* %2396, align 1
  store %struct.Memory* %loadMem_4008fc, %struct.Memory** %MEMORY
  %loadMem_4008ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 15
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2404 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2403, i64 0, i64 3
  %YMM3.i313 = bitcast %union.VectorReg* %2404 to %"class.std::bitset"*
  %2405 = bitcast %"class.std::bitset"* %YMM3.i313 to i8*
  %2406 = load i64, i64* %RBP.i312
  %2407 = sub i64 %2406, 144
  %2408 = load i64, i64* %PC.i311
  %2409 = add i64 %2408, 8
  store i64 %2409, i64* %PC.i311
  %2410 = inttoptr i64 %2407 to double*
  %2411 = load double, double* %2410
  %2412 = bitcast i8* %2405 to double*
  store double %2411, double* %2412, align 1
  %2413 = getelementptr inbounds i8, i8* %2405, i64 8
  %2414 = bitcast i8* %2413 to double*
  store double 0.000000e+00, double* %2414, align 1
  store %struct.Memory* %loadMem_4008ff, %struct.Memory** %MEMORY
  %loadMem_400907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 33
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 15
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %2420 to i64*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2422 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2421, i64 0, i64 2
  %XMM2.i310 = bitcast %union.VectorReg* %2422 to %union.vec128_t*
  %2423 = load i64, i64* %RBP.i309
  %2424 = sub i64 %2423, 152
  %2425 = bitcast %union.vec128_t* %XMM2.i310 to i8*
  %2426 = load i64, i64* %PC.i308
  %2427 = add i64 %2426, 8
  store i64 %2427, i64* %PC.i308
  %2428 = bitcast i8* %2425 to double*
  %2429 = load double, double* %2428, align 1
  %2430 = inttoptr i64 %2424 to double*
  store double %2429, double* %2430
  store %struct.Memory* %loadMem_400907, %struct.Memory** %MEMORY
  %loadMem_40090f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2435 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2434, i64 0, i64 2
  %YMM2.i306 = bitcast %union.VectorReg* %2435 to %"class.std::bitset"*
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2437 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2436, i64 0, i64 3
  %XMM3.i307 = bitcast %union.VectorReg* %2437 to %union.vec128_t*
  %2438 = bitcast %"class.std::bitset"* %YMM2.i306 to i8*
  %2439 = bitcast %union.vec128_t* %XMM3.i307 to i8*
  %2440 = load i64, i64* %PC.i305
  %2441 = add i64 %2440, 3
  store i64 %2441, i64* %PC.i305
  %2442 = bitcast i8* %2439 to <2 x i32>*
  %2443 = load <2 x i32>, <2 x i32>* %2442, align 1
  %2444 = getelementptr inbounds i8, i8* %2439, i64 8
  %2445 = bitcast i8* %2444 to <2 x i32>*
  %2446 = load <2 x i32>, <2 x i32>* %2445, align 1
  %2447 = extractelement <2 x i32> %2443, i32 0
  %2448 = bitcast i8* %2438 to i32*
  store i32 %2447, i32* %2448, align 1
  %2449 = extractelement <2 x i32> %2443, i32 1
  %2450 = getelementptr inbounds i8, i8* %2438, i64 4
  %2451 = bitcast i8* %2450 to i32*
  store i32 %2449, i32* %2451, align 1
  %2452 = extractelement <2 x i32> %2446, i32 0
  %2453 = getelementptr inbounds i8, i8* %2438, i64 8
  %2454 = bitcast i8* %2453 to i32*
  store i32 %2452, i32* %2454, align 1
  %2455 = extractelement <2 x i32> %2446, i32 1
  %2456 = getelementptr inbounds i8, i8* %2438, i64 12
  %2457 = bitcast i8* %2456 to i32*
  store i32 %2455, i32* %2457, align 1
  store %struct.Memory* %loadMem_40090f, %struct.Memory** %MEMORY
  %loadMem1_400912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 33
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2460 to i64*
  %2461 = load i64, i64* %PC.i304
  %2462 = add i64 %2461, 734
  %2463 = load i64, i64* %PC.i304
  %2464 = add i64 %2463, 5
  %2465 = load i64, i64* %PC.i304
  %2466 = add i64 %2465, 5
  store i64 %2466, i64* %PC.i304
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2468 = load i64, i64* %2467, align 8
  %2469 = add i64 %2468, -8
  %2470 = inttoptr i64 %2469 to i64*
  store i64 %2464, i64* %2470
  store i64 %2469, i64* %2467, align 8
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2462, i64* %2471, align 8
  store %struct.Memory* %loadMem1_400912, %struct.Memory** %MEMORY
  %loadMem2_400912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400912 = load i64, i64* %3
  %call2_400912 = call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %loadPC_400912, %struct.Memory* %loadMem2_400912)
  store %struct.Memory* %call2_400912, %struct.Memory** %MEMORY
  %loadMem_400917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2476 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2475, i64 0, i64 1
  %YMM1.i303 = bitcast %union.VectorReg* %2476 to %"class.std::bitset"*
  %2477 = bitcast %"class.std::bitset"* %YMM1.i303 to i8*
  %2478 = load i64, i64* %PC.i302
  %2479 = add i64 %2478, 1337
  %2480 = load i64, i64* %PC.i302
  %2481 = add i64 %2480, 8
  store i64 %2481, i64* %PC.i302
  %2482 = inttoptr i64 %2479 to double*
  %2483 = load double, double* %2482
  %2484 = bitcast i8* %2477 to double*
  store double %2483, double* %2484, align 1
  %2485 = getelementptr inbounds i8, i8* %2477, i64 8
  %2486 = bitcast i8* %2485 to double*
  store double 0.000000e+00, double* %2486, align 1
  store %struct.Memory* %loadMem_400917, %struct.Memory** %MEMORY
  %loadMem_40091f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 5
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 15
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RBP.i301
  %2497 = sub i64 %2496, 88
  %2498 = load i64, i64* %PC.i299
  %2499 = add i64 %2498, 4
  store i64 %2499, i64* %PC.i299
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500
  %2502 = sext i32 %2501 to i64
  store i64 %2502, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_40091f, %struct.Memory** %MEMORY
  %loadMem_400923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 33
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 5
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 11
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RDI.i298 = bitcast %union.anon* %2511 to i64*
  %2512 = load i64, i64* %RCX.i297
  %2513 = mul i64 %2512, 4
  %2514 = add i64 %2513, 6300752
  %2515 = load i64, i64* %PC.i296
  %2516 = add i64 %2515, 7
  store i64 %2516, i64* %PC.i296
  %2517 = inttoptr i64 %2514 to i32*
  %2518 = load i32, i32* %2517
  %2519 = zext i32 %2518 to i64
  store i64 %2519, i64* %RDI.i298, align 8
  store %struct.Memory* %loadMem_400923, %struct.Memory** %MEMORY
  %loadMem_40092a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 33
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 15
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2525 to i64*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2527 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2526, i64 0, i64 2
  %YMM2.i295 = bitcast %union.VectorReg* %2527 to %"class.std::bitset"*
  %2528 = bitcast %"class.std::bitset"* %YMM2.i295 to i8*
  %2529 = load i64, i64* %RBP.i294
  %2530 = sub i64 %2529, 8
  %2531 = load i64, i64* %PC.i293
  %2532 = add i64 %2531, 5
  store i64 %2532, i64* %PC.i293
  %2533 = inttoptr i64 %2530 to double*
  %2534 = load double, double* %2533
  %2535 = bitcast i8* %2528 to double*
  store double %2534, double* %2535, align 1
  %2536 = getelementptr inbounds i8, i8* %2528, i64 8
  %2537 = bitcast i8* %2536 to double*
  store double 0.000000e+00, double* %2537, align 1
  store %struct.Memory* %loadMem_40092a, %struct.Memory** %MEMORY
  %loadMem_40092f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 33
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2540 to i64*
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2542 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2541, i64 0, i64 2
  %YMM2.i291 = bitcast %union.VectorReg* %2542 to %"class.std::bitset"*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2543, i64 0, i64 1
  %XMM1.i292 = bitcast %union.VectorReg* %2544 to %union.vec128_t*
  %2545 = bitcast %"class.std::bitset"* %YMM2.i291 to i8*
  %2546 = bitcast %"class.std::bitset"* %YMM2.i291 to i8*
  %2547 = bitcast %union.vec128_t* %XMM1.i292 to i8*
  %2548 = load i64, i64* %PC.i290
  %2549 = add i64 %2548, 4
  store i64 %2549, i64* %PC.i290
  %2550 = bitcast i8* %2546 to double*
  %2551 = load double, double* %2550, align 1
  %2552 = getelementptr inbounds i8, i8* %2546, i64 8
  %2553 = bitcast i8* %2552 to i64*
  %2554 = load i64, i64* %2553, align 1
  %2555 = bitcast i8* %2547 to double*
  %2556 = load double, double* %2555, align 1
  %2557 = fsub double %2551, %2556
  %2558 = bitcast i8* %2545 to double*
  store double %2557, double* %2558, align 1
  %2559 = getelementptr inbounds i8, i8* %2545, i64 8
  %2560 = bitcast i8* %2559 to i64*
  store i64 %2554, i64* %2560, align 1
  store %struct.Memory* %loadMem_40092f, %struct.Memory** %MEMORY
  %loadMem_400933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 15
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2568 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2567, i64 0, i64 3
  %YMM3.i289 = bitcast %union.VectorReg* %2568 to %"class.std::bitset"*
  %2569 = bitcast %"class.std::bitset"* %YMM3.i289 to i8*
  %2570 = load i64, i64* %RBP.i288
  %2571 = sub i64 %2570, 16
  %2572 = load i64, i64* %PC.i287
  %2573 = add i64 %2572, 5
  store i64 %2573, i64* %PC.i287
  %2574 = inttoptr i64 %2571 to double*
  %2575 = load double, double* %2574
  %2576 = bitcast i8* %2569 to double*
  store double %2575, double* %2576, align 1
  %2577 = getelementptr inbounds i8, i8* %2569, i64 8
  %2578 = bitcast i8* %2577 to double*
  store double 0.000000e+00, double* %2578, align 1
  store %struct.Memory* %loadMem_400933, %struct.Memory** %MEMORY
  %loadMem_400938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 33
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2581 to i64*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2583 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2582, i64 0, i64 3
  %YMM3.i285 = bitcast %union.VectorReg* %2583 to %"class.std::bitset"*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2585 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2584, i64 0, i64 1
  %XMM1.i286 = bitcast %union.VectorReg* %2585 to %union.vec128_t*
  %2586 = bitcast %"class.std::bitset"* %YMM3.i285 to i8*
  %2587 = bitcast %"class.std::bitset"* %YMM3.i285 to i8*
  %2588 = bitcast %union.vec128_t* %XMM1.i286 to i8*
  %2589 = load i64, i64* %PC.i284
  %2590 = add i64 %2589, 4
  store i64 %2590, i64* %PC.i284
  %2591 = bitcast i8* %2587 to double*
  %2592 = load double, double* %2591, align 1
  %2593 = getelementptr inbounds i8, i8* %2587, i64 8
  %2594 = bitcast i8* %2593 to i64*
  %2595 = load i64, i64* %2594, align 1
  %2596 = bitcast i8* %2588 to double*
  %2597 = load double, double* %2596, align 1
  %2598 = fsub double %2592, %2597
  %2599 = bitcast i8* %2586 to double*
  store double %2598, double* %2599, align 1
  %2600 = getelementptr inbounds i8, i8* %2586, i64 8
  %2601 = bitcast i8* %2600 to i64*
  store i64 %2595, i64* %2601, align 1
  store %struct.Memory* %loadMem_400938, %struct.Memory** %MEMORY
  %loadMem_40093c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 33
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2604 to i64*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 15
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2609 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2608, i64 0, i64 1
  %YMM1.i283 = bitcast %union.VectorReg* %2609 to %"class.std::bitset"*
  %2610 = bitcast %"class.std::bitset"* %YMM1.i283 to i8*
  %2611 = load i64, i64* %RBP.i282
  %2612 = sub i64 %2611, 24
  %2613 = load i64, i64* %PC.i281
  %2614 = add i64 %2613, 5
  store i64 %2614, i64* %PC.i281
  %2615 = inttoptr i64 %2612 to double*
  %2616 = load double, double* %2615
  %2617 = bitcast i8* %2610 to double*
  store double %2616, double* %2617, align 1
  %2618 = getelementptr inbounds i8, i8* %2610, i64 8
  %2619 = bitcast i8* %2618 to double*
  store double 0.000000e+00, double* %2619, align 1
  store %struct.Memory* %loadMem_40093c, %struct.Memory** %MEMORY
  %loadMem_400941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 33
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 15
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2627 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2626, i64 0, i64 0
  %XMM0.i280 = bitcast %union.VectorReg* %2627 to %union.vec128_t*
  %2628 = load i64, i64* %RBP.i279
  %2629 = sub i64 %2628, 160
  %2630 = bitcast %union.vec128_t* %XMM0.i280 to i8*
  %2631 = load i64, i64* %PC.i278
  %2632 = add i64 %2631, 8
  store i64 %2632, i64* %PC.i278
  %2633 = bitcast i8* %2630 to double*
  %2634 = load double, double* %2633, align 1
  %2635 = inttoptr i64 %2629 to double*
  store double %2634, double* %2635
  store %struct.Memory* %loadMem_400941, %struct.Memory** %MEMORY
  %loadMem_400949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2639, i64 0, i64 0
  %YMM0.i276 = bitcast %union.VectorReg* %2640 to %"class.std::bitset"*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2642 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2641, i64 0, i64 2
  %XMM2.i277 = bitcast %union.VectorReg* %2642 to %union.vec128_t*
  %2643 = bitcast %"class.std::bitset"* %YMM0.i276 to i8*
  %2644 = bitcast %union.vec128_t* %XMM2.i277 to i8*
  %2645 = load i64, i64* %PC.i275
  %2646 = add i64 %2645, 3
  store i64 %2646, i64* %PC.i275
  %2647 = bitcast i8* %2644 to <2 x i32>*
  %2648 = load <2 x i32>, <2 x i32>* %2647, align 1
  %2649 = getelementptr inbounds i8, i8* %2644, i64 8
  %2650 = bitcast i8* %2649 to <2 x i32>*
  %2651 = load <2 x i32>, <2 x i32>* %2650, align 1
  %2652 = extractelement <2 x i32> %2648, i32 0
  %2653 = bitcast i8* %2643 to i32*
  store i32 %2652, i32* %2653, align 1
  %2654 = extractelement <2 x i32> %2648, i32 1
  %2655 = getelementptr inbounds i8, i8* %2643, i64 4
  %2656 = bitcast i8* %2655 to i32*
  store i32 %2654, i32* %2656, align 1
  %2657 = extractelement <2 x i32> %2651, i32 0
  %2658 = getelementptr inbounds i8, i8* %2643, i64 8
  %2659 = bitcast i8* %2658 to i32*
  store i32 %2657, i32* %2659, align 1
  %2660 = extractelement <2 x i32> %2651, i32 1
  %2661 = getelementptr inbounds i8, i8* %2643, i64 12
  %2662 = bitcast i8* %2661 to i32*
  store i32 %2660, i32* %2662, align 1
  store %struct.Memory* %loadMem_400949, %struct.Memory** %MEMORY
  %loadMem_40094c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 15
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2669, i64 0, i64 1
  %XMM1.i274 = bitcast %union.VectorReg* %2670 to %union.vec128_t*
  %2671 = load i64, i64* %RBP.i273
  %2672 = sub i64 %2671, 168
  %2673 = bitcast %union.vec128_t* %XMM1.i274 to i8*
  %2674 = load i64, i64* %PC.i272
  %2675 = add i64 %2674, 8
  store i64 %2675, i64* %PC.i272
  %2676 = bitcast i8* %2673 to double*
  %2677 = load double, double* %2676, align 1
  %2678 = inttoptr i64 %2672 to double*
  store double %2677, double* %2678
  store %struct.Memory* %loadMem_40094c, %struct.Memory** %MEMORY
  %loadMem_400954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2683 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2682, i64 0, i64 1
  %YMM1.i270 = bitcast %union.VectorReg* %2683 to %"class.std::bitset"*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2684, i64 0, i64 3
  %XMM3.i271 = bitcast %union.VectorReg* %2685 to %union.vec128_t*
  %2686 = bitcast %"class.std::bitset"* %YMM1.i270 to i8*
  %2687 = bitcast %union.vec128_t* %XMM3.i271 to i8*
  %2688 = load i64, i64* %PC.i269
  %2689 = add i64 %2688, 3
  store i64 %2689, i64* %PC.i269
  %2690 = bitcast i8* %2687 to <2 x i32>*
  %2691 = load <2 x i32>, <2 x i32>* %2690, align 1
  %2692 = getelementptr inbounds i8, i8* %2687, i64 8
  %2693 = bitcast i8* %2692 to <2 x i32>*
  %2694 = load <2 x i32>, <2 x i32>* %2693, align 1
  %2695 = extractelement <2 x i32> %2691, i32 0
  %2696 = bitcast i8* %2686 to i32*
  store i32 %2695, i32* %2696, align 1
  %2697 = extractelement <2 x i32> %2691, i32 1
  %2698 = getelementptr inbounds i8, i8* %2686, i64 4
  %2699 = bitcast i8* %2698 to i32*
  store i32 %2697, i32* %2699, align 1
  %2700 = extractelement <2 x i32> %2694, i32 0
  %2701 = getelementptr inbounds i8, i8* %2686, i64 8
  %2702 = bitcast i8* %2701 to i32*
  store i32 %2700, i32* %2702, align 1
  %2703 = extractelement <2 x i32> %2694, i32 1
  %2704 = getelementptr inbounds i8, i8* %2686, i64 12
  %2705 = bitcast i8* %2704 to i32*
  store i32 %2703, i32* %2705, align 1
  store %struct.Memory* %loadMem_400954, %struct.Memory** %MEMORY
  %loadMem_400957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 33
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 15
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %2711 to i64*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2713 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2712, i64 0, i64 2
  %YMM2.i268 = bitcast %union.VectorReg* %2713 to %"class.std::bitset"*
  %2714 = bitcast %"class.std::bitset"* %YMM2.i268 to i8*
  %2715 = load i64, i64* %RBP.i267
  %2716 = sub i64 %2715, 168
  %2717 = load i64, i64* %PC.i266
  %2718 = add i64 %2717, 8
  store i64 %2718, i64* %PC.i266
  %2719 = inttoptr i64 %2716 to double*
  %2720 = load double, double* %2719
  %2721 = bitcast i8* %2714 to double*
  store double %2720, double* %2721, align 1
  %2722 = getelementptr inbounds i8, i8* %2714, i64 8
  %2723 = bitcast i8* %2722 to double*
  store double 0.000000e+00, double* %2723, align 1
  store %struct.Memory* %loadMem_400957, %struct.Memory** %MEMORY
  %loadMem1_40095f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %2726 to i64*
  %2727 = load i64, i64* %PC.i265
  %2728 = add i64 %2727, 657
  %2729 = load i64, i64* %PC.i265
  %2730 = add i64 %2729, 5
  %2731 = load i64, i64* %PC.i265
  %2732 = add i64 %2731, 5
  store i64 %2732, i64* %PC.i265
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2734 = load i64, i64* %2733, align 8
  %2735 = add i64 %2734, -8
  %2736 = inttoptr i64 %2735 to i64*
  store i64 %2730, i64* %2736
  store i64 %2735, i64* %2733, align 8
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2728, i64* %2737, align 8
  store %struct.Memory* %loadMem1_40095f, %struct.Memory** %MEMORY
  %loadMem2_40095f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40095f = load i64, i64* %3
  %call2_40095f = call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %loadPC_40095f, %struct.Memory* %loadMem2_40095f)
  store %struct.Memory* %call2_40095f, %struct.Memory** %MEMORY
  %loadMem_400964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 15
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %2743 to i64*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2744, i64 0, i64 1
  %YMM1.i264 = bitcast %union.VectorReg* %2745 to %"class.std::bitset"*
  %2746 = bitcast %"class.std::bitset"* %YMM1.i264 to i8*
  %2747 = load i64, i64* %RBP.i263
  %2748 = sub i64 %2747, 152
  %2749 = load i64, i64* %PC.i262
  %2750 = add i64 %2749, 8
  store i64 %2750, i64* %PC.i262
  %2751 = inttoptr i64 %2748 to double*
  %2752 = load double, double* %2751
  %2753 = bitcast i8* %2746 to double*
  store double %2752, double* %2753, align 1
  %2754 = getelementptr inbounds i8, i8* %2746, i64 8
  %2755 = bitcast i8* %2754 to double*
  store double 0.000000e+00, double* %2755, align 1
  store %struct.Memory* %loadMem_400964, %struct.Memory** %MEMORY
  %loadMem_40096c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 15
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2763 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2762, i64 0, i64 0
  %XMM0.i261 = bitcast %union.VectorReg* %2763 to %union.vec128_t*
  %2764 = load i64, i64* %RBP.i260
  %2765 = sub i64 %2764, 176
  %2766 = bitcast %union.vec128_t* %XMM0.i261 to i8*
  %2767 = load i64, i64* %PC.i259
  %2768 = add i64 %2767, 8
  store i64 %2768, i64* %PC.i259
  %2769 = bitcast i8* %2766 to double*
  %2770 = load double, double* %2769, align 1
  %2771 = inttoptr i64 %2765 to double*
  store double %2770, double* %2771
  store %struct.Memory* %loadMem_40096c, %struct.Memory** %MEMORY
  %loadMem_400974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 33
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2774 to i64*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2776 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2775, i64 0, i64 0
  %YMM0.i257 = bitcast %union.VectorReg* %2776 to %"class.std::bitset"*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2778 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2777, i64 0, i64 1
  %XMM1.i258 = bitcast %union.VectorReg* %2778 to %union.vec128_t*
  %2779 = bitcast %"class.std::bitset"* %YMM0.i257 to i8*
  %2780 = bitcast %union.vec128_t* %XMM1.i258 to i8*
  %2781 = load i64, i64* %PC.i256
  %2782 = add i64 %2781, 3
  store i64 %2782, i64* %PC.i256
  %2783 = bitcast i8* %2780 to <2 x i32>*
  %2784 = load <2 x i32>, <2 x i32>* %2783, align 1
  %2785 = getelementptr inbounds i8, i8* %2780, i64 8
  %2786 = bitcast i8* %2785 to <2 x i32>*
  %2787 = load <2 x i32>, <2 x i32>* %2786, align 1
  %2788 = extractelement <2 x i32> %2784, i32 0
  %2789 = bitcast i8* %2779 to i32*
  store i32 %2788, i32* %2789, align 1
  %2790 = extractelement <2 x i32> %2784, i32 1
  %2791 = getelementptr inbounds i8, i8* %2779, i64 4
  %2792 = bitcast i8* %2791 to i32*
  store i32 %2790, i32* %2792, align 1
  %2793 = extractelement <2 x i32> %2787, i32 0
  %2794 = getelementptr inbounds i8, i8* %2779, i64 8
  %2795 = bitcast i8* %2794 to i32*
  store i32 %2793, i32* %2795, align 1
  %2796 = extractelement <2 x i32> %2787, i32 1
  %2797 = getelementptr inbounds i8, i8* %2779, i64 12
  %2798 = bitcast i8* %2797 to i32*
  store i32 %2796, i32* %2798, align 1
  store %struct.Memory* %loadMem_400974, %struct.Memory** %MEMORY
  %loadMem_400977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 33
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 15
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %2804 to i64*
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2806 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2805, i64 0, i64 1
  %YMM1.i255 = bitcast %union.VectorReg* %2806 to %"class.std::bitset"*
  %2807 = bitcast %"class.std::bitset"* %YMM1.i255 to i8*
  %2808 = load i64, i64* %RBP.i254
  %2809 = sub i64 %2808, 160
  %2810 = load i64, i64* %PC.i253
  %2811 = add i64 %2810, 8
  store i64 %2811, i64* %PC.i253
  %2812 = inttoptr i64 %2809 to double*
  %2813 = load double, double* %2812
  %2814 = bitcast i8* %2807 to double*
  store double %2813, double* %2814, align 1
  %2815 = getelementptr inbounds i8, i8* %2807, i64 8
  %2816 = bitcast i8* %2815 to double*
  store double 0.000000e+00, double* %2816, align 1
  store %struct.Memory* %loadMem_400977, %struct.Memory** %MEMORY
  %loadMem_40097f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 33
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2819 to i64*
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 15
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2823, i64 0, i64 2
  %YMM2.i252 = bitcast %union.VectorReg* %2824 to %"class.std::bitset"*
  %2825 = bitcast %"class.std::bitset"* %YMM2.i252 to i8*
  %2826 = load i64, i64* %RBP.i251
  %2827 = sub i64 %2826, 176
  %2828 = load i64, i64* %PC.i250
  %2829 = add i64 %2828, 8
  store i64 %2829, i64* %PC.i250
  %2830 = inttoptr i64 %2827 to double*
  %2831 = load double, double* %2830
  %2832 = bitcast i8* %2825 to double*
  store double %2831, double* %2832, align 1
  %2833 = getelementptr inbounds i8, i8* %2825, i64 8
  %2834 = bitcast i8* %2833 to double*
  store double 0.000000e+00, double* %2834, align 1
  store %struct.Memory* %loadMem_40097f, %struct.Memory** %MEMORY
  %loadMem1_400987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 33
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2837 to i64*
  %2838 = load i64, i64* %PC.i249
  %2839 = add i64 %2838, 953
  %2840 = load i64, i64* %PC.i249
  %2841 = add i64 %2840, 5
  %2842 = load i64, i64* %PC.i249
  %2843 = add i64 %2842, 5
  store i64 %2843, i64* %PC.i249
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2845 = load i64, i64* %2844, align 8
  %2846 = add i64 %2845, -8
  %2847 = inttoptr i64 %2846 to i64*
  store i64 %2841, i64* %2847
  store i64 %2846, i64* %2844, align 8
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2839, i64* %2848, align 8
  store %struct.Memory* %loadMem1_400987, %struct.Memory** %MEMORY
  %loadMem2_400987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400987 = load i64, i64* %3
  %call2_400987 = call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %loadPC_400987, %struct.Memory* %loadMem2_400987)
  store %struct.Memory* %call2_400987, %struct.Memory** %MEMORY
  %loadMem_40098c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 33
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2851 to i64*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 15
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %2854 to i64*
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2856 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2855, i64 0, i64 1
  %YMM1.i248 = bitcast %union.VectorReg* %2856 to %"class.std::bitset"*
  %2857 = bitcast %"class.std::bitset"* %YMM1.i248 to i8*
  %2858 = load i64, i64* %RBP.i247
  %2859 = sub i64 %2858, 104
  %2860 = load i64, i64* %PC.i246
  %2861 = add i64 %2860, 5
  store i64 %2861, i64* %PC.i246
  %2862 = inttoptr i64 %2859 to double*
  %2863 = load double, double* %2862
  %2864 = bitcast i8* %2857 to double*
  store double %2863, double* %2864, align 1
  %2865 = getelementptr inbounds i8, i8* %2857, i64 8
  %2866 = bitcast i8* %2865 to double*
  store double 0.000000e+00, double* %2866, align 1
  store %struct.Memory* %loadMem_40098c, %struct.Memory** %MEMORY
  %loadMem_400991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 33
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 15
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2874 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2873, i64 0, i64 0
  %XMM0.i245 = bitcast %union.VectorReg* %2874 to %union.vec128_t*
  %2875 = load i64, i64* %RBP.i244
  %2876 = sub i64 %2875, 184
  %2877 = bitcast %union.vec128_t* %XMM0.i245 to i8*
  %2878 = load i64, i64* %PC.i243
  %2879 = add i64 %2878, 8
  store i64 %2879, i64* %PC.i243
  %2880 = bitcast i8* %2877 to double*
  %2881 = load double, double* %2880, align 1
  %2882 = inttoptr i64 %2876 to double*
  store double %2881, double* %2882
  store %struct.Memory* %loadMem_400991, %struct.Memory** %MEMORY
  %loadMem_400999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2886, i64 0, i64 0
  %YMM0.i241 = bitcast %union.VectorReg* %2887 to %"class.std::bitset"*
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2889 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2888, i64 0, i64 1
  %XMM1.i242 = bitcast %union.VectorReg* %2889 to %union.vec128_t*
  %2890 = bitcast %"class.std::bitset"* %YMM0.i241 to i8*
  %2891 = bitcast %union.vec128_t* %XMM1.i242 to i8*
  %2892 = load i64, i64* %PC.i240
  %2893 = add i64 %2892, 3
  store i64 %2893, i64* %PC.i240
  %2894 = bitcast i8* %2891 to <2 x i32>*
  %2895 = load <2 x i32>, <2 x i32>* %2894, align 1
  %2896 = getelementptr inbounds i8, i8* %2891, i64 8
  %2897 = bitcast i8* %2896 to <2 x i32>*
  %2898 = load <2 x i32>, <2 x i32>* %2897, align 1
  %2899 = extractelement <2 x i32> %2895, i32 0
  %2900 = bitcast i8* %2890 to i32*
  store i32 %2899, i32* %2900, align 1
  %2901 = extractelement <2 x i32> %2895, i32 1
  %2902 = getelementptr inbounds i8, i8* %2890, i64 4
  %2903 = bitcast i8* %2902 to i32*
  store i32 %2901, i32* %2903, align 1
  %2904 = extractelement <2 x i32> %2898, i32 0
  %2905 = getelementptr inbounds i8, i8* %2890, i64 8
  %2906 = bitcast i8* %2905 to i32*
  store i32 %2904, i32* %2906, align 1
  %2907 = extractelement <2 x i32> %2898, i32 1
  %2908 = getelementptr inbounds i8, i8* %2890, i64 12
  %2909 = bitcast i8* %2908 to i32*
  store i32 %2907, i32* %2909, align 1
  store %struct.Memory* %loadMem_400999, %struct.Memory** %MEMORY
  %loadMem_40099c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 15
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2917 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2916, i64 0, i64 1
  %YMM1.i239 = bitcast %union.VectorReg* %2917 to %"class.std::bitset"*
  %2918 = bitcast %"class.std::bitset"* %YMM1.i239 to i8*
  %2919 = load i64, i64* %RBP.i238
  %2920 = sub i64 %2919, 136
  %2921 = load i64, i64* %PC.i237
  %2922 = add i64 %2921, 8
  store i64 %2922, i64* %PC.i237
  %2923 = inttoptr i64 %2920 to double*
  %2924 = load double, double* %2923
  %2925 = bitcast i8* %2918 to double*
  store double %2924, double* %2925, align 1
  %2926 = getelementptr inbounds i8, i8* %2918, i64 8
  %2927 = bitcast i8* %2926 to double*
  store double 0.000000e+00, double* %2927, align 1
  store %struct.Memory* %loadMem_40099c, %struct.Memory** %MEMORY
  %loadMem_4009a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 15
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2934, i64 0, i64 2
  %YMM2.i236 = bitcast %union.VectorReg* %2935 to %"class.std::bitset"*
  %2936 = bitcast %"class.std::bitset"* %YMM2.i236 to i8*
  %2937 = load i64, i64* %RBP.i235
  %2938 = sub i64 %2937, 184
  %2939 = load i64, i64* %PC.i234
  %2940 = add i64 %2939, 8
  store i64 %2940, i64* %PC.i234
  %2941 = inttoptr i64 %2938 to double*
  %2942 = load double, double* %2941
  %2943 = bitcast i8* %2936 to double*
  store double %2942, double* %2943, align 1
  %2944 = getelementptr inbounds i8, i8* %2936, i64 8
  %2945 = bitcast i8* %2944 to double*
  store double 0.000000e+00, double* %2945, align 1
  store %struct.Memory* %loadMem_4009a4, %struct.Memory** %MEMORY
  %loadMem1_4009ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2948 to i64*
  %2949 = load i64, i64* %PC.i233
  %2950 = add i64 %2949, 916
  %2951 = load i64, i64* %PC.i233
  %2952 = add i64 %2951, 5
  %2953 = load i64, i64* %PC.i233
  %2954 = add i64 %2953, 5
  store i64 %2954, i64* %PC.i233
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2956 = load i64, i64* %2955, align 8
  %2957 = add i64 %2956, -8
  %2958 = inttoptr i64 %2957 to i64*
  store i64 %2952, i64* %2958
  store i64 %2957, i64* %2955, align 8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2950, i64* %2959, align 8
  store %struct.Memory* %loadMem1_4009ac, %struct.Memory** %MEMORY
  %loadMem2_4009ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009ac = load i64, i64* %3
  %call2_4009ac = call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %loadPC_4009ac, %struct.Memory* %loadMem2_4009ac)
  store %struct.Memory* %call2_4009ac, %struct.Memory** %MEMORY
  %loadMem_4009b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2962 to i64*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2964 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2963, i64 0, i64 1
  %YMM1.i232 = bitcast %union.VectorReg* %2964 to %"class.std::bitset"*
  %2965 = bitcast %"class.std::bitset"* %YMM1.i232 to i8*
  %2966 = load i64, i64* %PC.i231
  %2967 = add i64 %2966, 1183
  %2968 = load i64, i64* %PC.i231
  %2969 = add i64 %2968, 8
  store i64 %2969, i64* %PC.i231
  %2970 = inttoptr i64 %2967 to double*
  %2971 = load double, double* %2970
  %2972 = bitcast i8* %2965 to double*
  store double %2971, double* %2972, align 1
  %2973 = getelementptr inbounds i8, i8* %2965, i64 8
  %2974 = bitcast i8* %2973 to double*
  store double 0.000000e+00, double* %2974, align 1
  store %struct.Memory* %loadMem_4009b1, %struct.Memory** %MEMORY
  %loadMem_4009b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 33
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 15
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2982 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2981, i64 0, i64 2
  %YMM2.i230 = bitcast %union.VectorReg* %2982 to %"class.std::bitset"*
  %2983 = bitcast %"class.std::bitset"* %YMM2.i230 to i8*
  %2984 = load i64, i64* %RBP.i229
  %2985 = sub i64 %2984, 56
  %2986 = load i64, i64* %PC.i228
  %2987 = add i64 %2986, 5
  store i64 %2987, i64* %PC.i228
  %2988 = inttoptr i64 %2985 to double*
  %2989 = load double, double* %2988
  %2990 = bitcast i8* %2983 to double*
  store double %2989, double* %2990, align 1
  %2991 = getelementptr inbounds i8, i8* %2983, i64 8
  %2992 = bitcast i8* %2991 to double*
  store double 0.000000e+00, double* %2992, align 1
  store %struct.Memory* %loadMem_4009b9, %struct.Memory** %MEMORY
  %loadMem_4009be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 33
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 15
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3000 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2999, i64 0, i64 3
  %YMM3.i227 = bitcast %union.VectorReg* %3000 to %"class.std::bitset"*
  %3001 = bitcast %"class.std::bitset"* %YMM3.i227 to i8*
  %3002 = load i64, i64* %RBP.i226
  %3003 = sub i64 %3002, 48
  %3004 = load i64, i64* %PC.i225
  %3005 = add i64 %3004, 5
  store i64 %3005, i64* %PC.i225
  %3006 = inttoptr i64 %3003 to double*
  %3007 = load double, double* %3006
  %3008 = bitcast i8* %3001 to double*
  store double %3007, double* %3008, align 1
  %3009 = getelementptr inbounds i8, i8* %3001, i64 8
  %3010 = bitcast i8* %3009 to double*
  store double 0.000000e+00, double* %3010, align 1
  store %struct.Memory* %loadMem_4009be, %struct.Memory** %MEMORY
  %loadMem_4009c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 33
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3013 to i64*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 1
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 15
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %3019 to i64*
  %3020 = load i64, i64* %RBP.i224
  %3021 = sub i64 %3020, 72
  %3022 = load i64, i64* %PC.i222
  %3023 = add i64 %3022, 3
  store i64 %3023, i64* %PC.i222
  %3024 = inttoptr i64 %3021 to i32*
  %3025 = load i32, i32* %3024
  %3026 = zext i32 %3025 to i64
  store i64 %3026, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_4009c3, %struct.Memory** %MEMORY
  %loadMem_4009c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 33
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 1
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %3032 to i64*
  %3033 = load i64, i64* %RAX.i221
  %3034 = load i64, i64* %PC.i220
  %3035 = add i64 %3034, 3
  store i64 %3035, i64* %PC.i220
  %3036 = trunc i64 %3033 to i32
  %3037 = add i32 1, %3036
  %3038 = zext i32 %3037 to i64
  store i64 %3038, i64* %RAX.i221, align 8
  %3039 = icmp ult i32 %3037, %3036
  %3040 = icmp ult i32 %3037, 1
  %3041 = or i1 %3039, %3040
  %3042 = zext i1 %3041 to i8
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3042, i8* %3043, align 1
  %3044 = and i32 %3037, 255
  %3045 = call i32 @llvm.ctpop.i32(i32 %3044)
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = xor i8 %3047, 1
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3048, i8* %3049, align 1
  %3050 = xor i64 1, %3033
  %3051 = trunc i64 %3050 to i32
  %3052 = xor i32 %3051, %3037
  %3053 = lshr i32 %3052, 4
  %3054 = trunc i32 %3053 to i8
  %3055 = and i8 %3054, 1
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3055, i8* %3056, align 1
  %3057 = icmp eq i32 %3037, 0
  %3058 = zext i1 %3057 to i8
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3058, i8* %3059, align 1
  %3060 = lshr i32 %3037, 31
  %3061 = trunc i32 %3060 to i8
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3061, i8* %3062, align 1
  %3063 = lshr i32 %3036, 31
  %3064 = xor i32 %3060, %3063
  %3065 = add i32 %3064, %3060
  %3066 = icmp eq i32 %3065, 2
  %3067 = zext i1 %3066 to i8
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3067, i8* %3068, align 1
  store %struct.Memory* %loadMem_4009c6, %struct.Memory** %MEMORY
  %loadMem_4009c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 33
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3071 to i64*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 1
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %EAX.i218 = bitcast %union.anon* %3074 to i32*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 5
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %3077 to i64*
  %3078 = load i32, i32* %EAX.i218
  %3079 = zext i32 %3078 to i64
  %3080 = load i64, i64* %PC.i217
  %3081 = add i64 %3080, 3
  store i64 %3081, i64* %PC.i217
  %3082 = shl i64 %3079, 32
  %3083 = ashr exact i64 %3082, 32
  store i64 %3083, i64* %RCX.i219, align 8
  store %struct.Memory* %loadMem_4009c9, %struct.Memory** %MEMORY
  %loadMem_4009cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 33
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3086 to i64*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 5
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 11
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %RDI.i216 = bitcast %union.anon* %3092 to i64*
  %3093 = load i64, i64* %RCX.i215
  %3094 = mul i64 %3093, 4
  %3095 = add i64 %3094, 6300752
  %3096 = load i64, i64* %PC.i214
  %3097 = add i64 %3096, 7
  store i64 %3097, i64* %PC.i214
  %3098 = inttoptr i64 %3095 to i32*
  %3099 = load i32, i32* %3098
  %3100 = zext i32 %3099 to i64
  store i64 %3100, i64* %RDI.i216, align 8
  store %struct.Memory* %loadMem_4009cc, %struct.Memory** %MEMORY
  %loadMem_4009d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 15
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3107, i64 0, i64 4
  %YMM4.i213 = bitcast %union.VectorReg* %3108 to %"class.std::bitset"*
  %3109 = bitcast %"class.std::bitset"* %YMM4.i213 to i8*
  %3110 = load i64, i64* %RBP.i212
  %3111 = sub i64 %3110, 8
  %3112 = load i64, i64* %PC.i211
  %3113 = add i64 %3112, 5
  store i64 %3113, i64* %PC.i211
  %3114 = inttoptr i64 %3111 to double*
  %3115 = load double, double* %3114
  %3116 = bitcast i8* %3109 to double*
  store double %3115, double* %3116, align 1
  %3117 = getelementptr inbounds i8, i8* %3109, i64 8
  %3118 = bitcast i8* %3117 to double*
  store double 0.000000e+00, double* %3118, align 1
  store %struct.Memory* %loadMem_4009d3, %struct.Memory** %MEMORY
  %loadMem_4009d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 33
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3121 to i64*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 15
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3126 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3125, i64 0, i64 5
  %YMM5.i210 = bitcast %union.VectorReg* %3126 to %"class.std::bitset"*
  %3127 = bitcast %"class.std::bitset"* %YMM5.i210 to i8*
  %3128 = load i64, i64* %RBP.i209
  %3129 = sub i64 %3128, 16
  %3130 = load i64, i64* %PC.i208
  %3131 = add i64 %3130, 5
  store i64 %3131, i64* %PC.i208
  %3132 = inttoptr i64 %3129 to double*
  %3133 = load double, double* %3132
  %3134 = bitcast i8* %3127 to double*
  store double %3133, double* %3134, align 1
  %3135 = getelementptr inbounds i8, i8* %3127, i64 8
  %3136 = bitcast i8* %3135 to double*
  store double 0.000000e+00, double* %3136, align 1
  store %struct.Memory* %loadMem_4009d8, %struct.Memory** %MEMORY
  %loadMem_4009dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 15
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3144 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3143, i64 0, i64 6
  %YMM6.i207 = bitcast %union.VectorReg* %3144 to %"class.std::bitset"*
  %3145 = bitcast %"class.std::bitset"* %YMM6.i207 to i8*
  %3146 = load i64, i64* %RBP.i206
  %3147 = sub i64 %3146, 24
  %3148 = load i64, i64* %PC.i205
  %3149 = add i64 %3148, 5
  store i64 %3149, i64* %PC.i205
  %3150 = inttoptr i64 %3147 to double*
  %3151 = load double, double* %3150
  %3152 = bitcast i8* %3145 to double*
  store double %3151, double* %3152, align 1
  %3153 = getelementptr inbounds i8, i8* %3145, i64 8
  %3154 = bitcast i8* %3153 to double*
  store double 0.000000e+00, double* %3154, align 1
  store %struct.Memory* %loadMem_4009dd, %struct.Memory** %MEMORY
  %loadMem_4009e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3159 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3158, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %3159 to %"class.std::bitset"*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3160, i64 0, i64 1
  %XMM1.i204 = bitcast %union.VectorReg* %3161 to %union.vec128_t*
  %3162 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %3163 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %3164 = bitcast %union.vec128_t* %XMM1.i204 to i8*
  %3165 = load i64, i64* %PC.i203
  %3166 = add i64 %3165, 4
  store i64 %3166, i64* %PC.i203
  %3167 = bitcast i8* %3163 to double*
  %3168 = load double, double* %3167, align 1
  %3169 = getelementptr inbounds i8, i8* %3163, i64 8
  %3170 = bitcast i8* %3169 to i64*
  %3171 = load i64, i64* %3170, align 1
  %3172 = bitcast i8* %3164 to double*
  %3173 = load double, double* %3172, align 1
  %3174 = fsub double %3168, %3173
  %3175 = bitcast i8* %3162 to double*
  store double %3174, double* %3175, align 1
  %3176 = getelementptr inbounds i8, i8* %3162, i64 8
  %3177 = bitcast i8* %3176 to i64*
  store i64 %3171, i64* %3177, align 1
  store %struct.Memory* %loadMem_4009e2, %struct.Memory** %MEMORY
  %loadMem_4009e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 15
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %3183 to i64*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3184, i64 0, i64 0
  %XMM0.i202 = bitcast %union.VectorReg* %3185 to %union.vec128_t*
  %3186 = load i64, i64* %RBP.i201
  %3187 = sub i64 %3186, 192
  %3188 = bitcast %union.vec128_t* %XMM0.i202 to i8*
  %3189 = load i64, i64* %PC.i200
  %3190 = add i64 %3189, 8
  store i64 %3190, i64* %PC.i200
  %3191 = bitcast i8* %3188 to double*
  %3192 = load double, double* %3191, align 1
  %3193 = inttoptr i64 %3187 to double*
  store double %3192, double* %3193
  store %struct.Memory* %loadMem_4009e6, %struct.Memory** %MEMORY
  %loadMem_4009ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3198 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3197, i64 0, i64 0
  %YMM0.i198 = bitcast %union.VectorReg* %3198 to %"class.std::bitset"*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3199, i64 0, i64 4
  %XMM4.i199 = bitcast %union.VectorReg* %3200 to %union.vec128_t*
  %3201 = bitcast %"class.std::bitset"* %YMM0.i198 to i8*
  %3202 = bitcast %union.vec128_t* %XMM4.i199 to i8*
  %3203 = load i64, i64* %PC.i197
  %3204 = add i64 %3203, 3
  store i64 %3204, i64* %PC.i197
  %3205 = bitcast i8* %3202 to <2 x i32>*
  %3206 = load <2 x i32>, <2 x i32>* %3205, align 1
  %3207 = getelementptr inbounds i8, i8* %3202, i64 8
  %3208 = bitcast i8* %3207 to <2 x i32>*
  %3209 = load <2 x i32>, <2 x i32>* %3208, align 1
  %3210 = extractelement <2 x i32> %3206, i32 0
  %3211 = bitcast i8* %3201 to i32*
  store i32 %3210, i32* %3211, align 1
  %3212 = extractelement <2 x i32> %3206, i32 1
  %3213 = getelementptr inbounds i8, i8* %3201, i64 4
  %3214 = bitcast i8* %3213 to i32*
  store i32 %3212, i32* %3214, align 1
  %3215 = extractelement <2 x i32> %3209, i32 0
  %3216 = getelementptr inbounds i8, i8* %3201, i64 8
  %3217 = bitcast i8* %3216 to i32*
  store i32 %3215, i32* %3217, align 1
  %3218 = extractelement <2 x i32> %3209, i32 1
  %3219 = getelementptr inbounds i8, i8* %3201, i64 12
  %3220 = bitcast i8* %3219 to i32*
  store i32 %3218, i32* %3220, align 1
  store %struct.Memory* %loadMem_4009ee, %struct.Memory** %MEMORY
  %loadMem_4009f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3223 to i64*
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3224, i64 0, i64 1
  %YMM1.i195 = bitcast %union.VectorReg* %3225 to %"class.std::bitset"*
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3226, i64 0, i64 5
  %XMM5.i196 = bitcast %union.VectorReg* %3227 to %union.vec128_t*
  %3228 = bitcast %"class.std::bitset"* %YMM1.i195 to i8*
  %3229 = bitcast %union.vec128_t* %XMM5.i196 to i8*
  %3230 = load i64, i64* %PC.i194
  %3231 = add i64 %3230, 3
  store i64 %3231, i64* %PC.i194
  %3232 = bitcast i8* %3229 to <2 x i32>*
  %3233 = load <2 x i32>, <2 x i32>* %3232, align 1
  %3234 = getelementptr inbounds i8, i8* %3229, i64 8
  %3235 = bitcast i8* %3234 to <2 x i32>*
  %3236 = load <2 x i32>, <2 x i32>* %3235, align 1
  %3237 = extractelement <2 x i32> %3233, i32 0
  %3238 = bitcast i8* %3228 to i32*
  store i32 %3237, i32* %3238, align 1
  %3239 = extractelement <2 x i32> %3233, i32 1
  %3240 = getelementptr inbounds i8, i8* %3228, i64 4
  %3241 = bitcast i8* %3240 to i32*
  store i32 %3239, i32* %3241, align 1
  %3242 = extractelement <2 x i32> %3236, i32 0
  %3243 = getelementptr inbounds i8, i8* %3228, i64 8
  %3244 = bitcast i8* %3243 to i32*
  store i32 %3242, i32* %3244, align 1
  %3245 = extractelement <2 x i32> %3236, i32 1
  %3246 = getelementptr inbounds i8, i8* %3228, i64 12
  %3247 = bitcast i8* %3246 to i32*
  store i32 %3245, i32* %3247, align 1
  store %struct.Memory* %loadMem_4009f1, %struct.Memory** %MEMORY
  %loadMem_4009f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 33
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 15
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3255 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3254, i64 0, i64 2
  %XMM2.i193 = bitcast %union.VectorReg* %3255 to %union.vec128_t*
  %3256 = load i64, i64* %RBP.i192
  %3257 = sub i64 %3256, 200
  %3258 = bitcast %union.vec128_t* %XMM2.i193 to i8*
  %3259 = load i64, i64* %PC.i191
  %3260 = add i64 %3259, 8
  store i64 %3260, i64* %PC.i191
  %3261 = bitcast i8* %3258 to double*
  %3262 = load double, double* %3261, align 1
  %3263 = inttoptr i64 %3257 to double*
  store double %3262, double* %3263
  store %struct.Memory* %loadMem_4009f4, %struct.Memory** %MEMORY
  %loadMem_4009fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 33
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3267, i64 0, i64 2
  %YMM2.i190 = bitcast %union.VectorReg* %3268 to %"class.std::bitset"*
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3270 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3269, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %3270 to %union.vec128_t*
  %3271 = bitcast %"class.std::bitset"* %YMM2.i190 to i8*
  %3272 = bitcast %union.vec128_t* %XMM6.i to i8*
  %3273 = load i64, i64* %PC.i189
  %3274 = add i64 %3273, 3
  store i64 %3274, i64* %PC.i189
  %3275 = bitcast i8* %3272 to <2 x i32>*
  %3276 = load <2 x i32>, <2 x i32>* %3275, align 1
  %3277 = getelementptr inbounds i8, i8* %3272, i64 8
  %3278 = bitcast i8* %3277 to <2 x i32>*
  %3279 = load <2 x i32>, <2 x i32>* %3278, align 1
  %3280 = extractelement <2 x i32> %3276, i32 0
  %3281 = bitcast i8* %3271 to i32*
  store i32 %3280, i32* %3281, align 1
  %3282 = extractelement <2 x i32> %3276, i32 1
  %3283 = getelementptr inbounds i8, i8* %3271, i64 4
  %3284 = bitcast i8* %3283 to i32*
  store i32 %3282, i32* %3284, align 1
  %3285 = extractelement <2 x i32> %3279, i32 0
  %3286 = getelementptr inbounds i8, i8* %3271, i64 8
  %3287 = bitcast i8* %3286 to i32*
  store i32 %3285, i32* %3287, align 1
  %3288 = extractelement <2 x i32> %3279, i32 1
  %3289 = getelementptr inbounds i8, i8* %3271, i64 12
  %3290 = bitcast i8* %3289 to i32*
  store i32 %3288, i32* %3290, align 1
  store %struct.Memory* %loadMem_4009fc, %struct.Memory** %MEMORY
  %loadMem_4009ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 33
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 15
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3298 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3297, i64 0, i64 3
  %XMM3.i188 = bitcast %union.VectorReg* %3298 to %union.vec128_t*
  %3299 = load i64, i64* %RBP.i187
  %3300 = sub i64 %3299, 208
  %3301 = bitcast %union.vec128_t* %XMM3.i188 to i8*
  %3302 = load i64, i64* %PC.i186
  %3303 = add i64 %3302, 8
  store i64 %3303, i64* %PC.i186
  %3304 = bitcast i8* %3301 to double*
  %3305 = load double, double* %3304, align 1
  %3306 = inttoptr i64 %3300 to double*
  store double %3305, double* %3306
  store %struct.Memory* %loadMem_4009ff, %struct.Memory** %MEMORY
  %loadMem1_400a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 33
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3309 to i64*
  %3310 = load i64, i64* %PC.i185
  %3311 = add i64 %3310, 489
  %3312 = load i64, i64* %PC.i185
  %3313 = add i64 %3312, 5
  %3314 = load i64, i64* %PC.i185
  %3315 = add i64 %3314, 5
  store i64 %3315, i64* %PC.i185
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3317 = load i64, i64* %3316, align 8
  %3318 = add i64 %3317, -8
  %3319 = inttoptr i64 %3318 to i64*
  store i64 %3313, i64* %3319
  store i64 %3318, i64* %3316, align 8
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3311, i64* %3320, align 8
  store %struct.Memory* %loadMem1_400a07, %struct.Memory** %MEMORY
  %loadMem2_400a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a07 = load i64, i64* %3
  %call2_400a07 = call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %loadPC_400a07, %struct.Memory* %loadMem2_400a07)
  store %struct.Memory* %call2_400a07, %struct.Memory** %MEMORY
  %loadMem_400a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3325 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3324, i64 0, i64 1
  %YMM1.i184 = bitcast %union.VectorReg* %3325 to %"class.std::bitset"*
  %3326 = bitcast %"class.std::bitset"* %YMM1.i184 to i8*
  %3327 = load i64, i64* %PC.i183
  %3328 = add i64 %3327, 1092
  %3329 = load i64, i64* %PC.i183
  %3330 = add i64 %3329, 8
  store i64 %3330, i64* %PC.i183
  %3331 = inttoptr i64 %3328 to double*
  %3332 = load double, double* %3331
  %3333 = bitcast i8* %3326 to double*
  store double %3332, double* %3333, align 1
  %3334 = getelementptr inbounds i8, i8* %3326, i64 8
  %3335 = bitcast i8* %3334 to double*
  store double 0.000000e+00, double* %3335, align 1
  store %struct.Memory* %loadMem_400a0c, %struct.Memory** %MEMORY
  %loadMem_400a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 1
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 15
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %3344 to i64*
  %3345 = load i64, i64* %RBP.i182
  %3346 = sub i64 %3345, 84
  %3347 = load i64, i64* %PC.i180
  %3348 = add i64 %3347, 3
  store i64 %3348, i64* %PC.i180
  %3349 = inttoptr i64 %3346 to i32*
  %3350 = load i32, i32* %3349
  %3351 = zext i32 %3350 to i64
  store i64 %3351, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_400a14, %struct.Memory** %MEMORY
  %loadMem_400a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 33
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3354 to i64*
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 1
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %3357 to i64*
  %3358 = load i64, i64* %RAX.i179
  %3359 = load i64, i64* %PC.i178
  %3360 = add i64 %3359, 3
  store i64 %3360, i64* %PC.i178
  %3361 = trunc i64 %3358 to i32
  %3362 = add i32 1, %3361
  %3363 = zext i32 %3362 to i64
  store i64 %3363, i64* %RAX.i179, align 8
  %3364 = icmp ult i32 %3362, %3361
  %3365 = icmp ult i32 %3362, 1
  %3366 = or i1 %3364, %3365
  %3367 = zext i1 %3366 to i8
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3367, i8* %3368, align 1
  %3369 = and i32 %3362, 255
  %3370 = call i32 @llvm.ctpop.i32(i32 %3369)
  %3371 = trunc i32 %3370 to i8
  %3372 = and i8 %3371, 1
  %3373 = xor i8 %3372, 1
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3373, i8* %3374, align 1
  %3375 = xor i64 1, %3358
  %3376 = trunc i64 %3375 to i32
  %3377 = xor i32 %3376, %3362
  %3378 = lshr i32 %3377, 4
  %3379 = trunc i32 %3378 to i8
  %3380 = and i8 %3379, 1
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3380, i8* %3381, align 1
  %3382 = icmp eq i32 %3362, 0
  %3383 = zext i1 %3382 to i8
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3383, i8* %3384, align 1
  %3385 = lshr i32 %3362, 31
  %3386 = trunc i32 %3385 to i8
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3386, i8* %3387, align 1
  %3388 = lshr i32 %3361, 31
  %3389 = xor i32 %3385, %3388
  %3390 = add i32 %3389, %3385
  %3391 = icmp eq i32 %3390, 2
  %3392 = zext i1 %3391 to i8
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3392, i8* %3393, align 1
  store %struct.Memory* %loadMem_400a17, %struct.Memory** %MEMORY
  %loadMem_400a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 33
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3396 to i64*
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 1
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %EAX.i176 = bitcast %union.anon* %3399 to i32*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 5
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %3402 to i64*
  %3403 = load i32, i32* %EAX.i176
  %3404 = zext i32 %3403 to i64
  %3405 = load i64, i64* %PC.i175
  %3406 = add i64 %3405, 3
  store i64 %3406, i64* %PC.i175
  %3407 = shl i64 %3404, 32
  %3408 = ashr exact i64 %3407, 32
  store i64 %3408, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_400a1a, %struct.Memory** %MEMORY
  %loadMem_400a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 33
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3411 to i64*
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 5
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %3414 to i64*
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 11
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %RDI.i174 = bitcast %union.anon* %3417 to i64*
  %3418 = load i64, i64* %RCX.i173
  %3419 = mul i64 %3418, 4
  %3420 = add i64 %3419, 6300752
  %3421 = load i64, i64* %PC.i172
  %3422 = add i64 %3421, 7
  store i64 %3422, i64* %PC.i172
  %3423 = inttoptr i64 %3420 to i32*
  %3424 = load i32, i32* %3423
  %3425 = zext i32 %3424 to i64
  store i64 %3425, i64* %RDI.i174, align 8
  store %struct.Memory* %loadMem_400a1d, %struct.Memory** %MEMORY
  %loadMem_400a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 15
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3433 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3432, i64 0, i64 2
  %YMM2.i171 = bitcast %union.VectorReg* %3433 to %"class.std::bitset"*
  %3434 = bitcast %"class.std::bitset"* %YMM2.i171 to i8*
  %3435 = load i64, i64* %RBP.i170
  %3436 = sub i64 %3435, 8
  %3437 = load i64, i64* %PC.i169
  %3438 = add i64 %3437, 5
  store i64 %3438, i64* %PC.i169
  %3439 = inttoptr i64 %3436 to double*
  %3440 = load double, double* %3439
  %3441 = bitcast i8* %3434 to double*
  store double %3440, double* %3441, align 1
  %3442 = getelementptr inbounds i8, i8* %3434, i64 8
  %3443 = bitcast i8* %3442 to double*
  store double 0.000000e+00, double* %3443, align 1
  store %struct.Memory* %loadMem_400a24, %struct.Memory** %MEMORY
  %loadMem_400a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 33
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3446 to i64*
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3448 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3447, i64 0, i64 2
  %YMM2.i167 = bitcast %union.VectorReg* %3448 to %"class.std::bitset"*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3449, i64 0, i64 1
  %XMM1.i168 = bitcast %union.VectorReg* %3450 to %union.vec128_t*
  %3451 = bitcast %"class.std::bitset"* %YMM2.i167 to i8*
  %3452 = bitcast %"class.std::bitset"* %YMM2.i167 to i8*
  %3453 = bitcast %union.vec128_t* %XMM1.i168 to i8*
  %3454 = load i64, i64* %PC.i166
  %3455 = add i64 %3454, 4
  store i64 %3455, i64* %PC.i166
  %3456 = bitcast i8* %3452 to double*
  %3457 = load double, double* %3456, align 1
  %3458 = getelementptr inbounds i8, i8* %3452, i64 8
  %3459 = bitcast i8* %3458 to i64*
  %3460 = load i64, i64* %3459, align 1
  %3461 = bitcast i8* %3453 to double*
  %3462 = load double, double* %3461, align 1
  %3463 = fsub double %3457, %3462
  %3464 = bitcast i8* %3451 to double*
  store double %3463, double* %3464, align 1
  %3465 = getelementptr inbounds i8, i8* %3451, i64 8
  %3466 = bitcast i8* %3465 to i64*
  store i64 %3460, i64* %3466, align 1
  store %struct.Memory* %loadMem_400a29, %struct.Memory** %MEMORY
  %loadMem_400a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 33
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3469 to i64*
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 15
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3473, i64 0, i64 3
  %YMM3.i165 = bitcast %union.VectorReg* %3474 to %"class.std::bitset"*
  %3475 = bitcast %"class.std::bitset"* %YMM3.i165 to i8*
  %3476 = load i64, i64* %RBP.i164
  %3477 = sub i64 %3476, 16
  %3478 = load i64, i64* %PC.i163
  %3479 = add i64 %3478, 5
  store i64 %3479, i64* %PC.i163
  %3480 = inttoptr i64 %3477 to double*
  %3481 = load double, double* %3480
  %3482 = bitcast i8* %3475 to double*
  store double %3481, double* %3482, align 1
  %3483 = getelementptr inbounds i8, i8* %3475, i64 8
  %3484 = bitcast i8* %3483 to double*
  store double 0.000000e+00, double* %3484, align 1
  store %struct.Memory* %loadMem_400a2d, %struct.Memory** %MEMORY
  %loadMem_400a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 33
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 15
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3492 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3491, i64 0, i64 4
  %YMM4.i162 = bitcast %union.VectorReg* %3492 to %"class.std::bitset"*
  %3493 = bitcast %"class.std::bitset"* %YMM4.i162 to i8*
  %3494 = load i64, i64* %RBP.i161
  %3495 = sub i64 %3494, 24
  %3496 = load i64, i64* %PC.i160
  %3497 = add i64 %3496, 5
  store i64 %3497, i64* %PC.i160
  %3498 = inttoptr i64 %3495 to double*
  %3499 = load double, double* %3498
  %3500 = bitcast i8* %3493 to double*
  store double %3499, double* %3500, align 1
  %3501 = getelementptr inbounds i8, i8* %3493, i64 8
  %3502 = bitcast i8* %3501 to double*
  store double 0.000000e+00, double* %3502, align 1
  store %struct.Memory* %loadMem_400a32, %struct.Memory** %MEMORY
  %loadMem_400a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 33
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3505 to i64*
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3507 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3506, i64 0, i64 4
  %YMM4.i158 = bitcast %union.VectorReg* %3507 to %"class.std::bitset"*
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3509 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3508, i64 0, i64 1
  %XMM1.i159 = bitcast %union.VectorReg* %3509 to %union.vec128_t*
  %3510 = bitcast %"class.std::bitset"* %YMM4.i158 to i8*
  %3511 = bitcast %"class.std::bitset"* %YMM4.i158 to i8*
  %3512 = bitcast %union.vec128_t* %XMM1.i159 to i8*
  %3513 = load i64, i64* %PC.i157
  %3514 = add i64 %3513, 4
  store i64 %3514, i64* %PC.i157
  %3515 = bitcast i8* %3511 to double*
  %3516 = load double, double* %3515, align 1
  %3517 = getelementptr inbounds i8, i8* %3511, i64 8
  %3518 = bitcast i8* %3517 to i64*
  %3519 = load i64, i64* %3518, align 1
  %3520 = bitcast i8* %3512 to double*
  %3521 = load double, double* %3520, align 1
  %3522 = fsub double %3516, %3521
  %3523 = bitcast i8* %3510 to double*
  store double %3522, double* %3523, align 1
  %3524 = getelementptr inbounds i8, i8* %3510, i64 8
  %3525 = bitcast i8* %3524 to i64*
  store i64 %3519, i64* %3525, align 1
  store %struct.Memory* %loadMem_400a37, %struct.Memory** %MEMORY
  %loadMem_400a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 15
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %3531 to i64*
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3532, i64 0, i64 0
  %XMM0.i156 = bitcast %union.VectorReg* %3533 to %union.vec128_t*
  %3534 = load i64, i64* %RBP.i155
  %3535 = sub i64 %3534, 216
  %3536 = bitcast %union.vec128_t* %XMM0.i156 to i8*
  %3537 = load i64, i64* %PC.i154
  %3538 = add i64 %3537, 8
  store i64 %3538, i64* %PC.i154
  %3539 = bitcast i8* %3536 to double*
  %3540 = load double, double* %3539, align 1
  %3541 = inttoptr i64 %3535 to double*
  store double %3540, double* %3541
  store %struct.Memory* %loadMem_400a3b, %struct.Memory** %MEMORY
  %loadMem_400a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 33
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3544 to i64*
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3546 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3545, i64 0, i64 0
  %YMM0.i152 = bitcast %union.VectorReg* %3546 to %"class.std::bitset"*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3547, i64 0, i64 2
  %XMM2.i153 = bitcast %union.VectorReg* %3548 to %union.vec128_t*
  %3549 = bitcast %"class.std::bitset"* %YMM0.i152 to i8*
  %3550 = bitcast %union.vec128_t* %XMM2.i153 to i8*
  %3551 = load i64, i64* %PC.i151
  %3552 = add i64 %3551, 3
  store i64 %3552, i64* %PC.i151
  %3553 = bitcast i8* %3550 to <2 x i32>*
  %3554 = load <2 x i32>, <2 x i32>* %3553, align 1
  %3555 = getelementptr inbounds i8, i8* %3550, i64 8
  %3556 = bitcast i8* %3555 to <2 x i32>*
  %3557 = load <2 x i32>, <2 x i32>* %3556, align 1
  %3558 = extractelement <2 x i32> %3554, i32 0
  %3559 = bitcast i8* %3549 to i32*
  store i32 %3558, i32* %3559, align 1
  %3560 = extractelement <2 x i32> %3554, i32 1
  %3561 = getelementptr inbounds i8, i8* %3549, i64 4
  %3562 = bitcast i8* %3561 to i32*
  store i32 %3560, i32* %3562, align 1
  %3563 = extractelement <2 x i32> %3557, i32 0
  %3564 = getelementptr inbounds i8, i8* %3549, i64 8
  %3565 = bitcast i8* %3564 to i32*
  store i32 %3563, i32* %3565, align 1
  %3566 = extractelement <2 x i32> %3557, i32 1
  %3567 = getelementptr inbounds i8, i8* %3549, i64 12
  %3568 = bitcast i8* %3567 to i32*
  store i32 %3566, i32* %3568, align 1
  store %struct.Memory* %loadMem_400a43, %struct.Memory** %MEMORY
  %loadMem_400a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 33
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3571 to i64*
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3572, i64 0, i64 1
  %YMM1.i149 = bitcast %union.VectorReg* %3573 to %"class.std::bitset"*
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3575 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3574, i64 0, i64 3
  %XMM3.i150 = bitcast %union.VectorReg* %3575 to %union.vec128_t*
  %3576 = bitcast %"class.std::bitset"* %YMM1.i149 to i8*
  %3577 = bitcast %union.vec128_t* %XMM3.i150 to i8*
  %3578 = load i64, i64* %PC.i148
  %3579 = add i64 %3578, 3
  store i64 %3579, i64* %PC.i148
  %3580 = bitcast i8* %3577 to <2 x i32>*
  %3581 = load <2 x i32>, <2 x i32>* %3580, align 1
  %3582 = getelementptr inbounds i8, i8* %3577, i64 8
  %3583 = bitcast i8* %3582 to <2 x i32>*
  %3584 = load <2 x i32>, <2 x i32>* %3583, align 1
  %3585 = extractelement <2 x i32> %3581, i32 0
  %3586 = bitcast i8* %3576 to i32*
  store i32 %3585, i32* %3586, align 1
  %3587 = extractelement <2 x i32> %3581, i32 1
  %3588 = getelementptr inbounds i8, i8* %3576, i64 4
  %3589 = bitcast i8* %3588 to i32*
  store i32 %3587, i32* %3589, align 1
  %3590 = extractelement <2 x i32> %3584, i32 0
  %3591 = getelementptr inbounds i8, i8* %3576, i64 8
  %3592 = bitcast i8* %3591 to i32*
  store i32 %3590, i32* %3592, align 1
  %3593 = extractelement <2 x i32> %3584, i32 1
  %3594 = getelementptr inbounds i8, i8* %3576, i64 12
  %3595 = bitcast i8* %3594 to i32*
  store i32 %3593, i32* %3595, align 1
  store %struct.Memory* %loadMem_400a46, %struct.Memory** %MEMORY
  %loadMem_400a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 33
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3598 to i64*
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3600 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3599, i64 0, i64 2
  %YMM2.i146 = bitcast %union.VectorReg* %3600 to %"class.std::bitset"*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3602 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3601, i64 0, i64 4
  %XMM4.i147 = bitcast %union.VectorReg* %3602 to %union.vec128_t*
  %3603 = bitcast %"class.std::bitset"* %YMM2.i146 to i8*
  %3604 = bitcast %union.vec128_t* %XMM4.i147 to i8*
  %3605 = load i64, i64* %PC.i145
  %3606 = add i64 %3605, 3
  store i64 %3606, i64* %PC.i145
  %3607 = bitcast i8* %3604 to <2 x i32>*
  %3608 = load <2 x i32>, <2 x i32>* %3607, align 1
  %3609 = getelementptr inbounds i8, i8* %3604, i64 8
  %3610 = bitcast i8* %3609 to <2 x i32>*
  %3611 = load <2 x i32>, <2 x i32>* %3610, align 1
  %3612 = extractelement <2 x i32> %3608, i32 0
  %3613 = bitcast i8* %3603 to i32*
  store i32 %3612, i32* %3613, align 1
  %3614 = extractelement <2 x i32> %3608, i32 1
  %3615 = getelementptr inbounds i8, i8* %3603, i64 4
  %3616 = bitcast i8* %3615 to i32*
  store i32 %3614, i32* %3616, align 1
  %3617 = extractelement <2 x i32> %3611, i32 0
  %3618 = getelementptr inbounds i8, i8* %3603, i64 8
  %3619 = bitcast i8* %3618 to i32*
  store i32 %3617, i32* %3619, align 1
  %3620 = extractelement <2 x i32> %3611, i32 1
  %3621 = getelementptr inbounds i8, i8* %3603, i64 12
  %3622 = bitcast i8* %3621 to i32*
  store i32 %3620, i32* %3622, align 1
  store %struct.Memory* %loadMem_400a49, %struct.Memory** %MEMORY
  %loadMem1_400a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3625 to i64*
  %3626 = load i64, i64* %PC.i144
  %3627 = add i64 %3626, 420
  %3628 = load i64, i64* %PC.i144
  %3629 = add i64 %3628, 5
  %3630 = load i64, i64* %PC.i144
  %3631 = add i64 %3630, 5
  store i64 %3631, i64* %PC.i144
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3633 = load i64, i64* %3632, align 8
  %3634 = add i64 %3633, -8
  %3635 = inttoptr i64 %3634 to i64*
  store i64 %3629, i64* %3635
  store i64 %3634, i64* %3632, align 8
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3627, i64* %3636, align 8
  store %struct.Memory* %loadMem1_400a4c, %struct.Memory** %MEMORY
  %loadMem2_400a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a4c = load i64, i64* %3
  %call2_400a4c = call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %loadPC_400a4c, %struct.Memory* %loadMem2_400a4c)
  store %struct.Memory* %call2_400a4c, %struct.Memory** %MEMORY
  %loadMem_400a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 33
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 15
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %3642 to i64*
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3644 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3643, i64 0, i64 1
  %YMM1.i143 = bitcast %union.VectorReg* %3644 to %"class.std::bitset"*
  %3645 = bitcast %"class.std::bitset"* %YMM1.i143 to i8*
  %3646 = load i64, i64* %RBP.i142
  %3647 = sub i64 %3646, 208
  %3648 = load i64, i64* %PC.i141
  %3649 = add i64 %3648, 8
  store i64 %3649, i64* %PC.i141
  %3650 = inttoptr i64 %3647 to double*
  %3651 = load double, double* %3650
  %3652 = bitcast i8* %3645 to double*
  store double %3651, double* %3652, align 1
  %3653 = getelementptr inbounds i8, i8* %3645, i64 8
  %3654 = bitcast i8* %3653 to double*
  store double 0.000000e+00, double* %3654, align 1
  store %struct.Memory* %loadMem_400a51, %struct.Memory** %MEMORY
  %loadMem_400a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 33
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 15
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3662 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3661, i64 0, i64 0
  %XMM0.i140 = bitcast %union.VectorReg* %3662 to %union.vec128_t*
  %3663 = load i64, i64* %RBP.i139
  %3664 = sub i64 %3663, 224
  %3665 = bitcast %union.vec128_t* %XMM0.i140 to i8*
  %3666 = load i64, i64* %PC.i138
  %3667 = add i64 %3666, 8
  store i64 %3667, i64* %PC.i138
  %3668 = bitcast i8* %3665 to double*
  %3669 = load double, double* %3668, align 1
  %3670 = inttoptr i64 %3664 to double*
  store double %3669, double* %3670
  store %struct.Memory* %loadMem_400a59, %struct.Memory** %MEMORY
  %loadMem_400a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 33
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3675 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3674, i64 0, i64 0
  %YMM0.i136 = bitcast %union.VectorReg* %3675 to %"class.std::bitset"*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3677 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3676, i64 0, i64 1
  %XMM1.i137 = bitcast %union.VectorReg* %3677 to %union.vec128_t*
  %3678 = bitcast %"class.std::bitset"* %YMM0.i136 to i8*
  %3679 = bitcast %union.vec128_t* %XMM1.i137 to i8*
  %3680 = load i64, i64* %PC.i135
  %3681 = add i64 %3680, 3
  store i64 %3681, i64* %PC.i135
  %3682 = bitcast i8* %3679 to <2 x i32>*
  %3683 = load <2 x i32>, <2 x i32>* %3682, align 1
  %3684 = getelementptr inbounds i8, i8* %3679, i64 8
  %3685 = bitcast i8* %3684 to <2 x i32>*
  %3686 = load <2 x i32>, <2 x i32>* %3685, align 1
  %3687 = extractelement <2 x i32> %3683, i32 0
  %3688 = bitcast i8* %3678 to i32*
  store i32 %3687, i32* %3688, align 1
  %3689 = extractelement <2 x i32> %3683, i32 1
  %3690 = getelementptr inbounds i8, i8* %3678, i64 4
  %3691 = bitcast i8* %3690 to i32*
  store i32 %3689, i32* %3691, align 1
  %3692 = extractelement <2 x i32> %3686, i32 0
  %3693 = getelementptr inbounds i8, i8* %3678, i64 8
  %3694 = bitcast i8* %3693 to i32*
  store i32 %3692, i32* %3694, align 1
  %3695 = extractelement <2 x i32> %3686, i32 1
  %3696 = getelementptr inbounds i8, i8* %3678, i64 12
  %3697 = bitcast i8* %3696 to i32*
  store i32 %3695, i32* %3697, align 1
  store %struct.Memory* %loadMem_400a61, %struct.Memory** %MEMORY
  %loadMem_400a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 33
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3700 to i64*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 15
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %3703 to i64*
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3705 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3704, i64 0, i64 1
  %YMM1.i134 = bitcast %union.VectorReg* %3705 to %"class.std::bitset"*
  %3706 = bitcast %"class.std::bitset"* %YMM1.i134 to i8*
  %3707 = load i64, i64* %RBP.i133
  %3708 = sub i64 %3707, 216
  %3709 = load i64, i64* %PC.i132
  %3710 = add i64 %3709, 8
  store i64 %3710, i64* %PC.i132
  %3711 = inttoptr i64 %3708 to double*
  %3712 = load double, double* %3711
  %3713 = bitcast i8* %3706 to double*
  store double %3712, double* %3713, align 1
  %3714 = getelementptr inbounds i8, i8* %3706, i64 8
  %3715 = bitcast i8* %3714 to double*
  store double 0.000000e+00, double* %3715, align 1
  store %struct.Memory* %loadMem_400a64, %struct.Memory** %MEMORY
  %loadMem_400a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 33
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 15
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %3721 to i64*
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3723 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3722, i64 0, i64 2
  %YMM2.i131 = bitcast %union.VectorReg* %3723 to %"class.std::bitset"*
  %3724 = bitcast %"class.std::bitset"* %YMM2.i131 to i8*
  %3725 = load i64, i64* %RBP.i130
  %3726 = sub i64 %3725, 224
  %3727 = load i64, i64* %PC.i129
  %3728 = add i64 %3727, 8
  store i64 %3728, i64* %PC.i129
  %3729 = inttoptr i64 %3726 to double*
  %3730 = load double, double* %3729
  %3731 = bitcast i8* %3724 to double*
  store double %3730, double* %3731, align 1
  %3732 = getelementptr inbounds i8, i8* %3724, i64 8
  %3733 = bitcast i8* %3732 to double*
  store double 0.000000e+00, double* %3733, align 1
  store %struct.Memory* %loadMem_400a6c, %struct.Memory** %MEMORY
  %loadMem1_400a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 33
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3736 to i64*
  %3737 = load i64, i64* %PC.i128
  %3738 = add i64 %3737, 716
  %3739 = load i64, i64* %PC.i128
  %3740 = add i64 %3739, 5
  %3741 = load i64, i64* %PC.i128
  %3742 = add i64 %3741, 5
  store i64 %3742, i64* %PC.i128
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3744 = load i64, i64* %3743, align 8
  %3745 = add i64 %3744, -8
  %3746 = inttoptr i64 %3745 to i64*
  store i64 %3740, i64* %3746
  store i64 %3745, i64* %3743, align 8
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3738, i64* %3747, align 8
  store %struct.Memory* %loadMem1_400a74, %struct.Memory** %MEMORY
  %loadMem2_400a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a74 = load i64, i64* %3
  %call2_400a74 = call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %loadPC_400a74, %struct.Memory* %loadMem2_400a74)
  store %struct.Memory* %call2_400a74, %struct.Memory** %MEMORY
  %loadMem_400a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 33
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3750 to i64*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3751, i64 0, i64 1
  %YMM1.i127 = bitcast %union.VectorReg* %3752 to %"class.std::bitset"*
  %3753 = bitcast %"class.std::bitset"* %YMM1.i127 to i8*
  %3754 = load i64, i64* %PC.i126
  %3755 = add i64 %3754, 983
  %3756 = load i64, i64* %PC.i126
  %3757 = add i64 %3756, 8
  store i64 %3757, i64* %PC.i126
  %3758 = inttoptr i64 %3755 to double*
  %3759 = load double, double* %3758
  %3760 = bitcast i8* %3753 to double*
  store double %3759, double* %3760, align 1
  %3761 = getelementptr inbounds i8, i8* %3753, i64 8
  %3762 = bitcast i8* %3761 to double*
  store double 0.000000e+00, double* %3762, align 1
  store %struct.Memory* %loadMem_400a79, %struct.Memory** %MEMORY
  %loadMem_400a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 33
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 15
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3769, i64 0, i64 2
  %YMM2.i125 = bitcast %union.VectorReg* %3770 to %"class.std::bitset"*
  %3771 = bitcast %"class.std::bitset"* %YMM2.i125 to i8*
  %3772 = load i64, i64* %RBP.i124
  %3773 = sub i64 %3772, 48
  %3774 = load i64, i64* %PC.i123
  %3775 = add i64 %3774, 5
  store i64 %3775, i64* %PC.i123
  %3776 = inttoptr i64 %3773 to double*
  %3777 = load double, double* %3776
  %3778 = bitcast i8* %3771 to double*
  store double %3777, double* %3778, align 1
  %3779 = getelementptr inbounds i8, i8* %3771, i64 8
  %3780 = bitcast i8* %3779 to double*
  store double 0.000000e+00, double* %3780, align 1
  store %struct.Memory* %loadMem_400a81, %struct.Memory** %MEMORY
  %loadMem_400a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 33
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 1
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 15
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %3789 to i64*
  %3790 = load i64, i64* %RBP.i122
  %3791 = sub i64 %3790, 76
  %3792 = load i64, i64* %PC.i120
  %3793 = add i64 %3792, 3
  store i64 %3793, i64* %PC.i120
  %3794 = inttoptr i64 %3791 to i32*
  %3795 = load i32, i32* %3794
  %3796 = zext i32 %3795 to i64
  store i64 %3796, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_400a86, %struct.Memory** %MEMORY
  %loadMem_400a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 33
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 1
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %3802 to i64*
  %3803 = load i64, i64* %RAX.i119
  %3804 = load i64, i64* %PC.i118
  %3805 = add i64 %3804, 3
  store i64 %3805, i64* %PC.i118
  %3806 = trunc i64 %3803 to i32
  %3807 = add i32 1, %3806
  %3808 = zext i32 %3807 to i64
  store i64 %3808, i64* %RAX.i119, align 8
  %3809 = icmp ult i32 %3807, %3806
  %3810 = icmp ult i32 %3807, 1
  %3811 = or i1 %3809, %3810
  %3812 = zext i1 %3811 to i8
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3812, i8* %3813, align 1
  %3814 = and i32 %3807, 255
  %3815 = call i32 @llvm.ctpop.i32(i32 %3814)
  %3816 = trunc i32 %3815 to i8
  %3817 = and i8 %3816, 1
  %3818 = xor i8 %3817, 1
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3818, i8* %3819, align 1
  %3820 = xor i64 1, %3803
  %3821 = trunc i64 %3820 to i32
  %3822 = xor i32 %3821, %3807
  %3823 = lshr i32 %3822, 4
  %3824 = trunc i32 %3823 to i8
  %3825 = and i8 %3824, 1
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3825, i8* %3826, align 1
  %3827 = icmp eq i32 %3807, 0
  %3828 = zext i1 %3827 to i8
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3828, i8* %3829, align 1
  %3830 = lshr i32 %3807, 31
  %3831 = trunc i32 %3830 to i8
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3831, i8* %3832, align 1
  %3833 = lshr i32 %3806, 31
  %3834 = xor i32 %3830, %3833
  %3835 = add i32 %3834, %3830
  %3836 = icmp eq i32 %3835, 2
  %3837 = zext i1 %3836 to i8
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3837, i8* %3838, align 1
  store %struct.Memory* %loadMem_400a89, %struct.Memory** %MEMORY
  %loadMem_400a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 33
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %3841 to i64*
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 1
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %3844 to i32*
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 5
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %3847 to i64*
  %3848 = load i32, i32* %EAX.i116
  %3849 = zext i32 %3848 to i64
  %3850 = load i64, i64* %PC.i115
  %3851 = add i64 %3850, 3
  store i64 %3851, i64* %PC.i115
  %3852 = shl i64 %3849, 32
  %3853 = ashr exact i64 %3852, 32
  store i64 %3853, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_400a8c, %struct.Memory** %MEMORY
  %loadMem_400a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 33
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3856 to i64*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 5
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %3859 to i64*
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 11
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %RDI.i114 = bitcast %union.anon* %3862 to i64*
  %3863 = load i64, i64* %RCX.i113
  %3864 = mul i64 %3863, 4
  %3865 = add i64 %3864, 6300752
  %3866 = load i64, i64* %PC.i112
  %3867 = add i64 %3866, 7
  store i64 %3867, i64* %PC.i112
  %3868 = inttoptr i64 %3865 to i32*
  %3869 = load i32, i32* %3868
  %3870 = zext i32 %3869 to i64
  store i64 %3870, i64* %RDI.i114, align 8
  store %struct.Memory* %loadMem_400a8f, %struct.Memory** %MEMORY
  %loadMem_400a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 33
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3873 to i64*
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 15
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %3876 to i64*
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3878 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3877, i64 0, i64 3
  %YMM3.i111 = bitcast %union.VectorReg* %3878 to %"class.std::bitset"*
  %3879 = bitcast %"class.std::bitset"* %YMM3.i111 to i8*
  %3880 = load i64, i64* %RBP.i110
  %3881 = sub i64 %3880, 8
  %3882 = load i64, i64* %PC.i109
  %3883 = add i64 %3882, 5
  store i64 %3883, i64* %PC.i109
  %3884 = inttoptr i64 %3881 to double*
  %3885 = load double, double* %3884
  %3886 = bitcast i8* %3879 to double*
  store double %3885, double* %3886, align 1
  %3887 = getelementptr inbounds i8, i8* %3879, i64 8
  %3888 = bitcast i8* %3887 to double*
  store double 0.000000e+00, double* %3888, align 1
  store %struct.Memory* %loadMem_400a96, %struct.Memory** %MEMORY
  %loadMem_400a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 33
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 15
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3896 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3895, i64 0, i64 4
  %YMM4.i108 = bitcast %union.VectorReg* %3896 to %"class.std::bitset"*
  %3897 = bitcast %"class.std::bitset"* %YMM4.i108 to i8*
  %3898 = load i64, i64* %RBP.i107
  %3899 = sub i64 %3898, 16
  %3900 = load i64, i64* %PC.i106
  %3901 = add i64 %3900, 5
  store i64 %3901, i64* %PC.i106
  %3902 = inttoptr i64 %3899 to double*
  %3903 = load double, double* %3902
  %3904 = bitcast i8* %3897 to double*
  store double %3903, double* %3904, align 1
  %3905 = getelementptr inbounds i8, i8* %3897, i64 8
  %3906 = bitcast i8* %3905 to double*
  store double 0.000000e+00, double* %3906, align 1
  store %struct.Memory* %loadMem_400a9b, %struct.Memory** %MEMORY
  %loadMem_400aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 33
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3910, i64 0, i64 4
  %YMM4.i104 = bitcast %union.VectorReg* %3911 to %"class.std::bitset"*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3913 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3912, i64 0, i64 1
  %XMM1.i105 = bitcast %union.VectorReg* %3913 to %union.vec128_t*
  %3914 = bitcast %"class.std::bitset"* %YMM4.i104 to i8*
  %3915 = bitcast %"class.std::bitset"* %YMM4.i104 to i8*
  %3916 = bitcast %union.vec128_t* %XMM1.i105 to i8*
  %3917 = load i64, i64* %PC.i103
  %3918 = add i64 %3917, 4
  store i64 %3918, i64* %PC.i103
  %3919 = bitcast i8* %3915 to double*
  %3920 = load double, double* %3919, align 1
  %3921 = getelementptr inbounds i8, i8* %3915, i64 8
  %3922 = bitcast i8* %3921 to i64*
  %3923 = load i64, i64* %3922, align 1
  %3924 = bitcast i8* %3916 to double*
  %3925 = load double, double* %3924, align 1
  %3926 = fsub double %3920, %3925
  %3927 = bitcast i8* %3914 to double*
  store double %3926, double* %3927, align 1
  %3928 = getelementptr inbounds i8, i8* %3914, i64 8
  %3929 = bitcast i8* %3928 to i64*
  store i64 %3923, i64* %3929, align 1
  store %struct.Memory* %loadMem_400aa0, %struct.Memory** %MEMORY
  %loadMem_400aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 33
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3932 to i64*
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 15
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %3935 to i64*
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3937 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3936, i64 0, i64 5
  %YMM5.i102 = bitcast %union.VectorReg* %3937 to %"class.std::bitset"*
  %3938 = bitcast %"class.std::bitset"* %YMM5.i102 to i8*
  %3939 = load i64, i64* %RBP.i101
  %3940 = sub i64 %3939, 24
  %3941 = load i64, i64* %PC.i100
  %3942 = add i64 %3941, 5
  store i64 %3942, i64* %PC.i100
  %3943 = inttoptr i64 %3940 to double*
  %3944 = load double, double* %3943
  %3945 = bitcast i8* %3938 to double*
  store double %3944, double* %3945, align 1
  %3946 = getelementptr inbounds i8, i8* %3938, i64 8
  %3947 = bitcast i8* %3946 to double*
  store double 0.000000e+00, double* %3947, align 1
  store %struct.Memory* %loadMem_400aa4, %struct.Memory** %MEMORY
  %loadMem_400aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3952 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3951, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %3952 to %"class.std::bitset"*
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3954 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3953, i64 0, i64 1
  %XMM1.i99 = bitcast %union.VectorReg* %3954 to %union.vec128_t*
  %3955 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %3956 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %3957 = bitcast %union.vec128_t* %XMM1.i99 to i8*
  %3958 = load i64, i64* %PC.i98
  %3959 = add i64 %3958, 4
  store i64 %3959, i64* %PC.i98
  %3960 = bitcast i8* %3956 to double*
  %3961 = load double, double* %3960, align 1
  %3962 = getelementptr inbounds i8, i8* %3956, i64 8
  %3963 = bitcast i8* %3962 to i64*
  %3964 = load i64, i64* %3963, align 1
  %3965 = bitcast i8* %3957 to double*
  %3966 = load double, double* %3965, align 1
  %3967 = fsub double %3961, %3966
  %3968 = bitcast i8* %3955 to double*
  store double %3967, double* %3968, align 1
  %3969 = getelementptr inbounds i8, i8* %3955, i64 8
  %3970 = bitcast i8* %3969 to i64*
  store i64 %3964, i64* %3970, align 1
  store %struct.Memory* %loadMem_400aa9, %struct.Memory** %MEMORY
  %loadMem_400aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 33
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3973 to i64*
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 15
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3978 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3977, i64 0, i64 0
  %XMM0.i97 = bitcast %union.VectorReg* %3978 to %union.vec128_t*
  %3979 = load i64, i64* %RBP.i96
  %3980 = sub i64 %3979, 232
  %3981 = bitcast %union.vec128_t* %XMM0.i97 to i8*
  %3982 = load i64, i64* %PC.i95
  %3983 = add i64 %3982, 8
  store i64 %3983, i64* %PC.i95
  %3984 = bitcast i8* %3981 to double*
  %3985 = load double, double* %3984, align 1
  %3986 = inttoptr i64 %3980 to double*
  store double %3985, double* %3986
  store %struct.Memory* %loadMem_400aad, %struct.Memory** %MEMORY
  %loadMem_400ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 33
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3989 to i64*
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3991 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3990, i64 0, i64 0
  %YMM0.i93 = bitcast %union.VectorReg* %3991 to %"class.std::bitset"*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3993 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3992, i64 0, i64 3
  %XMM3.i94 = bitcast %union.VectorReg* %3993 to %union.vec128_t*
  %3994 = bitcast %"class.std::bitset"* %YMM0.i93 to i8*
  %3995 = bitcast %union.vec128_t* %XMM3.i94 to i8*
  %3996 = load i64, i64* %PC.i92
  %3997 = add i64 %3996, 3
  store i64 %3997, i64* %PC.i92
  %3998 = bitcast i8* %3995 to <2 x i32>*
  %3999 = load <2 x i32>, <2 x i32>* %3998, align 1
  %4000 = getelementptr inbounds i8, i8* %3995, i64 8
  %4001 = bitcast i8* %4000 to <2 x i32>*
  %4002 = load <2 x i32>, <2 x i32>* %4001, align 1
  %4003 = extractelement <2 x i32> %3999, i32 0
  %4004 = bitcast i8* %3994 to i32*
  store i32 %4003, i32* %4004, align 1
  %4005 = extractelement <2 x i32> %3999, i32 1
  %4006 = getelementptr inbounds i8, i8* %3994, i64 4
  %4007 = bitcast i8* %4006 to i32*
  store i32 %4005, i32* %4007, align 1
  %4008 = extractelement <2 x i32> %4002, i32 0
  %4009 = getelementptr inbounds i8, i8* %3994, i64 8
  %4010 = bitcast i8* %4009 to i32*
  store i32 %4008, i32* %4010, align 1
  %4011 = extractelement <2 x i32> %4002, i32 1
  %4012 = getelementptr inbounds i8, i8* %3994, i64 12
  %4013 = bitcast i8* %4012 to i32*
  store i32 %4011, i32* %4013, align 1
  store %struct.Memory* %loadMem_400ab5, %struct.Memory** %MEMORY
  %loadMem_400ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 33
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4016 to i64*
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4017, i64 0, i64 1
  %YMM1.i90 = bitcast %union.VectorReg* %4018 to %"class.std::bitset"*
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4020 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4019, i64 0, i64 4
  %XMM4.i91 = bitcast %union.VectorReg* %4020 to %union.vec128_t*
  %4021 = bitcast %"class.std::bitset"* %YMM1.i90 to i8*
  %4022 = bitcast %union.vec128_t* %XMM4.i91 to i8*
  %4023 = load i64, i64* %PC.i89
  %4024 = add i64 %4023, 3
  store i64 %4024, i64* %PC.i89
  %4025 = bitcast i8* %4022 to <2 x i32>*
  %4026 = load <2 x i32>, <2 x i32>* %4025, align 1
  %4027 = getelementptr inbounds i8, i8* %4022, i64 8
  %4028 = bitcast i8* %4027 to <2 x i32>*
  %4029 = load <2 x i32>, <2 x i32>* %4028, align 1
  %4030 = extractelement <2 x i32> %4026, i32 0
  %4031 = bitcast i8* %4021 to i32*
  store i32 %4030, i32* %4031, align 1
  %4032 = extractelement <2 x i32> %4026, i32 1
  %4033 = getelementptr inbounds i8, i8* %4021, i64 4
  %4034 = bitcast i8* %4033 to i32*
  store i32 %4032, i32* %4034, align 1
  %4035 = extractelement <2 x i32> %4029, i32 0
  %4036 = getelementptr inbounds i8, i8* %4021, i64 8
  %4037 = bitcast i8* %4036 to i32*
  store i32 %4035, i32* %4037, align 1
  %4038 = extractelement <2 x i32> %4029, i32 1
  %4039 = getelementptr inbounds i8, i8* %4021, i64 12
  %4040 = bitcast i8* %4039 to i32*
  store i32 %4038, i32* %4040, align 1
  store %struct.Memory* %loadMem_400ab8, %struct.Memory** %MEMORY
  %loadMem_400abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 33
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4043 to i64*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 15
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4048 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4047, i64 0, i64 2
  %XMM2.i88 = bitcast %union.VectorReg* %4048 to %union.vec128_t*
  %4049 = load i64, i64* %RBP.i87
  %4050 = sub i64 %4049, 240
  %4051 = bitcast %union.vec128_t* %XMM2.i88 to i8*
  %4052 = load i64, i64* %PC.i86
  %4053 = add i64 %4052, 8
  store i64 %4053, i64* %PC.i86
  %4054 = bitcast i8* %4051 to double*
  %4055 = load double, double* %4054, align 1
  %4056 = inttoptr i64 %4050 to double*
  store double %4055, double* %4056
  store %struct.Memory* %loadMem_400abb, %struct.Memory** %MEMORY
  %loadMem_400ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 33
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4061 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4060, i64 0, i64 2
  %YMM2.i85 = bitcast %union.VectorReg* %4061 to %"class.std::bitset"*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4063 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4062, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %4063 to %union.vec128_t*
  %4064 = bitcast %"class.std::bitset"* %YMM2.i85 to i8*
  %4065 = bitcast %union.vec128_t* %XMM5.i to i8*
  %4066 = load i64, i64* %PC.i84
  %4067 = add i64 %4066, 3
  store i64 %4067, i64* %PC.i84
  %4068 = bitcast i8* %4065 to <2 x i32>*
  %4069 = load <2 x i32>, <2 x i32>* %4068, align 1
  %4070 = getelementptr inbounds i8, i8* %4065, i64 8
  %4071 = bitcast i8* %4070 to <2 x i32>*
  %4072 = load <2 x i32>, <2 x i32>* %4071, align 1
  %4073 = extractelement <2 x i32> %4069, i32 0
  %4074 = bitcast i8* %4064 to i32*
  store i32 %4073, i32* %4074, align 1
  %4075 = extractelement <2 x i32> %4069, i32 1
  %4076 = getelementptr inbounds i8, i8* %4064, i64 4
  %4077 = bitcast i8* %4076 to i32*
  store i32 %4075, i32* %4077, align 1
  %4078 = extractelement <2 x i32> %4072, i32 0
  %4079 = getelementptr inbounds i8, i8* %4064, i64 8
  %4080 = bitcast i8* %4079 to i32*
  store i32 %4078, i32* %4080, align 1
  %4081 = extractelement <2 x i32> %4072, i32 1
  %4082 = getelementptr inbounds i8, i8* %4064, i64 12
  %4083 = bitcast i8* %4082 to i32*
  store i32 %4081, i32* %4083, align 1
  store %struct.Memory* %loadMem_400ac3, %struct.Memory** %MEMORY
  %loadMem1_400ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 33
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4086 to i64*
  %4087 = load i64, i64* %PC.i83
  %4088 = add i64 %4087, 298
  %4089 = load i64, i64* %PC.i83
  %4090 = add i64 %4089, 5
  %4091 = load i64, i64* %PC.i83
  %4092 = add i64 %4091, 5
  store i64 %4092, i64* %PC.i83
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4094 = load i64, i64* %4093, align 8
  %4095 = add i64 %4094, -8
  %4096 = inttoptr i64 %4095 to i64*
  store i64 %4090, i64* %4096
  store i64 %4095, i64* %4093, align 8
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4088, i64* %4097, align 8
  store %struct.Memory* %loadMem1_400ac6, %struct.Memory** %MEMORY
  %loadMem2_400ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ac6 = load i64, i64* %3
  %call2_400ac6 = call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %loadPC_400ac6, %struct.Memory* %loadMem2_400ac6)
  store %struct.Memory* %call2_400ac6, %struct.Memory** %MEMORY
  %loadMem_400acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 33
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4100 to i64*
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4102 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4101, i64 0, i64 1
  %YMM1.i82 = bitcast %union.VectorReg* %4102 to %"class.std::bitset"*
  %4103 = bitcast %"class.std::bitset"* %YMM1.i82 to i8*
  %4104 = load i64, i64* %PC.i81
  %4105 = add i64 %4104, 901
  %4106 = load i64, i64* %PC.i81
  %4107 = add i64 %4106, 8
  store i64 %4107, i64* %PC.i81
  %4108 = inttoptr i64 %4105 to double*
  %4109 = load double, double* %4108
  %4110 = bitcast i8* %4103 to double*
  store double %4109, double* %4110, align 1
  %4111 = getelementptr inbounds i8, i8* %4103, i64 8
  %4112 = bitcast i8* %4111 to double*
  store double 0.000000e+00, double* %4112, align 1
  store %struct.Memory* %loadMem_400acb, %struct.Memory** %MEMORY
  %loadMem_400ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 33
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 1
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 15
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %RBP.i80
  %4123 = sub i64 %4122, 88
  %4124 = load i64, i64* %PC.i78
  %4125 = add i64 %4124, 3
  store i64 %4125, i64* %PC.i78
  %4126 = inttoptr i64 %4123 to i32*
  %4127 = load i32, i32* %4126
  %4128 = zext i32 %4127 to i64
  store i64 %4128, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_400ad3, %struct.Memory** %MEMORY
  %loadMem_400ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 33
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4131 to i64*
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 1
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4134 to i64*
  %4135 = load i64, i64* %RAX.i
  %4136 = load i64, i64* %PC.i77
  %4137 = add i64 %4136, 3
  store i64 %4137, i64* %PC.i77
  %4138 = trunc i64 %4135 to i32
  %4139 = add i32 1, %4138
  %4140 = zext i32 %4139 to i64
  store i64 %4140, i64* %RAX.i, align 8
  %4141 = icmp ult i32 %4139, %4138
  %4142 = icmp ult i32 %4139, 1
  %4143 = or i1 %4141, %4142
  %4144 = zext i1 %4143 to i8
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4144, i8* %4145, align 1
  %4146 = and i32 %4139, 255
  %4147 = call i32 @llvm.ctpop.i32(i32 %4146)
  %4148 = trunc i32 %4147 to i8
  %4149 = and i8 %4148, 1
  %4150 = xor i8 %4149, 1
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4150, i8* %4151, align 1
  %4152 = xor i64 1, %4135
  %4153 = trunc i64 %4152 to i32
  %4154 = xor i32 %4153, %4139
  %4155 = lshr i32 %4154, 4
  %4156 = trunc i32 %4155 to i8
  %4157 = and i8 %4156, 1
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4157, i8* %4158, align 1
  %4159 = icmp eq i32 %4139, 0
  %4160 = zext i1 %4159 to i8
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4160, i8* %4161, align 1
  %4162 = lshr i32 %4139, 31
  %4163 = trunc i32 %4162 to i8
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4163, i8* %4164, align 1
  %4165 = lshr i32 %4138, 31
  %4166 = xor i32 %4162, %4165
  %4167 = add i32 %4166, %4162
  %4168 = icmp eq i32 %4167, 2
  %4169 = zext i1 %4168 to i8
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4169, i8* %4170, align 1
  store %struct.Memory* %loadMem_400ad6, %struct.Memory** %MEMORY
  %loadMem_400ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 33
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4173 to i64*
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 1
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4176 to i32*
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 5
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %4179 to i64*
  %4180 = load i32, i32* %EAX.i
  %4181 = zext i32 %4180 to i64
  %4182 = load i64, i64* %PC.i75
  %4183 = add i64 %4182, 3
  store i64 %4183, i64* %PC.i75
  %4184 = shl i64 %4181, 32
  %4185 = ashr exact i64 %4184, 32
  store i64 %4185, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_400ad9, %struct.Memory** %MEMORY
  %loadMem_400adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 33
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4188 to i64*
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 5
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4191 to i64*
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 11
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4194 to i64*
  %4195 = load i64, i64* %RCX.i
  %4196 = mul i64 %4195, 4
  %4197 = add i64 %4196, 6300752
  %4198 = load i64, i64* %PC.i74
  %4199 = add i64 %4198, 7
  store i64 %4199, i64* %PC.i74
  %4200 = inttoptr i64 %4197 to i32*
  %4201 = load i32, i32* %4200
  %4202 = zext i32 %4201 to i64
  store i64 %4202, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400adc, %struct.Memory** %MEMORY
  %loadMem_400ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 33
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4205 to i64*
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 15
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %4208 to i64*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4210 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4209, i64 0, i64 2
  %YMM2.i73 = bitcast %union.VectorReg* %4210 to %"class.std::bitset"*
  %4211 = bitcast %"class.std::bitset"* %YMM2.i73 to i8*
  %4212 = load i64, i64* %RBP.i72
  %4213 = sub i64 %4212, 8
  %4214 = load i64, i64* %PC.i71
  %4215 = add i64 %4214, 5
  store i64 %4215, i64* %PC.i71
  %4216 = inttoptr i64 %4213 to double*
  %4217 = load double, double* %4216
  %4218 = bitcast i8* %4211 to double*
  store double %4217, double* %4218, align 1
  %4219 = getelementptr inbounds i8, i8* %4211, i64 8
  %4220 = bitcast i8* %4219 to double*
  store double 0.000000e+00, double* %4220, align 1
  store %struct.Memory* %loadMem_400ae3, %struct.Memory** %MEMORY
  %loadMem_400ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 33
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4223 to i64*
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4224, i64 0, i64 2
  %YMM2.i69 = bitcast %union.VectorReg* %4225 to %"class.std::bitset"*
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4226, i64 0, i64 1
  %XMM1.i70 = bitcast %union.VectorReg* %4227 to %union.vec128_t*
  %4228 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %4229 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %4230 = bitcast %union.vec128_t* %XMM1.i70 to i8*
  %4231 = load i64, i64* %PC.i68
  %4232 = add i64 %4231, 4
  store i64 %4232, i64* %PC.i68
  %4233 = bitcast i8* %4229 to double*
  %4234 = load double, double* %4233, align 1
  %4235 = getelementptr inbounds i8, i8* %4229, i64 8
  %4236 = bitcast i8* %4235 to i64*
  %4237 = load i64, i64* %4236, align 1
  %4238 = bitcast i8* %4230 to double*
  %4239 = load double, double* %4238, align 1
  %4240 = fsub double %4234, %4239
  %4241 = bitcast i8* %4228 to double*
  store double %4240, double* %4241, align 1
  %4242 = getelementptr inbounds i8, i8* %4228, i64 8
  %4243 = bitcast i8* %4242 to i64*
  store i64 %4237, i64* %4243, align 1
  store %struct.Memory* %loadMem_400ae8, %struct.Memory** %MEMORY
  %loadMem_400aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 33
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4246 to i64*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 15
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %4249 to i64*
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4250, i64 0, i64 3
  %YMM3.i67 = bitcast %union.VectorReg* %4251 to %"class.std::bitset"*
  %4252 = bitcast %"class.std::bitset"* %YMM3.i67 to i8*
  %4253 = load i64, i64* %RBP.i66
  %4254 = sub i64 %4253, 16
  %4255 = load i64, i64* %PC.i65
  %4256 = add i64 %4255, 5
  store i64 %4256, i64* %PC.i65
  %4257 = inttoptr i64 %4254 to double*
  %4258 = load double, double* %4257
  %4259 = bitcast i8* %4252 to double*
  store double %4258, double* %4259, align 1
  %4260 = getelementptr inbounds i8, i8* %4252, i64 8
  %4261 = bitcast i8* %4260 to double*
  store double 0.000000e+00, double* %4261, align 1
  store %struct.Memory* %loadMem_400aec, %struct.Memory** %MEMORY
  %loadMem_400af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 33
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4264 to i64*
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4266 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4265, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %4266 to %"class.std::bitset"*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4267, i64 0, i64 1
  %XMM1.i64 = bitcast %union.VectorReg* %4268 to %union.vec128_t*
  %4269 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %4270 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %4271 = bitcast %union.vec128_t* %XMM1.i64 to i8*
  %4272 = load i64, i64* %PC.i63
  %4273 = add i64 %4272, 4
  store i64 %4273, i64* %PC.i63
  %4274 = bitcast i8* %4270 to double*
  %4275 = load double, double* %4274, align 1
  %4276 = getelementptr inbounds i8, i8* %4270, i64 8
  %4277 = bitcast i8* %4276 to i64*
  %4278 = load i64, i64* %4277, align 1
  %4279 = bitcast i8* %4271 to double*
  %4280 = load double, double* %4279, align 1
  %4281 = fsub double %4275, %4280
  %4282 = bitcast i8* %4269 to double*
  store double %4281, double* %4282, align 1
  %4283 = getelementptr inbounds i8, i8* %4269, i64 8
  %4284 = bitcast i8* %4283 to i64*
  store i64 %4278, i64* %4284, align 1
  store %struct.Memory* %loadMem_400af1, %struct.Memory** %MEMORY
  %loadMem_400af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 33
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4287 to i64*
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 15
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %4290 to i64*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4292 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4291, i64 0, i64 4
  %YMM4.i62 = bitcast %union.VectorReg* %4292 to %"class.std::bitset"*
  %4293 = bitcast %"class.std::bitset"* %YMM4.i62 to i8*
  %4294 = load i64, i64* %RBP.i61
  %4295 = sub i64 %4294, 24
  %4296 = load i64, i64* %PC.i60
  %4297 = add i64 %4296, 5
  store i64 %4297, i64* %PC.i60
  %4298 = inttoptr i64 %4295 to double*
  %4299 = load double, double* %4298
  %4300 = bitcast i8* %4293 to double*
  store double %4299, double* %4300, align 1
  %4301 = getelementptr inbounds i8, i8* %4293, i64 8
  %4302 = bitcast i8* %4301 to double*
  store double 0.000000e+00, double* %4302, align 1
  store %struct.Memory* %loadMem_400af5, %struct.Memory** %MEMORY
  %loadMem_400afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 33
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4305 to i64*
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4306, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %4307 to %"class.std::bitset"*
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4308, i64 0, i64 1
  %XMM1.i59 = bitcast %union.VectorReg* %4309 to %union.vec128_t*
  %4310 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %4311 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %4312 = bitcast %union.vec128_t* %XMM1.i59 to i8*
  %4313 = load i64, i64* %PC.i58
  %4314 = add i64 %4313, 4
  store i64 %4314, i64* %PC.i58
  %4315 = bitcast i8* %4311 to double*
  %4316 = load double, double* %4315, align 1
  %4317 = getelementptr inbounds i8, i8* %4311, i64 8
  %4318 = bitcast i8* %4317 to i64*
  %4319 = load i64, i64* %4318, align 1
  %4320 = bitcast i8* %4312 to double*
  %4321 = load double, double* %4320, align 1
  %4322 = fsub double %4316, %4321
  %4323 = bitcast i8* %4310 to double*
  store double %4322, double* %4323, align 1
  %4324 = getelementptr inbounds i8, i8* %4310, i64 8
  %4325 = bitcast i8* %4324 to i64*
  store i64 %4319, i64* %4325, align 1
  store %struct.Memory* %loadMem_400afa, %struct.Memory** %MEMORY
  %loadMem_400afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 33
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %4328 to i64*
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 15
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %4331 to i64*
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4332, i64 0, i64 0
  %XMM0.i57 = bitcast %union.VectorReg* %4333 to %union.vec128_t*
  %4334 = load i64, i64* %RBP.i56
  %4335 = sub i64 %4334, 248
  %4336 = bitcast %union.vec128_t* %XMM0.i57 to i8*
  %4337 = load i64, i64* %PC.i55
  %4338 = add i64 %4337, 8
  store i64 %4338, i64* %PC.i55
  %4339 = bitcast i8* %4336 to double*
  %4340 = load double, double* %4339, align 1
  %4341 = inttoptr i64 %4335 to double*
  store double %4340, double* %4341
  store %struct.Memory* %loadMem_400afe, %struct.Memory** %MEMORY
  %loadMem_400b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 33
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4344 to i64*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4346 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4345, i64 0, i64 0
  %YMM0.i54 = bitcast %union.VectorReg* %4346 to %"class.std::bitset"*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4348 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4347, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %4348 to %union.vec128_t*
  %4349 = bitcast %"class.std::bitset"* %YMM0.i54 to i8*
  %4350 = bitcast %union.vec128_t* %XMM2.i to i8*
  %4351 = load i64, i64* %PC.i53
  %4352 = add i64 %4351, 3
  store i64 %4352, i64* %PC.i53
  %4353 = bitcast i8* %4350 to <2 x i32>*
  %4354 = load <2 x i32>, <2 x i32>* %4353, align 1
  %4355 = getelementptr inbounds i8, i8* %4350, i64 8
  %4356 = bitcast i8* %4355 to <2 x i32>*
  %4357 = load <2 x i32>, <2 x i32>* %4356, align 1
  %4358 = extractelement <2 x i32> %4354, i32 0
  %4359 = bitcast i8* %4349 to i32*
  store i32 %4358, i32* %4359, align 1
  %4360 = extractelement <2 x i32> %4354, i32 1
  %4361 = getelementptr inbounds i8, i8* %4349, i64 4
  %4362 = bitcast i8* %4361 to i32*
  store i32 %4360, i32* %4362, align 1
  %4363 = extractelement <2 x i32> %4357, i32 0
  %4364 = getelementptr inbounds i8, i8* %4349, i64 8
  %4365 = bitcast i8* %4364 to i32*
  store i32 %4363, i32* %4365, align 1
  %4366 = extractelement <2 x i32> %4357, i32 1
  %4367 = getelementptr inbounds i8, i8* %4349, i64 12
  %4368 = bitcast i8* %4367 to i32*
  store i32 %4366, i32* %4368, align 1
  store %struct.Memory* %loadMem_400b06, %struct.Memory** %MEMORY
  %loadMem_400b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4373 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4372, i64 0, i64 1
  %YMM1.i52 = bitcast %union.VectorReg* %4373 to %"class.std::bitset"*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4375 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4374, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %4375 to %union.vec128_t*
  %4376 = bitcast %"class.std::bitset"* %YMM1.i52 to i8*
  %4377 = bitcast %union.vec128_t* %XMM3.i to i8*
  %4378 = load i64, i64* %PC.i51
  %4379 = add i64 %4378, 3
  store i64 %4379, i64* %PC.i51
  %4380 = bitcast i8* %4377 to <2 x i32>*
  %4381 = load <2 x i32>, <2 x i32>* %4380, align 1
  %4382 = getelementptr inbounds i8, i8* %4377, i64 8
  %4383 = bitcast i8* %4382 to <2 x i32>*
  %4384 = load <2 x i32>, <2 x i32>* %4383, align 1
  %4385 = extractelement <2 x i32> %4381, i32 0
  %4386 = bitcast i8* %4376 to i32*
  store i32 %4385, i32* %4386, align 1
  %4387 = extractelement <2 x i32> %4381, i32 1
  %4388 = getelementptr inbounds i8, i8* %4376, i64 4
  %4389 = bitcast i8* %4388 to i32*
  store i32 %4387, i32* %4389, align 1
  %4390 = extractelement <2 x i32> %4384, i32 0
  %4391 = getelementptr inbounds i8, i8* %4376, i64 8
  %4392 = bitcast i8* %4391 to i32*
  store i32 %4390, i32* %4392, align 1
  %4393 = extractelement <2 x i32> %4384, i32 1
  %4394 = getelementptr inbounds i8, i8* %4376, i64 12
  %4395 = bitcast i8* %4394 to i32*
  store i32 %4393, i32* %4395, align 1
  store %struct.Memory* %loadMem_400b09, %struct.Memory** %MEMORY
  %loadMem_400b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 33
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4398 to i64*
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4400 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4399, i64 0, i64 2
  %YMM2.i50 = bitcast %union.VectorReg* %4400 to %"class.std::bitset"*
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4402 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4401, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %4402 to %union.vec128_t*
  %4403 = bitcast %"class.std::bitset"* %YMM2.i50 to i8*
  %4404 = bitcast %union.vec128_t* %XMM4.i to i8*
  %4405 = load i64, i64* %PC.i49
  %4406 = add i64 %4405, 3
  store i64 %4406, i64* %PC.i49
  %4407 = bitcast i8* %4404 to <2 x i32>*
  %4408 = load <2 x i32>, <2 x i32>* %4407, align 1
  %4409 = getelementptr inbounds i8, i8* %4404, i64 8
  %4410 = bitcast i8* %4409 to <2 x i32>*
  %4411 = load <2 x i32>, <2 x i32>* %4410, align 1
  %4412 = extractelement <2 x i32> %4408, i32 0
  %4413 = bitcast i8* %4403 to i32*
  store i32 %4412, i32* %4413, align 1
  %4414 = extractelement <2 x i32> %4408, i32 1
  %4415 = getelementptr inbounds i8, i8* %4403, i64 4
  %4416 = bitcast i8* %4415 to i32*
  store i32 %4414, i32* %4416, align 1
  %4417 = extractelement <2 x i32> %4411, i32 0
  %4418 = getelementptr inbounds i8, i8* %4403, i64 8
  %4419 = bitcast i8* %4418 to i32*
  store i32 %4417, i32* %4419, align 1
  %4420 = extractelement <2 x i32> %4411, i32 1
  %4421 = getelementptr inbounds i8, i8* %4403, i64 12
  %4422 = bitcast i8* %4421 to i32*
  store i32 %4420, i32* %4422, align 1
  store %struct.Memory* %loadMem_400b0c, %struct.Memory** %MEMORY
  %loadMem1_400b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 33
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4425 to i64*
  %4426 = load i64, i64* %PC.i48
  %4427 = add i64 %4426, 225
  %4428 = load i64, i64* %PC.i48
  %4429 = add i64 %4428, 5
  %4430 = load i64, i64* %PC.i48
  %4431 = add i64 %4430, 5
  store i64 %4431, i64* %PC.i48
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4433 = load i64, i64* %4432, align 8
  %4434 = add i64 %4433, -8
  %4435 = inttoptr i64 %4434 to i64*
  store i64 %4429, i64* %4435
  store i64 %4434, i64* %4432, align 8
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4427, i64* %4436, align 8
  store %struct.Memory* %loadMem1_400b0f, %struct.Memory** %MEMORY
  %loadMem2_400b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b0f = load i64, i64* %3
  %call2_400b0f = call %struct.Memory* @sub_400bf0.grad(%struct.State* %0, i64 %loadPC_400b0f, %struct.Memory* %loadMem2_400b0f)
  store %struct.Memory* %call2_400b0f, %struct.Memory** %MEMORY
  %loadMem_400b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4438 = getelementptr inbounds %struct.GPR, %struct.GPR* %4437, i32 0, i32 33
  %4439 = getelementptr inbounds %struct.Reg, %struct.Reg* %4438, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4439 to i64*
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 15
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %4442 to i64*
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4444 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4443, i64 0, i64 1
  %YMM1.i47 = bitcast %union.VectorReg* %4444 to %"class.std::bitset"*
  %4445 = bitcast %"class.std::bitset"* %YMM1.i47 to i8*
  %4446 = load i64, i64* %RBP.i46
  %4447 = sub i64 %4446, 240
  %4448 = load i64, i64* %PC.i45
  %4449 = add i64 %4448, 8
  store i64 %4449, i64* %PC.i45
  %4450 = inttoptr i64 %4447 to double*
  %4451 = load double, double* %4450
  %4452 = bitcast i8* %4445 to double*
  store double %4451, double* %4452, align 1
  %4453 = getelementptr inbounds i8, i8* %4445, i64 8
  %4454 = bitcast i8* %4453 to double*
  store double 0.000000e+00, double* %4454, align 1
  store %struct.Memory* %loadMem_400b14, %struct.Memory** %MEMORY
  %loadMem_400b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 33
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4457 to i64*
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 15
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %4460 to i64*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4462 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4461, i64 0, i64 0
  %XMM0.i44 = bitcast %union.VectorReg* %4462 to %union.vec128_t*
  %4463 = load i64, i64* %RBP.i43
  %4464 = sub i64 %4463, 256
  %4465 = bitcast %union.vec128_t* %XMM0.i44 to i8*
  %4466 = load i64, i64* %PC.i42
  %4467 = add i64 %4466, 8
  store i64 %4467, i64* %PC.i42
  %4468 = bitcast i8* %4465 to double*
  %4469 = load double, double* %4468, align 1
  %4470 = inttoptr i64 %4464 to double*
  store double %4469, double* %4470
  store %struct.Memory* %loadMem_400b1c, %struct.Memory** %MEMORY
  %loadMem_400b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4473 to i64*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4475 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4474, i64 0, i64 0
  %YMM0.i40 = bitcast %union.VectorReg* %4475 to %"class.std::bitset"*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4477 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4476, i64 0, i64 1
  %XMM1.i41 = bitcast %union.VectorReg* %4477 to %union.vec128_t*
  %4478 = bitcast %"class.std::bitset"* %YMM0.i40 to i8*
  %4479 = bitcast %union.vec128_t* %XMM1.i41 to i8*
  %4480 = load i64, i64* %PC.i39
  %4481 = add i64 %4480, 3
  store i64 %4481, i64* %PC.i39
  %4482 = bitcast i8* %4479 to <2 x i32>*
  %4483 = load <2 x i32>, <2 x i32>* %4482, align 1
  %4484 = getelementptr inbounds i8, i8* %4479, i64 8
  %4485 = bitcast i8* %4484 to <2 x i32>*
  %4486 = load <2 x i32>, <2 x i32>* %4485, align 1
  %4487 = extractelement <2 x i32> %4483, i32 0
  %4488 = bitcast i8* %4478 to i32*
  store i32 %4487, i32* %4488, align 1
  %4489 = extractelement <2 x i32> %4483, i32 1
  %4490 = getelementptr inbounds i8, i8* %4478, i64 4
  %4491 = bitcast i8* %4490 to i32*
  store i32 %4489, i32* %4491, align 1
  %4492 = extractelement <2 x i32> %4486, i32 0
  %4493 = getelementptr inbounds i8, i8* %4478, i64 8
  %4494 = bitcast i8* %4493 to i32*
  store i32 %4492, i32* %4494, align 1
  %4495 = extractelement <2 x i32> %4486, i32 1
  %4496 = getelementptr inbounds i8, i8* %4478, i64 12
  %4497 = bitcast i8* %4496 to i32*
  store i32 %4495, i32* %4497, align 1
  store %struct.Memory* %loadMem_400b24, %struct.Memory** %MEMORY
  %loadMem_400b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 33
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4500 to i64*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 15
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %4503 to i64*
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4505 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4504, i64 0, i64 1
  %YMM1.i38 = bitcast %union.VectorReg* %4505 to %"class.std::bitset"*
  %4506 = bitcast %"class.std::bitset"* %YMM1.i38 to i8*
  %4507 = load i64, i64* %RBP.i37
  %4508 = sub i64 %4507, 248
  %4509 = load i64, i64* %PC.i36
  %4510 = add i64 %4509, 8
  store i64 %4510, i64* %PC.i36
  %4511 = inttoptr i64 %4508 to double*
  %4512 = load double, double* %4511
  %4513 = bitcast i8* %4506 to double*
  store double %4512, double* %4513, align 1
  %4514 = getelementptr inbounds i8, i8* %4506, i64 8
  %4515 = bitcast i8* %4514 to double*
  store double 0.000000e+00, double* %4515, align 1
  store %struct.Memory* %loadMem_400b27, %struct.Memory** %MEMORY
  %loadMem_400b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 33
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4518 to i64*
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4520 = getelementptr inbounds %struct.GPR, %struct.GPR* %4519, i32 0, i32 15
  %4521 = getelementptr inbounds %struct.Reg, %struct.Reg* %4520, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %4521 to i64*
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4523 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4522, i64 0, i64 2
  %YMM2.i35 = bitcast %union.VectorReg* %4523 to %"class.std::bitset"*
  %4524 = bitcast %"class.std::bitset"* %YMM2.i35 to i8*
  %4525 = load i64, i64* %RBP.i34
  %4526 = sub i64 %4525, 256
  %4527 = load i64, i64* %PC.i33
  %4528 = add i64 %4527, 8
  store i64 %4528, i64* %PC.i33
  %4529 = inttoptr i64 %4526 to double*
  %4530 = load double, double* %4529
  %4531 = bitcast i8* %4524 to double*
  store double %4530, double* %4531, align 1
  %4532 = getelementptr inbounds i8, i8* %4524, i64 8
  %4533 = bitcast i8* %4532 to double*
  store double 0.000000e+00, double* %4533, align 1
  store %struct.Memory* %loadMem_400b2f, %struct.Memory** %MEMORY
  %loadMem1_400b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 33
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4536 to i64*
  %4537 = load i64, i64* %PC.i32
  %4538 = add i64 %4537, 521
  %4539 = load i64, i64* %PC.i32
  %4540 = add i64 %4539, 5
  %4541 = load i64, i64* %PC.i32
  %4542 = add i64 %4541, 5
  store i64 %4542, i64* %PC.i32
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4544 = load i64, i64* %4543, align 8
  %4545 = add i64 %4544, -8
  %4546 = inttoptr i64 %4545 to i64*
  store i64 %4540, i64* %4546
  store i64 %4545, i64* %4543, align 8
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4538, i64* %4547, align 8
  store %struct.Memory* %loadMem1_400b37, %struct.Memory** %MEMORY
  %loadMem2_400b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b37 = load i64, i64* %3
  %call2_400b37 = call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %loadPC_400b37, %struct.Memory* %loadMem2_400b37)
  store %struct.Memory* %call2_400b37, %struct.Memory** %MEMORY
  %loadMem_400b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 33
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4550 to i64*
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 15
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %4553 to i64*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4554, i64 0, i64 1
  %YMM1.i31 = bitcast %union.VectorReg* %4555 to %"class.std::bitset"*
  %4556 = bitcast %"class.std::bitset"* %YMM1.i31 to i8*
  %4557 = load i64, i64* %RBP.i30
  %4558 = sub i64 %4557, 200
  %4559 = load i64, i64* %PC.i29
  %4560 = add i64 %4559, 8
  store i64 %4560, i64* %PC.i29
  %4561 = inttoptr i64 %4558 to double*
  %4562 = load double, double* %4561
  %4563 = bitcast i8* %4556 to double*
  store double %4562, double* %4563, align 1
  %4564 = getelementptr inbounds i8, i8* %4556, i64 8
  %4565 = bitcast i8* %4564 to double*
  store double 0.000000e+00, double* %4565, align 1
  store %struct.Memory* %loadMem_400b3c, %struct.Memory** %MEMORY
  %loadMem_400b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 33
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 15
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %4571 to i64*
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4572, i64 0, i64 0
  %XMM0.i28 = bitcast %union.VectorReg* %4573 to %union.vec128_t*
  %4574 = load i64, i64* %RBP.i27
  %4575 = sub i64 %4574, 264
  %4576 = bitcast %union.vec128_t* %XMM0.i28 to i8*
  %4577 = load i64, i64* %PC.i26
  %4578 = add i64 %4577, 8
  store i64 %4578, i64* %PC.i26
  %4579 = bitcast i8* %4576 to double*
  %4580 = load double, double* %4579, align 1
  %4581 = inttoptr i64 %4575 to double*
  store double %4580, double* %4581
  store %struct.Memory* %loadMem_400b44, %struct.Memory** %MEMORY
  %loadMem_400b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 33
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4584 to i64*
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4586 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4585, i64 0, i64 0
  %YMM0.i24 = bitcast %union.VectorReg* %4586 to %"class.std::bitset"*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4588 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4587, i64 0, i64 1
  %XMM1.i25 = bitcast %union.VectorReg* %4588 to %union.vec128_t*
  %4589 = bitcast %"class.std::bitset"* %YMM0.i24 to i8*
  %4590 = bitcast %union.vec128_t* %XMM1.i25 to i8*
  %4591 = load i64, i64* %PC.i23
  %4592 = add i64 %4591, 3
  store i64 %4592, i64* %PC.i23
  %4593 = bitcast i8* %4590 to <2 x i32>*
  %4594 = load <2 x i32>, <2 x i32>* %4593, align 1
  %4595 = getelementptr inbounds i8, i8* %4590, i64 8
  %4596 = bitcast i8* %4595 to <2 x i32>*
  %4597 = load <2 x i32>, <2 x i32>* %4596, align 1
  %4598 = extractelement <2 x i32> %4594, i32 0
  %4599 = bitcast i8* %4589 to i32*
  store i32 %4598, i32* %4599, align 1
  %4600 = extractelement <2 x i32> %4594, i32 1
  %4601 = getelementptr inbounds i8, i8* %4589, i64 4
  %4602 = bitcast i8* %4601 to i32*
  store i32 %4600, i32* %4602, align 1
  %4603 = extractelement <2 x i32> %4597, i32 0
  %4604 = getelementptr inbounds i8, i8* %4589, i64 8
  %4605 = bitcast i8* %4604 to i32*
  store i32 %4603, i32* %4605, align 1
  %4606 = extractelement <2 x i32> %4597, i32 1
  %4607 = getelementptr inbounds i8, i8* %4589, i64 12
  %4608 = bitcast i8* %4607 to i32*
  store i32 %4606, i32* %4608, align 1
  store %struct.Memory* %loadMem_400b4c, %struct.Memory** %MEMORY
  %loadMem_400b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 33
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4611 to i64*
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 15
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4614 to i64*
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4615, i64 0, i64 1
  %YMM1.i22 = bitcast %union.VectorReg* %4616 to %"class.std::bitset"*
  %4617 = bitcast %"class.std::bitset"* %YMM1.i22 to i8*
  %4618 = load i64, i64* %RBP.i21
  %4619 = sub i64 %4618, 232
  %4620 = load i64, i64* %PC.i20
  %4621 = add i64 %4620, 8
  store i64 %4621, i64* %PC.i20
  %4622 = inttoptr i64 %4619 to double*
  %4623 = load double, double* %4622
  %4624 = bitcast i8* %4617 to double*
  store double %4623, double* %4624, align 1
  %4625 = getelementptr inbounds i8, i8* %4617, i64 8
  %4626 = bitcast i8* %4625 to double*
  store double 0.000000e+00, double* %4626, align 1
  store %struct.Memory* %loadMem_400b4f, %struct.Memory** %MEMORY
  %loadMem_400b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 33
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4629 to i64*
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 15
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4633, i64 0, i64 2
  %YMM2.i19 = bitcast %union.VectorReg* %4634 to %"class.std::bitset"*
  %4635 = bitcast %"class.std::bitset"* %YMM2.i19 to i8*
  %4636 = load i64, i64* %RBP.i18
  %4637 = sub i64 %4636, 264
  %4638 = load i64, i64* %PC.i17
  %4639 = add i64 %4638, 8
  store i64 %4639, i64* %PC.i17
  %4640 = inttoptr i64 %4637 to double*
  %4641 = load double, double* %4640
  %4642 = bitcast i8* %4635 to double*
  store double %4641, double* %4642, align 1
  %4643 = getelementptr inbounds i8, i8* %4635, i64 8
  %4644 = bitcast i8* %4643 to double*
  store double 0.000000e+00, double* %4644, align 1
  store %struct.Memory* %loadMem_400b57, %struct.Memory** %MEMORY
  %loadMem1_400b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 33
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4647 to i64*
  %4648 = load i64, i64* %PC.i16
  %4649 = add i64 %4648, 481
  %4650 = load i64, i64* %PC.i16
  %4651 = add i64 %4650, 5
  %4652 = load i64, i64* %PC.i16
  %4653 = add i64 %4652, 5
  store i64 %4653, i64* %PC.i16
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4655 = load i64, i64* %4654, align 8
  %4656 = add i64 %4655, -8
  %4657 = inttoptr i64 %4656 to i64*
  store i64 %4651, i64* %4657
  store i64 %4656, i64* %4654, align 8
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4649, i64* %4658, align 8
  store %struct.Memory* %loadMem1_400b5f, %struct.Memory** %MEMORY
  %loadMem2_400b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b5f = load i64, i64* %3
  %call2_400b5f = call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %loadPC_400b5f, %struct.Memory* %loadMem2_400b5f)
  store %struct.Memory* %call2_400b5f, %struct.Memory** %MEMORY
  %loadMem_400b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 33
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4661 to i64*
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 15
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %4664 to i64*
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4666 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4665, i64 0, i64 1
  %YMM1.i15 = bitcast %union.VectorReg* %4666 to %"class.std::bitset"*
  %4667 = bitcast %"class.std::bitset"* %YMM1.i15 to i8*
  %4668 = load i64, i64* %RBP.i14
  %4669 = sub i64 %4668, 96
  %4670 = load i64, i64* %PC.i13
  %4671 = add i64 %4670, 5
  store i64 %4671, i64* %PC.i13
  %4672 = inttoptr i64 %4669 to double*
  %4673 = load double, double* %4672
  %4674 = bitcast i8* %4667 to double*
  store double %4673, double* %4674, align 1
  %4675 = getelementptr inbounds i8, i8* %4667, i64 8
  %4676 = bitcast i8* %4675 to double*
  store double 0.000000e+00, double* %4676, align 1
  store %struct.Memory* %loadMem_400b64, %struct.Memory** %MEMORY
  %loadMem_400b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 33
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4679 to i64*
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 15
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %4682 to i64*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4684 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4683, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4684 to %union.vec128_t*
  %4685 = load i64, i64* %RBP.i12
  %4686 = sub i64 %4685, 272
  %4687 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4688 = load i64, i64* %PC.i11
  %4689 = add i64 %4688, 8
  store i64 %4689, i64* %PC.i11
  %4690 = bitcast i8* %4687 to double*
  %4691 = load double, double* %4690, align 1
  %4692 = inttoptr i64 %4686 to double*
  store double %4691, double* %4692
  store %struct.Memory* %loadMem_400b69, %struct.Memory** %MEMORY
  %loadMem_400b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 33
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4697 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4696, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4697 to %"class.std::bitset"*
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4699 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4698, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4699 to %union.vec128_t*
  %4700 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4701 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4702 = load i64, i64* %PC.i10
  %4703 = add i64 %4702, 3
  store i64 %4703, i64* %PC.i10
  %4704 = bitcast i8* %4701 to <2 x i32>*
  %4705 = load <2 x i32>, <2 x i32>* %4704, align 1
  %4706 = getelementptr inbounds i8, i8* %4701, i64 8
  %4707 = bitcast i8* %4706 to <2 x i32>*
  %4708 = load <2 x i32>, <2 x i32>* %4707, align 1
  %4709 = extractelement <2 x i32> %4705, i32 0
  %4710 = bitcast i8* %4700 to i32*
  store i32 %4709, i32* %4710, align 1
  %4711 = extractelement <2 x i32> %4705, i32 1
  %4712 = getelementptr inbounds i8, i8* %4700, i64 4
  %4713 = bitcast i8* %4712 to i32*
  store i32 %4711, i32* %4713, align 1
  %4714 = extractelement <2 x i32> %4708, i32 0
  %4715 = getelementptr inbounds i8, i8* %4700, i64 8
  %4716 = bitcast i8* %4715 to i32*
  store i32 %4714, i32* %4716, align 1
  %4717 = extractelement <2 x i32> %4708, i32 1
  %4718 = getelementptr inbounds i8, i8* %4700, i64 12
  %4719 = bitcast i8* %4718 to i32*
  store i32 %4717, i32* %4719, align 1
  store %struct.Memory* %loadMem_400b71, %struct.Memory** %MEMORY
  %loadMem_400b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 33
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4722 to i64*
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 15
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %4725 to i64*
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4726, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4727 to %"class.std::bitset"*
  %4728 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4729 = load i64, i64* %RBP.i9
  %4730 = sub i64 %4729, 192
  %4731 = load i64, i64* %PC.i8
  %4732 = add i64 %4731, 8
  store i64 %4732, i64* %PC.i8
  %4733 = inttoptr i64 %4730 to double*
  %4734 = load double, double* %4733
  %4735 = bitcast i8* %4728 to double*
  store double %4734, double* %4735, align 1
  %4736 = getelementptr inbounds i8, i8* %4728, i64 8
  %4737 = bitcast i8* %4736 to double*
  store double 0.000000e+00, double* %4737, align 1
  store %struct.Memory* %loadMem_400b74, %struct.Memory** %MEMORY
  %loadMem_400b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 33
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 15
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4744, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4745 to %"class.std::bitset"*
  %4746 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4747 = load i64, i64* %RBP.i7
  %4748 = sub i64 %4747, 272
  %4749 = load i64, i64* %PC.i6
  %4750 = add i64 %4749, 8
  store i64 %4750, i64* %PC.i6
  %4751 = inttoptr i64 %4748 to double*
  %4752 = load double, double* %4751
  %4753 = bitcast i8* %4746 to double*
  store double %4752, double* %4753, align 1
  %4754 = getelementptr inbounds i8, i8* %4746, i64 8
  %4755 = bitcast i8* %4754 to double*
  store double 0.000000e+00, double* %4755, align 1
  store %struct.Memory* %loadMem_400b7c, %struct.Memory** %MEMORY
  %loadMem1_400b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4757 = getelementptr inbounds %struct.GPR, %struct.GPR* %4756, i32 0, i32 33
  %4758 = getelementptr inbounds %struct.Reg, %struct.Reg* %4757, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4758 to i64*
  %4759 = load i64, i64* %PC.i5
  %4760 = add i64 %4759, 444
  %4761 = load i64, i64* %PC.i5
  %4762 = add i64 %4761, 5
  %4763 = load i64, i64* %PC.i5
  %4764 = add i64 %4763, 5
  store i64 %4764, i64* %PC.i5
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4766 = load i64, i64* %4765, align 8
  %4767 = add i64 %4766, -8
  %4768 = inttoptr i64 %4767 to i64*
  store i64 %4762, i64* %4768
  store i64 %4767, i64* %4765, align 8
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4760, i64* %4769, align 8
  store %struct.Memory* %loadMem1_400b84, %struct.Memory** %MEMORY
  %loadMem2_400b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b84 = load i64, i64* %3
  %call2_400b84 = call %struct.Memory* @sub_400d40.lerp(%struct.State* %0, i64 %loadPC_400b84, %struct.Memory* %loadMem2_400b84)
  store %struct.Memory* %call2_400b84, %struct.Memory** %MEMORY
  %loadMem_400b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 33
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 13
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4775 to i64*
  %4776 = load i64, i64* %RSP.i
  %4777 = load i64, i64* %PC.i4
  %4778 = add i64 %4777, 7
  store i64 %4778, i64* %PC.i4
  %4779 = add i64 272, %4776
  store i64 %4779, i64* %RSP.i, align 8
  %4780 = icmp ult i64 %4779, %4776
  %4781 = icmp ult i64 %4779, 272
  %4782 = or i1 %4780, %4781
  %4783 = zext i1 %4782 to i8
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4783, i8* %4784, align 1
  %4785 = trunc i64 %4779 to i32
  %4786 = and i32 %4785, 255
  %4787 = call i32 @llvm.ctpop.i32(i32 %4786)
  %4788 = trunc i32 %4787 to i8
  %4789 = and i8 %4788, 1
  %4790 = xor i8 %4789, 1
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4790, i8* %4791, align 1
  %4792 = xor i64 272, %4776
  %4793 = xor i64 %4792, %4779
  %4794 = lshr i64 %4793, 4
  %4795 = trunc i64 %4794 to i8
  %4796 = and i8 %4795, 1
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4796, i8* %4797, align 1
  %4798 = icmp eq i64 %4779, 0
  %4799 = zext i1 %4798 to i8
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4799, i8* %4800, align 1
  %4801 = lshr i64 %4779, 63
  %4802 = trunc i64 %4801 to i8
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4802, i8* %4803, align 1
  %4804 = lshr i64 %4776, 63
  %4805 = xor i64 %4801, %4804
  %4806 = add i64 %4805, %4801
  %4807 = icmp eq i64 %4806, 2
  %4808 = zext i1 %4807 to i8
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4808, i8* %4809, align 1
  store %struct.Memory* %loadMem_400b89, %struct.Memory** %MEMORY
  %loadMem_400b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 33
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4812 to i64*
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 15
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4815 to i64*
  %4816 = load i64, i64* %PC.i2
  %4817 = add i64 %4816, 1
  store i64 %4817, i64* %PC.i2
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4819 = load i64, i64* %4818, align 8
  %4820 = add i64 %4819, 8
  %4821 = inttoptr i64 %4819 to i64*
  %4822 = load i64, i64* %4821
  store i64 %4822, i64* %RBP.i3, align 8
  store i64 %4820, i64* %4818, align 8
  store %struct.Memory* %loadMem_400b90, %struct.Memory** %MEMORY
  %loadMem_400b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4825 to i64*
  %4826 = load i64, i64* %PC.i1
  %4827 = add i64 %4826, 1
  store i64 %4827, i64* %PC.i1
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4830 = load i64, i64* %4829, align 8
  %4831 = inttoptr i64 %4830 to i64*
  %4832 = load i64, i64* %4831
  store i64 %4832, i64* %4828, align 8
  %4833 = add i64 %4830, 8
  store i64 %4833, i64* %4829, align 8
  store %struct.Memory* %loadMem_400b91, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400b91
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

define %struct.Memory* @routine_subq__0x110___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 272
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 272
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
  %23 = xor i64 272, %9
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 8
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_andl__0xff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 255, %9
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fade(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 56
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

define %struct.Memory* @routine_movl_0x602450___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6300752
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
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

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x602450___rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6300752
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm4___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm5___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM5 to i8*
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

define %struct.Memory* @routine_callq_.grad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x5dc__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1508
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

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movaps__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_callq_.lerp(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x58a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1426
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

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 144
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x531__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1337
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

define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_subsd__xmm1___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 160
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 168
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm3___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
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

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 176
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

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
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

define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
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

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 184
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

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
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

define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
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

define %struct.Memory* @routine_movsd_0x497__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1183
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_subsd__xmm1___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
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

define %struct.Memory* @routine_movaps__xmm4___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_movaps__xmm5___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM5 to i8*
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 200
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm6___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM6 to i8*
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

define %struct.Memory* @routine_movsd__xmm3__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 208
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x43c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1092
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movaps__xmm4___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_movsd_MINUS0xd0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 224
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

define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
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

define %struct.Memory* @routine_movsd_0x3cf__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 983
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xe8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 232
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 240
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x37d__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 901
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 248
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

define %struct.Memory* @routine_movsd_MINUS0xf0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 240
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 256
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

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 248
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

define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 256
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 264
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

define %struct.Memory* @routine_movsd_MINUS0xe8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 232
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

define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 264
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 272
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

define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x110__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 272
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

define %struct.Memory* @routine_addq__0x110___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 272, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 272
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
  %25 = xor i64 272, %9
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
