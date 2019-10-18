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

declare %struct.Memory* @sub_402890.cft1st(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_403320.cftmdl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @cftfsub(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_401860 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_401860, %struct.Memory** %MEMORY
  %loadMem_401861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i656 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i656
  %27 = load i64, i64* %PC.i655
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i655
  store i64 %26, i64* %RBP.i657, align 8
  store %struct.Memory* %loadMem_401861, %struct.Memory** %MEMORY
  %loadMem_401864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i654 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i654
  %36 = load i64, i64* %PC.i653
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i653
  %38 = sub i64 %35, 112
  store i64 %38, i64* %RSP.i654, align 8
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
  store %struct.Memory* %loadMem_401864, %struct.Memory** %MEMORY
  %loadMem_401868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i652
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i651
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i651
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_401868, %struct.Memory** %MEMORY
  %loadMem_40186b = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RSI.i649 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i650
  %93 = sub i64 %92, 16
  %94 = load i64, i64* %RSI.i649
  %95 = load i64, i64* %PC.i648
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC.i648
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  store %struct.Memory* %loadMem_40186b, %struct.Memory** %MEMORY
  %loadMem_40186f = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RDX.i646 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i647
  %108 = sub i64 %107, 24
  %109 = load i64, i64* %RDX.i646
  %110 = load i64, i64* %PC.i645
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC.i645
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112
  store %struct.Memory* %loadMem_40186f, %struct.Memory** %MEMORY
  %loadMem_401873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 15
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %118 to i64*
  %119 = load i64, i64* %RBP.i644
  %120 = sub i64 %119, 44
  %121 = load i64, i64* %PC.i643
  %122 = add i64 %121, 7
  store i64 %122, i64* %PC.i643
  %123 = inttoptr i64 %120 to i32*
  store i32 2, i32* %123
  store %struct.Memory* %loadMem_401873, %struct.Memory** %MEMORY
  %loadMem_40187a = load %struct.Memory*, %struct.Memory** %MEMORY
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 33
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i642
  %131 = sub i64 %130, 4
  %132 = load i64, i64* %PC.i641
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i641
  %134 = inttoptr i64 %131 to i32*
  %135 = load i32, i32* %134
  %136 = sub i32 %135, 8
  %137 = icmp ult i32 %135, 8
  %138 = zext i1 %137 to i8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %138, i8* %139, align 1
  %140 = and i32 %136, 255
  %141 = call i32 @llvm.ctpop.i32(i32 %140)
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %144, i8* %145, align 1
  %146 = xor i32 %135, 8
  %147 = xor i32 %146, %136
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %150, i8* %151, align 1
  %152 = icmp eq i32 %136, 0
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %153, i8* %154, align 1
  %155 = lshr i32 %136, 31
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %156, i8* %157, align 1
  %158 = lshr i32 %135, 31
  %159 = xor i32 %155, %158
  %160 = add i32 %159, %158
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %162, i8* %163, align 1
  store %struct.Memory* %loadMem_40187a, %struct.Memory** %MEMORY
  %loadMem_40187e = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %166 to i64*
  %167 = load i64, i64* %PC.i640
  %168 = add i64 %167, 82
  %169 = load i64, i64* %PC.i640
  %170 = add i64 %169, 6
  %171 = load i64, i64* %PC.i640
  %172 = add i64 %171, 6
  store i64 %172, i64* %PC.i640
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %174 = load i8, i8* %173, align 1
  %175 = icmp ne i8 %174, 0
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %177 = load i8, i8* %176, align 1
  %178 = icmp ne i8 %177, 0
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %180 = load i8, i8* %179, align 1
  %181 = icmp ne i8 %180, 0
  %182 = xor i1 %178, %181
  %183 = or i1 %175, %182
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %BRANCH_TAKEN, align 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %186 = select i1 %183, i64 %168, i64 %170
  store i64 %186, i64* %185, align 8
  store %struct.Memory* %loadMem_40187e, %struct.Memory** %MEMORY
  %loadBr_40187e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40187e = icmp eq i8 %loadBr_40187e, 1
  br i1 %cmpBr_40187e, label %block_.L_4018d0, label %block_401884

block_401884:                                     ; preds = %entry
  %loadMem_401884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 11
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RDI.i638 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 15
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RBP.i639
  %197 = sub i64 %196, 4
  %198 = load i64, i64* %PC.i637
  %199 = add i64 %198, 3
  store i64 %199, i64* %PC.i637
  %200 = inttoptr i64 %197 to i32*
  %201 = load i32, i32* %200
  %202 = zext i32 %201 to i64
  store i64 %202, i64* %RDI.i638, align 8
  store %struct.Memory* %loadMem_401884, %struct.Memory** %MEMORY
  %loadMem_401887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 9
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RSI.i635 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RBP.i636
  %213 = sub i64 %212, 16
  %214 = load i64, i64* %PC.i634
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC.i634
  %216 = inttoptr i64 %213 to i64*
  %217 = load i64, i64* %216
  store i64 %217, i64* %RSI.i635, align 8
  store %struct.Memory* %loadMem_401887, %struct.Memory** %MEMORY
  %loadMem_40188b = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RDX.i632 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 15
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RBP.i633
  %228 = sub i64 %227, 24
  %229 = load i64, i64* %PC.i631
  %230 = add i64 %229, 4
  store i64 %230, i64* %PC.i631
  %231 = inttoptr i64 %228 to i64*
  %232 = load i64, i64* %231
  store i64 %232, i64* %RDX.i632, align 8
  store %struct.Memory* %loadMem_40188b, %struct.Memory** %MEMORY
  %loadMem1_40188f = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %PC.i630
  %237 = add i64 %236, 4097
  %238 = load i64, i64* %PC.i630
  %239 = add i64 %238, 5
  %240 = load i64, i64* %PC.i630
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC.i630
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add i64 %243, -8
  %245 = inttoptr i64 %244 to i64*
  store i64 %239, i64* %245
  store i64 %244, i64* %242, align 8
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %237, i64* %246, align 8
  store %struct.Memory* %loadMem1_40188f, %struct.Memory** %MEMORY
  %loadMem2_40188f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40188f = load i64, i64* %3
  %call2_40188f = call %struct.Memory* @sub_402890.cft1st(%struct.State* %0, i64 %loadPC_40188f, %struct.Memory* %loadMem2_40188f)
  store %struct.Memory* %call2_40188f, %struct.Memory** %MEMORY
  %loadMem_401894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 15
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %RBP.i629
  %254 = sub i64 %253, 44
  %255 = load i64, i64* %PC.i628
  %256 = add i64 %255, 7
  store i64 %256, i64* %PC.i628
  %257 = inttoptr i64 %254 to i32*
  store i32 8, i32* %257
  store %struct.Memory* %loadMem_401894, %struct.Memory** %MEMORY
  br label %block_.L_40189b

block_.L_40189b:                                  ; preds = %block_4018aa, %block_401884
  %loadMem_40189b = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 15
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %RBP.i627
  %268 = sub i64 %267, 44
  %269 = load i64, i64* %PC.i625
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC.i625
  %271 = inttoptr i64 %268 to i32*
  %272 = load i32, i32* %271
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RAX.i626, align 8
  store %struct.Memory* %loadMem_40189b, %struct.Memory** %MEMORY
  %loadMem_40189e = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %RAX.i624
  %281 = load i64, i64* %PC.i623
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC.i623
  %283 = and i64 %280, 4294967295
  %284 = shl i64 %283, 1
  %285 = trunc i64 %284 to i32
  %286 = icmp slt i32 %285, 0
  %287 = shl i32 %285, 1
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RAX.i624, align 8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %290 = zext i1 %286 to i8
  store i8 %290, i8* %289, align 1
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %292 = and i32 %287, 254
  %293 = call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %291, align 1
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %297, align 1
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %299 = icmp eq i32 %287, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %298, align 1
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %302 = lshr i32 %287, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %301, align 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %304, align 1
  store %struct.Memory* %loadMem_40189e, %struct.Memory** %MEMORY
  %loadMem_4018a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %EAX.i621 = bitcast %union.anon* %310 to i32*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 15
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %313 to i64*
  %314 = load i32, i32* %EAX.i621
  %315 = zext i32 %314 to i64
  %316 = load i64, i64* %RBP.i622
  %317 = sub i64 %316, 4
  %318 = load i64, i64* %PC.i620
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC.i620
  %320 = inttoptr i64 %317 to i32*
  %321 = load i32, i32* %320
  %322 = sub i32 %314, %321
  %323 = icmp ult i32 %314, %321
  %324 = zext i1 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %324, i8* %325, align 1
  %326 = and i32 %322, 255
  %327 = call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %330, i8* %331, align 1
  %332 = xor i32 %321, %314
  %333 = xor i32 %332, %322
  %334 = lshr i32 %333, 4
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %336, i8* %337, align 1
  %338 = icmp eq i32 %322, 0
  %339 = zext i1 %338 to i8
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %339, i8* %340, align 1
  %341 = lshr i32 %322, 31
  %342 = trunc i32 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %342, i8* %343, align 1
  %344 = lshr i32 %314, 31
  %345 = lshr i32 %321, 31
  %346 = xor i32 %345, %344
  %347 = xor i32 %341, %344
  %348 = add i32 %347, %346
  %349 = icmp eq i32 %348, 2
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %350, i8* %351, align 1
  store %struct.Memory* %loadMem_4018a1, %struct.Memory** %MEMORY
  %loadMem_4018a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %354 to i64*
  %355 = load i64, i64* %PC.i619
  %356 = add i64 %355, 39
  %357 = load i64, i64* %PC.i619
  %358 = add i64 %357, 6
  %359 = load i64, i64* %PC.i619
  %360 = add i64 %359, 6
  store i64 %360, i64* %PC.i619
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %362 = load i8, i8* %361, align 1
  %363 = icmp ne i8 %362, 0
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %365 = load i8, i8* %364, align 1
  %366 = icmp ne i8 %365, 0
  %367 = xor i1 %363, %366
  %368 = xor i1 %367, true
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %BRANCH_TAKEN, align 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %371 = select i1 %367, i64 %358, i64 %356
  store i64 %371, i64* %370, align 8
  store %struct.Memory* %loadMem_4018a4, %struct.Memory** %MEMORY
  %loadBr_4018a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4018a4 = icmp eq i8 %loadBr_4018a4, 1
  br i1 %cmpBr_4018a4, label %block_.L_4018cb, label %block_4018aa

block_4018aa:                                     ; preds = %block_.L_40189b
  %loadMem_4018aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 11
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 15
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %RBP.i618
  %382 = sub i64 %381, 4
  %383 = load i64, i64* %PC.i617
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC.i617
  %385 = inttoptr i64 %382 to i32*
  %386 = load i32, i32* %385
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4018aa, %struct.Memory** %MEMORY
  %loadMem_4018ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 33
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 9
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RSI.i615 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 15
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %RBP.i616
  %398 = sub i64 %397, 44
  %399 = load i64, i64* %PC.i614
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC.i614
  %401 = inttoptr i64 %398 to i32*
  %402 = load i32, i32* %401
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RSI.i615, align 8
  store %struct.Memory* %loadMem_4018ad, %struct.Memory** %MEMORY
  %loadMem_4018b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 7
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RDX.i612 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 15
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %RBP.i613
  %414 = sub i64 %413, 16
  %415 = load i64, i64* %PC.i611
  %416 = add i64 %415, 4
  store i64 %416, i64* %PC.i611
  %417 = inttoptr i64 %414 to i64*
  %418 = load i64, i64* %417
  store i64 %418, i64* %RDX.i612, align 8
  store %struct.Memory* %loadMem_4018b0, %struct.Memory** %MEMORY
  %loadMem_4018b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RCX.i609 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 15
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %427 to i64*
  %428 = load i64, i64* %RBP.i610
  %429 = sub i64 %428, 24
  %430 = load i64, i64* %PC.i608
  %431 = add i64 %430, 4
  store i64 %431, i64* %PC.i608
  %432 = inttoptr i64 %429 to i64*
  %433 = load i64, i64* %432
  store i64 %433, i64* %RCX.i609, align 8
  store %struct.Memory* %loadMem_4018b4, %struct.Memory** %MEMORY
  %loadMem1_4018b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %PC.i607
  %438 = add i64 %437, 6760
  %439 = load i64, i64* %PC.i607
  %440 = add i64 %439, 5
  %441 = load i64, i64* %PC.i607
  %442 = add i64 %441, 5
  store i64 %442, i64* %PC.i607
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = add i64 %444, -8
  %446 = inttoptr i64 %445 to i64*
  store i64 %440, i64* %446
  store i64 %445, i64* %443, align 8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %438, i64* %447, align 8
  store %struct.Memory* %loadMem1_4018b8, %struct.Memory** %MEMORY
  %loadMem2_4018b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4018b8 = load i64, i64* %3
  %call2_4018b8 = call %struct.Memory* @sub_403320.cftmdl(%struct.State* %0, i64 %loadPC_4018b8, %struct.Memory* %loadMem2_4018b8)
  store %struct.Memory* %call2_4018b8, %struct.Memory** %MEMORY
  %loadMem_4018bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 9
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RSI.i605 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 15
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RBP.i606
  %458 = sub i64 %457, 44
  %459 = load i64, i64* %PC.i604
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC.i604
  %461 = inttoptr i64 %458 to i32*
  %462 = load i32, i32* %461
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RSI.i605, align 8
  store %struct.Memory* %loadMem_4018bd, %struct.Memory** %MEMORY
  %loadMem_4018c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 9
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %469 to i64*
  %470 = load i64, i64* %RSI.i
  %471 = load i64, i64* %PC.i603
  %472 = add i64 %471, 3
  store i64 %472, i64* %PC.i603
  %473 = and i64 %470, 4294967295
  %474 = shl i64 %473, 1
  %475 = trunc i64 %474 to i32
  %476 = icmp slt i32 %475, 0
  %477 = shl i32 %475, 1
  %478 = zext i32 %477 to i64
  store i64 %478, i64* %RSI.i, align 8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %480 = zext i1 %476 to i8
  store i8 %480, i8* %479, align 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %482 = and i32 %477, 254
  %483 = call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %481, align 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %487, align 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %489 = icmp eq i32 %477, 0
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %488, align 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %492 = lshr i32 %477, 31
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %491, align 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %494, align 1
  store %struct.Memory* %loadMem_4018c0, %struct.Memory** %MEMORY
  %loadMem_4018c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 9
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %500 to i32*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 15
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %503 to i64*
  %504 = load i64, i64* %RBP.i602
  %505 = sub i64 %504, 44
  %506 = load i32, i32* %ESI.i
  %507 = zext i32 %506 to i64
  %508 = load i64, i64* %PC.i601
  %509 = add i64 %508, 3
  store i64 %509, i64* %PC.i601
  %510 = inttoptr i64 %505 to i32*
  store i32 %506, i32* %510
  store %struct.Memory* %loadMem_4018c3, %struct.Memory** %MEMORY
  %loadMem_4018c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %513 to i64*
  %514 = load i64, i64* %PC.i600
  %515 = add i64 %514, -43
  %516 = load i64, i64* %PC.i600
  %517 = add i64 %516, 5
  store i64 %517, i64* %PC.i600
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %515, i64* %518, align 8
  store %struct.Memory* %loadMem_4018c6, %struct.Memory** %MEMORY
  br label %block_.L_40189b

block_.L_4018cb:                                  ; preds = %block_.L_40189b
  %loadMem_4018cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %521 to i64*
  %522 = load i64, i64* %PC.i599
  %523 = add i64 %522, 5
  %524 = load i64, i64* %PC.i599
  %525 = add i64 %524, 5
  store i64 %525, i64* %PC.i599
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %523, i64* %526, align 8
  store %struct.Memory* %loadMem_4018cb, %struct.Memory** %MEMORY
  br label %block_.L_4018d0

block_.L_4018d0:                                  ; preds = %block_.L_4018cb, %entry
  %loadMem_4018d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 15
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %535 to i64*
  %536 = load i64, i64* %RBP.i598
  %537 = sub i64 %536, 44
  %538 = load i64, i64* %PC.i596
  %539 = add i64 %538, 3
  store i64 %539, i64* %PC.i596
  %540 = inttoptr i64 %537 to i32*
  %541 = load i32, i32* %540
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RAX.i597, align 8
  store %struct.Memory* %loadMem_4018d0, %struct.Memory** %MEMORY
  %loadMem_4018d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 33
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %RAX.i595
  %550 = load i64, i64* %PC.i594
  %551 = add i64 %550, 3
  store i64 %551, i64* %PC.i594
  %552 = and i64 %549, 4294967295
  %553 = shl i64 %552, 1
  %554 = trunc i64 %553 to i32
  %555 = icmp slt i32 %554, 0
  %556 = shl i32 %554, 1
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RAX.i595, align 8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %559 = zext i1 %555 to i8
  store i8 %559, i8* %558, align 1
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %561 = and i32 %556, 254
  %562 = call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %560, align 1
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %566, align 1
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %568 = icmp eq i32 %556, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %567, align 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %571 = lshr i32 %556, 31
  %572 = trunc i32 %571 to i8
  store i8 %572, i8* %570, align 1
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %573, align 1
  store %struct.Memory* %loadMem_4018d3, %struct.Memory** %MEMORY
  %loadMem_4018d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 33
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 1
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %EAX.i592 = bitcast %union.anon* %579 to i32*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 15
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %582 to i64*
  %583 = load i32, i32* %EAX.i592
  %584 = zext i32 %583 to i64
  %585 = load i64, i64* %RBP.i593
  %586 = sub i64 %585, 4
  %587 = load i64, i64* %PC.i591
  %588 = add i64 %587, 3
  store i64 %588, i64* %PC.i591
  %589 = inttoptr i64 %586 to i32*
  %590 = load i32, i32* %589
  %591 = sub i32 %583, %590
  %592 = icmp ult i32 %583, %590
  %593 = zext i1 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %593, i8* %594, align 1
  %595 = and i32 %591, 255
  %596 = call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %599, i8* %600, align 1
  %601 = xor i32 %590, %583
  %602 = xor i32 %601, %591
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %605, i8* %606, align 1
  %607 = icmp eq i32 %591, 0
  %608 = zext i1 %607 to i8
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %608, i8* %609, align 1
  %610 = lshr i32 %591, 31
  %611 = trunc i32 %610 to i8
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %611, i8* %612, align 1
  %613 = lshr i32 %583, 31
  %614 = lshr i32 %590, 31
  %615 = xor i32 %614, %613
  %616 = xor i32 %610, %613
  %617 = add i32 %616, %615
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %619, i8* %620, align 1
  store %struct.Memory* %loadMem_4018d6, %struct.Memory** %MEMORY
  %loadMem_4018d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 33
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %623 to i64*
  %624 = load i64, i64* %PC.i590
  %625 = add i64 %624, 563
  %626 = load i64, i64* %PC.i590
  %627 = add i64 %626, 6
  %628 = load i64, i64* %PC.i590
  %629 = add i64 %628, 6
  store i64 %629, i64* %PC.i590
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %631 = load i8, i8* %630, align 1
  %632 = icmp eq i8 %631, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %BRANCH_TAKEN, align 1
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %635 = select i1 %632, i64 %625, i64 %627
  store i64 %635, i64* %634, align 8
  store %struct.Memory* %loadMem_4018d9, %struct.Memory** %MEMORY
  %loadBr_4018d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4018d9 = icmp eq i8 %loadBr_4018d9, 1
  br i1 %cmpBr_4018d9, label %block_.L_401b0c, label %block_4018df

block_4018df:                                     ; preds = %block_.L_4018d0
  %loadMem_4018df = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i589
  %643 = sub i64 %642, 28
  %644 = load i64, i64* %PC.i588
  %645 = add i64 %644, 7
  store i64 %645, i64* %PC.i588
  %646 = inttoptr i64 %643 to i32*
  store i32 0, i32* %646
  store %struct.Memory* %loadMem_4018df, %struct.Memory** %MEMORY
  br label %block_.L_4018e6

block_.L_4018e6:                                  ; preds = %block_4018f2, %block_4018df
  %loadMem_4018e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 1
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 15
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %655 to i64*
  %656 = load i64, i64* %RBP.i587
  %657 = sub i64 %656, 28
  %658 = load i64, i64* %PC.i585
  %659 = add i64 %658, 3
  store i64 %659, i64* %PC.i585
  %660 = inttoptr i64 %657 to i32*
  %661 = load i32, i32* %660
  %662 = zext i32 %661 to i64
  store i64 %662, i64* %RAX.i586, align 8
  store %struct.Memory* %loadMem_4018e6, %struct.Memory** %MEMORY
  %loadMem_4018e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 33
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 1
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %EAX.i583 = bitcast %union.anon* %668 to i32*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 15
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %671 to i64*
  %672 = load i32, i32* %EAX.i583
  %673 = zext i32 %672 to i64
  %674 = load i64, i64* %RBP.i584
  %675 = sub i64 %674, 44
  %676 = load i64, i64* %PC.i582
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC.i582
  %678 = inttoptr i64 %675 to i32*
  %679 = load i32, i32* %678
  %680 = sub i32 %672, %679
  %681 = icmp ult i32 %672, %679
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %682, i8* %683, align 1
  %684 = and i32 %680, 255
  %685 = call i32 @llvm.ctpop.i32(i32 %684)
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %688, i8* %689, align 1
  %690 = xor i32 %679, %672
  %691 = xor i32 %690, %680
  %692 = lshr i32 %691, 4
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %694, i8* %695, align 1
  %696 = icmp eq i32 %680, 0
  %697 = zext i1 %696 to i8
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %697, i8* %698, align 1
  %699 = lshr i32 %680, 31
  %700 = trunc i32 %699 to i8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %700, i8* %701, align 1
  %702 = lshr i32 %672, 31
  %703 = lshr i32 %679, 31
  %704 = xor i32 %703, %702
  %705 = xor i32 %699, %702
  %706 = add i32 %705, %704
  %707 = icmp eq i32 %706, 2
  %708 = zext i1 %707 to i8
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %708, i8* %709, align 1
  store %struct.Memory* %loadMem_4018e9, %struct.Memory** %MEMORY
  %loadMem_4018ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %712 to i64*
  %713 = load i64, i64* %PC.i581
  %714 = add i64 %713, 539
  %715 = load i64, i64* %PC.i581
  %716 = add i64 %715, 6
  %717 = load i64, i64* %PC.i581
  %718 = add i64 %717, 6
  store i64 %718, i64* %PC.i581
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %720 = load i8, i8* %719, align 1
  %721 = icmp ne i8 %720, 0
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %723 = load i8, i8* %722, align 1
  %724 = icmp ne i8 %723, 0
  %725 = xor i1 %721, %724
  %726 = xor i1 %725, true
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %BRANCH_TAKEN, align 1
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %729 = select i1 %725, i64 %716, i64 %714
  store i64 %729, i64* %728, align 8
  store %struct.Memory* %loadMem_4018ec, %struct.Memory** %MEMORY
  %loadBr_4018ec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4018ec = icmp eq i8 %loadBr_4018ec, 1
  br i1 %cmpBr_4018ec, label %block_.L_401b07, label %block_4018f2

block_4018f2:                                     ; preds = %block_.L_4018e6
  %loadMem_4018f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 1
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 15
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %738 to i64*
  %739 = load i64, i64* %RBP.i580
  %740 = sub i64 %739, 28
  %741 = load i64, i64* %PC.i578
  %742 = add i64 %741, 3
  store i64 %742, i64* %PC.i578
  %743 = inttoptr i64 %740 to i32*
  %744 = load i32, i32* %743
  %745 = zext i32 %744 to i64
  store i64 %745, i64* %RAX.i579, align 8
  store %struct.Memory* %loadMem_4018f2, %struct.Memory** %MEMORY
  %loadMem_4018f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 33
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 1
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 15
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %754 to i64*
  %755 = load i64, i64* %RAX.i576
  %756 = load i64, i64* %RBP.i577
  %757 = sub i64 %756, 44
  %758 = load i64, i64* %PC.i575
  %759 = add i64 %758, 3
  store i64 %759, i64* %PC.i575
  %760 = trunc i64 %755 to i32
  %761 = inttoptr i64 %757 to i32*
  %762 = load i32, i32* %761
  %763 = add i32 %762, %760
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RAX.i576, align 8
  %765 = icmp ult i32 %763, %760
  %766 = icmp ult i32 %763, %762
  %767 = or i1 %765, %766
  %768 = zext i1 %767 to i8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %768, i8* %769, align 1
  %770 = and i32 %763, 255
  %771 = call i32 @llvm.ctpop.i32(i32 %770)
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = xor i8 %773, 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %774, i8* %775, align 1
  %776 = xor i32 %762, %760
  %777 = xor i32 %776, %763
  %778 = lshr i32 %777, 4
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %780, i8* %781, align 1
  %782 = icmp eq i32 %763, 0
  %783 = zext i1 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %783, i8* %784, align 1
  %785 = lshr i32 %763, 31
  %786 = trunc i32 %785 to i8
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %786, i8* %787, align 1
  %788 = lshr i32 %760, 31
  %789 = lshr i32 %762, 31
  %790 = xor i32 %785, %788
  %791 = xor i32 %785, %789
  %792 = add i32 %790, %791
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %794, i8* %795, align 1
  store %struct.Memory* %loadMem_4018f5, %struct.Memory** %MEMORY
  %loadMem_4018f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 1
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %EAX.i573 = bitcast %union.anon* %801 to i32*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 15
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %804 to i64*
  %805 = load i64, i64* %RBP.i574
  %806 = sub i64 %805, 32
  %807 = load i32, i32* %EAX.i573
  %808 = zext i32 %807 to i64
  %809 = load i64, i64* %PC.i572
  %810 = add i64 %809, 3
  store i64 %810, i64* %PC.i572
  %811 = inttoptr i64 %806 to i32*
  store i32 %807, i32* %811
  store %struct.Memory* %loadMem_4018f8, %struct.Memory** %MEMORY
  %loadMem_4018fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 1
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %817 to i64*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 15
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %RBP.i571
  %822 = sub i64 %821, 32
  %823 = load i64, i64* %PC.i569
  %824 = add i64 %823, 3
  store i64 %824, i64* %PC.i569
  %825 = inttoptr i64 %822 to i32*
  %826 = load i32, i32* %825
  %827 = zext i32 %826 to i64
  store i64 %827, i64* %RAX.i570, align 8
  store %struct.Memory* %loadMem_4018fb, %struct.Memory** %MEMORY
  %loadMem_4018fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 33
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 1
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 15
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %836 to i64*
  %837 = load i64, i64* %RAX.i567
  %838 = load i64, i64* %RBP.i568
  %839 = sub i64 %838, 44
  %840 = load i64, i64* %PC.i566
  %841 = add i64 %840, 3
  store i64 %841, i64* %PC.i566
  %842 = trunc i64 %837 to i32
  %843 = inttoptr i64 %839 to i32*
  %844 = load i32, i32* %843
  %845 = add i32 %844, %842
  %846 = zext i32 %845 to i64
  store i64 %846, i64* %RAX.i567, align 8
  %847 = icmp ult i32 %845, %842
  %848 = icmp ult i32 %845, %844
  %849 = or i1 %847, %848
  %850 = zext i1 %849 to i8
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %850, i8* %851, align 1
  %852 = and i32 %845, 255
  %853 = call i32 @llvm.ctpop.i32(i32 %852)
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  %856 = xor i8 %855, 1
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %856, i8* %857, align 1
  %858 = xor i32 %844, %842
  %859 = xor i32 %858, %845
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %862, i8* %863, align 1
  %864 = icmp eq i32 %845, 0
  %865 = zext i1 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %865, i8* %866, align 1
  %867 = lshr i32 %845, 31
  %868 = trunc i32 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %868, i8* %869, align 1
  %870 = lshr i32 %842, 31
  %871 = lshr i32 %844, 31
  %872 = xor i32 %867, %870
  %873 = xor i32 %867, %871
  %874 = add i32 %872, %873
  %875 = icmp eq i32 %874, 2
  %876 = zext i1 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %876, i8* %877, align 1
  store %struct.Memory* %loadMem_4018fe, %struct.Memory** %MEMORY
  %loadMem_401901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 1
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %EAX.i564 = bitcast %union.anon* %883 to i32*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 15
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %886 to i64*
  %887 = load i64, i64* %RBP.i565
  %888 = sub i64 %887, 36
  %889 = load i32, i32* %EAX.i564
  %890 = zext i32 %889 to i64
  %891 = load i64, i64* %PC.i563
  %892 = add i64 %891, 3
  store i64 %892, i64* %PC.i563
  %893 = inttoptr i64 %888 to i32*
  store i32 %889, i32* %893
  store %struct.Memory* %loadMem_401901, %struct.Memory** %MEMORY
  %loadMem_401904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 1
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 15
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %RBP.i562
  %904 = sub i64 %903, 36
  %905 = load i64, i64* %PC.i560
  %906 = add i64 %905, 3
  store i64 %906, i64* %PC.i560
  %907 = inttoptr i64 %904 to i32*
  %908 = load i32, i32* %907
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RAX.i561, align 8
  store %struct.Memory* %loadMem_401904, %struct.Memory** %MEMORY
  %loadMem_401907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 1
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 15
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %RAX.i558
  %920 = load i64, i64* %RBP.i559
  %921 = sub i64 %920, 44
  %922 = load i64, i64* %PC.i557
  %923 = add i64 %922, 3
  store i64 %923, i64* %PC.i557
  %924 = trunc i64 %919 to i32
  %925 = inttoptr i64 %921 to i32*
  %926 = load i32, i32* %925
  %927 = add i32 %926, %924
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %RAX.i558, align 8
  %929 = icmp ult i32 %927, %924
  %930 = icmp ult i32 %927, %926
  %931 = or i1 %929, %930
  %932 = zext i1 %931 to i8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %932, i8* %933, align 1
  %934 = and i32 %927, 255
  %935 = call i32 @llvm.ctpop.i32(i32 %934)
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = xor i8 %937, 1
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %938, i8* %939, align 1
  %940 = xor i32 %926, %924
  %941 = xor i32 %940, %927
  %942 = lshr i32 %941, 4
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %944, i8* %945, align 1
  %946 = icmp eq i32 %927, 0
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %947, i8* %948, align 1
  %949 = lshr i32 %927, 31
  %950 = trunc i32 %949 to i8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %950, i8* %951, align 1
  %952 = lshr i32 %924, 31
  %953 = lshr i32 %926, 31
  %954 = xor i32 %949, %952
  %955 = xor i32 %949, %953
  %956 = add i32 %954, %955
  %957 = icmp eq i32 %956, 2
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %958, i8* %959, align 1
  store %struct.Memory* %loadMem_401907, %struct.Memory** %MEMORY
  %loadMem_40190a = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 1
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %EAX.i555 = bitcast %union.anon* %965 to i32*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i556
  %970 = sub i64 %969, 40
  %971 = load i32, i32* %EAX.i555
  %972 = zext i32 %971 to i64
  %973 = load i64, i64* %PC.i554
  %974 = add i64 %973, 3
  store i64 %974, i64* %PC.i554
  %975 = inttoptr i64 %970 to i32*
  store i32 %971, i32* %975
  store %struct.Memory* %loadMem_40190a, %struct.Memory** %MEMORY
  %loadMem_40190d = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 5
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 15
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %984 to i64*
  %985 = load i64, i64* %RBP.i553
  %986 = sub i64 %985, 16
  %987 = load i64, i64* %PC.i551
  %988 = add i64 %987, 4
  store i64 %988, i64* %PC.i551
  %989 = inttoptr i64 %986 to i64*
  %990 = load i64, i64* %989
  store i64 %990, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_40190d, %struct.Memory** %MEMORY
  %loadMem_401911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 7
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RDX.i549 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 15
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %RBP.i550
  %1001 = sub i64 %1000, 28
  %1002 = load i64, i64* %PC.i548
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC.i548
  %1004 = inttoptr i64 %1001 to i32*
  %1005 = load i32, i32* %1004
  %1006 = sext i32 %1005 to i64
  store i64 %1006, i64* %RDX.i549, align 8
  store %struct.Memory* %loadMem_401911, %struct.Memory** %MEMORY
  %loadMem_401915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 33
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 5
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RCX.i545 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 7
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RDX.i546 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1017 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1016, i64 0, i64 0
  %YMM0.i547 = bitcast %union.VectorReg* %1017 to %"class.std::bitset"*
  %1018 = bitcast %"class.std::bitset"* %YMM0.i547 to i8*
  %1019 = load i64, i64* %RCX.i545
  %1020 = load i64, i64* %RDX.i546
  %1021 = mul i64 %1020, 8
  %1022 = add i64 %1021, %1019
  %1023 = load i64, i64* %PC.i544
  %1024 = add i64 %1023, 5
  store i64 %1024, i64* %PC.i544
  %1025 = inttoptr i64 %1022 to double*
  %1026 = load double, double* %1025
  %1027 = bitcast i8* %1018 to double*
  store double %1026, double* %1027, align 1
  %1028 = getelementptr inbounds i8, i8* %1018, i64 8
  %1029 = bitcast i8* %1028 to double*
  store double 0.000000e+00, double* %1029, align 1
  store %struct.Memory* %loadMem_401915, %struct.Memory** %MEMORY
  %loadMem_40191a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 33
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 5
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 15
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %RBP.i543
  %1040 = sub i64 %1039, 16
  %1041 = load i64, i64* %PC.i541
  %1042 = add i64 %1041, 4
  store i64 %1042, i64* %PC.i541
  %1043 = inttoptr i64 %1040 to i64*
  %1044 = load i64, i64* %1043
  store i64 %1044, i64* %RCX.i542, align 8
  store %struct.Memory* %loadMem_40191a, %struct.Memory** %MEMORY
  %loadMem_40191e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 7
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RDX.i539 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 15
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %RBP.i540
  %1055 = sub i64 %1054, 32
  %1056 = load i64, i64* %PC.i538
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %PC.i538
  %1058 = inttoptr i64 %1055 to i32*
  %1059 = load i32, i32* %1058
  %1060 = sext i32 %1059 to i64
  store i64 %1060, i64* %RDX.i539, align 8
  store %struct.Memory* %loadMem_40191e, %struct.Memory** %MEMORY
  %loadMem_401922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 5
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 7
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RDX.i536 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1071 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1070, i64 0, i64 0
  %YMM0.i537 = bitcast %union.VectorReg* %1071 to %"class.std::bitset"*
  %1072 = bitcast %"class.std::bitset"* %YMM0.i537 to i8*
  %1073 = bitcast %"class.std::bitset"* %YMM0.i537 to i8*
  %1074 = load i64, i64* %RCX.i535
  %1075 = load i64, i64* %RDX.i536
  %1076 = mul i64 %1075, 8
  %1077 = add i64 %1076, %1074
  %1078 = load i64, i64* %PC.i534
  %1079 = add i64 %1078, 5
  store i64 %1079, i64* %PC.i534
  %1080 = bitcast i8* %1073 to double*
  %1081 = load double, double* %1080, align 1
  %1082 = getelementptr inbounds i8, i8* %1073, i64 8
  %1083 = bitcast i8* %1082 to i64*
  %1084 = load i64, i64* %1083, align 1
  %1085 = inttoptr i64 %1077 to double*
  %1086 = load double, double* %1085
  %1087 = fadd double %1081, %1086
  %1088 = bitcast i8* %1072 to double*
  store double %1087, double* %1088, align 1
  %1089 = getelementptr inbounds i8, i8* %1072, i64 8
  %1090 = bitcast i8* %1089 to i64*
  store i64 %1084, i64* %1090, align 1
  store %struct.Memory* %loadMem_401922, %struct.Memory** %MEMORY
  %loadMem_401927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 15
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1098 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1097, i64 0, i64 0
  %XMM0.i533 = bitcast %union.VectorReg* %1098 to %union.vec128_t*
  %1099 = load i64, i64* %RBP.i532
  %1100 = sub i64 %1099, 56
  %1101 = bitcast %union.vec128_t* %XMM0.i533 to i8*
  %1102 = load i64, i64* %PC.i531
  %1103 = add i64 %1102, 5
  store i64 %1103, i64* %PC.i531
  %1104 = bitcast i8* %1101 to double*
  %1105 = load double, double* %1104, align 1
  %1106 = inttoptr i64 %1100 to double*
  store double %1105, double* %1106
  store %struct.Memory* %loadMem_401927, %struct.Memory** %MEMORY
  %loadMem_40192c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 33
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 5
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 15
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %1115 to i64*
  %1116 = load i64, i64* %RBP.i530
  %1117 = sub i64 %1116, 16
  %1118 = load i64, i64* %PC.i528
  %1119 = add i64 %1118, 4
  store i64 %1119, i64* %PC.i528
  %1120 = inttoptr i64 %1117 to i64*
  %1121 = load i64, i64* %1120
  store i64 %1121, i64* %RCX.i529, align 8
  store %struct.Memory* %loadMem_40192c, %struct.Memory** %MEMORY
  %loadMem_401930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 33
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 1
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 15
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %1130 to i64*
  %1131 = load i64, i64* %RBP.i527
  %1132 = sub i64 %1131, 28
  %1133 = load i64, i64* %PC.i525
  %1134 = add i64 %1133, 3
  store i64 %1134, i64* %PC.i525
  %1135 = inttoptr i64 %1132 to i32*
  %1136 = load i32, i32* %1135
  %1137 = zext i32 %1136 to i64
  store i64 %1137, i64* %RAX.i526, align 8
  store %struct.Memory* %loadMem_401930, %struct.Memory** %MEMORY
  %loadMem_401933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 33
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 1
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %1143 to i64*
  %1144 = load i64, i64* %RAX.i524
  %1145 = load i64, i64* %PC.i523
  %1146 = add i64 %1145, 3
  store i64 %1146, i64* %PC.i523
  %1147 = trunc i64 %1144 to i32
  %1148 = add i32 1, %1147
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RAX.i524, align 8
  %1150 = icmp ult i32 %1148, %1147
  %1151 = icmp ult i32 %1148, 1
  %1152 = or i1 %1150, %1151
  %1153 = zext i1 %1152 to i8
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1153, i8* %1154, align 1
  %1155 = and i32 %1148, 255
  %1156 = call i32 @llvm.ctpop.i32(i32 %1155)
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1159, i8* %1160, align 1
  %1161 = xor i64 1, %1144
  %1162 = trunc i64 %1161 to i32
  %1163 = xor i32 %1162, %1148
  %1164 = lshr i32 %1163, 4
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1166, i8* %1167, align 1
  %1168 = icmp eq i32 %1148, 0
  %1169 = zext i1 %1168 to i8
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1169, i8* %1170, align 1
  %1171 = lshr i32 %1148, 31
  %1172 = trunc i32 %1171 to i8
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1172, i8* %1173, align 1
  %1174 = lshr i32 %1147, 31
  %1175 = xor i32 %1171, %1174
  %1176 = add i32 %1175, %1171
  %1177 = icmp eq i32 %1176, 2
  %1178 = zext i1 %1177 to i8
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1178, i8* %1179, align 1
  store %struct.Memory* %loadMem_401933, %struct.Memory** %MEMORY
  %loadMem_401936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 33
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 1
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %EAX.i521 = bitcast %union.anon* %1185 to i32*
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 7
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %RDX.i522 = bitcast %union.anon* %1188 to i64*
  %1189 = load i32, i32* %EAX.i521
  %1190 = zext i32 %1189 to i64
  %1191 = load i64, i64* %PC.i520
  %1192 = add i64 %1191, 3
  store i64 %1192, i64* %PC.i520
  %1193 = shl i64 %1190, 32
  %1194 = ashr exact i64 %1193, 32
  store i64 %1194, i64* %RDX.i522, align 8
  store %struct.Memory* %loadMem_401936, %struct.Memory** %MEMORY
  %loadMem_401939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 33
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1197 to i64*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 5
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %RCX.i517 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 7
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RDX.i518 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1204, i64 0, i64 0
  %YMM0.i519 = bitcast %union.VectorReg* %1205 to %"class.std::bitset"*
  %1206 = bitcast %"class.std::bitset"* %YMM0.i519 to i8*
  %1207 = load i64, i64* %RCX.i517
  %1208 = load i64, i64* %RDX.i518
  %1209 = mul i64 %1208, 8
  %1210 = add i64 %1209, %1207
  %1211 = load i64, i64* %PC.i516
  %1212 = add i64 %1211, 5
  store i64 %1212, i64* %PC.i516
  %1213 = inttoptr i64 %1210 to double*
  %1214 = load double, double* %1213
  %1215 = bitcast i8* %1206 to double*
  store double %1214, double* %1215, align 1
  %1216 = getelementptr inbounds i8, i8* %1206, i64 8
  %1217 = bitcast i8* %1216 to double*
  store double 0.000000e+00, double* %1217, align 1
  store %struct.Memory* %loadMem_401939, %struct.Memory** %MEMORY
  %loadMem_40193e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 5
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 15
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %1226 to i64*
  %1227 = load i64, i64* %RBP.i515
  %1228 = sub i64 %1227, 16
  %1229 = load i64, i64* %PC.i513
  %1230 = add i64 %1229, 4
  store i64 %1230, i64* %PC.i513
  %1231 = inttoptr i64 %1228 to i64*
  %1232 = load i64, i64* %1231
  store i64 %1232, i64* %RCX.i514, align 8
  store %struct.Memory* %loadMem_40193e, %struct.Memory** %MEMORY
  %loadMem_401942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 1
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 15
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %RBP.i512
  %1243 = sub i64 %1242, 32
  %1244 = load i64, i64* %PC.i510
  %1245 = add i64 %1244, 3
  store i64 %1245, i64* %PC.i510
  %1246 = inttoptr i64 %1243 to i32*
  %1247 = load i32, i32* %1246
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_401942, %struct.Memory** %MEMORY
  %loadMem_401945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 1
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %RAX.i509
  %1256 = load i64, i64* %PC.i508
  %1257 = add i64 %1256, 3
  store i64 %1257, i64* %PC.i508
  %1258 = trunc i64 %1255 to i32
  %1259 = add i32 1, %1258
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RAX.i509, align 8
  %1261 = icmp ult i32 %1259, %1258
  %1262 = icmp ult i32 %1259, 1
  %1263 = or i1 %1261, %1262
  %1264 = zext i1 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1264, i8* %1265, align 1
  %1266 = and i32 %1259, 255
  %1267 = call i32 @llvm.ctpop.i32(i32 %1266)
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  %1270 = xor i8 %1269, 1
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1270, i8* %1271, align 1
  %1272 = xor i64 1, %1255
  %1273 = trunc i64 %1272 to i32
  %1274 = xor i32 %1273, %1259
  %1275 = lshr i32 %1274, 4
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1277, i8* %1278, align 1
  %1279 = icmp eq i32 %1259, 0
  %1280 = zext i1 %1279 to i8
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1280, i8* %1281, align 1
  %1282 = lshr i32 %1259, 31
  %1283 = trunc i32 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1283, i8* %1284, align 1
  %1285 = lshr i32 %1258, 31
  %1286 = xor i32 %1282, %1285
  %1287 = add i32 %1286, %1282
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1289, i8* %1290, align 1
  store %struct.Memory* %loadMem_401945, %struct.Memory** %MEMORY
  %loadMem_401948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 1
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %EAX.i506 = bitcast %union.anon* %1296 to i32*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 7
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RDX.i507 = bitcast %union.anon* %1299 to i64*
  %1300 = load i32, i32* %EAX.i506
  %1301 = zext i32 %1300 to i64
  %1302 = load i64, i64* %PC.i505
  %1303 = add i64 %1302, 3
  store i64 %1303, i64* %PC.i505
  %1304 = shl i64 %1301, 32
  %1305 = ashr exact i64 %1304, 32
  store i64 %1305, i64* %RDX.i507, align 8
  store %struct.Memory* %loadMem_401948, %struct.Memory** %MEMORY
  %loadMem_40194b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 5
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RCX.i502 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 7
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RDX.i503 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1315, i64 0, i64 0
  %YMM0.i504 = bitcast %union.VectorReg* %1316 to %"class.std::bitset"*
  %1317 = bitcast %"class.std::bitset"* %YMM0.i504 to i8*
  %1318 = bitcast %"class.std::bitset"* %YMM0.i504 to i8*
  %1319 = load i64, i64* %RCX.i502
  %1320 = load i64, i64* %RDX.i503
  %1321 = mul i64 %1320, 8
  %1322 = add i64 %1321, %1319
  %1323 = load i64, i64* %PC.i501
  %1324 = add i64 %1323, 5
  store i64 %1324, i64* %PC.i501
  %1325 = bitcast i8* %1318 to double*
  %1326 = load double, double* %1325, align 1
  %1327 = getelementptr inbounds i8, i8* %1318, i64 8
  %1328 = bitcast i8* %1327 to i64*
  %1329 = load i64, i64* %1328, align 1
  %1330 = inttoptr i64 %1322 to double*
  %1331 = load double, double* %1330
  %1332 = fadd double %1326, %1331
  %1333 = bitcast i8* %1317 to double*
  store double %1332, double* %1333, align 1
  %1334 = getelementptr inbounds i8, i8* %1317, i64 8
  %1335 = bitcast i8* %1334 to i64*
  store i64 %1329, i64* %1335, align 1
  store %struct.Memory* %loadMem_40194b, %struct.Memory** %MEMORY
  %loadMem_401950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 33
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1338 to i64*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 15
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1343 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1342, i64 0, i64 0
  %XMM0.i500 = bitcast %union.VectorReg* %1343 to %union.vec128_t*
  %1344 = load i64, i64* %RBP.i499
  %1345 = sub i64 %1344, 64
  %1346 = bitcast %union.vec128_t* %XMM0.i500 to i8*
  %1347 = load i64, i64* %PC.i498
  %1348 = add i64 %1347, 5
  store i64 %1348, i64* %PC.i498
  %1349 = bitcast i8* %1346 to double*
  %1350 = load double, double* %1349, align 1
  %1351 = inttoptr i64 %1345 to double*
  store double %1350, double* %1351
  store %struct.Memory* %loadMem_401950, %struct.Memory** %MEMORY
  %loadMem_401955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 5
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 15
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RBP.i497
  %1362 = sub i64 %1361, 16
  %1363 = load i64, i64* %PC.i495
  %1364 = add i64 %1363, 4
  store i64 %1364, i64* %PC.i495
  %1365 = inttoptr i64 %1362 to i64*
  %1366 = load i64, i64* %1365
  store i64 %1366, i64* %RCX.i496, align 8
  store %struct.Memory* %loadMem_401955, %struct.Memory** %MEMORY
  %loadMem_401959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 7
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RDX.i493 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 15
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %1375 to i64*
  %1376 = load i64, i64* %RBP.i494
  %1377 = sub i64 %1376, 28
  %1378 = load i64, i64* %PC.i492
  %1379 = add i64 %1378, 4
  store i64 %1379, i64* %PC.i492
  %1380 = inttoptr i64 %1377 to i32*
  %1381 = load i32, i32* %1380
  %1382 = sext i32 %1381 to i64
  store i64 %1382, i64* %RDX.i493, align 8
  store %struct.Memory* %loadMem_401959, %struct.Memory** %MEMORY
  %loadMem_40195d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 33
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 5
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 7
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %RDX.i490 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1393 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1392, i64 0, i64 0
  %YMM0.i491 = bitcast %union.VectorReg* %1393 to %"class.std::bitset"*
  %1394 = bitcast %"class.std::bitset"* %YMM0.i491 to i8*
  %1395 = load i64, i64* %RCX.i489
  %1396 = load i64, i64* %RDX.i490
  %1397 = mul i64 %1396, 8
  %1398 = add i64 %1397, %1395
  %1399 = load i64, i64* %PC.i488
  %1400 = add i64 %1399, 5
  store i64 %1400, i64* %PC.i488
  %1401 = inttoptr i64 %1398 to double*
  %1402 = load double, double* %1401
  %1403 = bitcast i8* %1394 to double*
  store double %1402, double* %1403, align 1
  %1404 = getelementptr inbounds i8, i8* %1394, i64 8
  %1405 = bitcast i8* %1404 to double*
  store double 0.000000e+00, double* %1405, align 1
  store %struct.Memory* %loadMem_40195d, %struct.Memory** %MEMORY
  %loadMem_401962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 5
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 15
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %1414 to i64*
  %1415 = load i64, i64* %RBP.i487
  %1416 = sub i64 %1415, 16
  %1417 = load i64, i64* %PC.i485
  %1418 = add i64 %1417, 4
  store i64 %1418, i64* %PC.i485
  %1419 = inttoptr i64 %1416 to i64*
  %1420 = load i64, i64* %1419
  store i64 %1420, i64* %RCX.i486, align 8
  store %struct.Memory* %loadMem_401962, %struct.Memory** %MEMORY
  %loadMem_401966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 7
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RDX.i483 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 15
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %1429 to i64*
  %1430 = load i64, i64* %RBP.i484
  %1431 = sub i64 %1430, 32
  %1432 = load i64, i64* %PC.i482
  %1433 = add i64 %1432, 4
  store i64 %1433, i64* %PC.i482
  %1434 = inttoptr i64 %1431 to i32*
  %1435 = load i32, i32* %1434
  %1436 = sext i32 %1435 to i64
  store i64 %1436, i64* %RDX.i483, align 8
  store %struct.Memory* %loadMem_401966, %struct.Memory** %MEMORY
  %loadMem_40196a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 5
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 7
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %RDX.i480 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1447 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1446, i64 0, i64 0
  %YMM0.i481 = bitcast %union.VectorReg* %1447 to %"class.std::bitset"*
  %1448 = bitcast %"class.std::bitset"* %YMM0.i481 to i8*
  %1449 = bitcast %"class.std::bitset"* %YMM0.i481 to i8*
  %1450 = load i64, i64* %RCX.i479
  %1451 = load i64, i64* %RDX.i480
  %1452 = mul i64 %1451, 8
  %1453 = add i64 %1452, %1450
  %1454 = load i64, i64* %PC.i478
  %1455 = add i64 %1454, 5
  store i64 %1455, i64* %PC.i478
  %1456 = bitcast i8* %1449 to double*
  %1457 = load double, double* %1456, align 1
  %1458 = getelementptr inbounds i8, i8* %1449, i64 8
  %1459 = bitcast i8* %1458 to i64*
  %1460 = load i64, i64* %1459, align 1
  %1461 = inttoptr i64 %1453 to double*
  %1462 = load double, double* %1461
  %1463 = fsub double %1457, %1462
  %1464 = bitcast i8* %1448 to double*
  store double %1463, double* %1464, align 1
  %1465 = getelementptr inbounds i8, i8* %1448, i64 8
  %1466 = bitcast i8* %1465 to i64*
  store i64 %1460, i64* %1466, align 1
  store %struct.Memory* %loadMem_40196a, %struct.Memory** %MEMORY
  %loadMem_40196f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 15
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1473, i64 0, i64 0
  %XMM0.i477 = bitcast %union.VectorReg* %1474 to %union.vec128_t*
  %1475 = load i64, i64* %RBP.i476
  %1476 = sub i64 %1475, 72
  %1477 = bitcast %union.vec128_t* %XMM0.i477 to i8*
  %1478 = load i64, i64* %PC.i475
  %1479 = add i64 %1478, 5
  store i64 %1479, i64* %PC.i475
  %1480 = bitcast i8* %1477 to double*
  %1481 = load double, double* %1480, align 1
  %1482 = inttoptr i64 %1476 to double*
  store double %1481, double* %1482
  store %struct.Memory* %loadMem_40196f, %struct.Memory** %MEMORY
  %loadMem_401974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 5
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RCX.i473 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 15
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %RBP.i474
  %1493 = sub i64 %1492, 16
  %1494 = load i64, i64* %PC.i472
  %1495 = add i64 %1494, 4
  store i64 %1495, i64* %PC.i472
  %1496 = inttoptr i64 %1493 to i64*
  %1497 = load i64, i64* %1496
  store i64 %1497, i64* %RCX.i473, align 8
  store %struct.Memory* %loadMem_401974, %struct.Memory** %MEMORY
  %loadMem_401978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 33
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 1
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %1503 to i64*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 15
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %1506 to i64*
  %1507 = load i64, i64* %RBP.i471
  %1508 = sub i64 %1507, 28
  %1509 = load i64, i64* %PC.i469
  %1510 = add i64 %1509, 3
  store i64 %1510, i64* %PC.i469
  %1511 = inttoptr i64 %1508 to i32*
  %1512 = load i32, i32* %1511
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RAX.i470, align 8
  store %struct.Memory* %loadMem_401978, %struct.Memory** %MEMORY
  %loadMem_40197b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 1
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RAX.i468
  %1521 = load i64, i64* %PC.i467
  %1522 = add i64 %1521, 3
  store i64 %1522, i64* %PC.i467
  %1523 = trunc i64 %1520 to i32
  %1524 = add i32 1, %1523
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %RAX.i468, align 8
  %1526 = icmp ult i32 %1524, %1523
  %1527 = icmp ult i32 %1524, 1
  %1528 = or i1 %1526, %1527
  %1529 = zext i1 %1528 to i8
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1529, i8* %1530, align 1
  %1531 = and i32 %1524, 255
  %1532 = call i32 @llvm.ctpop.i32(i32 %1531)
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1535, i8* %1536, align 1
  %1537 = xor i64 1, %1520
  %1538 = trunc i64 %1537 to i32
  %1539 = xor i32 %1538, %1524
  %1540 = lshr i32 %1539, 4
  %1541 = trunc i32 %1540 to i8
  %1542 = and i8 %1541, 1
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1542, i8* %1543, align 1
  %1544 = icmp eq i32 %1524, 0
  %1545 = zext i1 %1544 to i8
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1545, i8* %1546, align 1
  %1547 = lshr i32 %1524, 31
  %1548 = trunc i32 %1547 to i8
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1548, i8* %1549, align 1
  %1550 = lshr i32 %1523, 31
  %1551 = xor i32 %1547, %1550
  %1552 = add i32 %1551, %1547
  %1553 = icmp eq i32 %1552, 2
  %1554 = zext i1 %1553 to i8
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1554, i8* %1555, align 1
  store %struct.Memory* %loadMem_40197b, %struct.Memory** %MEMORY
  %loadMem_40197e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 1
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %EAX.i465 = bitcast %union.anon* %1561 to i32*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 7
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RDX.i466 = bitcast %union.anon* %1564 to i64*
  %1565 = load i32, i32* %EAX.i465
  %1566 = zext i32 %1565 to i64
  %1567 = load i64, i64* %PC.i464
  %1568 = add i64 %1567, 3
  store i64 %1568, i64* %PC.i464
  %1569 = shl i64 %1566, 32
  %1570 = ashr exact i64 %1569, 32
  store i64 %1570, i64* %RDX.i466, align 8
  store %struct.Memory* %loadMem_40197e, %struct.Memory** %MEMORY
  %loadMem_401981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 5
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 7
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RDX.i462 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1581 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1580, i64 0, i64 0
  %YMM0.i463 = bitcast %union.VectorReg* %1581 to %"class.std::bitset"*
  %1582 = bitcast %"class.std::bitset"* %YMM0.i463 to i8*
  %1583 = load i64, i64* %RCX.i461
  %1584 = load i64, i64* %RDX.i462
  %1585 = mul i64 %1584, 8
  %1586 = add i64 %1585, %1583
  %1587 = load i64, i64* %PC.i460
  %1588 = add i64 %1587, 5
  store i64 %1588, i64* %PC.i460
  %1589 = inttoptr i64 %1586 to double*
  %1590 = load double, double* %1589
  %1591 = bitcast i8* %1582 to double*
  store double %1590, double* %1591, align 1
  %1592 = getelementptr inbounds i8, i8* %1582, i64 8
  %1593 = bitcast i8* %1592 to double*
  store double 0.000000e+00, double* %1593, align 1
  store %struct.Memory* %loadMem_401981, %struct.Memory** %MEMORY
  %loadMem_401986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 33
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 5
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %RCX.i458 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 15
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %1602 to i64*
  %1603 = load i64, i64* %RBP.i459
  %1604 = sub i64 %1603, 16
  %1605 = load i64, i64* %PC.i457
  %1606 = add i64 %1605, 4
  store i64 %1606, i64* %PC.i457
  %1607 = inttoptr i64 %1604 to i64*
  %1608 = load i64, i64* %1607
  store i64 %1608, i64* %RCX.i458, align 8
  store %struct.Memory* %loadMem_401986, %struct.Memory** %MEMORY
  %loadMem_40198a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 33
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 1
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 15
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %1617 to i64*
  %1618 = load i64, i64* %RBP.i456
  %1619 = sub i64 %1618, 32
  %1620 = load i64, i64* %PC.i454
  %1621 = add i64 %1620, 3
  store i64 %1621, i64* %PC.i454
  %1622 = inttoptr i64 %1619 to i32*
  %1623 = load i32, i32* %1622
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_40198a, %struct.Memory** %MEMORY
  %loadMem_40198d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 1
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %1630 to i64*
  %1631 = load i64, i64* %RAX.i453
  %1632 = load i64, i64* %PC.i452
  %1633 = add i64 %1632, 3
  store i64 %1633, i64* %PC.i452
  %1634 = trunc i64 %1631 to i32
  %1635 = add i32 1, %1634
  %1636 = zext i32 %1635 to i64
  store i64 %1636, i64* %RAX.i453, align 8
  %1637 = icmp ult i32 %1635, %1634
  %1638 = icmp ult i32 %1635, 1
  %1639 = or i1 %1637, %1638
  %1640 = zext i1 %1639 to i8
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1640, i8* %1641, align 1
  %1642 = and i32 %1635, 255
  %1643 = call i32 @llvm.ctpop.i32(i32 %1642)
  %1644 = trunc i32 %1643 to i8
  %1645 = and i8 %1644, 1
  %1646 = xor i8 %1645, 1
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1646, i8* %1647, align 1
  %1648 = xor i64 1, %1631
  %1649 = trunc i64 %1648 to i32
  %1650 = xor i32 %1649, %1635
  %1651 = lshr i32 %1650, 4
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1653, i8* %1654, align 1
  %1655 = icmp eq i32 %1635, 0
  %1656 = zext i1 %1655 to i8
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1656, i8* %1657, align 1
  %1658 = lshr i32 %1635, 31
  %1659 = trunc i32 %1658 to i8
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1659, i8* %1660, align 1
  %1661 = lshr i32 %1634, 31
  %1662 = xor i32 %1658, %1661
  %1663 = add i32 %1662, %1658
  %1664 = icmp eq i32 %1663, 2
  %1665 = zext i1 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1665, i8* %1666, align 1
  store %struct.Memory* %loadMem_40198d, %struct.Memory** %MEMORY
  %loadMem_401990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 33
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 1
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %1672 to i32*
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 7
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %RDX.i451 = bitcast %union.anon* %1675 to i64*
  %1676 = load i32, i32* %EAX.i450
  %1677 = zext i32 %1676 to i64
  %1678 = load i64, i64* %PC.i449
  %1679 = add i64 %1678, 3
  store i64 %1679, i64* %PC.i449
  %1680 = shl i64 %1677, 32
  %1681 = ashr exact i64 %1680, 32
  store i64 %1681, i64* %RDX.i451, align 8
  store %struct.Memory* %loadMem_401990, %struct.Memory** %MEMORY
  %loadMem_401993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 5
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 7
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %RDX.i447 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1691, i64 0, i64 0
  %YMM0.i448 = bitcast %union.VectorReg* %1692 to %"class.std::bitset"*
  %1693 = bitcast %"class.std::bitset"* %YMM0.i448 to i8*
  %1694 = bitcast %"class.std::bitset"* %YMM0.i448 to i8*
  %1695 = load i64, i64* %RCX.i446
  %1696 = load i64, i64* %RDX.i447
  %1697 = mul i64 %1696, 8
  %1698 = add i64 %1697, %1695
  %1699 = load i64, i64* %PC.i445
  %1700 = add i64 %1699, 5
  store i64 %1700, i64* %PC.i445
  %1701 = bitcast i8* %1694 to double*
  %1702 = load double, double* %1701, align 1
  %1703 = getelementptr inbounds i8, i8* %1694, i64 8
  %1704 = bitcast i8* %1703 to i64*
  %1705 = load i64, i64* %1704, align 1
  %1706 = inttoptr i64 %1698 to double*
  %1707 = load double, double* %1706
  %1708 = fsub double %1702, %1707
  %1709 = bitcast i8* %1693 to double*
  store double %1708, double* %1709, align 1
  %1710 = getelementptr inbounds i8, i8* %1693, i64 8
  %1711 = bitcast i8* %1710 to i64*
  store i64 %1705, i64* %1711, align 1
  store %struct.Memory* %loadMem_401993, %struct.Memory** %MEMORY
  %loadMem_401998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 15
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1718, i64 0, i64 0
  %XMM0.i444 = bitcast %union.VectorReg* %1719 to %union.vec128_t*
  %1720 = load i64, i64* %RBP.i443
  %1721 = sub i64 %1720, 80
  %1722 = bitcast %union.vec128_t* %XMM0.i444 to i8*
  %1723 = load i64, i64* %PC.i442
  %1724 = add i64 %1723, 5
  store i64 %1724, i64* %PC.i442
  %1725 = bitcast i8* %1722 to double*
  %1726 = load double, double* %1725, align 1
  %1727 = inttoptr i64 %1721 to double*
  store double %1726, double* %1727
  store %struct.Memory* %loadMem_401998, %struct.Memory** %MEMORY
  %loadMem_40199d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 33
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 5
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %1733 to i64*
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 15
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %1736 to i64*
  %1737 = load i64, i64* %RBP.i441
  %1738 = sub i64 %1737, 16
  %1739 = load i64, i64* %PC.i439
  %1740 = add i64 %1739, 4
  store i64 %1740, i64* %PC.i439
  %1741 = inttoptr i64 %1738 to i64*
  %1742 = load i64, i64* %1741
  store i64 %1742, i64* %RCX.i440, align 8
  store %struct.Memory* %loadMem_40199d, %struct.Memory** %MEMORY
  %loadMem_4019a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 7
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RDX.i437 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 15
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %1751 to i64*
  %1752 = load i64, i64* %RBP.i438
  %1753 = sub i64 %1752, 36
  %1754 = load i64, i64* %PC.i436
  %1755 = add i64 %1754, 4
  store i64 %1755, i64* %PC.i436
  %1756 = inttoptr i64 %1753 to i32*
  %1757 = load i32, i32* %1756
  %1758 = sext i32 %1757 to i64
  store i64 %1758, i64* %RDX.i437, align 8
  store %struct.Memory* %loadMem_4019a1, %struct.Memory** %MEMORY
  %loadMem_4019a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 33
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 5
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 7
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RDX.i434 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1769 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1768, i64 0, i64 0
  %YMM0.i435 = bitcast %union.VectorReg* %1769 to %"class.std::bitset"*
  %1770 = bitcast %"class.std::bitset"* %YMM0.i435 to i8*
  %1771 = load i64, i64* %RCX.i433
  %1772 = load i64, i64* %RDX.i434
  %1773 = mul i64 %1772, 8
  %1774 = add i64 %1773, %1771
  %1775 = load i64, i64* %PC.i432
  %1776 = add i64 %1775, 5
  store i64 %1776, i64* %PC.i432
  %1777 = inttoptr i64 %1774 to double*
  %1778 = load double, double* %1777
  %1779 = bitcast i8* %1770 to double*
  store double %1778, double* %1779, align 1
  %1780 = getelementptr inbounds i8, i8* %1770, i64 8
  %1781 = bitcast i8* %1780 to double*
  store double 0.000000e+00, double* %1781, align 1
  store %struct.Memory* %loadMem_4019a5, %struct.Memory** %MEMORY
  %loadMem_4019aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 33
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1784 to i64*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 5
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %1787 to i64*
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 15
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %1790 to i64*
  %1791 = load i64, i64* %RBP.i431
  %1792 = sub i64 %1791, 16
  %1793 = load i64, i64* %PC.i429
  %1794 = add i64 %1793, 4
  store i64 %1794, i64* %PC.i429
  %1795 = inttoptr i64 %1792 to i64*
  %1796 = load i64, i64* %1795
  store i64 %1796, i64* %RCX.i430, align 8
  store %struct.Memory* %loadMem_4019aa, %struct.Memory** %MEMORY
  %loadMem_4019ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 7
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RDX.i427 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 15
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %RBP.i428
  %1807 = sub i64 %1806, 40
  %1808 = load i64, i64* %PC.i426
  %1809 = add i64 %1808, 4
  store i64 %1809, i64* %PC.i426
  %1810 = inttoptr i64 %1807 to i32*
  %1811 = load i32, i32* %1810
  %1812 = sext i32 %1811 to i64
  store i64 %1812, i64* %RDX.i427, align 8
  store %struct.Memory* %loadMem_4019ae, %struct.Memory** %MEMORY
  %loadMem_4019b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 5
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %1818 to i64*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 7
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RDX.i424 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1823 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1822, i64 0, i64 0
  %YMM0.i425 = bitcast %union.VectorReg* %1823 to %"class.std::bitset"*
  %1824 = bitcast %"class.std::bitset"* %YMM0.i425 to i8*
  %1825 = bitcast %"class.std::bitset"* %YMM0.i425 to i8*
  %1826 = load i64, i64* %RCX.i423
  %1827 = load i64, i64* %RDX.i424
  %1828 = mul i64 %1827, 8
  %1829 = add i64 %1828, %1826
  %1830 = load i64, i64* %PC.i422
  %1831 = add i64 %1830, 5
  store i64 %1831, i64* %PC.i422
  %1832 = bitcast i8* %1825 to double*
  %1833 = load double, double* %1832, align 1
  %1834 = getelementptr inbounds i8, i8* %1825, i64 8
  %1835 = bitcast i8* %1834 to i64*
  %1836 = load i64, i64* %1835, align 1
  %1837 = inttoptr i64 %1829 to double*
  %1838 = load double, double* %1837
  %1839 = fadd double %1833, %1838
  %1840 = bitcast i8* %1824 to double*
  store double %1839, double* %1840, align 1
  %1841 = getelementptr inbounds i8, i8* %1824, i64 8
  %1842 = bitcast i8* %1841 to i64*
  store i64 %1836, i64* %1842, align 1
  store %struct.Memory* %loadMem_4019b2, %struct.Memory** %MEMORY
  %loadMem_4019b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 33
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 15
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %1848 to i64*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1850 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1849, i64 0, i64 0
  %XMM0.i421 = bitcast %union.VectorReg* %1850 to %union.vec128_t*
  %1851 = load i64, i64* %RBP.i420
  %1852 = sub i64 %1851, 88
  %1853 = bitcast %union.vec128_t* %XMM0.i421 to i8*
  %1854 = load i64, i64* %PC.i419
  %1855 = add i64 %1854, 5
  store i64 %1855, i64* %PC.i419
  %1856 = bitcast i8* %1853 to double*
  %1857 = load double, double* %1856, align 1
  %1858 = inttoptr i64 %1852 to double*
  store double %1857, double* %1858
  store %struct.Memory* %loadMem_4019b7, %struct.Memory** %MEMORY
  %loadMem_4019bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 5
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 15
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %1867 to i64*
  %1868 = load i64, i64* %RBP.i418
  %1869 = sub i64 %1868, 16
  %1870 = load i64, i64* %PC.i416
  %1871 = add i64 %1870, 4
  store i64 %1871, i64* %PC.i416
  %1872 = inttoptr i64 %1869 to i64*
  %1873 = load i64, i64* %1872
  store i64 %1873, i64* %RCX.i417, align 8
  store %struct.Memory* %loadMem_4019bc, %struct.Memory** %MEMORY
  %loadMem_4019c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 1
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 15
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %1882 to i64*
  %1883 = load i64, i64* %RBP.i415
  %1884 = sub i64 %1883, 36
  %1885 = load i64, i64* %PC.i413
  %1886 = add i64 %1885, 3
  store i64 %1886, i64* %PC.i413
  %1887 = inttoptr i64 %1884 to i32*
  %1888 = load i32, i32* %1887
  %1889 = zext i32 %1888 to i64
  store i64 %1889, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_4019c0, %struct.Memory** %MEMORY
  %loadMem_4019c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 1
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %RAX.i412
  %1897 = load i64, i64* %PC.i411
  %1898 = add i64 %1897, 3
  store i64 %1898, i64* %PC.i411
  %1899 = trunc i64 %1896 to i32
  %1900 = add i32 1, %1899
  %1901 = zext i32 %1900 to i64
  store i64 %1901, i64* %RAX.i412, align 8
  %1902 = icmp ult i32 %1900, %1899
  %1903 = icmp ult i32 %1900, 1
  %1904 = or i1 %1902, %1903
  %1905 = zext i1 %1904 to i8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1905, i8* %1906, align 1
  %1907 = and i32 %1900, 255
  %1908 = call i32 @llvm.ctpop.i32(i32 %1907)
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = xor i8 %1910, 1
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1911, i8* %1912, align 1
  %1913 = xor i64 1, %1896
  %1914 = trunc i64 %1913 to i32
  %1915 = xor i32 %1914, %1900
  %1916 = lshr i32 %1915, 4
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1918, i8* %1919, align 1
  %1920 = icmp eq i32 %1900, 0
  %1921 = zext i1 %1920 to i8
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1921, i8* %1922, align 1
  %1923 = lshr i32 %1900, 31
  %1924 = trunc i32 %1923 to i8
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1924, i8* %1925, align 1
  %1926 = lshr i32 %1899, 31
  %1927 = xor i32 %1923, %1926
  %1928 = add i32 %1927, %1923
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1930, i8* %1931, align 1
  store %struct.Memory* %loadMem_4019c3, %struct.Memory** %MEMORY
  %loadMem_4019c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 1
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %EAX.i409 = bitcast %union.anon* %1937 to i32*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 7
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RDX.i410 = bitcast %union.anon* %1940 to i64*
  %1941 = load i32, i32* %EAX.i409
  %1942 = zext i32 %1941 to i64
  %1943 = load i64, i64* %PC.i408
  %1944 = add i64 %1943, 3
  store i64 %1944, i64* %PC.i408
  %1945 = shl i64 %1942, 32
  %1946 = ashr exact i64 %1945, 32
  store i64 %1946, i64* %RDX.i410, align 8
  store %struct.Memory* %loadMem_4019c6, %struct.Memory** %MEMORY
  %loadMem_4019c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 5
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 7
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RDX.i406 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1957 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1956, i64 0, i64 0
  %YMM0.i407 = bitcast %union.VectorReg* %1957 to %"class.std::bitset"*
  %1958 = bitcast %"class.std::bitset"* %YMM0.i407 to i8*
  %1959 = load i64, i64* %RCX.i405
  %1960 = load i64, i64* %RDX.i406
  %1961 = mul i64 %1960, 8
  %1962 = add i64 %1961, %1959
  %1963 = load i64, i64* %PC.i404
  %1964 = add i64 %1963, 5
  store i64 %1964, i64* %PC.i404
  %1965 = inttoptr i64 %1962 to double*
  %1966 = load double, double* %1965
  %1967 = bitcast i8* %1958 to double*
  store double %1966, double* %1967, align 1
  %1968 = getelementptr inbounds i8, i8* %1958, i64 8
  %1969 = bitcast i8* %1968 to double*
  store double 0.000000e+00, double* %1969, align 1
  store %struct.Memory* %loadMem_4019c9, %struct.Memory** %MEMORY
  %loadMem_4019ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 33
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 5
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %RCX.i402 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 15
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %1978 to i64*
  %1979 = load i64, i64* %RBP.i403
  %1980 = sub i64 %1979, 16
  %1981 = load i64, i64* %PC.i401
  %1982 = add i64 %1981, 4
  store i64 %1982, i64* %PC.i401
  %1983 = inttoptr i64 %1980 to i64*
  %1984 = load i64, i64* %1983
  store i64 %1984, i64* %RCX.i402, align 8
  store %struct.Memory* %loadMem_4019ce, %struct.Memory** %MEMORY
  %loadMem_4019d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1987 to i64*
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 1
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 15
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %1993 to i64*
  %1994 = load i64, i64* %RBP.i400
  %1995 = sub i64 %1994, 40
  %1996 = load i64, i64* %PC.i398
  %1997 = add i64 %1996, 3
  store i64 %1997, i64* %PC.i398
  %1998 = inttoptr i64 %1995 to i32*
  %1999 = load i32, i32* %1998
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RAX.i399, align 8
  store %struct.Memory* %loadMem_4019d2, %struct.Memory** %MEMORY
  %loadMem_4019d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 1
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %RAX.i397
  %2008 = load i64, i64* %PC.i396
  %2009 = add i64 %2008, 3
  store i64 %2009, i64* %PC.i396
  %2010 = trunc i64 %2007 to i32
  %2011 = add i32 1, %2010
  %2012 = zext i32 %2011 to i64
  store i64 %2012, i64* %RAX.i397, align 8
  %2013 = icmp ult i32 %2011, %2010
  %2014 = icmp ult i32 %2011, 1
  %2015 = or i1 %2013, %2014
  %2016 = zext i1 %2015 to i8
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2016, i8* %2017, align 1
  %2018 = and i32 %2011, 255
  %2019 = call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2022, i8* %2023, align 1
  %2024 = xor i64 1, %2007
  %2025 = trunc i64 %2024 to i32
  %2026 = xor i32 %2025, %2011
  %2027 = lshr i32 %2026, 4
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2029, i8* %2030, align 1
  %2031 = icmp eq i32 %2011, 0
  %2032 = zext i1 %2031 to i8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2032, i8* %2033, align 1
  %2034 = lshr i32 %2011, 31
  %2035 = trunc i32 %2034 to i8
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2035, i8* %2036, align 1
  %2037 = lshr i32 %2010, 31
  %2038 = xor i32 %2034, %2037
  %2039 = add i32 %2038, %2034
  %2040 = icmp eq i32 %2039, 2
  %2041 = zext i1 %2040 to i8
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2041, i8* %2042, align 1
  store %struct.Memory* %loadMem_4019d5, %struct.Memory** %MEMORY
  %loadMem_4019d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2045 to i64*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 1
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %EAX.i394 = bitcast %union.anon* %2048 to i32*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 7
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %RDX.i395 = bitcast %union.anon* %2051 to i64*
  %2052 = load i32, i32* %EAX.i394
  %2053 = zext i32 %2052 to i64
  %2054 = load i64, i64* %PC.i393
  %2055 = add i64 %2054, 3
  store i64 %2055, i64* %PC.i393
  %2056 = shl i64 %2053, 32
  %2057 = ashr exact i64 %2056, 32
  store i64 %2057, i64* %RDX.i395, align 8
  store %struct.Memory* %loadMem_4019d8, %struct.Memory** %MEMORY
  %loadMem_4019db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 33
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2060 to i64*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 5
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 7
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %RDX.i391 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2068 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2067, i64 0, i64 0
  %YMM0.i392 = bitcast %union.VectorReg* %2068 to %"class.std::bitset"*
  %2069 = bitcast %"class.std::bitset"* %YMM0.i392 to i8*
  %2070 = bitcast %"class.std::bitset"* %YMM0.i392 to i8*
  %2071 = load i64, i64* %RCX.i390
  %2072 = load i64, i64* %RDX.i391
  %2073 = mul i64 %2072, 8
  %2074 = add i64 %2073, %2071
  %2075 = load i64, i64* %PC.i389
  %2076 = add i64 %2075, 5
  store i64 %2076, i64* %PC.i389
  %2077 = bitcast i8* %2070 to double*
  %2078 = load double, double* %2077, align 1
  %2079 = getelementptr inbounds i8, i8* %2070, i64 8
  %2080 = bitcast i8* %2079 to i64*
  %2081 = load i64, i64* %2080, align 1
  %2082 = inttoptr i64 %2074 to double*
  %2083 = load double, double* %2082
  %2084 = fadd double %2078, %2083
  %2085 = bitcast i8* %2069 to double*
  store double %2084, double* %2085, align 1
  %2086 = getelementptr inbounds i8, i8* %2069, i64 8
  %2087 = bitcast i8* %2086 to i64*
  store i64 %2081, i64* %2087, align 1
  store %struct.Memory* %loadMem_4019db, %struct.Memory** %MEMORY
  %loadMem_4019e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 15
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2095 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2094, i64 0, i64 0
  %XMM0.i388 = bitcast %union.VectorReg* %2095 to %union.vec128_t*
  %2096 = load i64, i64* %RBP.i387
  %2097 = sub i64 %2096, 96
  %2098 = bitcast %union.vec128_t* %XMM0.i388 to i8*
  %2099 = load i64, i64* %PC.i386
  %2100 = add i64 %2099, 5
  store i64 %2100, i64* %PC.i386
  %2101 = bitcast i8* %2098 to double*
  %2102 = load double, double* %2101, align 1
  %2103 = inttoptr i64 %2097 to double*
  store double %2102, double* %2103
  store %struct.Memory* %loadMem_4019e0, %struct.Memory** %MEMORY
  %loadMem_4019e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 5
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 15
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %2112 to i64*
  %2113 = load i64, i64* %RBP.i385
  %2114 = sub i64 %2113, 16
  %2115 = load i64, i64* %PC.i383
  %2116 = add i64 %2115, 4
  store i64 %2116, i64* %PC.i383
  %2117 = inttoptr i64 %2114 to i64*
  %2118 = load i64, i64* %2117
  store i64 %2118, i64* %RCX.i384, align 8
  store %struct.Memory* %loadMem_4019e5, %struct.Memory** %MEMORY
  %loadMem_4019e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 7
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RDX.i381 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 15
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %RBP.i382
  %2129 = sub i64 %2128, 36
  %2130 = load i64, i64* %PC.i380
  %2131 = add i64 %2130, 4
  store i64 %2131, i64* %PC.i380
  %2132 = inttoptr i64 %2129 to i32*
  %2133 = load i32, i32* %2132
  %2134 = sext i32 %2133 to i64
  store i64 %2134, i64* %RDX.i381, align 8
  store %struct.Memory* %loadMem_4019e9, %struct.Memory** %MEMORY
  %loadMem_4019ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 5
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %2140 to i64*
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 7
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %RDX.i378 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2145 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2144, i64 0, i64 0
  %YMM0.i379 = bitcast %union.VectorReg* %2145 to %"class.std::bitset"*
  %2146 = bitcast %"class.std::bitset"* %YMM0.i379 to i8*
  %2147 = load i64, i64* %RCX.i377
  %2148 = load i64, i64* %RDX.i378
  %2149 = mul i64 %2148, 8
  %2150 = add i64 %2149, %2147
  %2151 = load i64, i64* %PC.i376
  %2152 = add i64 %2151, 5
  store i64 %2152, i64* %PC.i376
  %2153 = inttoptr i64 %2150 to double*
  %2154 = load double, double* %2153
  %2155 = bitcast i8* %2146 to double*
  store double %2154, double* %2155, align 1
  %2156 = getelementptr inbounds i8, i8* %2146, i64 8
  %2157 = bitcast i8* %2156 to double*
  store double 0.000000e+00, double* %2157, align 1
  store %struct.Memory* %loadMem_4019ed, %struct.Memory** %MEMORY
  %loadMem_4019f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 33
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 5
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 15
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %2166 to i64*
  %2167 = load i64, i64* %RBP.i375
  %2168 = sub i64 %2167, 16
  %2169 = load i64, i64* %PC.i373
  %2170 = add i64 %2169, 4
  store i64 %2170, i64* %PC.i373
  %2171 = inttoptr i64 %2168 to i64*
  %2172 = load i64, i64* %2171
  store i64 %2172, i64* %RCX.i374, align 8
  store %struct.Memory* %loadMem_4019f2, %struct.Memory** %MEMORY
  %loadMem_4019f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 7
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %2178 to i64*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 15
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %2181 to i64*
  %2182 = load i64, i64* %RBP.i372
  %2183 = sub i64 %2182, 40
  %2184 = load i64, i64* %PC.i370
  %2185 = add i64 %2184, 4
  store i64 %2185, i64* %PC.i370
  %2186 = inttoptr i64 %2183 to i32*
  %2187 = load i32, i32* %2186
  %2188 = sext i32 %2187 to i64
  store i64 %2188, i64* %RDX.i371, align 8
  store %struct.Memory* %loadMem_4019f6, %struct.Memory** %MEMORY
  %loadMem_4019fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 5
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 7
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RDX.i368 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2199 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2198, i64 0, i64 0
  %YMM0.i369 = bitcast %union.VectorReg* %2199 to %"class.std::bitset"*
  %2200 = bitcast %"class.std::bitset"* %YMM0.i369 to i8*
  %2201 = bitcast %"class.std::bitset"* %YMM0.i369 to i8*
  %2202 = load i64, i64* %RCX.i367
  %2203 = load i64, i64* %RDX.i368
  %2204 = mul i64 %2203, 8
  %2205 = add i64 %2204, %2202
  %2206 = load i64, i64* %PC.i366
  %2207 = add i64 %2206, 5
  store i64 %2207, i64* %PC.i366
  %2208 = bitcast i8* %2201 to double*
  %2209 = load double, double* %2208, align 1
  %2210 = getelementptr inbounds i8, i8* %2201, i64 8
  %2211 = bitcast i8* %2210 to i64*
  %2212 = load i64, i64* %2211, align 1
  %2213 = inttoptr i64 %2205 to double*
  %2214 = load double, double* %2213
  %2215 = fsub double %2209, %2214
  %2216 = bitcast i8* %2200 to double*
  store double %2215, double* %2216, align 1
  %2217 = getelementptr inbounds i8, i8* %2200, i64 8
  %2218 = bitcast i8* %2217 to i64*
  store i64 %2212, i64* %2218, align 1
  store %struct.Memory* %loadMem_4019fa, %struct.Memory** %MEMORY
  %loadMem_4019ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 33
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 15
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %2224 to i64*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2226 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2225, i64 0, i64 0
  %XMM0.i365 = bitcast %union.VectorReg* %2226 to %union.vec128_t*
  %2227 = load i64, i64* %RBP.i364
  %2228 = sub i64 %2227, 104
  %2229 = bitcast %union.vec128_t* %XMM0.i365 to i8*
  %2230 = load i64, i64* %PC.i363
  %2231 = add i64 %2230, 5
  store i64 %2231, i64* %PC.i363
  %2232 = bitcast i8* %2229 to double*
  %2233 = load double, double* %2232, align 1
  %2234 = inttoptr i64 %2228 to double*
  store double %2233, double* %2234
  store %struct.Memory* %loadMem_4019ff, %struct.Memory** %MEMORY
  %loadMem_401a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 33
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 5
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %2240 to i64*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 15
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %2243 to i64*
  %2244 = load i64, i64* %RBP.i362
  %2245 = sub i64 %2244, 16
  %2246 = load i64, i64* %PC.i360
  %2247 = add i64 %2246, 4
  store i64 %2247, i64* %PC.i360
  %2248 = inttoptr i64 %2245 to i64*
  %2249 = load i64, i64* %2248
  store i64 %2249, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_401a04, %struct.Memory** %MEMORY
  %loadMem_401a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 33
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 1
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 15
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %2258 to i64*
  %2259 = load i64, i64* %RBP.i359
  %2260 = sub i64 %2259, 36
  %2261 = load i64, i64* %PC.i357
  %2262 = add i64 %2261, 3
  store i64 %2262, i64* %PC.i357
  %2263 = inttoptr i64 %2260 to i32*
  %2264 = load i32, i32* %2263
  %2265 = zext i32 %2264 to i64
  store i64 %2265, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_401a08, %struct.Memory** %MEMORY
  %loadMem_401a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 33
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2268 to i64*
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 1
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %RAX.i356
  %2273 = load i64, i64* %PC.i355
  %2274 = add i64 %2273, 3
  store i64 %2274, i64* %PC.i355
  %2275 = trunc i64 %2272 to i32
  %2276 = add i32 1, %2275
  %2277 = zext i32 %2276 to i64
  store i64 %2277, i64* %RAX.i356, align 8
  %2278 = icmp ult i32 %2276, %2275
  %2279 = icmp ult i32 %2276, 1
  %2280 = or i1 %2278, %2279
  %2281 = zext i1 %2280 to i8
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2281, i8* %2282, align 1
  %2283 = and i32 %2276, 255
  %2284 = call i32 @llvm.ctpop.i32(i32 %2283)
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = xor i8 %2286, 1
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2287, i8* %2288, align 1
  %2289 = xor i64 1, %2272
  %2290 = trunc i64 %2289 to i32
  %2291 = xor i32 %2290, %2276
  %2292 = lshr i32 %2291, 4
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2294, i8* %2295, align 1
  %2296 = icmp eq i32 %2276, 0
  %2297 = zext i1 %2296 to i8
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2297, i8* %2298, align 1
  %2299 = lshr i32 %2276, 31
  %2300 = trunc i32 %2299 to i8
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2300, i8* %2301, align 1
  %2302 = lshr i32 %2275, 31
  %2303 = xor i32 %2299, %2302
  %2304 = add i32 %2303, %2299
  %2305 = icmp eq i32 %2304, 2
  %2306 = zext i1 %2305 to i8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2306, i8* %2307, align 1
  store %struct.Memory* %loadMem_401a0b, %struct.Memory** %MEMORY
  %loadMem_401a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 33
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 1
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %EAX.i353 = bitcast %union.anon* %2313 to i32*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 7
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RDX.i354 = bitcast %union.anon* %2316 to i64*
  %2317 = load i32, i32* %EAX.i353
  %2318 = zext i32 %2317 to i64
  %2319 = load i64, i64* %PC.i352
  %2320 = add i64 %2319, 3
  store i64 %2320, i64* %PC.i352
  %2321 = shl i64 %2318, 32
  %2322 = ashr exact i64 %2321, 32
  store i64 %2322, i64* %RDX.i354, align 8
  store %struct.Memory* %loadMem_401a0e, %struct.Memory** %MEMORY
  %loadMem_401a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 33
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 5
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 7
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2332, i64 0, i64 0
  %YMM0.i351 = bitcast %union.VectorReg* %2333 to %"class.std::bitset"*
  %2334 = bitcast %"class.std::bitset"* %YMM0.i351 to i8*
  %2335 = load i64, i64* %RCX.i349
  %2336 = load i64, i64* %RDX.i350
  %2337 = mul i64 %2336, 8
  %2338 = add i64 %2337, %2335
  %2339 = load i64, i64* %PC.i348
  %2340 = add i64 %2339, 5
  store i64 %2340, i64* %PC.i348
  %2341 = inttoptr i64 %2338 to double*
  %2342 = load double, double* %2341
  %2343 = bitcast i8* %2334 to double*
  store double %2342, double* %2343, align 1
  %2344 = getelementptr inbounds i8, i8* %2334, i64 8
  %2345 = bitcast i8* %2344 to double*
  store double 0.000000e+00, double* %2345, align 1
  store %struct.Memory* %loadMem_401a11, %struct.Memory** %MEMORY
  %loadMem_401a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 33
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %2348 to i64*
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 5
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %2351 to i64*
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 15
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %2354 to i64*
  %2355 = load i64, i64* %RBP.i347
  %2356 = sub i64 %2355, 16
  %2357 = load i64, i64* %PC.i345
  %2358 = add i64 %2357, 4
  store i64 %2358, i64* %PC.i345
  %2359 = inttoptr i64 %2356 to i64*
  %2360 = load i64, i64* %2359
  store i64 %2360, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_401a16, %struct.Memory** %MEMORY
  %loadMem_401a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 33
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %2363 to i64*
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 1
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 15
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %2369 to i64*
  %2370 = load i64, i64* %RBP.i344
  %2371 = sub i64 %2370, 40
  %2372 = load i64, i64* %PC.i342
  %2373 = add i64 %2372, 3
  store i64 %2373, i64* %PC.i342
  %2374 = inttoptr i64 %2371 to i32*
  %2375 = load i32, i32* %2374
  %2376 = zext i32 %2375 to i64
  store i64 %2376, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_401a1a, %struct.Memory** %MEMORY
  %loadMem_401a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 1
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %2382 to i64*
  %2383 = load i64, i64* %RAX.i341
  %2384 = load i64, i64* %PC.i340
  %2385 = add i64 %2384, 3
  store i64 %2385, i64* %PC.i340
  %2386 = trunc i64 %2383 to i32
  %2387 = add i32 1, %2386
  %2388 = zext i32 %2387 to i64
  store i64 %2388, i64* %RAX.i341, align 8
  %2389 = icmp ult i32 %2387, %2386
  %2390 = icmp ult i32 %2387, 1
  %2391 = or i1 %2389, %2390
  %2392 = zext i1 %2391 to i8
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2392, i8* %2393, align 1
  %2394 = and i32 %2387, 255
  %2395 = call i32 @llvm.ctpop.i32(i32 %2394)
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = xor i8 %2397, 1
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2398, i8* %2399, align 1
  %2400 = xor i64 1, %2383
  %2401 = trunc i64 %2400 to i32
  %2402 = xor i32 %2401, %2387
  %2403 = lshr i32 %2402, 4
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2405, i8* %2406, align 1
  %2407 = icmp eq i32 %2387, 0
  %2408 = zext i1 %2407 to i8
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2408, i8* %2409, align 1
  %2410 = lshr i32 %2387, 31
  %2411 = trunc i32 %2410 to i8
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2411, i8* %2412, align 1
  %2413 = lshr i32 %2386, 31
  %2414 = xor i32 %2410, %2413
  %2415 = add i32 %2414, %2410
  %2416 = icmp eq i32 %2415, 2
  %2417 = zext i1 %2416 to i8
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2417, i8* %2418, align 1
  store %struct.Memory* %loadMem_401a1d, %struct.Memory** %MEMORY
  %loadMem_401a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 1
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %EAX.i338 = bitcast %union.anon* %2424 to i32*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 7
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %RDX.i339 = bitcast %union.anon* %2427 to i64*
  %2428 = load i32, i32* %EAX.i338
  %2429 = zext i32 %2428 to i64
  %2430 = load i64, i64* %PC.i337
  %2431 = add i64 %2430, 3
  store i64 %2431, i64* %PC.i337
  %2432 = shl i64 %2429, 32
  %2433 = ashr exact i64 %2432, 32
  store i64 %2433, i64* %RDX.i339, align 8
  store %struct.Memory* %loadMem_401a20, %struct.Memory** %MEMORY
  %loadMem_401a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 5
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 7
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %RDX.i335 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2444 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2443, i64 0, i64 0
  %YMM0.i336 = bitcast %union.VectorReg* %2444 to %"class.std::bitset"*
  %2445 = bitcast %"class.std::bitset"* %YMM0.i336 to i8*
  %2446 = bitcast %"class.std::bitset"* %YMM0.i336 to i8*
  %2447 = load i64, i64* %RCX.i334
  %2448 = load i64, i64* %RDX.i335
  %2449 = mul i64 %2448, 8
  %2450 = add i64 %2449, %2447
  %2451 = load i64, i64* %PC.i333
  %2452 = add i64 %2451, 5
  store i64 %2452, i64* %PC.i333
  %2453 = bitcast i8* %2446 to double*
  %2454 = load double, double* %2453, align 1
  %2455 = getelementptr inbounds i8, i8* %2446, i64 8
  %2456 = bitcast i8* %2455 to i64*
  %2457 = load i64, i64* %2456, align 1
  %2458 = inttoptr i64 %2450 to double*
  %2459 = load double, double* %2458
  %2460 = fsub double %2454, %2459
  %2461 = bitcast i8* %2445 to double*
  store double %2460, double* %2461, align 1
  %2462 = getelementptr inbounds i8, i8* %2445, i64 8
  %2463 = bitcast i8* %2462 to i64*
  store i64 %2457, i64* %2463, align 1
  store %struct.Memory* %loadMem_401a23, %struct.Memory** %MEMORY
  %loadMem_401a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 33
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 15
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2471 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2470, i64 0, i64 0
  %XMM0.i332 = bitcast %union.VectorReg* %2471 to %union.vec128_t*
  %2472 = load i64, i64* %RBP.i331
  %2473 = sub i64 %2472, 112
  %2474 = bitcast %union.vec128_t* %XMM0.i332 to i8*
  %2475 = load i64, i64* %PC.i330
  %2476 = add i64 %2475, 5
  store i64 %2476, i64* %PC.i330
  %2477 = bitcast i8* %2474 to double*
  %2478 = load double, double* %2477, align 1
  %2479 = inttoptr i64 %2473 to double*
  store double %2478, double* %2479
  store %struct.Memory* %loadMem_401a28, %struct.Memory** %MEMORY
  %loadMem_401a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 15
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2487 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2486, i64 0, i64 0
  %YMM0.i329 = bitcast %union.VectorReg* %2487 to %"class.std::bitset"*
  %2488 = bitcast %"class.std::bitset"* %YMM0.i329 to i8*
  %2489 = load i64, i64* %RBP.i328
  %2490 = sub i64 %2489, 56
  %2491 = load i64, i64* %PC.i327
  %2492 = add i64 %2491, 5
  store i64 %2492, i64* %PC.i327
  %2493 = inttoptr i64 %2490 to double*
  %2494 = load double, double* %2493
  %2495 = bitcast i8* %2488 to double*
  store double %2494, double* %2495, align 1
  %2496 = getelementptr inbounds i8, i8* %2488, i64 8
  %2497 = bitcast i8* %2496 to double*
  store double 0.000000e+00, double* %2497, align 1
  store %struct.Memory* %loadMem_401a2d, %struct.Memory** %MEMORY
  %loadMem_401a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 15
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2505 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2504, i64 0, i64 0
  %YMM0.i326 = bitcast %union.VectorReg* %2505 to %"class.std::bitset"*
  %2506 = bitcast %"class.std::bitset"* %YMM0.i326 to i8*
  %2507 = bitcast %"class.std::bitset"* %YMM0.i326 to i8*
  %2508 = load i64, i64* %RBP.i325
  %2509 = sub i64 %2508, 88
  %2510 = load i64, i64* %PC.i324
  %2511 = add i64 %2510, 5
  store i64 %2511, i64* %PC.i324
  %2512 = bitcast i8* %2507 to double*
  %2513 = load double, double* %2512, align 1
  %2514 = getelementptr inbounds i8, i8* %2507, i64 8
  %2515 = bitcast i8* %2514 to i64*
  %2516 = load i64, i64* %2515, align 1
  %2517 = inttoptr i64 %2509 to double*
  %2518 = load double, double* %2517
  %2519 = fadd double %2513, %2518
  %2520 = bitcast i8* %2506 to double*
  store double %2519, double* %2520, align 1
  %2521 = getelementptr inbounds i8, i8* %2506, i64 8
  %2522 = bitcast i8* %2521 to i64*
  store i64 %2516, i64* %2522, align 1
  store %struct.Memory* %loadMem_401a32, %struct.Memory** %MEMORY
  %loadMem_401a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 33
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %2525 to i64*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 5
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 15
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %RBP.i323
  %2533 = sub i64 %2532, 16
  %2534 = load i64, i64* %PC.i321
  %2535 = add i64 %2534, 4
  store i64 %2535, i64* %PC.i321
  %2536 = inttoptr i64 %2533 to i64*
  %2537 = load i64, i64* %2536
  store i64 %2537, i64* %RCX.i322, align 8
  store %struct.Memory* %loadMem_401a37, %struct.Memory** %MEMORY
  %loadMem_401a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 33
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2540 to i64*
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 7
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %RDX.i319 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 15
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %2546 to i64*
  %2547 = load i64, i64* %RBP.i320
  %2548 = sub i64 %2547, 28
  %2549 = load i64, i64* %PC.i318
  %2550 = add i64 %2549, 4
  store i64 %2550, i64* %PC.i318
  %2551 = inttoptr i64 %2548 to i32*
  %2552 = load i32, i32* %2551
  %2553 = sext i32 %2552 to i64
  store i64 %2553, i64* %RDX.i319, align 8
  store %struct.Memory* %loadMem_401a3b, %struct.Memory** %MEMORY
  %loadMem_401a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 33
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %2556 to i64*
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 5
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %2559 to i64*
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 7
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %2562 to i64*
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2564 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2563, i64 0, i64 0
  %XMM0.i317 = bitcast %union.VectorReg* %2564 to %union.vec128_t*
  %2565 = load i64, i64* %RCX.i315
  %2566 = load i64, i64* %RDX.i316
  %2567 = mul i64 %2566, 8
  %2568 = add i64 %2567, %2565
  %2569 = bitcast %union.vec128_t* %XMM0.i317 to i8*
  %2570 = load i64, i64* %PC.i314
  %2571 = add i64 %2570, 5
  store i64 %2571, i64* %PC.i314
  %2572 = bitcast i8* %2569 to double*
  %2573 = load double, double* %2572, align 1
  %2574 = inttoptr i64 %2568 to double*
  store double %2573, double* %2574
  store %struct.Memory* %loadMem_401a3f, %struct.Memory** %MEMORY
  %loadMem_401a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 33
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 15
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2580 to i64*
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2582 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2581, i64 0, i64 0
  %YMM0.i313 = bitcast %union.VectorReg* %2582 to %"class.std::bitset"*
  %2583 = bitcast %"class.std::bitset"* %YMM0.i313 to i8*
  %2584 = load i64, i64* %RBP.i312
  %2585 = sub i64 %2584, 64
  %2586 = load i64, i64* %PC.i311
  %2587 = add i64 %2586, 5
  store i64 %2587, i64* %PC.i311
  %2588 = inttoptr i64 %2585 to double*
  %2589 = load double, double* %2588
  %2590 = bitcast i8* %2583 to double*
  store double %2589, double* %2590, align 1
  %2591 = getelementptr inbounds i8, i8* %2583, i64 8
  %2592 = bitcast i8* %2591 to double*
  store double 0.000000e+00, double* %2592, align 1
  store %struct.Memory* %loadMem_401a44, %struct.Memory** %MEMORY
  %loadMem_401a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 33
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2595 to i64*
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 15
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %2598 to i64*
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2600 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2599, i64 0, i64 0
  %YMM0.i310 = bitcast %union.VectorReg* %2600 to %"class.std::bitset"*
  %2601 = bitcast %"class.std::bitset"* %YMM0.i310 to i8*
  %2602 = bitcast %"class.std::bitset"* %YMM0.i310 to i8*
  %2603 = load i64, i64* %RBP.i309
  %2604 = sub i64 %2603, 96
  %2605 = load i64, i64* %PC.i308
  %2606 = add i64 %2605, 5
  store i64 %2606, i64* %PC.i308
  %2607 = bitcast i8* %2602 to double*
  %2608 = load double, double* %2607, align 1
  %2609 = getelementptr inbounds i8, i8* %2602, i64 8
  %2610 = bitcast i8* %2609 to i64*
  %2611 = load i64, i64* %2610, align 1
  %2612 = inttoptr i64 %2604 to double*
  %2613 = load double, double* %2612
  %2614 = fadd double %2608, %2613
  %2615 = bitcast i8* %2601 to double*
  store double %2614, double* %2615, align 1
  %2616 = getelementptr inbounds i8, i8* %2601, i64 8
  %2617 = bitcast i8* %2616 to i64*
  store i64 %2611, i64* %2617, align 1
  store %struct.Memory* %loadMem_401a49, %struct.Memory** %MEMORY
  %loadMem_401a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 5
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 15
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RBP.i307
  %2628 = sub i64 %2627, 16
  %2629 = load i64, i64* %PC.i305
  %2630 = add i64 %2629, 4
  store i64 %2630, i64* %PC.i305
  %2631 = inttoptr i64 %2628 to i64*
  %2632 = load i64, i64* %2631
  store i64 %2632, i64* %RCX.i306, align 8
  store %struct.Memory* %loadMem_401a4e, %struct.Memory** %MEMORY
  %loadMem_401a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 1
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 15
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RBP.i304
  %2643 = sub i64 %2642, 28
  %2644 = load i64, i64* %PC.i302
  %2645 = add i64 %2644, 3
  store i64 %2645, i64* %PC.i302
  %2646 = inttoptr i64 %2643 to i32*
  %2647 = load i32, i32* %2646
  %2648 = zext i32 %2647 to i64
  store i64 %2648, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_401a52, %struct.Memory** %MEMORY
  %loadMem_401a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 33
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 1
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %2654 to i64*
  %2655 = load i64, i64* %RAX.i301
  %2656 = load i64, i64* %PC.i300
  %2657 = add i64 %2656, 3
  store i64 %2657, i64* %PC.i300
  %2658 = trunc i64 %2655 to i32
  %2659 = add i32 1, %2658
  %2660 = zext i32 %2659 to i64
  store i64 %2660, i64* %RAX.i301, align 8
  %2661 = icmp ult i32 %2659, %2658
  %2662 = icmp ult i32 %2659, 1
  %2663 = or i1 %2661, %2662
  %2664 = zext i1 %2663 to i8
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2664, i8* %2665, align 1
  %2666 = and i32 %2659, 255
  %2667 = call i32 @llvm.ctpop.i32(i32 %2666)
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2670, i8* %2671, align 1
  %2672 = xor i64 1, %2655
  %2673 = trunc i64 %2672 to i32
  %2674 = xor i32 %2673, %2659
  %2675 = lshr i32 %2674, 4
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2677, i8* %2678, align 1
  %2679 = icmp eq i32 %2659, 0
  %2680 = zext i1 %2679 to i8
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2680, i8* %2681, align 1
  %2682 = lshr i32 %2659, 31
  %2683 = trunc i32 %2682 to i8
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2683, i8* %2684, align 1
  %2685 = lshr i32 %2658, 31
  %2686 = xor i32 %2682, %2685
  %2687 = add i32 %2686, %2682
  %2688 = icmp eq i32 %2687, 2
  %2689 = zext i1 %2688 to i8
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2689, i8* %2690, align 1
  store %struct.Memory* %loadMem_401a55, %struct.Memory** %MEMORY
  %loadMem_401a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 33
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 1
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %EAX.i298 = bitcast %union.anon* %2696 to i32*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 7
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %2699 to i64*
  %2700 = load i32, i32* %EAX.i298
  %2701 = zext i32 %2700 to i64
  %2702 = load i64, i64* %PC.i297
  %2703 = add i64 %2702, 3
  store i64 %2703, i64* %PC.i297
  %2704 = shl i64 %2701, 32
  %2705 = ashr exact i64 %2704, 32
  store i64 %2705, i64* %RDX.i299, align 8
  store %struct.Memory* %loadMem_401a58, %struct.Memory** %MEMORY
  %loadMem_401a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 33
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 5
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %2711 to i64*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 7
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %RDX.i295 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2716 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2715, i64 0, i64 0
  %XMM0.i296 = bitcast %union.VectorReg* %2716 to %union.vec128_t*
  %2717 = load i64, i64* %RCX.i294
  %2718 = load i64, i64* %RDX.i295
  %2719 = mul i64 %2718, 8
  %2720 = add i64 %2719, %2717
  %2721 = bitcast %union.vec128_t* %XMM0.i296 to i8*
  %2722 = load i64, i64* %PC.i293
  %2723 = add i64 %2722, 5
  store i64 %2723, i64* %PC.i293
  %2724 = bitcast i8* %2721 to double*
  %2725 = load double, double* %2724, align 1
  %2726 = inttoptr i64 %2720 to double*
  store double %2725, double* %2726
  store %struct.Memory* %loadMem_401a5b, %struct.Memory** %MEMORY
  %loadMem_401a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 33
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 15
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2734 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2733, i64 0, i64 0
  %YMM0.i292 = bitcast %union.VectorReg* %2734 to %"class.std::bitset"*
  %2735 = bitcast %"class.std::bitset"* %YMM0.i292 to i8*
  %2736 = load i64, i64* %RBP.i291
  %2737 = sub i64 %2736, 56
  %2738 = load i64, i64* %PC.i290
  %2739 = add i64 %2738, 5
  store i64 %2739, i64* %PC.i290
  %2740 = inttoptr i64 %2737 to double*
  %2741 = load double, double* %2740
  %2742 = bitcast i8* %2735 to double*
  store double %2741, double* %2742, align 1
  %2743 = getelementptr inbounds i8, i8* %2735, i64 8
  %2744 = bitcast i8* %2743 to double*
  store double 0.000000e+00, double* %2744, align 1
  store %struct.Memory* %loadMem_401a60, %struct.Memory** %MEMORY
  %loadMem_401a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 15
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2751, i64 0, i64 0
  %YMM0.i289 = bitcast %union.VectorReg* %2752 to %"class.std::bitset"*
  %2753 = bitcast %"class.std::bitset"* %YMM0.i289 to i8*
  %2754 = bitcast %"class.std::bitset"* %YMM0.i289 to i8*
  %2755 = load i64, i64* %RBP.i288
  %2756 = sub i64 %2755, 88
  %2757 = load i64, i64* %PC.i287
  %2758 = add i64 %2757, 5
  store i64 %2758, i64* %PC.i287
  %2759 = bitcast i8* %2754 to double*
  %2760 = load double, double* %2759, align 1
  %2761 = getelementptr inbounds i8, i8* %2754, i64 8
  %2762 = bitcast i8* %2761 to i64*
  %2763 = load i64, i64* %2762, align 1
  %2764 = inttoptr i64 %2756 to double*
  %2765 = load double, double* %2764
  %2766 = fsub double %2760, %2765
  %2767 = bitcast i8* %2753 to double*
  store double %2766, double* %2767, align 1
  %2768 = getelementptr inbounds i8, i8* %2753, i64 8
  %2769 = bitcast i8* %2768 to i64*
  store i64 %2763, i64* %2769, align 1
  store %struct.Memory* %loadMem_401a65, %struct.Memory** %MEMORY
  %loadMem_401a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 5
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 15
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %RBP.i286
  %2780 = sub i64 %2779, 16
  %2781 = load i64, i64* %PC.i284
  %2782 = add i64 %2781, 4
  store i64 %2782, i64* %PC.i284
  %2783 = inttoptr i64 %2780 to i64*
  %2784 = load i64, i64* %2783
  store i64 %2784, i64* %RCX.i285, align 8
  store %struct.Memory* %loadMem_401a6a, %struct.Memory** %MEMORY
  %loadMem_401a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 7
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RDX.i282 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 15
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %2793 to i64*
  %2794 = load i64, i64* %RBP.i283
  %2795 = sub i64 %2794, 36
  %2796 = load i64, i64* %PC.i281
  %2797 = add i64 %2796, 4
  store i64 %2797, i64* %PC.i281
  %2798 = inttoptr i64 %2795 to i32*
  %2799 = load i32, i32* %2798
  %2800 = sext i32 %2799 to i64
  store i64 %2800, i64* %RDX.i282, align 8
  store %struct.Memory* %loadMem_401a6e, %struct.Memory** %MEMORY
  %loadMem_401a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 5
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RCX.i278 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 7
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RDX.i279 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2811 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2810, i64 0, i64 0
  %XMM0.i280 = bitcast %union.VectorReg* %2811 to %union.vec128_t*
  %2812 = load i64, i64* %RCX.i278
  %2813 = load i64, i64* %RDX.i279
  %2814 = mul i64 %2813, 8
  %2815 = add i64 %2814, %2812
  %2816 = bitcast %union.vec128_t* %XMM0.i280 to i8*
  %2817 = load i64, i64* %PC.i277
  %2818 = add i64 %2817, 5
  store i64 %2818, i64* %PC.i277
  %2819 = bitcast i8* %2816 to double*
  %2820 = load double, double* %2819, align 1
  %2821 = inttoptr i64 %2815 to double*
  store double %2820, double* %2821
  store %struct.Memory* %loadMem_401a72, %struct.Memory** %MEMORY
  %loadMem_401a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 15
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2829 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2828, i64 0, i64 0
  %YMM0.i276 = bitcast %union.VectorReg* %2829 to %"class.std::bitset"*
  %2830 = bitcast %"class.std::bitset"* %YMM0.i276 to i8*
  %2831 = load i64, i64* %RBP.i275
  %2832 = sub i64 %2831, 64
  %2833 = load i64, i64* %PC.i274
  %2834 = add i64 %2833, 5
  store i64 %2834, i64* %PC.i274
  %2835 = inttoptr i64 %2832 to double*
  %2836 = load double, double* %2835
  %2837 = bitcast i8* %2830 to double*
  store double %2836, double* %2837, align 1
  %2838 = getelementptr inbounds i8, i8* %2830, i64 8
  %2839 = bitcast i8* %2838 to double*
  store double 0.000000e+00, double* %2839, align 1
  store %struct.Memory* %loadMem_401a77, %struct.Memory** %MEMORY
  %loadMem_401a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 15
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2847 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2846, i64 0, i64 0
  %YMM0.i273 = bitcast %union.VectorReg* %2847 to %"class.std::bitset"*
  %2848 = bitcast %"class.std::bitset"* %YMM0.i273 to i8*
  %2849 = bitcast %"class.std::bitset"* %YMM0.i273 to i8*
  %2850 = load i64, i64* %RBP.i272
  %2851 = sub i64 %2850, 96
  %2852 = load i64, i64* %PC.i271
  %2853 = add i64 %2852, 5
  store i64 %2853, i64* %PC.i271
  %2854 = bitcast i8* %2849 to double*
  %2855 = load double, double* %2854, align 1
  %2856 = getelementptr inbounds i8, i8* %2849, i64 8
  %2857 = bitcast i8* %2856 to i64*
  %2858 = load i64, i64* %2857, align 1
  %2859 = inttoptr i64 %2851 to double*
  %2860 = load double, double* %2859
  %2861 = fsub double %2855, %2860
  %2862 = bitcast i8* %2848 to double*
  store double %2861, double* %2862, align 1
  %2863 = getelementptr inbounds i8, i8* %2848, i64 8
  %2864 = bitcast i8* %2863 to i64*
  store i64 %2858, i64* %2864, align 1
  store %struct.Memory* %loadMem_401a7c, %struct.Memory** %MEMORY
  %loadMem_401a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 33
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2867 to i64*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 5
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %2870 to i64*
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 15
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %2873 to i64*
  %2874 = load i64, i64* %RBP.i270
  %2875 = sub i64 %2874, 16
  %2876 = load i64, i64* %PC.i268
  %2877 = add i64 %2876, 4
  store i64 %2877, i64* %PC.i268
  %2878 = inttoptr i64 %2875 to i64*
  %2879 = load i64, i64* %2878
  store i64 %2879, i64* %RCX.i269, align 8
  store %struct.Memory* %loadMem_401a81, %struct.Memory** %MEMORY
  %loadMem_401a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 33
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 1
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 15
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %2888 to i64*
  %2889 = load i64, i64* %RBP.i267
  %2890 = sub i64 %2889, 36
  %2891 = load i64, i64* %PC.i265
  %2892 = add i64 %2891, 3
  store i64 %2892, i64* %PC.i265
  %2893 = inttoptr i64 %2890 to i32*
  %2894 = load i32, i32* %2893
  %2895 = zext i32 %2894 to i64
  store i64 %2895, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_401a85, %struct.Memory** %MEMORY
  %loadMem_401a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 33
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2898 to i64*
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 1
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %2901 to i64*
  %2902 = load i64, i64* %RAX.i264
  %2903 = load i64, i64* %PC.i263
  %2904 = add i64 %2903, 3
  store i64 %2904, i64* %PC.i263
  %2905 = trunc i64 %2902 to i32
  %2906 = add i32 1, %2905
  %2907 = zext i32 %2906 to i64
  store i64 %2907, i64* %RAX.i264, align 8
  %2908 = icmp ult i32 %2906, %2905
  %2909 = icmp ult i32 %2906, 1
  %2910 = or i1 %2908, %2909
  %2911 = zext i1 %2910 to i8
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2911, i8* %2912, align 1
  %2913 = and i32 %2906, 255
  %2914 = call i32 @llvm.ctpop.i32(i32 %2913)
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  %2917 = xor i8 %2916, 1
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2917, i8* %2918, align 1
  %2919 = xor i64 1, %2902
  %2920 = trunc i64 %2919 to i32
  %2921 = xor i32 %2920, %2906
  %2922 = lshr i32 %2921, 4
  %2923 = trunc i32 %2922 to i8
  %2924 = and i8 %2923, 1
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2924, i8* %2925, align 1
  %2926 = icmp eq i32 %2906, 0
  %2927 = zext i1 %2926 to i8
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2927, i8* %2928, align 1
  %2929 = lshr i32 %2906, 31
  %2930 = trunc i32 %2929 to i8
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2930, i8* %2931, align 1
  %2932 = lshr i32 %2905, 31
  %2933 = xor i32 %2929, %2932
  %2934 = add i32 %2933, %2929
  %2935 = icmp eq i32 %2934, 2
  %2936 = zext i1 %2935 to i8
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2936, i8* %2937, align 1
  store %struct.Memory* %loadMem_401a88, %struct.Memory** %MEMORY
  %loadMem_401a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 1
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %EAX.i261 = bitcast %union.anon* %2943 to i32*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 7
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RDX.i262 = bitcast %union.anon* %2946 to i64*
  %2947 = load i32, i32* %EAX.i261
  %2948 = zext i32 %2947 to i64
  %2949 = load i64, i64* %PC.i260
  %2950 = add i64 %2949, 3
  store i64 %2950, i64* %PC.i260
  %2951 = shl i64 %2948, 32
  %2952 = ashr exact i64 %2951, 32
  store i64 %2952, i64* %RDX.i262, align 8
  store %struct.Memory* %loadMem_401a8b, %struct.Memory** %MEMORY
  %loadMem_401a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 33
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 5
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 7
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %2961 to i64*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2963 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2962, i64 0, i64 0
  %XMM0.i259 = bitcast %union.VectorReg* %2963 to %union.vec128_t*
  %2964 = load i64, i64* %RCX.i257
  %2965 = load i64, i64* %RDX.i258
  %2966 = mul i64 %2965, 8
  %2967 = add i64 %2966, %2964
  %2968 = bitcast %union.vec128_t* %XMM0.i259 to i8*
  %2969 = load i64, i64* %PC.i256
  %2970 = add i64 %2969, 5
  store i64 %2970, i64* %PC.i256
  %2971 = bitcast i8* %2968 to double*
  %2972 = load double, double* %2971, align 1
  %2973 = inttoptr i64 %2967 to double*
  store double %2972, double* %2973
  store %struct.Memory* %loadMem_401a8e, %struct.Memory** %MEMORY
  %loadMem_401a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 33
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2976 to i64*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 15
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %2979 to i64*
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2981 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2980, i64 0, i64 0
  %YMM0.i255 = bitcast %union.VectorReg* %2981 to %"class.std::bitset"*
  %2982 = bitcast %"class.std::bitset"* %YMM0.i255 to i8*
  %2983 = load i64, i64* %RBP.i254
  %2984 = sub i64 %2983, 72
  %2985 = load i64, i64* %PC.i253
  %2986 = add i64 %2985, 5
  store i64 %2986, i64* %PC.i253
  %2987 = inttoptr i64 %2984 to double*
  %2988 = load double, double* %2987
  %2989 = bitcast i8* %2982 to double*
  store double %2988, double* %2989, align 1
  %2990 = getelementptr inbounds i8, i8* %2982, i64 8
  %2991 = bitcast i8* %2990 to double*
  store double 0.000000e+00, double* %2991, align 1
  store %struct.Memory* %loadMem_401a93, %struct.Memory** %MEMORY
  %loadMem_401a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 33
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 15
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2998, i64 0, i64 0
  %YMM0.i252 = bitcast %union.VectorReg* %2999 to %"class.std::bitset"*
  %3000 = bitcast %"class.std::bitset"* %YMM0.i252 to i8*
  %3001 = bitcast %"class.std::bitset"* %YMM0.i252 to i8*
  %3002 = load i64, i64* %RBP.i251
  %3003 = sub i64 %3002, 112
  %3004 = load i64, i64* %PC.i250
  %3005 = add i64 %3004, 5
  store i64 %3005, i64* %PC.i250
  %3006 = bitcast i8* %3001 to double*
  %3007 = load double, double* %3006, align 1
  %3008 = getelementptr inbounds i8, i8* %3001, i64 8
  %3009 = bitcast i8* %3008 to i64*
  %3010 = load i64, i64* %3009, align 1
  %3011 = inttoptr i64 %3003 to double*
  %3012 = load double, double* %3011
  %3013 = fsub double %3007, %3012
  %3014 = bitcast i8* %3000 to double*
  store double %3013, double* %3014, align 1
  %3015 = getelementptr inbounds i8, i8* %3000, i64 8
  %3016 = bitcast i8* %3015 to i64*
  store i64 %3010, i64* %3016, align 1
  store %struct.Memory* %loadMem_401a98, %struct.Memory** %MEMORY
  %loadMem_401a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 33
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3019 to i64*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 5
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 15
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %3025 to i64*
  %3026 = load i64, i64* %RBP.i249
  %3027 = sub i64 %3026, 16
  %3028 = load i64, i64* %PC.i247
  %3029 = add i64 %3028, 4
  store i64 %3029, i64* %PC.i247
  %3030 = inttoptr i64 %3027 to i64*
  %3031 = load i64, i64* %3030
  store i64 %3031, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_401a9d, %struct.Memory** %MEMORY
  %loadMem_401aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 33
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3034 to i64*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 7
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %RDX.i245 = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 15
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %3040 to i64*
  %3041 = load i64, i64* %RBP.i246
  %3042 = sub i64 %3041, 32
  %3043 = load i64, i64* %PC.i244
  %3044 = add i64 %3043, 4
  store i64 %3044, i64* %PC.i244
  %3045 = inttoptr i64 %3042 to i32*
  %3046 = load i32, i32* %3045
  %3047 = sext i32 %3046 to i64
  store i64 %3047, i64* %RDX.i245, align 8
  store %struct.Memory* %loadMem_401aa1, %struct.Memory** %MEMORY
  %loadMem_401aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 33
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 5
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %3053 to i64*
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 7
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %RDX.i242 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3058 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3057, i64 0, i64 0
  %XMM0.i243 = bitcast %union.VectorReg* %3058 to %union.vec128_t*
  %3059 = load i64, i64* %RCX.i241
  %3060 = load i64, i64* %RDX.i242
  %3061 = mul i64 %3060, 8
  %3062 = add i64 %3061, %3059
  %3063 = bitcast %union.vec128_t* %XMM0.i243 to i8*
  %3064 = load i64, i64* %PC.i240
  %3065 = add i64 %3064, 5
  store i64 %3065, i64* %PC.i240
  %3066 = bitcast i8* %3063 to double*
  %3067 = load double, double* %3066, align 1
  %3068 = inttoptr i64 %3062 to double*
  store double %3067, double* %3068
  store %struct.Memory* %loadMem_401aa5, %struct.Memory** %MEMORY
  %loadMem_401aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 33
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %3071 to i64*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 15
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3076 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3075, i64 0, i64 0
  %YMM0.i239 = bitcast %union.VectorReg* %3076 to %"class.std::bitset"*
  %3077 = bitcast %"class.std::bitset"* %YMM0.i239 to i8*
  %3078 = load i64, i64* %RBP.i238
  %3079 = sub i64 %3078, 80
  %3080 = load i64, i64* %PC.i237
  %3081 = add i64 %3080, 5
  store i64 %3081, i64* %PC.i237
  %3082 = inttoptr i64 %3079 to double*
  %3083 = load double, double* %3082
  %3084 = bitcast i8* %3077 to double*
  store double %3083, double* %3084, align 1
  %3085 = getelementptr inbounds i8, i8* %3077, i64 8
  %3086 = bitcast i8* %3085 to double*
  store double 0.000000e+00, double* %3086, align 1
  store %struct.Memory* %loadMem_401aaa, %struct.Memory** %MEMORY
  %loadMem_401aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 33
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 15
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3094 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3093, i64 0, i64 0
  %YMM0.i236 = bitcast %union.VectorReg* %3094 to %"class.std::bitset"*
  %3095 = bitcast %"class.std::bitset"* %YMM0.i236 to i8*
  %3096 = bitcast %"class.std::bitset"* %YMM0.i236 to i8*
  %3097 = load i64, i64* %RBP.i235
  %3098 = sub i64 %3097, 104
  %3099 = load i64, i64* %PC.i234
  %3100 = add i64 %3099, 5
  store i64 %3100, i64* %PC.i234
  %3101 = bitcast i8* %3096 to double*
  %3102 = load double, double* %3101, align 1
  %3103 = getelementptr inbounds i8, i8* %3096, i64 8
  %3104 = bitcast i8* %3103 to i64*
  %3105 = load i64, i64* %3104, align 1
  %3106 = inttoptr i64 %3098 to double*
  %3107 = load double, double* %3106
  %3108 = fadd double %3102, %3107
  %3109 = bitcast i8* %3095 to double*
  store double %3108, double* %3109, align 1
  %3110 = getelementptr inbounds i8, i8* %3095, i64 8
  %3111 = bitcast i8* %3110 to i64*
  store i64 %3105, i64* %3111, align 1
  store %struct.Memory* %loadMem_401aaf, %struct.Memory** %MEMORY
  %loadMem_401ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 33
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 5
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %3117 to i64*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 15
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %3120 to i64*
  %3121 = load i64, i64* %RBP.i233
  %3122 = sub i64 %3121, 16
  %3123 = load i64, i64* %PC.i231
  %3124 = add i64 %3123, 4
  store i64 %3124, i64* %PC.i231
  %3125 = inttoptr i64 %3122 to i64*
  %3126 = load i64, i64* %3125
  store i64 %3126, i64* %RCX.i232, align 8
  store %struct.Memory* %loadMem_401ab4, %struct.Memory** %MEMORY
  %loadMem_401ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 33
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3129 to i64*
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 1
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 15
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %3135 to i64*
  %3136 = load i64, i64* %RBP.i230
  %3137 = sub i64 %3136, 32
  %3138 = load i64, i64* %PC.i228
  %3139 = add i64 %3138, 3
  store i64 %3139, i64* %PC.i228
  %3140 = inttoptr i64 %3137 to i32*
  %3141 = load i32, i32* %3140
  %3142 = zext i32 %3141 to i64
  store i64 %3142, i64* %RAX.i229, align 8
  store %struct.Memory* %loadMem_401ab8, %struct.Memory** %MEMORY
  %loadMem_401abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 33
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 1
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %RAX.i227
  %3150 = load i64, i64* %PC.i226
  %3151 = add i64 %3150, 3
  store i64 %3151, i64* %PC.i226
  %3152 = trunc i64 %3149 to i32
  %3153 = add i32 1, %3152
  %3154 = zext i32 %3153 to i64
  store i64 %3154, i64* %RAX.i227, align 8
  %3155 = icmp ult i32 %3153, %3152
  %3156 = icmp ult i32 %3153, 1
  %3157 = or i1 %3155, %3156
  %3158 = zext i1 %3157 to i8
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3158, i8* %3159, align 1
  %3160 = and i32 %3153, 255
  %3161 = call i32 @llvm.ctpop.i32(i32 %3160)
  %3162 = trunc i32 %3161 to i8
  %3163 = and i8 %3162, 1
  %3164 = xor i8 %3163, 1
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3164, i8* %3165, align 1
  %3166 = xor i64 1, %3149
  %3167 = trunc i64 %3166 to i32
  %3168 = xor i32 %3167, %3153
  %3169 = lshr i32 %3168, 4
  %3170 = trunc i32 %3169 to i8
  %3171 = and i8 %3170, 1
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3171, i8* %3172, align 1
  %3173 = icmp eq i32 %3153, 0
  %3174 = zext i1 %3173 to i8
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3174, i8* %3175, align 1
  %3176 = lshr i32 %3153, 31
  %3177 = trunc i32 %3176 to i8
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3177, i8* %3178, align 1
  %3179 = lshr i32 %3152, 31
  %3180 = xor i32 %3176, %3179
  %3181 = add i32 %3180, %3176
  %3182 = icmp eq i32 %3181, 2
  %3183 = zext i1 %3182 to i8
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3183, i8* %3184, align 1
  store %struct.Memory* %loadMem_401abb, %struct.Memory** %MEMORY
  %loadMem_401abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 33
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3187 to i64*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 1
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %EAX.i224 = bitcast %union.anon* %3190 to i32*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 7
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RDX.i225 = bitcast %union.anon* %3193 to i64*
  %3194 = load i32, i32* %EAX.i224
  %3195 = zext i32 %3194 to i64
  %3196 = load i64, i64* %PC.i223
  %3197 = add i64 %3196, 3
  store i64 %3197, i64* %PC.i223
  %3198 = shl i64 %3195, 32
  %3199 = ashr exact i64 %3198, 32
  store i64 %3199, i64* %RDX.i225, align 8
  store %struct.Memory* %loadMem_401abe, %struct.Memory** %MEMORY
  %loadMem_401ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 5
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %3205 to i64*
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 7
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %RDX.i221 = bitcast %union.anon* %3208 to i64*
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3210 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3209, i64 0, i64 0
  %XMM0.i222 = bitcast %union.VectorReg* %3210 to %union.vec128_t*
  %3211 = load i64, i64* %RCX.i220
  %3212 = load i64, i64* %RDX.i221
  %3213 = mul i64 %3212, 8
  %3214 = add i64 %3213, %3211
  %3215 = bitcast %union.vec128_t* %XMM0.i222 to i8*
  %3216 = load i64, i64* %PC.i219
  %3217 = add i64 %3216, 5
  store i64 %3217, i64* %PC.i219
  %3218 = bitcast i8* %3215 to double*
  %3219 = load double, double* %3218, align 1
  %3220 = inttoptr i64 %3214 to double*
  store double %3219, double* %3220
  store %struct.Memory* %loadMem_401ac1, %struct.Memory** %MEMORY
  %loadMem_401ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3223 to i64*
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 15
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3227, i64 0, i64 0
  %YMM0.i218 = bitcast %union.VectorReg* %3228 to %"class.std::bitset"*
  %3229 = bitcast %"class.std::bitset"* %YMM0.i218 to i8*
  %3230 = load i64, i64* %RBP.i217
  %3231 = sub i64 %3230, 72
  %3232 = load i64, i64* %PC.i216
  %3233 = add i64 %3232, 5
  store i64 %3233, i64* %PC.i216
  %3234 = inttoptr i64 %3231 to double*
  %3235 = load double, double* %3234
  %3236 = bitcast i8* %3229 to double*
  store double %3235, double* %3236, align 1
  %3237 = getelementptr inbounds i8, i8* %3229, i64 8
  %3238 = bitcast i8* %3237 to double*
  store double 0.000000e+00, double* %3238, align 1
  store %struct.Memory* %loadMem_401ac6, %struct.Memory** %MEMORY
  %loadMem_401acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 15
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %3244 to i64*
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3246 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3245, i64 0, i64 0
  %YMM0.i215 = bitcast %union.VectorReg* %3246 to %"class.std::bitset"*
  %3247 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %3248 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %3249 = load i64, i64* %RBP.i214
  %3250 = sub i64 %3249, 112
  %3251 = load i64, i64* %PC.i213
  %3252 = add i64 %3251, 5
  store i64 %3252, i64* %PC.i213
  %3253 = bitcast i8* %3248 to double*
  %3254 = load double, double* %3253, align 1
  %3255 = getelementptr inbounds i8, i8* %3248, i64 8
  %3256 = bitcast i8* %3255 to i64*
  %3257 = load i64, i64* %3256, align 1
  %3258 = inttoptr i64 %3250 to double*
  %3259 = load double, double* %3258
  %3260 = fadd double %3254, %3259
  %3261 = bitcast i8* %3247 to double*
  store double %3260, double* %3261, align 1
  %3262 = getelementptr inbounds i8, i8* %3247, i64 8
  %3263 = bitcast i8* %3262 to i64*
  store i64 %3257, i64* %3263, align 1
  store %struct.Memory* %loadMem_401acb, %struct.Memory** %MEMORY
  %loadMem_401ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 33
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 5
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 15
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %3272 to i64*
  %3273 = load i64, i64* %RBP.i212
  %3274 = sub i64 %3273, 16
  %3275 = load i64, i64* %PC.i210
  %3276 = add i64 %3275, 4
  store i64 %3276, i64* %PC.i210
  %3277 = inttoptr i64 %3274 to i64*
  %3278 = load i64, i64* %3277
  store i64 %3278, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_401ad0, %struct.Memory** %MEMORY
  %loadMem_401ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3281 to i64*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 7
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 15
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %3287 to i64*
  %3288 = load i64, i64* %RBP.i209
  %3289 = sub i64 %3288, 40
  %3290 = load i64, i64* %PC.i207
  %3291 = add i64 %3290, 4
  store i64 %3291, i64* %PC.i207
  %3292 = inttoptr i64 %3289 to i32*
  %3293 = load i32, i32* %3292
  %3294 = sext i32 %3293 to i64
  store i64 %3294, i64* %RDX.i208, align 8
  store %struct.Memory* %loadMem_401ad4, %struct.Memory** %MEMORY
  %loadMem_401ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 33
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3297 to i64*
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 5
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %3300 to i64*
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 7
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %RDX.i205 = bitcast %union.anon* %3303 to i64*
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3304, i64 0, i64 0
  %XMM0.i206 = bitcast %union.VectorReg* %3305 to %union.vec128_t*
  %3306 = load i64, i64* %RCX.i204
  %3307 = load i64, i64* %RDX.i205
  %3308 = mul i64 %3307, 8
  %3309 = add i64 %3308, %3306
  %3310 = bitcast %union.vec128_t* %XMM0.i206 to i8*
  %3311 = load i64, i64* %PC.i203
  %3312 = add i64 %3311, 5
  store i64 %3312, i64* %PC.i203
  %3313 = bitcast i8* %3310 to double*
  %3314 = load double, double* %3313, align 1
  %3315 = inttoptr i64 %3309 to double*
  store double %3314, double* %3315
  store %struct.Memory* %loadMem_401ad8, %struct.Memory** %MEMORY
  %loadMem_401add = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 15
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %3321 to i64*
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3322, i64 0, i64 0
  %YMM0.i202 = bitcast %union.VectorReg* %3323 to %"class.std::bitset"*
  %3324 = bitcast %"class.std::bitset"* %YMM0.i202 to i8*
  %3325 = load i64, i64* %RBP.i201
  %3326 = sub i64 %3325, 80
  %3327 = load i64, i64* %PC.i200
  %3328 = add i64 %3327, 5
  store i64 %3328, i64* %PC.i200
  %3329 = inttoptr i64 %3326 to double*
  %3330 = load double, double* %3329
  %3331 = bitcast i8* %3324 to double*
  store double %3330, double* %3331, align 1
  %3332 = getelementptr inbounds i8, i8* %3324, i64 8
  %3333 = bitcast i8* %3332 to double*
  store double 0.000000e+00, double* %3333, align 1
  store %struct.Memory* %loadMem_401add, %struct.Memory** %MEMORY
  %loadMem_401ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 33
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3336 to i64*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 15
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %3339 to i64*
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3341 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3340, i64 0, i64 0
  %YMM0.i199 = bitcast %union.VectorReg* %3341 to %"class.std::bitset"*
  %3342 = bitcast %"class.std::bitset"* %YMM0.i199 to i8*
  %3343 = bitcast %"class.std::bitset"* %YMM0.i199 to i8*
  %3344 = load i64, i64* %RBP.i198
  %3345 = sub i64 %3344, 104
  %3346 = load i64, i64* %PC.i197
  %3347 = add i64 %3346, 5
  store i64 %3347, i64* %PC.i197
  %3348 = bitcast i8* %3343 to double*
  %3349 = load double, double* %3348, align 1
  %3350 = getelementptr inbounds i8, i8* %3343, i64 8
  %3351 = bitcast i8* %3350 to i64*
  %3352 = load i64, i64* %3351, align 1
  %3353 = inttoptr i64 %3345 to double*
  %3354 = load double, double* %3353
  %3355 = fsub double %3349, %3354
  %3356 = bitcast i8* %3342 to double*
  store double %3355, double* %3356, align 1
  %3357 = getelementptr inbounds i8, i8* %3342, i64 8
  %3358 = bitcast i8* %3357 to i64*
  store i64 %3352, i64* %3358, align 1
  store %struct.Memory* %loadMem_401ae2, %struct.Memory** %MEMORY
  %loadMem_401ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 33
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3361 to i64*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 5
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %3364 to i64*
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 15
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %3367 to i64*
  %3368 = load i64, i64* %RBP.i196
  %3369 = sub i64 %3368, 16
  %3370 = load i64, i64* %PC.i194
  %3371 = add i64 %3370, 4
  store i64 %3371, i64* %PC.i194
  %3372 = inttoptr i64 %3369 to i64*
  %3373 = load i64, i64* %3372
  store i64 %3373, i64* %RCX.i195, align 8
  store %struct.Memory* %loadMem_401ae7, %struct.Memory** %MEMORY
  %loadMem_401aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 33
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3376 to i64*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 1
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %3379 to i64*
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 15
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %3382 to i64*
  %3383 = load i64, i64* %RBP.i193
  %3384 = sub i64 %3383, 40
  %3385 = load i64, i64* %PC.i191
  %3386 = add i64 %3385, 3
  store i64 %3386, i64* %PC.i191
  %3387 = inttoptr i64 %3384 to i32*
  %3388 = load i32, i32* %3387
  %3389 = zext i32 %3388 to i64
  store i64 %3389, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_401aeb, %struct.Memory** %MEMORY
  %loadMem_401aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 33
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 1
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %3395 to i64*
  %3396 = load i64, i64* %RAX.i190
  %3397 = load i64, i64* %PC.i189
  %3398 = add i64 %3397, 3
  store i64 %3398, i64* %PC.i189
  %3399 = trunc i64 %3396 to i32
  %3400 = add i32 1, %3399
  %3401 = zext i32 %3400 to i64
  store i64 %3401, i64* %RAX.i190, align 8
  %3402 = icmp ult i32 %3400, %3399
  %3403 = icmp ult i32 %3400, 1
  %3404 = or i1 %3402, %3403
  %3405 = zext i1 %3404 to i8
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3405, i8* %3406, align 1
  %3407 = and i32 %3400, 255
  %3408 = call i32 @llvm.ctpop.i32(i32 %3407)
  %3409 = trunc i32 %3408 to i8
  %3410 = and i8 %3409, 1
  %3411 = xor i8 %3410, 1
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3411, i8* %3412, align 1
  %3413 = xor i64 1, %3396
  %3414 = trunc i64 %3413 to i32
  %3415 = xor i32 %3414, %3400
  %3416 = lshr i32 %3415, 4
  %3417 = trunc i32 %3416 to i8
  %3418 = and i8 %3417, 1
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3418, i8* %3419, align 1
  %3420 = icmp eq i32 %3400, 0
  %3421 = zext i1 %3420 to i8
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3421, i8* %3422, align 1
  %3423 = lshr i32 %3400, 31
  %3424 = trunc i32 %3423 to i8
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3424, i8* %3425, align 1
  %3426 = lshr i32 %3399, 31
  %3427 = xor i32 %3423, %3426
  %3428 = add i32 %3427, %3423
  %3429 = icmp eq i32 %3428, 2
  %3430 = zext i1 %3429 to i8
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3430, i8* %3431, align 1
  store %struct.Memory* %loadMem_401aee, %struct.Memory** %MEMORY
  %loadMem_401af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 33
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3434 to i64*
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 1
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %EAX.i187 = bitcast %union.anon* %3437 to i32*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 7
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %3440 to i64*
  %3441 = load i32, i32* %EAX.i187
  %3442 = zext i32 %3441 to i64
  %3443 = load i64, i64* %PC.i186
  %3444 = add i64 %3443, 3
  store i64 %3444, i64* %PC.i186
  %3445 = shl i64 %3442, 32
  %3446 = ashr exact i64 %3445, 32
  store i64 %3446, i64* %RDX.i188, align 8
  store %struct.Memory* %loadMem_401af1, %struct.Memory** %MEMORY
  %loadMem_401af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 5
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %3452 to i64*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 7
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %RDX.i184 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3457 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3456, i64 0, i64 0
  %XMM0.i185 = bitcast %union.VectorReg* %3457 to %union.vec128_t*
  %3458 = load i64, i64* %RCX.i183
  %3459 = load i64, i64* %RDX.i184
  %3460 = mul i64 %3459, 8
  %3461 = add i64 %3460, %3458
  %3462 = bitcast %union.vec128_t* %XMM0.i185 to i8*
  %3463 = load i64, i64* %PC.i182
  %3464 = add i64 %3463, 5
  store i64 %3464, i64* %PC.i182
  %3465 = bitcast i8* %3462 to double*
  %3466 = load double, double* %3465, align 1
  %3467 = inttoptr i64 %3461 to double*
  store double %3466, double* %3467
  store %struct.Memory* %loadMem_401af4, %struct.Memory** %MEMORY
  %loadMem_401af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 1
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %3473 to i64*
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 15
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %3476 to i64*
  %3477 = load i64, i64* %RBP.i181
  %3478 = sub i64 %3477, 28
  %3479 = load i64, i64* %PC.i179
  %3480 = add i64 %3479, 3
  store i64 %3480, i64* %PC.i179
  %3481 = inttoptr i64 %3478 to i32*
  %3482 = load i32, i32* %3481
  %3483 = zext i32 %3482 to i64
  store i64 %3483, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_401af9, %struct.Memory** %MEMORY
  %loadMem_401afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 33
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 1
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %3489 to i64*
  %3490 = load i64, i64* %RAX.i178
  %3491 = load i64, i64* %PC.i177
  %3492 = add i64 %3491, 3
  store i64 %3492, i64* %PC.i177
  %3493 = trunc i64 %3490 to i32
  %3494 = add i32 2, %3493
  %3495 = zext i32 %3494 to i64
  store i64 %3495, i64* %RAX.i178, align 8
  %3496 = icmp ult i32 %3494, %3493
  %3497 = icmp ult i32 %3494, 2
  %3498 = or i1 %3496, %3497
  %3499 = zext i1 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3499, i8* %3500, align 1
  %3501 = and i32 %3494, 255
  %3502 = call i32 @llvm.ctpop.i32(i32 %3501)
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  %3505 = xor i8 %3504, 1
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3505, i8* %3506, align 1
  %3507 = xor i64 2, %3490
  %3508 = trunc i64 %3507 to i32
  %3509 = xor i32 %3508, %3494
  %3510 = lshr i32 %3509, 4
  %3511 = trunc i32 %3510 to i8
  %3512 = and i8 %3511, 1
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3512, i8* %3513, align 1
  %3514 = icmp eq i32 %3494, 0
  %3515 = zext i1 %3514 to i8
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3515, i8* %3516, align 1
  %3517 = lshr i32 %3494, 31
  %3518 = trunc i32 %3517 to i8
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3518, i8* %3519, align 1
  %3520 = lshr i32 %3493, 31
  %3521 = xor i32 %3517, %3520
  %3522 = add i32 %3521, %3517
  %3523 = icmp eq i32 %3522, 2
  %3524 = zext i1 %3523 to i8
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3524, i8* %3525, align 1
  store %struct.Memory* %loadMem_401afc, %struct.Memory** %MEMORY
  %loadMem_401aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 1
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %EAX.i175 = bitcast %union.anon* %3531 to i32*
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 15
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %3534 to i64*
  %3535 = load i64, i64* %RBP.i176
  %3536 = sub i64 %3535, 28
  %3537 = load i32, i32* %EAX.i175
  %3538 = zext i32 %3537 to i64
  %3539 = load i64, i64* %PC.i174
  %3540 = add i64 %3539, 3
  store i64 %3540, i64* %PC.i174
  %3541 = inttoptr i64 %3536 to i32*
  store i32 %3537, i32* %3541
  store %struct.Memory* %loadMem_401aff, %struct.Memory** %MEMORY
  %loadMem_401b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 33
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %3544 to i64*
  %3545 = load i64, i64* %PC.i173
  %3546 = add i64 %3545, -540
  %3547 = load i64, i64* %PC.i173
  %3548 = add i64 %3547, 5
  store i64 %3548, i64* %PC.i173
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3546, i64* %3549, align 8
  store %struct.Memory* %loadMem_401b02, %struct.Memory** %MEMORY
  br label %block_.L_4018e6

block_.L_401b07:                                  ; preds = %block_.L_4018e6
  %loadMem_401b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 33
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3552 to i64*
  %3553 = load i64, i64* %PC.i172
  %3554 = add i64 %3553, 237
  %3555 = load i64, i64* %PC.i172
  %3556 = add i64 %3555, 5
  store i64 %3556, i64* %PC.i172
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3554, i64* %3557, align 8
  store %struct.Memory* %loadMem_401b07, %struct.Memory** %MEMORY
  br label %block_.L_401bf4

block_.L_401b0c:                                  ; preds = %block_.L_4018d0
  %loadMem_401b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 33
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3560 to i64*
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 15
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %3563 to i64*
  %3564 = load i64, i64* %RBP.i171
  %3565 = sub i64 %3564, 28
  %3566 = load i64, i64* %PC.i170
  %3567 = add i64 %3566, 7
  store i64 %3567, i64* %PC.i170
  %3568 = inttoptr i64 %3565 to i32*
  store i32 0, i32* %3568
  store %struct.Memory* %loadMem_401b0c, %struct.Memory** %MEMORY
  br label %block_.L_401b13

block_.L_401b13:                                  ; preds = %block_401b1f, %block_.L_401b0c
  %loadMem_401b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 33
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3571 to i64*
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 1
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %3574 to i64*
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 15
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %3577 to i64*
  %3578 = load i64, i64* %RBP.i169
  %3579 = sub i64 %3578, 28
  %3580 = load i64, i64* %PC.i167
  %3581 = add i64 %3580, 3
  store i64 %3581, i64* %PC.i167
  %3582 = inttoptr i64 %3579 to i32*
  %3583 = load i32, i32* %3582
  %3584 = zext i32 %3583 to i64
  store i64 %3584, i64* %RAX.i168, align 8
  store %struct.Memory* %loadMem_401b13, %struct.Memory** %MEMORY
  %loadMem_401b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %3587 to i64*
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 1
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %EAX.i165 = bitcast %union.anon* %3590 to i32*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 15
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %3593 to i64*
  %3594 = load i32, i32* %EAX.i165
  %3595 = zext i32 %3594 to i64
  %3596 = load i64, i64* %RBP.i166
  %3597 = sub i64 %3596, 44
  %3598 = load i64, i64* %PC.i164
  %3599 = add i64 %3598, 3
  store i64 %3599, i64* %PC.i164
  %3600 = inttoptr i64 %3597 to i32*
  %3601 = load i32, i32* %3600
  %3602 = sub i32 %3594, %3601
  %3603 = icmp ult i32 %3594, %3601
  %3604 = zext i1 %3603 to i8
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3604, i8* %3605, align 1
  %3606 = and i32 %3602, 255
  %3607 = call i32 @llvm.ctpop.i32(i32 %3606)
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = xor i8 %3609, 1
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3610, i8* %3611, align 1
  %3612 = xor i32 %3601, %3594
  %3613 = xor i32 %3612, %3602
  %3614 = lshr i32 %3613, 4
  %3615 = trunc i32 %3614 to i8
  %3616 = and i8 %3615, 1
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3616, i8* %3617, align 1
  %3618 = icmp eq i32 %3602, 0
  %3619 = zext i1 %3618 to i8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3619, i8* %3620, align 1
  %3621 = lshr i32 %3602, 31
  %3622 = trunc i32 %3621 to i8
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3622, i8* %3623, align 1
  %3624 = lshr i32 %3594, 31
  %3625 = lshr i32 %3601, 31
  %3626 = xor i32 %3625, %3624
  %3627 = xor i32 %3621, %3624
  %3628 = add i32 %3627, %3626
  %3629 = icmp eq i32 %3628, 2
  %3630 = zext i1 %3629 to i8
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3630, i8* %3631, align 1
  store %struct.Memory* %loadMem_401b16, %struct.Memory** %MEMORY
  %loadMem_401b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 33
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3634 to i64*
  %3635 = load i64, i64* %PC.i163
  %3636 = add i64 %3635, 214
  %3637 = load i64, i64* %PC.i163
  %3638 = add i64 %3637, 6
  %3639 = load i64, i64* %PC.i163
  %3640 = add i64 %3639, 6
  store i64 %3640, i64* %PC.i163
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3642 = load i8, i8* %3641, align 1
  %3643 = icmp ne i8 %3642, 0
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3645 = load i8, i8* %3644, align 1
  %3646 = icmp ne i8 %3645, 0
  %3647 = xor i1 %3643, %3646
  %3648 = xor i1 %3647, true
  %3649 = zext i1 %3648 to i8
  store i8 %3649, i8* %BRANCH_TAKEN, align 1
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3651 = select i1 %3647, i64 %3638, i64 %3636
  store i64 %3651, i64* %3650, align 8
  store %struct.Memory* %loadMem_401b19, %struct.Memory** %MEMORY
  %loadBr_401b19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401b19 = icmp eq i8 %loadBr_401b19, 1
  br i1 %cmpBr_401b19, label %block_.L_401bef, label %block_401b1f

block_401b1f:                                     ; preds = %block_.L_401b13
  %loadMem_401b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 33
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3654 to i64*
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 1
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 15
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %3660 to i64*
  %3661 = load i64, i64* %RBP.i162
  %3662 = sub i64 %3661, 28
  %3663 = load i64, i64* %PC.i160
  %3664 = add i64 %3663, 3
  store i64 %3664, i64* %PC.i160
  %3665 = inttoptr i64 %3662 to i32*
  %3666 = load i32, i32* %3665
  %3667 = zext i32 %3666 to i64
  store i64 %3667, i64* %RAX.i161, align 8
  store %struct.Memory* %loadMem_401b1f, %struct.Memory** %MEMORY
  %loadMem_401b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3669 = getelementptr inbounds %struct.GPR, %struct.GPR* %3668, i32 0, i32 33
  %3670 = getelementptr inbounds %struct.Reg, %struct.Reg* %3669, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3670 to i64*
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 1
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 15
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %3676 to i64*
  %3677 = load i64, i64* %RAX.i158
  %3678 = load i64, i64* %RBP.i159
  %3679 = sub i64 %3678, 44
  %3680 = load i64, i64* %PC.i157
  %3681 = add i64 %3680, 3
  store i64 %3681, i64* %PC.i157
  %3682 = trunc i64 %3677 to i32
  %3683 = inttoptr i64 %3679 to i32*
  %3684 = load i32, i32* %3683
  %3685 = add i32 %3684, %3682
  %3686 = zext i32 %3685 to i64
  store i64 %3686, i64* %RAX.i158, align 8
  %3687 = icmp ult i32 %3685, %3682
  %3688 = icmp ult i32 %3685, %3684
  %3689 = or i1 %3687, %3688
  %3690 = zext i1 %3689 to i8
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3690, i8* %3691, align 1
  %3692 = and i32 %3685, 255
  %3693 = call i32 @llvm.ctpop.i32(i32 %3692)
  %3694 = trunc i32 %3693 to i8
  %3695 = and i8 %3694, 1
  %3696 = xor i8 %3695, 1
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3696, i8* %3697, align 1
  %3698 = xor i32 %3684, %3682
  %3699 = xor i32 %3698, %3685
  %3700 = lshr i32 %3699, 4
  %3701 = trunc i32 %3700 to i8
  %3702 = and i8 %3701, 1
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3702, i8* %3703, align 1
  %3704 = icmp eq i32 %3685, 0
  %3705 = zext i1 %3704 to i8
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3705, i8* %3706, align 1
  %3707 = lshr i32 %3685, 31
  %3708 = trunc i32 %3707 to i8
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3708, i8* %3709, align 1
  %3710 = lshr i32 %3682, 31
  %3711 = lshr i32 %3684, 31
  %3712 = xor i32 %3707, %3710
  %3713 = xor i32 %3707, %3711
  %3714 = add i32 %3712, %3713
  %3715 = icmp eq i32 %3714, 2
  %3716 = zext i1 %3715 to i8
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3716, i8* %3717, align 1
  store %struct.Memory* %loadMem_401b22, %struct.Memory** %MEMORY
  %loadMem_401b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 33
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 1
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %EAX.i155 = bitcast %union.anon* %3723 to i32*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 15
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %3726 to i64*
  %3727 = load i64, i64* %RBP.i156
  %3728 = sub i64 %3727, 32
  %3729 = load i32, i32* %EAX.i155
  %3730 = zext i32 %3729 to i64
  %3731 = load i64, i64* %PC.i154
  %3732 = add i64 %3731, 3
  store i64 %3732, i64* %PC.i154
  %3733 = inttoptr i64 %3728 to i32*
  store i32 %3729, i32* %3733
  store %struct.Memory* %loadMem_401b25, %struct.Memory** %MEMORY
  %loadMem_401b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 33
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3736 to i64*
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 5
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %3739 to i64*
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 15
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %3742 to i64*
  %3743 = load i64, i64* %RBP.i153
  %3744 = sub i64 %3743, 16
  %3745 = load i64, i64* %PC.i151
  %3746 = add i64 %3745, 4
  store i64 %3746, i64* %PC.i151
  %3747 = inttoptr i64 %3744 to i64*
  %3748 = load i64, i64* %3747
  store i64 %3748, i64* %RCX.i152, align 8
  store %struct.Memory* %loadMem_401b28, %struct.Memory** %MEMORY
  %loadMem_401b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 7
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RDX.i149 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 15
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %3757 to i64*
  %3758 = load i64, i64* %RBP.i150
  %3759 = sub i64 %3758, 28
  %3760 = load i64, i64* %PC.i148
  %3761 = add i64 %3760, 4
  store i64 %3761, i64* %PC.i148
  %3762 = inttoptr i64 %3759 to i32*
  %3763 = load i32, i32* %3762
  %3764 = sext i32 %3763 to i64
  store i64 %3764, i64* %RDX.i149, align 8
  store %struct.Memory* %loadMem_401b2c, %struct.Memory** %MEMORY
  %loadMem_401b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 33
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 5
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 7
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RDX.i146 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3775 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3774, i64 0, i64 0
  %YMM0.i147 = bitcast %union.VectorReg* %3775 to %"class.std::bitset"*
  %3776 = bitcast %"class.std::bitset"* %YMM0.i147 to i8*
  %3777 = load i64, i64* %RCX.i145
  %3778 = load i64, i64* %RDX.i146
  %3779 = mul i64 %3778, 8
  %3780 = add i64 %3779, %3777
  %3781 = load i64, i64* %PC.i144
  %3782 = add i64 %3781, 5
  store i64 %3782, i64* %PC.i144
  %3783 = inttoptr i64 %3780 to double*
  %3784 = load double, double* %3783
  %3785 = bitcast i8* %3776 to double*
  store double %3784, double* %3785, align 1
  %3786 = getelementptr inbounds i8, i8* %3776, i64 8
  %3787 = bitcast i8* %3786 to double*
  store double 0.000000e+00, double* %3787, align 1
  store %struct.Memory* %loadMem_401b30, %struct.Memory** %MEMORY
  %loadMem_401b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 33
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 5
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %3793 to i64*
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 15
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %3796 to i64*
  %3797 = load i64, i64* %RBP.i143
  %3798 = sub i64 %3797, 16
  %3799 = load i64, i64* %PC.i141
  %3800 = add i64 %3799, 4
  store i64 %3800, i64* %PC.i141
  %3801 = inttoptr i64 %3798 to i64*
  %3802 = load i64, i64* %3801
  store i64 %3802, i64* %RCX.i142, align 8
  store %struct.Memory* %loadMem_401b35, %struct.Memory** %MEMORY
  %loadMem_401b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 7
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %3808 to i64*
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 15
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %3811 to i64*
  %3812 = load i64, i64* %RBP.i140
  %3813 = sub i64 %3812, 32
  %3814 = load i64, i64* %PC.i138
  %3815 = add i64 %3814, 4
  store i64 %3815, i64* %PC.i138
  %3816 = inttoptr i64 %3813 to i32*
  %3817 = load i32, i32* %3816
  %3818 = sext i32 %3817 to i64
  store i64 %3818, i64* %RDX.i139, align 8
  store %struct.Memory* %loadMem_401b39, %struct.Memory** %MEMORY
  %loadMem_401b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 5
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %3824 to i64*
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 7
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %RDX.i136 = bitcast %union.anon* %3827 to i64*
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3829 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3828, i64 0, i64 0
  %YMM0.i137 = bitcast %union.VectorReg* %3829 to %"class.std::bitset"*
  %3830 = bitcast %"class.std::bitset"* %YMM0.i137 to i8*
  %3831 = bitcast %"class.std::bitset"* %YMM0.i137 to i8*
  %3832 = load i64, i64* %RCX.i135
  %3833 = load i64, i64* %RDX.i136
  %3834 = mul i64 %3833, 8
  %3835 = add i64 %3834, %3832
  %3836 = load i64, i64* %PC.i134
  %3837 = add i64 %3836, 5
  store i64 %3837, i64* %PC.i134
  %3838 = bitcast i8* %3831 to double*
  %3839 = load double, double* %3838, align 1
  %3840 = getelementptr inbounds i8, i8* %3831, i64 8
  %3841 = bitcast i8* %3840 to i64*
  %3842 = load i64, i64* %3841, align 1
  %3843 = inttoptr i64 %3835 to double*
  %3844 = load double, double* %3843
  %3845 = fsub double %3839, %3844
  %3846 = bitcast i8* %3830 to double*
  store double %3845, double* %3846, align 1
  %3847 = getelementptr inbounds i8, i8* %3830, i64 8
  %3848 = bitcast i8* %3847 to i64*
  store i64 %3842, i64* %3848, align 1
  store %struct.Memory* %loadMem_401b3d, %struct.Memory** %MEMORY
  %loadMem_401b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 15
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %3854 to i64*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3856 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3855, i64 0, i64 0
  %XMM0.i133 = bitcast %union.VectorReg* %3856 to %union.vec128_t*
  %3857 = load i64, i64* %RBP.i132
  %3858 = sub i64 %3857, 56
  %3859 = bitcast %union.vec128_t* %XMM0.i133 to i8*
  %3860 = load i64, i64* %PC.i131
  %3861 = add i64 %3860, 5
  store i64 %3861, i64* %PC.i131
  %3862 = bitcast i8* %3859 to double*
  %3863 = load double, double* %3862, align 1
  %3864 = inttoptr i64 %3858 to double*
  store double %3863, double* %3864
  store %struct.Memory* %loadMem_401b42, %struct.Memory** %MEMORY
  %loadMem_401b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 33
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 5
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 15
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %3873 to i64*
  %3874 = load i64, i64* %RBP.i130
  %3875 = sub i64 %3874, 16
  %3876 = load i64, i64* %PC.i128
  %3877 = add i64 %3876, 4
  store i64 %3877, i64* %PC.i128
  %3878 = inttoptr i64 %3875 to i64*
  %3879 = load i64, i64* %3878
  store i64 %3879, i64* %RCX.i129, align 8
  store %struct.Memory* %loadMem_401b47, %struct.Memory** %MEMORY
  %loadMem_401b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 33
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 1
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 15
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %3888 to i64*
  %3889 = load i64, i64* %RBP.i127
  %3890 = sub i64 %3889, 28
  %3891 = load i64, i64* %PC.i125
  %3892 = add i64 %3891, 3
  store i64 %3892, i64* %PC.i125
  %3893 = inttoptr i64 %3890 to i32*
  %3894 = load i32, i32* %3893
  %3895 = zext i32 %3894 to i64
  store i64 %3895, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_401b4b, %struct.Memory** %MEMORY
  %loadMem_401b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 33
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3898 to i64*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 1
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %3901 to i64*
  %3902 = load i64, i64* %RAX.i124
  %3903 = load i64, i64* %PC.i123
  %3904 = add i64 %3903, 3
  store i64 %3904, i64* %PC.i123
  %3905 = trunc i64 %3902 to i32
  %3906 = add i32 1, %3905
  %3907 = zext i32 %3906 to i64
  store i64 %3907, i64* %RAX.i124, align 8
  %3908 = icmp ult i32 %3906, %3905
  %3909 = icmp ult i32 %3906, 1
  %3910 = or i1 %3908, %3909
  %3911 = zext i1 %3910 to i8
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3911, i8* %3912, align 1
  %3913 = and i32 %3906, 255
  %3914 = call i32 @llvm.ctpop.i32(i32 %3913)
  %3915 = trunc i32 %3914 to i8
  %3916 = and i8 %3915, 1
  %3917 = xor i8 %3916, 1
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3917, i8* %3918, align 1
  %3919 = xor i64 1, %3902
  %3920 = trunc i64 %3919 to i32
  %3921 = xor i32 %3920, %3906
  %3922 = lshr i32 %3921, 4
  %3923 = trunc i32 %3922 to i8
  %3924 = and i8 %3923, 1
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3924, i8* %3925, align 1
  %3926 = icmp eq i32 %3906, 0
  %3927 = zext i1 %3926 to i8
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3927, i8* %3928, align 1
  %3929 = lshr i32 %3906, 31
  %3930 = trunc i32 %3929 to i8
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3930, i8* %3931, align 1
  %3932 = lshr i32 %3905, 31
  %3933 = xor i32 %3929, %3932
  %3934 = add i32 %3933, %3929
  %3935 = icmp eq i32 %3934, 2
  %3936 = zext i1 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3936, i8* %3937, align 1
  store %struct.Memory* %loadMem_401b4e, %struct.Memory** %MEMORY
  %loadMem_401b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 33
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 1
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %EAX.i121 = bitcast %union.anon* %3943 to i32*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 7
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %RDX.i122 = bitcast %union.anon* %3946 to i64*
  %3947 = load i32, i32* %EAX.i121
  %3948 = zext i32 %3947 to i64
  %3949 = load i64, i64* %PC.i120
  %3950 = add i64 %3949, 3
  store i64 %3950, i64* %PC.i120
  %3951 = shl i64 %3948, 32
  %3952 = ashr exact i64 %3951, 32
  store i64 %3952, i64* %RDX.i122, align 8
  store %struct.Memory* %loadMem_401b51, %struct.Memory** %MEMORY
  %loadMem_401b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 33
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %3955 to i64*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 5
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 7
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %RDX.i118 = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3963 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3962, i64 0, i64 0
  %YMM0.i119 = bitcast %union.VectorReg* %3963 to %"class.std::bitset"*
  %3964 = bitcast %"class.std::bitset"* %YMM0.i119 to i8*
  %3965 = load i64, i64* %RCX.i117
  %3966 = load i64, i64* %RDX.i118
  %3967 = mul i64 %3966, 8
  %3968 = add i64 %3967, %3965
  %3969 = load i64, i64* %PC.i116
  %3970 = add i64 %3969, 5
  store i64 %3970, i64* %PC.i116
  %3971 = inttoptr i64 %3968 to double*
  %3972 = load double, double* %3971
  %3973 = bitcast i8* %3964 to double*
  store double %3972, double* %3973, align 1
  %3974 = getelementptr inbounds i8, i8* %3964, i64 8
  %3975 = bitcast i8* %3974 to double*
  store double 0.000000e+00, double* %3975, align 1
  store %struct.Memory* %loadMem_401b54, %struct.Memory** %MEMORY
  %loadMem_401b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 33
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %3978 to i64*
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 5
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %3981 to i64*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 15
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %3984 to i64*
  %3985 = load i64, i64* %RBP.i115
  %3986 = sub i64 %3985, 16
  %3987 = load i64, i64* %PC.i113
  %3988 = add i64 %3987, 4
  store i64 %3988, i64* %PC.i113
  %3989 = inttoptr i64 %3986 to i64*
  %3990 = load i64, i64* %3989
  store i64 %3990, i64* %RCX.i114, align 8
  store %struct.Memory* %loadMem_401b59, %struct.Memory** %MEMORY
  %loadMem_401b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 33
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 1
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %3996 to i64*
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 15
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %3999 to i64*
  %4000 = load i64, i64* %RBP.i112
  %4001 = sub i64 %4000, 32
  %4002 = load i64, i64* %PC.i110
  %4003 = add i64 %4002, 3
  store i64 %4003, i64* %PC.i110
  %4004 = inttoptr i64 %4001 to i32*
  %4005 = load i32, i32* %4004
  %4006 = zext i32 %4005 to i64
  store i64 %4006, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_401b5d, %struct.Memory** %MEMORY
  %loadMem_401b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 33
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4009 to i64*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 1
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %4012 to i64*
  %4013 = load i64, i64* %RAX.i109
  %4014 = load i64, i64* %PC.i108
  %4015 = add i64 %4014, 3
  store i64 %4015, i64* %PC.i108
  %4016 = trunc i64 %4013 to i32
  %4017 = add i32 1, %4016
  %4018 = zext i32 %4017 to i64
  store i64 %4018, i64* %RAX.i109, align 8
  %4019 = icmp ult i32 %4017, %4016
  %4020 = icmp ult i32 %4017, 1
  %4021 = or i1 %4019, %4020
  %4022 = zext i1 %4021 to i8
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4022, i8* %4023, align 1
  %4024 = and i32 %4017, 255
  %4025 = call i32 @llvm.ctpop.i32(i32 %4024)
  %4026 = trunc i32 %4025 to i8
  %4027 = and i8 %4026, 1
  %4028 = xor i8 %4027, 1
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4028, i8* %4029, align 1
  %4030 = xor i64 1, %4013
  %4031 = trunc i64 %4030 to i32
  %4032 = xor i32 %4031, %4017
  %4033 = lshr i32 %4032, 4
  %4034 = trunc i32 %4033 to i8
  %4035 = and i8 %4034, 1
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4035, i8* %4036, align 1
  %4037 = icmp eq i32 %4017, 0
  %4038 = zext i1 %4037 to i8
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4038, i8* %4039, align 1
  %4040 = lshr i32 %4017, 31
  %4041 = trunc i32 %4040 to i8
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4041, i8* %4042, align 1
  %4043 = lshr i32 %4016, 31
  %4044 = xor i32 %4040, %4043
  %4045 = add i32 %4044, %4040
  %4046 = icmp eq i32 %4045, 2
  %4047 = zext i1 %4046 to i8
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4047, i8* %4048, align 1
  store %struct.Memory* %loadMem_401b60, %struct.Memory** %MEMORY
  %loadMem_401b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 33
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4051 to i64*
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4053 = getelementptr inbounds %struct.GPR, %struct.GPR* %4052, i32 0, i32 1
  %4054 = getelementptr inbounds %struct.Reg, %struct.Reg* %4053, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %4054 to i32*
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 7
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %RDX.i107 = bitcast %union.anon* %4057 to i64*
  %4058 = load i32, i32* %EAX.i106
  %4059 = zext i32 %4058 to i64
  %4060 = load i64, i64* %PC.i105
  %4061 = add i64 %4060, 3
  store i64 %4061, i64* %PC.i105
  %4062 = shl i64 %4059, 32
  %4063 = ashr exact i64 %4062, 32
  store i64 %4063, i64* %RDX.i107, align 8
  store %struct.Memory* %loadMem_401b63, %struct.Memory** %MEMORY
  %loadMem_401b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 5
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 7
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4074 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4073, i64 0, i64 0
  %YMM0.i104 = bitcast %union.VectorReg* %4074 to %"class.std::bitset"*
  %4075 = bitcast %"class.std::bitset"* %YMM0.i104 to i8*
  %4076 = bitcast %"class.std::bitset"* %YMM0.i104 to i8*
  %4077 = load i64, i64* %RCX.i102
  %4078 = load i64, i64* %RDX.i103
  %4079 = mul i64 %4078, 8
  %4080 = add i64 %4079, %4077
  %4081 = load i64, i64* %PC.i101
  %4082 = add i64 %4081, 5
  store i64 %4082, i64* %PC.i101
  %4083 = bitcast i8* %4076 to double*
  %4084 = load double, double* %4083, align 1
  %4085 = getelementptr inbounds i8, i8* %4076, i64 8
  %4086 = bitcast i8* %4085 to i64*
  %4087 = load i64, i64* %4086, align 1
  %4088 = inttoptr i64 %4080 to double*
  %4089 = load double, double* %4088
  %4090 = fsub double %4084, %4089
  %4091 = bitcast i8* %4075 to double*
  store double %4090, double* %4091, align 1
  %4092 = getelementptr inbounds i8, i8* %4075, i64 8
  %4093 = bitcast i8* %4092 to i64*
  store i64 %4087, i64* %4093, align 1
  store %struct.Memory* %loadMem_401b66, %struct.Memory** %MEMORY
  %loadMem_401b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 33
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4096 to i64*
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 15
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %4099 to i64*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4100, i64 0, i64 0
  %XMM0.i100 = bitcast %union.VectorReg* %4101 to %union.vec128_t*
  %4102 = load i64, i64* %RBP.i99
  %4103 = sub i64 %4102, 64
  %4104 = bitcast %union.vec128_t* %XMM0.i100 to i8*
  %4105 = load i64, i64* %PC.i98
  %4106 = add i64 %4105, 5
  store i64 %4106, i64* %PC.i98
  %4107 = bitcast i8* %4104 to double*
  %4108 = load double, double* %4107, align 1
  %4109 = inttoptr i64 %4103 to double*
  store double %4108, double* %4109
  store %struct.Memory* %loadMem_401b6b, %struct.Memory** %MEMORY
  %loadMem_401b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 33
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %4112 to i64*
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 5
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 15
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %4118 to i64*
  %4119 = load i64, i64* %RBP.i97
  %4120 = sub i64 %4119, 16
  %4121 = load i64, i64* %PC.i95
  %4122 = add i64 %4121, 4
  store i64 %4122, i64* %PC.i95
  %4123 = inttoptr i64 %4120 to i64*
  %4124 = load i64, i64* %4123
  store i64 %4124, i64* %RCX.i96, align 8
  store %struct.Memory* %loadMem_401b70, %struct.Memory** %MEMORY
  %loadMem_401b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 33
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4127 to i64*
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 7
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %4130 to i64*
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 15
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %4133 to i64*
  %4134 = load i64, i64* %RBP.i94
  %4135 = sub i64 %4134, 32
  %4136 = load i64, i64* %PC.i92
  %4137 = add i64 %4136, 4
  store i64 %4137, i64* %PC.i92
  %4138 = inttoptr i64 %4135 to i32*
  %4139 = load i32, i32* %4138
  %4140 = sext i32 %4139 to i64
  store i64 %4140, i64* %RDX.i93, align 8
  store %struct.Memory* %loadMem_401b74, %struct.Memory** %MEMORY
  %loadMem_401b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 33
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4143 to i64*
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 5
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %4146 to i64*
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 7
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %RDX.i90 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4151 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4150, i64 0, i64 0
  %YMM0.i91 = bitcast %union.VectorReg* %4151 to %"class.std::bitset"*
  %4152 = bitcast %"class.std::bitset"* %YMM0.i91 to i8*
  %4153 = load i64, i64* %RCX.i89
  %4154 = load i64, i64* %RDX.i90
  %4155 = mul i64 %4154, 8
  %4156 = add i64 %4155, %4153
  %4157 = load i64, i64* %PC.i88
  %4158 = add i64 %4157, 5
  store i64 %4158, i64* %PC.i88
  %4159 = inttoptr i64 %4156 to double*
  %4160 = load double, double* %4159
  %4161 = bitcast i8* %4152 to double*
  store double %4160, double* %4161, align 1
  %4162 = getelementptr inbounds i8, i8* %4152, i64 8
  %4163 = bitcast i8* %4162 to double*
  store double 0.000000e+00, double* %4163, align 1
  store %struct.Memory* %loadMem_401b78, %struct.Memory** %MEMORY
  %loadMem_401b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 33
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %4166 to i64*
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 5
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %4169 to i64*
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 15
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %4172 to i64*
  %4173 = load i64, i64* %RBP.i87
  %4174 = sub i64 %4173, 16
  %4175 = load i64, i64* %PC.i85
  %4176 = add i64 %4175, 4
  store i64 %4176, i64* %PC.i85
  %4177 = inttoptr i64 %4174 to i64*
  %4178 = load i64, i64* %4177
  store i64 %4178, i64* %RCX.i86, align 8
  store %struct.Memory* %loadMem_401b7d, %struct.Memory** %MEMORY
  %loadMem_401b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 33
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %4181 to i64*
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 7
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %4184 to i64*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 15
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %4187 to i64*
  %4188 = load i64, i64* %RBP.i84
  %4189 = sub i64 %4188, 28
  %4190 = load i64, i64* %PC.i82
  %4191 = add i64 %4190, 4
  store i64 %4191, i64* %PC.i82
  %4192 = inttoptr i64 %4189 to i32*
  %4193 = load i32, i32* %4192
  %4194 = sext i32 %4193 to i64
  store i64 %4194, i64* %RDX.i83, align 8
  store %struct.Memory* %loadMem_401b81, %struct.Memory** %MEMORY
  %loadMem_401b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 33
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4197 to i64*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 5
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %4200 to i64*
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 7
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %RDX.i80 = bitcast %union.anon* %4203 to i64*
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4204, i64 0, i64 0
  %YMM0.i81 = bitcast %union.VectorReg* %4205 to %"class.std::bitset"*
  %4206 = bitcast %"class.std::bitset"* %YMM0.i81 to i8*
  %4207 = bitcast %"class.std::bitset"* %YMM0.i81 to i8*
  %4208 = load i64, i64* %RCX.i79
  %4209 = load i64, i64* %RDX.i80
  %4210 = mul i64 %4209, 8
  %4211 = add i64 %4210, %4208
  %4212 = load i64, i64* %PC.i78
  %4213 = add i64 %4212, 5
  store i64 %4213, i64* %PC.i78
  %4214 = bitcast i8* %4207 to double*
  %4215 = load double, double* %4214, align 1
  %4216 = getelementptr inbounds i8, i8* %4207, i64 8
  %4217 = bitcast i8* %4216 to i64*
  %4218 = load i64, i64* %4217, align 1
  %4219 = inttoptr i64 %4211 to double*
  %4220 = load double, double* %4219
  %4221 = fadd double %4215, %4220
  %4222 = bitcast i8* %4206 to double*
  store double %4221, double* %4222, align 1
  %4223 = getelementptr inbounds i8, i8* %4206, i64 8
  %4224 = bitcast i8* %4223 to i64*
  store i64 %4218, i64* %4224, align 1
  store %struct.Memory* %loadMem_401b85, %struct.Memory** %MEMORY
  %loadMem_401b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 33
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4227 to i64*
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 5
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %4230 to i64*
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 7
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %RDX.i76 = bitcast %union.anon* %4233 to i64*
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4234, i64 0, i64 0
  %XMM0.i77 = bitcast %union.VectorReg* %4235 to %union.vec128_t*
  %4236 = load i64, i64* %RCX.i75
  %4237 = load i64, i64* %RDX.i76
  %4238 = mul i64 %4237, 8
  %4239 = add i64 %4238, %4236
  %4240 = bitcast %union.vec128_t* %XMM0.i77 to i8*
  %4241 = load i64, i64* %PC.i74
  %4242 = add i64 %4241, 5
  store i64 %4242, i64* %PC.i74
  %4243 = bitcast i8* %4240 to double*
  %4244 = load double, double* %4243, align 1
  %4245 = inttoptr i64 %4239 to double*
  store double %4244, double* %4245
  store %struct.Memory* %loadMem_401b8a, %struct.Memory** %MEMORY
  %loadMem_401b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 33
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4248 to i64*
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 5
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %4251 to i64*
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 15
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %4254 to i64*
  %4255 = load i64, i64* %RBP.i73
  %4256 = sub i64 %4255, 16
  %4257 = load i64, i64* %PC.i71
  %4258 = add i64 %4257, 4
  store i64 %4258, i64* %PC.i71
  %4259 = inttoptr i64 %4256 to i64*
  %4260 = load i64, i64* %4259
  store i64 %4260, i64* %RCX.i72, align 8
  store %struct.Memory* %loadMem_401b8f, %struct.Memory** %MEMORY
  %loadMem_401b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4262 = getelementptr inbounds %struct.GPR, %struct.GPR* %4261, i32 0, i32 33
  %4263 = getelementptr inbounds %struct.Reg, %struct.Reg* %4262, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4263 to i64*
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 1
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 15
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %4269 to i64*
  %4270 = load i64, i64* %RBP.i70
  %4271 = sub i64 %4270, 32
  %4272 = load i64, i64* %PC.i68
  %4273 = add i64 %4272, 3
  store i64 %4273, i64* %PC.i68
  %4274 = inttoptr i64 %4271 to i32*
  %4275 = load i32, i32* %4274
  %4276 = zext i32 %4275 to i64
  store i64 %4276, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_401b93, %struct.Memory** %MEMORY
  %loadMem_401b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4278 = getelementptr inbounds %struct.GPR, %struct.GPR* %4277, i32 0, i32 33
  %4279 = getelementptr inbounds %struct.Reg, %struct.Reg* %4278, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4279 to i64*
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 1
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %4282 to i64*
  %4283 = load i64, i64* %RAX.i67
  %4284 = load i64, i64* %PC.i66
  %4285 = add i64 %4284, 3
  store i64 %4285, i64* %PC.i66
  %4286 = trunc i64 %4283 to i32
  %4287 = add i32 1, %4286
  %4288 = zext i32 %4287 to i64
  store i64 %4288, i64* %RAX.i67, align 8
  %4289 = icmp ult i32 %4287, %4286
  %4290 = icmp ult i32 %4287, 1
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
  %4300 = xor i64 1, %4283
  %4301 = trunc i64 %4300 to i32
  %4302 = xor i32 %4301, %4287
  %4303 = lshr i32 %4302, 4
  %4304 = trunc i32 %4303 to i8
  %4305 = and i8 %4304, 1
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4305, i8* %4306, align 1
  %4307 = icmp eq i32 %4287, 0
  %4308 = zext i1 %4307 to i8
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4308, i8* %4309, align 1
  %4310 = lshr i32 %4287, 31
  %4311 = trunc i32 %4310 to i8
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4311, i8* %4312, align 1
  %4313 = lshr i32 %4286, 31
  %4314 = xor i32 %4310, %4313
  %4315 = add i32 %4314, %4310
  %4316 = icmp eq i32 %4315, 2
  %4317 = zext i1 %4316 to i8
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4317, i8* %4318, align 1
  store %struct.Memory* %loadMem_401b96, %struct.Memory** %MEMORY
  %loadMem_401b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 33
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4321 to i64*
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 1
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %EAX.i64 = bitcast %union.anon* %4324 to i32*
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 7
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %4327 to i64*
  %4328 = load i32, i32* %EAX.i64
  %4329 = zext i32 %4328 to i64
  %4330 = load i64, i64* %PC.i63
  %4331 = add i64 %4330, 3
  store i64 %4331, i64* %PC.i63
  %4332 = shl i64 %4329, 32
  %4333 = ashr exact i64 %4332, 32
  store i64 %4333, i64* %RDX.i65, align 8
  store %struct.Memory* %loadMem_401b99, %struct.Memory** %MEMORY
  %loadMem_401b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 33
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4336 to i64*
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 5
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %4339 to i64*
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 7
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %RDX.i61 = bitcast %union.anon* %4342 to i64*
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4344 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4343, i64 0, i64 0
  %YMM0.i62 = bitcast %union.VectorReg* %4344 to %"class.std::bitset"*
  %4345 = bitcast %"class.std::bitset"* %YMM0.i62 to i8*
  %4346 = load i64, i64* %RCX.i60
  %4347 = load i64, i64* %RDX.i61
  %4348 = mul i64 %4347, 8
  %4349 = add i64 %4348, %4346
  %4350 = load i64, i64* %PC.i59
  %4351 = add i64 %4350, 5
  store i64 %4351, i64* %PC.i59
  %4352 = inttoptr i64 %4349 to double*
  %4353 = load double, double* %4352
  %4354 = bitcast i8* %4345 to double*
  store double %4353, double* %4354, align 1
  %4355 = getelementptr inbounds i8, i8* %4345, i64 8
  %4356 = bitcast i8* %4355 to double*
  store double 0.000000e+00, double* %4356, align 1
  store %struct.Memory* %loadMem_401b9c, %struct.Memory** %MEMORY
  %loadMem_401ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 33
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 5
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %4362 to i64*
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 15
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %4365 to i64*
  %4366 = load i64, i64* %RBP.i58
  %4367 = sub i64 %4366, 16
  %4368 = load i64, i64* %PC.i56
  %4369 = add i64 %4368, 4
  store i64 %4369, i64* %PC.i56
  %4370 = inttoptr i64 %4367 to i64*
  %4371 = load i64, i64* %4370
  store i64 %4371, i64* %RCX.i57, align 8
  store %struct.Memory* %loadMem_401ba1, %struct.Memory** %MEMORY
  %loadMem_401ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 33
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 1
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 15
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %4380 to i64*
  %4381 = load i64, i64* %RBP.i55
  %4382 = sub i64 %4381, 28
  %4383 = load i64, i64* %PC.i53
  %4384 = add i64 %4383, 3
  store i64 %4384, i64* %PC.i53
  %4385 = inttoptr i64 %4382 to i32*
  %4386 = load i32, i32* %4385
  %4387 = zext i32 %4386 to i64
  store i64 %4387, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_401ba5, %struct.Memory** %MEMORY
  %loadMem_401ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 33
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 1
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %4393 to i64*
  %4394 = load i64, i64* %RAX.i52
  %4395 = load i64, i64* %PC.i51
  %4396 = add i64 %4395, 3
  store i64 %4396, i64* %PC.i51
  %4397 = trunc i64 %4394 to i32
  %4398 = add i32 1, %4397
  %4399 = zext i32 %4398 to i64
  store i64 %4399, i64* %RAX.i52, align 8
  %4400 = icmp ult i32 %4398, %4397
  %4401 = icmp ult i32 %4398, 1
  %4402 = or i1 %4400, %4401
  %4403 = zext i1 %4402 to i8
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4403, i8* %4404, align 1
  %4405 = and i32 %4398, 255
  %4406 = call i32 @llvm.ctpop.i32(i32 %4405)
  %4407 = trunc i32 %4406 to i8
  %4408 = and i8 %4407, 1
  %4409 = xor i8 %4408, 1
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4409, i8* %4410, align 1
  %4411 = xor i64 1, %4394
  %4412 = trunc i64 %4411 to i32
  %4413 = xor i32 %4412, %4398
  %4414 = lshr i32 %4413, 4
  %4415 = trunc i32 %4414 to i8
  %4416 = and i8 %4415, 1
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4416, i8* %4417, align 1
  %4418 = icmp eq i32 %4398, 0
  %4419 = zext i1 %4418 to i8
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4419, i8* %4420, align 1
  %4421 = lshr i32 %4398, 31
  %4422 = trunc i32 %4421 to i8
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4422, i8* %4423, align 1
  %4424 = lshr i32 %4397, 31
  %4425 = xor i32 %4421, %4424
  %4426 = add i32 %4425, %4421
  %4427 = icmp eq i32 %4426, 2
  %4428 = zext i1 %4427 to i8
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4428, i8* %4429, align 1
  store %struct.Memory* %loadMem_401ba8, %struct.Memory** %MEMORY
  %loadMem_401bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 33
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4432 to i64*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 1
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %EAX.i49 = bitcast %union.anon* %4435 to i32*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 7
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %4438 to i64*
  %4439 = load i32, i32* %EAX.i49
  %4440 = zext i32 %4439 to i64
  %4441 = load i64, i64* %PC.i48
  %4442 = add i64 %4441, 3
  store i64 %4442, i64* %PC.i48
  %4443 = shl i64 %4440, 32
  %4444 = ashr exact i64 %4443, 32
  store i64 %4444, i64* %RDX.i50, align 8
  store %struct.Memory* %loadMem_401bab, %struct.Memory** %MEMORY
  %loadMem_401bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 33
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4447 to i64*
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 5
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %4450 to i64*
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 7
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %RDX.i46 = bitcast %union.anon* %4453 to i64*
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4455 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4454, i64 0, i64 0
  %YMM0.i47 = bitcast %union.VectorReg* %4455 to %"class.std::bitset"*
  %4456 = bitcast %"class.std::bitset"* %YMM0.i47 to i8*
  %4457 = bitcast %"class.std::bitset"* %YMM0.i47 to i8*
  %4458 = load i64, i64* %RCX.i45
  %4459 = load i64, i64* %RDX.i46
  %4460 = mul i64 %4459, 8
  %4461 = add i64 %4460, %4458
  %4462 = load i64, i64* %PC.i44
  %4463 = add i64 %4462, 5
  store i64 %4463, i64* %PC.i44
  %4464 = bitcast i8* %4457 to double*
  %4465 = load double, double* %4464, align 1
  %4466 = getelementptr inbounds i8, i8* %4457, i64 8
  %4467 = bitcast i8* %4466 to i64*
  %4468 = load i64, i64* %4467, align 1
  %4469 = inttoptr i64 %4461 to double*
  %4470 = load double, double* %4469
  %4471 = fadd double %4465, %4470
  %4472 = bitcast i8* %4456 to double*
  store double %4471, double* %4472, align 1
  %4473 = getelementptr inbounds i8, i8* %4456, i64 8
  %4474 = bitcast i8* %4473 to i64*
  store i64 %4468, i64* %4474, align 1
  store %struct.Memory* %loadMem_401bae, %struct.Memory** %MEMORY
  %loadMem_401bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 33
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %4477 to i64*
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 5
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %4480 to i64*
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 7
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %RDX.i42 = bitcast %union.anon* %4483 to i64*
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4485 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4484, i64 0, i64 0
  %XMM0.i43 = bitcast %union.VectorReg* %4485 to %union.vec128_t*
  %4486 = load i64, i64* %RCX.i41
  %4487 = load i64, i64* %RDX.i42
  %4488 = mul i64 %4487, 8
  %4489 = add i64 %4488, %4486
  %4490 = bitcast %union.vec128_t* %XMM0.i43 to i8*
  %4491 = load i64, i64* %PC.i40
  %4492 = add i64 %4491, 5
  store i64 %4492, i64* %PC.i40
  %4493 = bitcast i8* %4490 to double*
  %4494 = load double, double* %4493, align 1
  %4495 = inttoptr i64 %4489 to double*
  store double %4494, double* %4495
  store %struct.Memory* %loadMem_401bb3, %struct.Memory** %MEMORY
  %loadMem_401bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 33
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4498 to i64*
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 15
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %4501 to i64*
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4503 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4502, i64 0, i64 0
  %YMM0.i39 = bitcast %union.VectorReg* %4503 to %"class.std::bitset"*
  %4504 = bitcast %"class.std::bitset"* %YMM0.i39 to i8*
  %4505 = load i64, i64* %RBP.i38
  %4506 = sub i64 %4505, 56
  %4507 = load i64, i64* %PC.i37
  %4508 = add i64 %4507, 5
  store i64 %4508, i64* %PC.i37
  %4509 = inttoptr i64 %4506 to double*
  %4510 = load double, double* %4509
  %4511 = bitcast i8* %4504 to double*
  store double %4510, double* %4511, align 1
  %4512 = getelementptr inbounds i8, i8* %4504, i64 8
  %4513 = bitcast i8* %4512 to double*
  store double 0.000000e+00, double* %4513, align 1
  store %struct.Memory* %loadMem_401bb8, %struct.Memory** %MEMORY
  %loadMem_401bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 33
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4516 to i64*
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 5
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %4519 to i64*
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 15
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %4522 to i64*
  %4523 = load i64, i64* %RBP.i36
  %4524 = sub i64 %4523, 16
  %4525 = load i64, i64* %PC.i34
  %4526 = add i64 %4525, 4
  store i64 %4526, i64* %PC.i34
  %4527 = inttoptr i64 %4524 to i64*
  %4528 = load i64, i64* %4527
  store i64 %4528, i64* %RCX.i35, align 8
  store %struct.Memory* %loadMem_401bbd, %struct.Memory** %MEMORY
  %loadMem_401bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 33
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4531 to i64*
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 7
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %RDX.i32 = bitcast %union.anon* %4534 to i64*
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 15
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %4537 to i64*
  %4538 = load i64, i64* %RBP.i33
  %4539 = sub i64 %4538, 32
  %4540 = load i64, i64* %PC.i31
  %4541 = add i64 %4540, 4
  store i64 %4541, i64* %PC.i31
  %4542 = inttoptr i64 %4539 to i32*
  %4543 = load i32, i32* %4542
  %4544 = sext i32 %4543 to i64
  store i64 %4544, i64* %RDX.i32, align 8
  store %struct.Memory* %loadMem_401bc1, %struct.Memory** %MEMORY
  %loadMem_401bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4546 = getelementptr inbounds %struct.GPR, %struct.GPR* %4545, i32 0, i32 33
  %4547 = getelementptr inbounds %struct.Reg, %struct.Reg* %4546, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %4547 to i64*
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 5
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %RCX.i28 = bitcast %union.anon* %4550 to i64*
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 7
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %RDX.i29 = bitcast %union.anon* %4553 to i64*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4554, i64 0, i64 0
  %XMM0.i30 = bitcast %union.VectorReg* %4555 to %union.vec128_t*
  %4556 = load i64, i64* %RCX.i28
  %4557 = load i64, i64* %RDX.i29
  %4558 = mul i64 %4557, 8
  %4559 = add i64 %4558, %4556
  %4560 = bitcast %union.vec128_t* %XMM0.i30 to i8*
  %4561 = load i64, i64* %PC.i27
  %4562 = add i64 %4561, 5
  store i64 %4562, i64* %PC.i27
  %4563 = bitcast i8* %4560 to double*
  %4564 = load double, double* %4563, align 1
  %4565 = inttoptr i64 %4559 to double*
  store double %4564, double* %4565
  store %struct.Memory* %loadMem_401bc5, %struct.Memory** %MEMORY
  %loadMem_401bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 33
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 15
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %4571 to i64*
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4572, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4573 to %"class.std::bitset"*
  %4574 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4575 = load i64, i64* %RBP.i26
  %4576 = sub i64 %4575, 64
  %4577 = load i64, i64* %PC.i25
  %4578 = add i64 %4577, 5
  store i64 %4578, i64* %PC.i25
  %4579 = inttoptr i64 %4576 to double*
  %4580 = load double, double* %4579
  %4581 = bitcast i8* %4574 to double*
  store double %4580, double* %4581, align 1
  %4582 = getelementptr inbounds i8, i8* %4574, i64 8
  %4583 = bitcast i8* %4582 to double*
  store double 0.000000e+00, double* %4583, align 1
  store %struct.Memory* %loadMem_401bca, %struct.Memory** %MEMORY
  %loadMem_401bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 33
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 5
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %4589 to i64*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 15
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %4592 to i64*
  %4593 = load i64, i64* %RBP.i24
  %4594 = sub i64 %4593, 16
  %4595 = load i64, i64* %PC.i22
  %4596 = add i64 %4595, 4
  store i64 %4596, i64* %PC.i22
  %4597 = inttoptr i64 %4594 to i64*
  %4598 = load i64, i64* %4597
  store i64 %4598, i64* %RCX.i23, align 8
  store %struct.Memory* %loadMem_401bcf, %struct.Memory** %MEMORY
  %loadMem_401bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 33
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4601 to i64*
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 1
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %4604 to i64*
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 15
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4607 to i64*
  %4608 = load i64, i64* %RBP.i21
  %4609 = sub i64 %4608, 32
  %4610 = load i64, i64* %PC.i19
  %4611 = add i64 %4610, 3
  store i64 %4611, i64* %PC.i19
  %4612 = inttoptr i64 %4609 to i32*
  %4613 = load i32, i32* %4612
  %4614 = zext i32 %4613 to i64
  store i64 %4614, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_401bd3, %struct.Memory** %MEMORY
  %loadMem_401bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 33
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4617 to i64*
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 1
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %4620 to i64*
  %4621 = load i64, i64* %RAX.i18
  %4622 = load i64, i64* %PC.i17
  %4623 = add i64 %4622, 3
  store i64 %4623, i64* %PC.i17
  %4624 = trunc i64 %4621 to i32
  %4625 = add i32 1, %4624
  %4626 = zext i32 %4625 to i64
  store i64 %4626, i64* %RAX.i18, align 8
  %4627 = icmp ult i32 %4625, %4624
  %4628 = icmp ult i32 %4625, 1
  %4629 = or i1 %4627, %4628
  %4630 = zext i1 %4629 to i8
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4630, i8* %4631, align 1
  %4632 = and i32 %4625, 255
  %4633 = call i32 @llvm.ctpop.i32(i32 %4632)
  %4634 = trunc i32 %4633 to i8
  %4635 = and i8 %4634, 1
  %4636 = xor i8 %4635, 1
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4636, i8* %4637, align 1
  %4638 = xor i64 1, %4621
  %4639 = trunc i64 %4638 to i32
  %4640 = xor i32 %4639, %4625
  %4641 = lshr i32 %4640, 4
  %4642 = trunc i32 %4641 to i8
  %4643 = and i8 %4642, 1
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4643, i8* %4644, align 1
  %4645 = icmp eq i32 %4625, 0
  %4646 = zext i1 %4645 to i8
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4646, i8* %4647, align 1
  %4648 = lshr i32 %4625, 31
  %4649 = trunc i32 %4648 to i8
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4649, i8* %4650, align 1
  %4651 = lshr i32 %4624, 31
  %4652 = xor i32 %4648, %4651
  %4653 = add i32 %4652, %4648
  %4654 = icmp eq i32 %4653, 2
  %4655 = zext i1 %4654 to i8
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4655, i8* %4656, align 1
  store %struct.Memory* %loadMem_401bd6, %struct.Memory** %MEMORY
  %loadMem_401bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4658 = getelementptr inbounds %struct.GPR, %struct.GPR* %4657, i32 0, i32 33
  %4659 = getelementptr inbounds %struct.Reg, %struct.Reg* %4658, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4659 to i64*
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 1
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %4662 to i32*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 7
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %RDX.i16 = bitcast %union.anon* %4665 to i64*
  %4666 = load i32, i32* %EAX.i15
  %4667 = zext i32 %4666 to i64
  %4668 = load i64, i64* %PC.i14
  %4669 = add i64 %4668, 3
  store i64 %4669, i64* %PC.i14
  %4670 = shl i64 %4667, 32
  %4671 = ashr exact i64 %4670, 32
  store i64 %4671, i64* %RDX.i16, align 8
  store %struct.Memory* %loadMem_401bd9, %struct.Memory** %MEMORY
  %loadMem_401bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 33
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 5
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 7
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4682 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4681, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4682 to %union.vec128_t*
  %4683 = load i64, i64* %RCX.i
  %4684 = load i64, i64* %RDX.i
  %4685 = mul i64 %4684, 8
  %4686 = add i64 %4685, %4683
  %4687 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4688 = load i64, i64* %PC.i13
  %4689 = add i64 %4688, 5
  store i64 %4689, i64* %PC.i13
  %4690 = bitcast i8* %4687 to double*
  %4691 = load double, double* %4690, align 1
  %4692 = inttoptr i64 %4686 to double*
  store double %4691, double* %4692
  store %struct.Memory* %loadMem_401bdc, %struct.Memory** %MEMORY
  %loadMem_401be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 33
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 1
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 15
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %4701 to i64*
  %4702 = load i64, i64* %RBP.i12
  %4703 = sub i64 %4702, 28
  %4704 = load i64, i64* %PC.i10
  %4705 = add i64 %4704, 3
  store i64 %4705, i64* %PC.i10
  %4706 = inttoptr i64 %4703 to i32*
  %4707 = load i32, i32* %4706
  %4708 = zext i32 %4707 to i64
  store i64 %4708, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_401be1, %struct.Memory** %MEMORY
  %loadMem_401be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 33
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4711 to i64*
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 1
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4714 to i64*
  %4715 = load i64, i64* %RAX.i
  %4716 = load i64, i64* %PC.i9
  %4717 = add i64 %4716, 3
  store i64 %4717, i64* %PC.i9
  %4718 = trunc i64 %4715 to i32
  %4719 = add i32 2, %4718
  %4720 = zext i32 %4719 to i64
  store i64 %4720, i64* %RAX.i, align 8
  %4721 = icmp ult i32 %4719, %4718
  %4722 = icmp ult i32 %4719, 2
  %4723 = or i1 %4721, %4722
  %4724 = zext i1 %4723 to i8
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4724, i8* %4725, align 1
  %4726 = and i32 %4719, 255
  %4727 = call i32 @llvm.ctpop.i32(i32 %4726)
  %4728 = trunc i32 %4727 to i8
  %4729 = and i8 %4728, 1
  %4730 = xor i8 %4729, 1
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4730, i8* %4731, align 1
  %4732 = xor i64 2, %4715
  %4733 = trunc i64 %4732 to i32
  %4734 = xor i32 %4733, %4719
  %4735 = lshr i32 %4734, 4
  %4736 = trunc i32 %4735 to i8
  %4737 = and i8 %4736, 1
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4737, i8* %4738, align 1
  %4739 = icmp eq i32 %4719, 0
  %4740 = zext i1 %4739 to i8
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4740, i8* %4741, align 1
  %4742 = lshr i32 %4719, 31
  %4743 = trunc i32 %4742 to i8
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4743, i8* %4744, align 1
  %4745 = lshr i32 %4718, 31
  %4746 = xor i32 %4742, %4745
  %4747 = add i32 %4746, %4742
  %4748 = icmp eq i32 %4747, 2
  %4749 = zext i1 %4748 to i8
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4749, i8* %4750, align 1
  store %struct.Memory* %loadMem_401be4, %struct.Memory** %MEMORY
  %loadMem_401be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 1
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4756 to i32*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 15
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4759 to i64*
  %4760 = load i64, i64* %RBP.i8
  %4761 = sub i64 %4760, 28
  %4762 = load i32, i32* %EAX.i
  %4763 = zext i32 %4762 to i64
  %4764 = load i64, i64* %PC.i7
  %4765 = add i64 %4764, 3
  store i64 %4765, i64* %PC.i7
  %4766 = inttoptr i64 %4761 to i32*
  store i32 %4762, i32* %4766
  store %struct.Memory* %loadMem_401be7, %struct.Memory** %MEMORY
  %loadMem_401bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 33
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4769 to i64*
  %4770 = load i64, i64* %PC.i6
  %4771 = add i64 %4770, -215
  %4772 = load i64, i64* %PC.i6
  %4773 = add i64 %4772, 5
  store i64 %4773, i64* %PC.i6
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4771, i64* %4774, align 8
  store %struct.Memory* %loadMem_401bea, %struct.Memory** %MEMORY
  br label %block_.L_401b13

block_.L_401bef:                                  ; preds = %block_.L_401b13
  %loadMem_401bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4776 = getelementptr inbounds %struct.GPR, %struct.GPR* %4775, i32 0, i32 33
  %4777 = getelementptr inbounds %struct.Reg, %struct.Reg* %4776, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4777 to i64*
  %4778 = load i64, i64* %PC.i5
  %4779 = add i64 %4778, 5
  %4780 = load i64, i64* %PC.i5
  %4781 = add i64 %4780, 5
  store i64 %4781, i64* %PC.i5
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4779, i64* %4782, align 8
  store %struct.Memory* %loadMem_401bef, %struct.Memory** %MEMORY
  br label %block_.L_401bf4

block_.L_401bf4:                                  ; preds = %block_.L_401bef, %block_.L_401b07
  %loadMem_401bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 33
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 13
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4788 to i64*
  %4789 = load i64, i64* %RSP.i
  %4790 = load i64, i64* %PC.i4
  %4791 = add i64 %4790, 4
  store i64 %4791, i64* %PC.i4
  %4792 = add i64 112, %4789
  store i64 %4792, i64* %RSP.i, align 8
  %4793 = icmp ult i64 %4792, %4789
  %4794 = icmp ult i64 %4792, 112
  %4795 = or i1 %4793, %4794
  %4796 = zext i1 %4795 to i8
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4796, i8* %4797, align 1
  %4798 = trunc i64 %4792 to i32
  %4799 = and i32 %4798, 255
  %4800 = call i32 @llvm.ctpop.i32(i32 %4799)
  %4801 = trunc i32 %4800 to i8
  %4802 = and i8 %4801, 1
  %4803 = xor i8 %4802, 1
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4803, i8* %4804, align 1
  %4805 = xor i64 112, %4789
  %4806 = xor i64 %4805, %4792
  %4807 = lshr i64 %4806, 4
  %4808 = trunc i64 %4807 to i8
  %4809 = and i8 %4808, 1
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4809, i8* %4810, align 1
  %4811 = icmp eq i64 %4792, 0
  %4812 = zext i1 %4811 to i8
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4812, i8* %4813, align 1
  %4814 = lshr i64 %4792, 63
  %4815 = trunc i64 %4814 to i8
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4815, i8* %4816, align 1
  %4817 = lshr i64 %4789, 63
  %4818 = xor i64 %4814, %4817
  %4819 = add i64 %4818, %4814
  %4820 = icmp eq i64 %4819, 2
  %4821 = zext i1 %4820 to i8
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4821, i8* %4822, align 1
  store %struct.Memory* %loadMem_401bf4, %struct.Memory** %MEMORY
  %loadMem_401bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4825 to i64*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 15
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4828 to i64*
  %4829 = load i64, i64* %PC.i2
  %4830 = add i64 %4829, 1
  store i64 %4830, i64* %PC.i2
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4832 = load i64, i64* %4831, align 8
  %4833 = add i64 %4832, 8
  %4834 = inttoptr i64 %4832 to i64*
  %4835 = load i64, i64* %4834
  store i64 %4835, i64* %RBP.i3, align 8
  store i64 %4833, i64* %4831, align 8
  store %struct.Memory* %loadMem_401bf8, %struct.Memory** %MEMORY
  %loadMem_401bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4837 = getelementptr inbounds %struct.GPR, %struct.GPR* %4836, i32 0, i32 33
  %4838 = getelementptr inbounds %struct.Reg, %struct.Reg* %4837, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4838 to i64*
  %4839 = load i64, i64* %PC.i1
  %4840 = add i64 %4839, 1
  store i64 %4840, i64* %PC.i1
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4843 = load i64, i64* %4842, align 8
  %4844 = inttoptr i64 %4843 to i64*
  %4845 = load i64, i64* %4844
  store i64 %4845, i64* %4841, align 8
  %4846 = add i64 %4843, 8
  store i64 %4846, i64* %4842, align 8
  store %struct.Memory* %loadMem_401bf9, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_401bf9
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

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_4018d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.cft1st(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x8__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 8, i32* %13
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 4
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

define %struct.Memory* @routine_jge_.L_4018cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.cftmdl(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_shll__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40189b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4018d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_401b0c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_401b07(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fadd double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
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

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fsub double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 104
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
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

define %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
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

define %struct.Memory* @routine_subsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
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

define %struct.Memory* @routine_subsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 112
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 104
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

define %struct.Memory* @routine_addsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 112
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

define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 104
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

define %struct.Memory* @routine_jmpq_.L_4018e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401bf4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_401bef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401b13(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
