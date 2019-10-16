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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @Fft(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400a30 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400a30, %struct.Memory** %MEMORY
  %loadMem_400a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i467
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i467
  store i64 %26, i64* %RBP.i468, align 8
  store %struct.Memory* %loadMem_400a31, %struct.Memory** %MEMORY
  %loadMem_400a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %PC.i497
  %36 = add i64 %35, 5
  store i64 %36, i64* %PC.i497
  store i64 2, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_400a34, %struct.Memory** %MEMORY
  %loadMem_400a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 33
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %39 to i64*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %40, i32 0, i32 11
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %EDI.i495 = bitcast %union.anon* %42 to i32*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 15
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %45 to i64*
  %46 = load i64, i64* %RBP.i496
  %47 = sub i64 %46, 4
  %48 = load i32, i32* %EDI.i495
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* %PC.i494
  %51 = add i64 %50, 3
  store i64 %51, i64* %PC.i494
  %52 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %52
  store %struct.Memory* %loadMem_400a39, %struct.Memory** %MEMORY
  %loadMem_400a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %54 = getelementptr inbounds %struct.GPR, %struct.GPR* %53, i32 0, i32 33
  %55 = getelementptr inbounds %struct.Reg, %struct.Reg* %54, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %55 to i64*
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %57 = getelementptr inbounds %struct.GPR, %struct.GPR* %56, i32 0, i32 9
  %58 = getelementptr inbounds %struct.Reg, %struct.Reg* %57, i32 0, i32 0
  %RSI.i492 = bitcast %union.anon* %58 to i64*
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 15
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %61 to i64*
  %62 = load i64, i64* %RBP.i493
  %63 = sub i64 %62, 16
  %64 = load i64, i64* %RSI.i492
  %65 = load i64, i64* %PC.i491
  %66 = add i64 %65, 4
  store i64 %66, i64* %PC.i491
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67
  store %struct.Memory* %loadMem_400a3c, %struct.Memory** %MEMORY
  %loadMem_400a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %RDX.i489 = bitcast %union.anon* %73 to i64*
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %75 = getelementptr inbounds %struct.GPR, %struct.GPR* %74, i32 0, i32 15
  %76 = getelementptr inbounds %struct.Reg, %struct.Reg* %75, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %76 to i64*
  %77 = load i64, i64* %RBP.i490
  %78 = sub i64 %77, 24
  %79 = load i64, i64* %RDX.i489
  %80 = load i64, i64* %PC.i488
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC.i488
  %82 = inttoptr i64 %78 to i64*
  store i64 %79, i64* %82
  store %struct.Memory* %loadMem_400a40, %struct.Memory** %MEMORY
  %loadMem_400a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i487
  %93 = sub i64 %92, 32
  %94 = load i64, i64* %RCX.i486
  %95 = load i64, i64* %PC.i485
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC.i485
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  store %struct.Memory* %loadMem_400a44, %struct.Memory** %MEMORY
  %loadMem_400a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 15
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %104, i64 0, i64 0
  %XMM0.i484 = bitcast %union.VectorReg* %105 to %union.vec128_t*
  %106 = load i64, i64* %RBP.i483
  %107 = sub i64 %106, 36
  %108 = bitcast %union.vec128_t* %XMM0.i484 to i8*
  %109 = load i64, i64* %PC.i482
  %110 = add i64 %109, 5
  store i64 %110, i64* %PC.i482
  %111 = bitcast i8* %108 to <2 x float>*
  %112 = load <2 x float>, <2 x float>* %111, align 1
  %113 = extractelement <2 x float> %112, i32 0
  %114 = inttoptr i64 %107 to float*
  store float %113, float* %114
  store %struct.Memory* %loadMem_400a48, %struct.Memory** %MEMORY
  %loadMem_400a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 11
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RDI.i480 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i481
  %125 = sub i64 %124, 4
  %126 = load i64, i64* %PC.i479
  %127 = add i64 %126, 3
  store i64 %127, i64* %PC.i479
  %128 = inttoptr i64 %125 to i32*
  %129 = load i32, i32* %128
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RDI.i480, align 8
  store %struct.Memory* %loadMem_400a4d, %struct.Memory** %MEMORY
  %loadMem_400a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %EAX.i477 = bitcast %union.anon* %136 to i32*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 15
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %139 to i64*
  %140 = load i64, i64* %RBP.i478
  %141 = sub i64 %140, 64
  %142 = load i32, i32* %EAX.i477
  %143 = zext i32 %142 to i64
  %144 = load i64, i64* %PC.i476
  %145 = add i64 %144, 3
  store i64 %145, i64* %PC.i476
  %146 = inttoptr i64 %141 to i32*
  store i32 %142, i32* %146
  store %struct.Memory* %loadMem_400a50, %struct.Memory** %MEMORY
  %loadMem_400a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 33
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 11
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %EDI.i474 = bitcast %union.anon* %152 to i32*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %155 to i64*
  %156 = load i32, i32* %EDI.i474
  %157 = zext i32 %156 to i64
  %158 = load i64, i64* %PC.i473
  %159 = add i64 %158, 2
  store i64 %159, i64* %PC.i473
  %160 = and i64 %157, 4294967295
  store i64 %160, i64* %RAX.i475, align 8
  store %struct.Memory* %loadMem_400a53, %struct.Memory** %MEMORY
  %loadMem_400a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 33
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %PC.i472
  %165 = add i64 %164, 1
  store i64 %165, i64* %PC.i472
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %168 = bitcast %union.anon* %167 to i32*
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = lshr i64 %170, 32
  store i64 %171, i64* %166, align 8
  store %struct.Memory* %loadMem_400a55, %struct.Memory** %MEMORY
  %loadMem_400a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 11
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RDI.i470 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 15
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %180 to i64*
  %181 = load i64, i64* %RBP.i471
  %182 = sub i64 %181, 64
  %183 = load i64, i64* %PC.i469
  %184 = add i64 %183, 3
  store i64 %184, i64* %PC.i469
  %185 = inttoptr i64 %182 to i32*
  %186 = load i32, i32* %185
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RDI.i470, align 8
  store %struct.Memory* %loadMem_400a56, %struct.Memory** %MEMORY
  %loadMem_400a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 11
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %EDI.i466 = bitcast %union.anon* %193 to i32*
  %194 = load i32, i32* %EDI.i466
  %195 = zext i32 %194 to i64
  %196 = load i64, i64* %PC.i465
  %197 = add i64 %196, 2
  store i64 %197, i64* %PC.i465
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %199 = bitcast %union.anon* %198 to i32*
  %200 = load i32, i32* %199, align 8
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %203 = bitcast %union.anon* %202 to i32*
  %204 = load i32, i32* %203, align 8
  %205 = zext i32 %204 to i64
  %206 = shl i64 %195, 32
  %207 = ashr exact i64 %206, 32
  %208 = shl i64 %205, 32
  %209 = or i64 %208, %201
  %210 = sdiv i64 %209, %207
  %211 = shl i64 %210, 32
  %212 = ashr exact i64 %211, 32
  %213 = icmp eq i64 %210, %212
  br i1 %213, label %218, label %214

; <label>:214:                                    ; preds = %entry
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %216, %struct.Memory* %loadMem_400a59)
  br label %routine_idivl__edi.exit

; <label>:218:                                    ; preds = %entry
  %219 = srem i64 %209, %207
  %220 = getelementptr inbounds %union.anon, %union.anon* %198, i64 0, i32 0
  %221 = and i64 %210, 4294967295
  store i64 %221, i64* %220, align 8
  %222 = getelementptr inbounds %union.anon, %union.anon* %202, i64 0, i32 0
  %223 = and i64 %219, 4294967295
  store i64 %223, i64* %222, align 8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %224, align 1
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %225, align 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %226, align 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %227, align 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %228, align 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %229, align 1
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %214, %218
  %230 = phi %struct.Memory* [ %217, %214 ], [ %loadMem_400a59, %218 ]
  store %struct.Memory* %230, %struct.Memory** %MEMORY
  %loadMem_400a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %EAX.i463 = bitcast %union.anon* %236 to i32*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 15
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RBP.i464
  %241 = sub i64 %240, 56
  %242 = load i32, i32* %EAX.i463
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* %PC.i462
  %245 = add i64 %244, 3
  store i64 %245, i64* %PC.i462
  %246 = inttoptr i64 %241 to i32*
  store i32 %242, i32* %246
  store %struct.Memory* %loadMem_400a5b, %struct.Memory** %MEMORY
  %loadMem_400a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 15
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %RBP.i461
  %254 = sub i64 %253, 52
  %255 = load i64, i64* %PC.i460
  %256 = add i64 %255, 7
  store i64 %256, i64* %PC.i460
  %257 = inttoptr i64 %254 to i32*
  store i32 1, i32* %257
  store %struct.Memory* %loadMem_400a5e, %struct.Memory** %MEMORY
  br label %block_.L_400a65

block_.L_400a65:                                  ; preds = %block_400c4e, %routine_idivl__edi.exit
  %loadMem_400a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 15
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %263 to i64*
  %264 = load i64, i64* %RBP.i459
  %265 = sub i64 %264, 48
  %266 = load i64, i64* %PC.i458
  %267 = add i64 %266, 7
  store i64 %267, i64* %PC.i458
  %268 = inttoptr i64 %265 to i32*
  store i32 0, i32* %268
  store %struct.Memory* %loadMem_400a65, %struct.Memory** %MEMORY
  %loadMem_400a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 15
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %RBP.i457
  %279 = sub i64 %278, 52
  %280 = load i64, i64* %PC.i455
  %281 = add i64 %280, 3
  store i64 %281, i64* %PC.i455
  %282 = inttoptr i64 %279 to i32*
  %283 = load i32, i32* %282
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_400a6c, %struct.Memory** %MEMORY
  %loadMem_400a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 33
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %EAX.i453 = bitcast %union.anon* %290 to i32*
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 15
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %293 to i64*
  %294 = load i64, i64* %RBP.i454
  %295 = sub i64 %294, 44
  %296 = load i32, i32* %EAX.i453
  %297 = zext i32 %296 to i64
  %298 = load i64, i64* %PC.i452
  %299 = add i64 %298, 3
  store i64 %299, i64* %PC.i452
  %300 = inttoptr i64 %295 to i32*
  store i32 %296, i32* %300
  store %struct.Memory* %loadMem_400a6f, %struct.Memory** %MEMORY
  %loadMem_400a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 15
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %306 to i64*
  %307 = load i64, i64* %RBP.i451
  %308 = sub i64 %307, 40
  %309 = load i64, i64* %PC.i450
  %310 = add i64 %309, 7
  store i64 %310, i64* %PC.i450
  %311 = inttoptr i64 %308 to i32*
  store i32 1, i32* %311
  store %struct.Memory* %loadMem_400a72, %struct.Memory** %MEMORY
  br label %block_.L_400a79

block_.L_400a79:                                  ; preds = %block_400bff, %block_.L_400a65
  %loadMem_400a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %314 to i64*
  %315 = load i64, i64* %PC.i449
  %316 = add i64 %315, 5
  %317 = load i64, i64* %PC.i449
  %318 = add i64 %317, 5
  store i64 %318, i64* %PC.i449
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %316, i64* %319, align 8
  store %struct.Memory* %loadMem_400a79, %struct.Memory** %MEMORY
  br label %block_.L_400a7e

block_.L_400a7e:                                  ; preds = %block_.L_400a7e, %block_.L_400a79
  %loadMem_400a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %325 to i64*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 15
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %328 to i64*
  %329 = load i64, i64* %RBP.i448
  %330 = sub i64 %329, 16
  %331 = load i64, i64* %PC.i446
  %332 = add i64 %331, 4
  store i64 %332, i64* %PC.i446
  %333 = inttoptr i64 %330 to i64*
  %334 = load i64, i64* %333
  store i64 %334, i64* %RAX.i447, align 8
  store %struct.Memory* %loadMem_400a7e, %struct.Memory** %MEMORY
  %loadMem_400a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 15
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %343 to i64*
  %344 = load i64, i64* %RBP.i445
  %345 = sub i64 %344, 40
  %346 = load i64, i64* %PC.i443
  %347 = add i64 %346, 4
  store i64 %347, i64* %PC.i443
  %348 = inttoptr i64 %345 to i32*
  %349 = load i32, i32* %348
  %350 = sext i32 %349 to i64
  store i64 %350, i64* %RCX.i444, align 8
  store %struct.Memory* %loadMem_400a82, %struct.Memory** %MEMORY
  %loadMem_400a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %361 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %360, i64 0, i64 0
  %YMM0.i442 = bitcast %union.VectorReg* %361 to %"class.std::bitset"*
  %362 = bitcast %"class.std::bitset"* %YMM0.i442 to i8*
  %363 = load i64, i64* %RAX.i440
  %364 = load i64, i64* %RCX.i441
  %365 = mul i64 %364, 8
  %366 = add i64 %365, %363
  %367 = load i64, i64* %PC.i439
  %368 = add i64 %367, 5
  store i64 %368, i64* %PC.i439
  %369 = inttoptr i64 %366 to float*
  %370 = load float, float* %369
  %371 = bitcast i8* %362 to float*
  store float %370, float* %371, align 1
  %372 = getelementptr inbounds i8, i8* %362, i64 4
  %373 = bitcast i8* %372 to float*
  store float 0.000000e+00, float* %373, align 1
  %374 = getelementptr inbounds i8, i8* %362, i64 8
  %375 = bitcast i8* %374 to float*
  store float 0.000000e+00, float* %375, align 1
  %376 = getelementptr inbounds i8, i8* %362, i64 12
  %377 = bitcast i8* %376 to float*
  store float 0.000000e+00, float* %377, align 1
  store %struct.Memory* %loadMem_400a86, %struct.Memory** %MEMORY
  %loadMem_400a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 15
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %386 to i64*
  %387 = load i64, i64* %RBP.i438
  %388 = sub i64 %387, 16
  %389 = load i64, i64* %PC.i436
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC.i436
  %391 = inttoptr i64 %388 to i64*
  %392 = load i64, i64* %391
  store i64 %392, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_400a8b, %struct.Memory** %MEMORY
  %loadMem_400a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 7
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RDX.i434 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 15
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %RBP.i435
  %403 = sub i64 %402, 56
  %404 = load i64, i64* %PC.i433
  %405 = add i64 %404, 3
  store i64 %405, i64* %PC.i433
  %406 = inttoptr i64 %403 to i32*
  %407 = load i32, i32* %406
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RDX.i434, align 8
  store %struct.Memory* %loadMem_400a8f, %struct.Memory** %MEMORY
  %loadMem_400a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 7
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RDX.i431 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 15
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %RDX.i431
  %419 = load i64, i64* %RBP.i432
  %420 = sub i64 %419, 40
  %421 = load i64, i64* %PC.i430
  %422 = add i64 %421, 3
  store i64 %422, i64* %PC.i430
  %423 = trunc i64 %418 to i32
  %424 = inttoptr i64 %420 to i32*
  %425 = load i32, i32* %424
  %426 = add i32 %425, %423
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %RDX.i431, align 8
  %428 = icmp ult i32 %426, %423
  %429 = icmp ult i32 %426, %425
  %430 = or i1 %428, %429
  %431 = zext i1 %430 to i8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %431, i8* %432, align 1
  %433 = and i32 %426, 255
  %434 = call i32 @llvm.ctpop.i32(i32 %433)
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %437, i8* %438, align 1
  %439 = xor i32 %425, %423
  %440 = xor i32 %439, %426
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %443, i8* %444, align 1
  %445 = icmp eq i32 %426, 0
  %446 = zext i1 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %446, i8* %447, align 1
  %448 = lshr i32 %426, 31
  %449 = trunc i32 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %449, i8* %450, align 1
  %451 = lshr i32 %423, 31
  %452 = lshr i32 %425, 31
  %453 = xor i32 %448, %451
  %454 = xor i32 %448, %452
  %455 = add i32 %453, %454
  %456 = icmp eq i32 %455, 2
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %457, i8* %458, align 1
  store %struct.Memory* %loadMem_400a92, %struct.Memory** %MEMORY
  %loadMem_400a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 33
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 7
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %EDX.i428 = bitcast %union.anon* %464 to i32*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 5
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %RCX.i429 = bitcast %union.anon* %467 to i64*
  %468 = load i32, i32* %EDX.i428
  %469 = zext i32 %468 to i64
  %470 = load i64, i64* %PC.i427
  %471 = add i64 %470, 3
  store i64 %471, i64* %PC.i427
  %472 = shl i64 %469, 32
  %473 = ashr exact i64 %472, 32
  store i64 %473, i64* %RCX.i429, align 8
  store %struct.Memory* %loadMem_400a95, %struct.Memory** %MEMORY
  %loadMem_400a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 5
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %484 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %483, i64 0, i64 0
  %YMM0.i426 = bitcast %union.VectorReg* %484 to %"class.std::bitset"*
  %485 = bitcast %"class.std::bitset"* %YMM0.i426 to i8*
  %486 = bitcast %"class.std::bitset"* %YMM0.i426 to i8*
  %487 = load i64, i64* %RAX.i424
  %488 = load i64, i64* %RCX.i425
  %489 = mul i64 %488, 8
  %490 = add i64 %489, %487
  %491 = load i64, i64* %PC.i423
  %492 = add i64 %491, 5
  store i64 %492, i64* %PC.i423
  %493 = bitcast i8* %486 to <2 x float>*
  %494 = load <2 x float>, <2 x float>* %493, align 1
  %495 = getelementptr inbounds i8, i8* %486, i64 8
  %496 = bitcast i8* %495 to <2 x i32>*
  %497 = load <2 x i32>, <2 x i32>* %496, align 1
  %498 = inttoptr i64 %490 to float*
  %499 = load float, float* %498
  %500 = extractelement <2 x float> %494, i32 0
  %501 = fadd float %500, %499
  %502 = bitcast i8* %485 to float*
  store float %501, float* %502, align 1
  %503 = bitcast <2 x float> %494 to <2 x i32>
  %504 = extractelement <2 x i32> %503, i32 1
  %505 = getelementptr inbounds i8, i8* %485, i64 4
  %506 = bitcast i8* %505 to i32*
  store i32 %504, i32* %506, align 1
  %507 = extractelement <2 x i32> %497, i32 0
  %508 = getelementptr inbounds i8, i8* %485, i64 8
  %509 = bitcast i8* %508 to i32*
  store i32 %507, i32* %509, align 1
  %510 = extractelement <2 x i32> %497, i32 1
  %511 = getelementptr inbounds i8, i8* %485, i64 12
  %512 = bitcast i8* %511 to i32*
  store i32 %510, i32* %512, align 1
  store %struct.Memory* %loadMem_400a98, %struct.Memory** %MEMORY
  %loadMem_400a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 15
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %521 to i64*
  %522 = load i64, i64* %RBP.i422
  %523 = sub i64 %522, 24
  %524 = load i64, i64* %PC.i420
  %525 = add i64 %524, 4
  store i64 %525, i64* %PC.i420
  %526 = inttoptr i64 %523 to i64*
  %527 = load i64, i64* %526
  store i64 %527, i64* %RAX.i421, align 8
  store %struct.Memory* %loadMem_400a9d, %struct.Memory** %MEMORY
  %loadMem_400aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 33
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 7
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RDX.i418 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 15
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %536 to i64*
  %537 = load i64, i64* %RBP.i419
  %538 = sub i64 %537, 40
  %539 = load i64, i64* %PC.i417
  %540 = add i64 %539, 3
  store i64 %540, i64* %PC.i417
  %541 = inttoptr i64 %538 to i32*
  %542 = load i32, i32* %541
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RDX.i418, align 8
  store %struct.Memory* %loadMem_400aa1, %struct.Memory** %MEMORY
  %loadMem_400aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 7
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RDX.i415 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 15
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %RDX.i415
  %554 = load i64, i64* %RBP.i416
  %555 = sub i64 %554, 48
  %556 = load i64, i64* %PC.i414
  %557 = add i64 %556, 3
  store i64 %557, i64* %PC.i414
  %558 = trunc i64 %553 to i32
  %559 = inttoptr i64 %555 to i32*
  %560 = load i32, i32* %559
  %561 = add i32 %560, %558
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RDX.i415, align 8
  %563 = icmp ult i32 %561, %558
  %564 = icmp ult i32 %561, %560
  %565 = or i1 %563, %564
  %566 = zext i1 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %566, i8* %567, align 1
  %568 = and i32 %561, 255
  %569 = call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %572, i8* %573, align 1
  %574 = xor i32 %560, %558
  %575 = xor i32 %574, %561
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %578, i8* %579, align 1
  %580 = icmp eq i32 %561, 0
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %581, i8* %582, align 1
  %583 = lshr i32 %561, 31
  %584 = trunc i32 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %584, i8* %585, align 1
  %586 = lshr i32 %558, 31
  %587 = lshr i32 %560, 31
  %588 = xor i32 %583, %586
  %589 = xor i32 %583, %587
  %590 = add i32 %588, %589
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %592, i8* %593, align 1
  store %struct.Memory* %loadMem_400aa4, %struct.Memory** %MEMORY
  %loadMem_400aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 33
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %596 to i64*
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 7
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %EDX.i412 = bitcast %union.anon* %599 to i32*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 5
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %602 to i64*
  %603 = load i32, i32* %EDX.i412
  %604 = zext i32 %603 to i64
  %605 = load i64, i64* %PC.i411
  %606 = add i64 %605, 3
  store i64 %606, i64* %PC.i411
  %607 = shl i64 %604, 32
  %608 = ashr exact i64 %607, 32
  store i64 %608, i64* %RCX.i413, align 8
  store %struct.Memory* %loadMem_400aa7, %struct.Memory** %MEMORY
  %loadMem_400aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 1
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 5
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %619 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %618, i64 0, i64 0
  %XMM0.i410 = bitcast %union.VectorReg* %619 to %union.vec128_t*
  %620 = load i64, i64* %RAX.i408
  %621 = load i64, i64* %RCX.i409
  %622 = mul i64 %621, 8
  %623 = add i64 %622, %620
  %624 = bitcast %union.vec128_t* %XMM0.i410 to i8*
  %625 = load i64, i64* %PC.i407
  %626 = add i64 %625, 5
  store i64 %626, i64* %PC.i407
  %627 = bitcast i8* %624 to <2 x float>*
  %628 = load <2 x float>, <2 x float>* %627, align 1
  %629 = extractelement <2 x float> %628, i32 0
  %630 = inttoptr i64 %623 to float*
  store float %629, float* %630
  store %struct.Memory* %loadMem_400aaa, %struct.Memory** %MEMORY
  %loadMem_400aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 15
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %639 to i64*
  %640 = load i64, i64* %RBP.i406
  %641 = sub i64 %640, 16
  %642 = load i64, i64* %PC.i404
  %643 = add i64 %642, 4
  store i64 %643, i64* %PC.i404
  %644 = inttoptr i64 %641 to i64*
  %645 = load i64, i64* %644
  store i64 %645, i64* %RAX.i405, align 8
  store %struct.Memory* %loadMem_400aaf, %struct.Memory** %MEMORY
  %loadMem_400ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 5
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RCX.i402 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 15
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %654 to i64*
  %655 = load i64, i64* %RBP.i403
  %656 = sub i64 %655, 40
  %657 = load i64, i64* %PC.i401
  %658 = add i64 %657, 4
  store i64 %658, i64* %PC.i401
  %659 = inttoptr i64 %656 to i32*
  %660 = load i32, i32* %659
  %661 = sext i32 %660 to i64
  store i64 %661, i64* %RCX.i402, align 8
  store %struct.Memory* %loadMem_400ab3, %struct.Memory** %MEMORY
  %loadMem_400ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 33
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 1
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 5
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %672 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %671, i64 0, i64 0
  %YMM0.i400 = bitcast %union.VectorReg* %672 to %"class.std::bitset"*
  %673 = bitcast %"class.std::bitset"* %YMM0.i400 to i8*
  %674 = load i64, i64* %RAX.i398
  %675 = load i64, i64* %RCX.i399
  %676 = mul i64 %675, 8
  %677 = add i64 %674, 4
  %678 = add i64 %677, %676
  %679 = load i64, i64* %PC.i397
  %680 = add i64 %679, 6
  store i64 %680, i64* %PC.i397
  %681 = inttoptr i64 %678 to float*
  %682 = load float, float* %681
  %683 = bitcast i8* %673 to float*
  store float %682, float* %683, align 1
  %684 = getelementptr inbounds i8, i8* %673, i64 4
  %685 = bitcast i8* %684 to float*
  store float 0.000000e+00, float* %685, align 1
  %686 = getelementptr inbounds i8, i8* %673, i64 8
  %687 = bitcast i8* %686 to float*
  store float 0.000000e+00, float* %687, align 1
  %688 = getelementptr inbounds i8, i8* %673, i64 12
  %689 = bitcast i8* %688 to float*
  store float 0.000000e+00, float* %689, align 1
  store %struct.Memory* %loadMem_400ab7, %struct.Memory** %MEMORY
  %loadMem_400abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 33
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 15
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %698 to i64*
  %699 = load i64, i64* %RBP.i396
  %700 = sub i64 %699, 16
  %701 = load i64, i64* %PC.i394
  %702 = add i64 %701, 4
  store i64 %702, i64* %PC.i394
  %703 = inttoptr i64 %700 to i64*
  %704 = load i64, i64* %703
  store i64 %704, i64* %RAX.i395, align 8
  store %struct.Memory* %loadMem_400abd, %struct.Memory** %MEMORY
  %loadMem_400ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 33
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %707 to i64*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 7
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RDX.i392 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 15
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %713 to i64*
  %714 = load i64, i64* %RBP.i393
  %715 = sub i64 %714, 56
  %716 = load i64, i64* %PC.i391
  %717 = add i64 %716, 3
  store i64 %717, i64* %PC.i391
  %718 = inttoptr i64 %715 to i32*
  %719 = load i32, i32* %718
  %720 = zext i32 %719 to i64
  store i64 %720, i64* %RDX.i392, align 8
  store %struct.Memory* %loadMem_400ac1, %struct.Memory** %MEMORY
  %loadMem_400ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 33
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 7
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %RDX.i389 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 15
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RDX.i389
  %731 = load i64, i64* %RBP.i390
  %732 = sub i64 %731, 40
  %733 = load i64, i64* %PC.i388
  %734 = add i64 %733, 3
  store i64 %734, i64* %PC.i388
  %735 = trunc i64 %730 to i32
  %736 = inttoptr i64 %732 to i32*
  %737 = load i32, i32* %736
  %738 = add i32 %737, %735
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RDX.i389, align 8
  %740 = icmp ult i32 %738, %735
  %741 = icmp ult i32 %738, %737
  %742 = or i1 %740, %741
  %743 = zext i1 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %743, i8* %744, align 1
  %745 = and i32 %738, 255
  %746 = call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %749, i8* %750, align 1
  %751 = xor i32 %737, %735
  %752 = xor i32 %751, %738
  %753 = lshr i32 %752, 4
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %755, i8* %756, align 1
  %757 = icmp eq i32 %738, 0
  %758 = zext i1 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %758, i8* %759, align 1
  %760 = lshr i32 %738, 31
  %761 = trunc i32 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %761, i8* %762, align 1
  %763 = lshr i32 %735, 31
  %764 = lshr i32 %737, 31
  %765 = xor i32 %760, %763
  %766 = xor i32 %760, %764
  %767 = add i32 %765, %766
  %768 = icmp eq i32 %767, 2
  %769 = zext i1 %768 to i8
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %769, i8* %770, align 1
  store %struct.Memory* %loadMem_400ac4, %struct.Memory** %MEMORY
  %loadMem_400ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 7
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %EDX.i386 = bitcast %union.anon* %776 to i32*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 5
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %779 to i64*
  %780 = load i32, i32* %EDX.i386
  %781 = zext i32 %780 to i64
  %782 = load i64, i64* %PC.i385
  %783 = add i64 %782, 3
  store i64 %783, i64* %PC.i385
  %784 = shl i64 %781, 32
  %785 = ashr exact i64 %784, 32
  store i64 %785, i64* %RCX.i387, align 8
  store %struct.Memory* %loadMem_400ac7, %struct.Memory** %MEMORY
  %loadMem_400aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 1
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 5
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %796 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %795, i64 0, i64 0
  %YMM0.i384 = bitcast %union.VectorReg* %796 to %"class.std::bitset"*
  %797 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %798 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %799 = load i64, i64* %RAX.i382
  %800 = load i64, i64* %RCX.i383
  %801 = mul i64 %800, 8
  %802 = add i64 %799, 4
  %803 = add i64 %802, %801
  %804 = load i64, i64* %PC.i381
  %805 = add i64 %804, 6
  store i64 %805, i64* %PC.i381
  %806 = bitcast i8* %798 to <2 x float>*
  %807 = load <2 x float>, <2 x float>* %806, align 1
  %808 = getelementptr inbounds i8, i8* %798, i64 8
  %809 = bitcast i8* %808 to <2 x i32>*
  %810 = load <2 x i32>, <2 x i32>* %809, align 1
  %811 = inttoptr i64 %803 to float*
  %812 = load float, float* %811
  %813 = extractelement <2 x float> %807, i32 0
  %814 = fadd float %813, %812
  %815 = bitcast i8* %797 to float*
  store float %814, float* %815, align 1
  %816 = bitcast <2 x float> %807 to <2 x i32>
  %817 = extractelement <2 x i32> %816, i32 1
  %818 = getelementptr inbounds i8, i8* %797, i64 4
  %819 = bitcast i8* %818 to i32*
  store i32 %817, i32* %819, align 1
  %820 = extractelement <2 x i32> %810, i32 0
  %821 = getelementptr inbounds i8, i8* %797, i64 8
  %822 = bitcast i8* %821 to i32*
  store i32 %820, i32* %822, align 1
  %823 = extractelement <2 x i32> %810, i32 1
  %824 = getelementptr inbounds i8, i8* %797, i64 12
  %825 = bitcast i8* %824 to i32*
  store i32 %823, i32* %825, align 1
  store %struct.Memory* %loadMem_400aca, %struct.Memory** %MEMORY
  %loadMem_400ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 1
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 15
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RBP.i380
  %836 = sub i64 %835, 24
  %837 = load i64, i64* %PC.i378
  %838 = add i64 %837, 4
  store i64 %838, i64* %PC.i378
  %839 = inttoptr i64 %836 to i64*
  %840 = load i64, i64* %839
  store i64 %840, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_400ad0, %struct.Memory** %MEMORY
  %loadMem_400ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 7
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 15
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %RBP.i377
  %851 = sub i64 %850, 40
  %852 = load i64, i64* %PC.i375
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC.i375
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RDX.i376, align 8
  store %struct.Memory* %loadMem_400ad4, %struct.Memory** %MEMORY
  %loadMem_400ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 33
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 7
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %RDX.i373 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 15
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %RDX.i373
  %867 = load i64, i64* %RBP.i374
  %868 = sub i64 %867, 48
  %869 = load i64, i64* %PC.i372
  %870 = add i64 %869, 3
  store i64 %870, i64* %PC.i372
  %871 = trunc i64 %866 to i32
  %872 = inttoptr i64 %868 to i32*
  %873 = load i32, i32* %872
  %874 = add i32 %873, %871
  %875 = zext i32 %874 to i64
  store i64 %875, i64* %RDX.i373, align 8
  %876 = icmp ult i32 %874, %871
  %877 = icmp ult i32 %874, %873
  %878 = or i1 %876, %877
  %879 = zext i1 %878 to i8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %879, i8* %880, align 1
  %881 = and i32 %874, 255
  %882 = call i32 @llvm.ctpop.i32(i32 %881)
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = xor i8 %884, 1
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %885, i8* %886, align 1
  %887 = xor i32 %873, %871
  %888 = xor i32 %887, %874
  %889 = lshr i32 %888, 4
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %891, i8* %892, align 1
  %893 = icmp eq i32 %874, 0
  %894 = zext i1 %893 to i8
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %894, i8* %895, align 1
  %896 = lshr i32 %874, 31
  %897 = trunc i32 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %897, i8* %898, align 1
  %899 = lshr i32 %871, 31
  %900 = lshr i32 %873, 31
  %901 = xor i32 %896, %899
  %902 = xor i32 %896, %900
  %903 = add i32 %901, %902
  %904 = icmp eq i32 %903, 2
  %905 = zext i1 %904 to i8
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %905, i8* %906, align 1
  store %struct.Memory* %loadMem_400ad7, %struct.Memory** %MEMORY
  %loadMem_400ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 33
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 7
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %EDX.i370 = bitcast %union.anon* %912 to i32*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 5
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RCX.i371 = bitcast %union.anon* %915 to i64*
  %916 = load i32, i32* %EDX.i370
  %917 = zext i32 %916 to i64
  %918 = load i64, i64* %PC.i369
  %919 = add i64 %918, 3
  store i64 %919, i64* %PC.i369
  %920 = shl i64 %917, 32
  %921 = ashr exact i64 %920, 32
  store i64 %921, i64* %RCX.i371, align 8
  store %struct.Memory* %loadMem_400ada, %struct.Memory** %MEMORY
  %loadMem_400add = load %struct.Memory*, %struct.Memory** %MEMORY
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 33
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %924 to i64*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 1
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 5
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %932 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %931, i64 0, i64 0
  %XMM0.i368 = bitcast %union.VectorReg* %932 to %union.vec128_t*
  %933 = load i64, i64* %RAX.i366
  %934 = load i64, i64* %RCX.i367
  %935 = mul i64 %934, 8
  %936 = add i64 %933, 4
  %937 = add i64 %936, %935
  %938 = bitcast %union.vec128_t* %XMM0.i368 to i8*
  %939 = load i64, i64* %PC.i365
  %940 = add i64 %939, 6
  store i64 %940, i64* %PC.i365
  %941 = bitcast i8* %938 to <2 x float>*
  %942 = load <2 x float>, <2 x float>* %941, align 1
  %943 = extractelement <2 x float> %942, i32 0
  %944 = inttoptr i64 %937 to float*
  store float %943, float* %944
  store %struct.Memory* %loadMem_400add, %struct.Memory** %MEMORY
  %loadMem_400ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 1
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 15
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %953 to i64*
  %954 = load i64, i64* %RBP.i364
  %955 = sub i64 %954, 32
  %956 = load i64, i64* %PC.i362
  %957 = add i64 %956, 4
  store i64 %957, i64* %PC.i362
  %958 = inttoptr i64 %955 to i64*
  %959 = load i64, i64* %958
  store i64 %959, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_400ae3, %struct.Memory** %MEMORY
  %loadMem_400ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 7
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i361
  %970 = sub i64 %969, 48
  %971 = load i64, i64* %PC.i359
  %972 = add i64 %971, 3
  store i64 %972, i64* %PC.i359
  %973 = inttoptr i64 %970 to i32*
  %974 = load i32, i32* %973
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RDX.i360, align 8
  store %struct.Memory* %loadMem_400ae7, %struct.Memory** %MEMORY
  %loadMem_400aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 7
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %981 to i64*
  %982 = load i64, i64* %RDX.i358
  %983 = load i64, i64* %PC.i357
  %984 = add i64 %983, 3
  store i64 %984, i64* %PC.i357
  %985 = trunc i64 %982 to i32
  %986 = add i32 1, %985
  %987 = zext i32 %986 to i64
  store i64 %987, i64* %RDX.i358, align 8
  %988 = icmp ult i32 %986, %985
  %989 = icmp ult i32 %986, 1
  %990 = or i1 %988, %989
  %991 = zext i1 %990 to i8
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %991, i8* %992, align 1
  %993 = and i32 %986, 255
  %994 = call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %997, i8* %998, align 1
  %999 = xor i64 1, %982
  %1000 = trunc i64 %999 to i32
  %1001 = xor i32 %1000, %986
  %1002 = lshr i32 %1001, 4
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1004, i8* %1005, align 1
  %1006 = icmp eq i32 %986, 0
  %1007 = zext i1 %1006 to i8
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1007, i8* %1008, align 1
  %1009 = lshr i32 %986, 31
  %1010 = trunc i32 %1009 to i8
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1010, i8* %1011, align 1
  %1012 = lshr i32 %985, 31
  %1013 = xor i32 %1009, %1012
  %1014 = add i32 %1013, %1009
  %1015 = icmp eq i32 %1014, 2
  %1016 = zext i1 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1016, i8* %1017, align 1
  store %struct.Memory* %loadMem_400aea, %struct.Memory** %MEMORY
  %loadMem_400aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 7
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %EDX.i355 = bitcast %union.anon* %1023 to i32*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 5
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RCX.i356 = bitcast %union.anon* %1026 to i64*
  %1027 = load i32, i32* %EDX.i355
  %1028 = zext i32 %1027 to i64
  %1029 = load i64, i64* %PC.i354
  %1030 = add i64 %1029, 3
  store i64 %1030, i64* %PC.i354
  %1031 = shl i64 %1028, 32
  %1032 = ashr exact i64 %1031, 32
  store i64 %1032, i64* %RCX.i356, align 8
  store %struct.Memory* %loadMem_400aed, %struct.Memory** %MEMORY
  %loadMem_400af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 1
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 5
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RCX.i352 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1043 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1042, i64 0, i64 0
  %YMM0.i353 = bitcast %union.VectorReg* %1043 to %"class.std::bitset"*
  %1044 = bitcast %"class.std::bitset"* %YMM0.i353 to i8*
  %1045 = load i64, i64* %RAX.i351
  %1046 = load i64, i64* %RCX.i352
  %1047 = mul i64 %1046, 8
  %1048 = add i64 %1047, %1045
  %1049 = load i64, i64* %PC.i350
  %1050 = add i64 %1049, 5
  store i64 %1050, i64* %PC.i350
  %1051 = inttoptr i64 %1048 to float*
  %1052 = load float, float* %1051
  %1053 = bitcast i8* %1044 to float*
  store float %1052, float* %1053, align 1
  %1054 = getelementptr inbounds i8, i8* %1044, i64 4
  %1055 = bitcast i8* %1054 to float*
  store float 0.000000e+00, float* %1055, align 1
  %1056 = getelementptr inbounds i8, i8* %1044, i64 8
  %1057 = bitcast i8* %1056 to float*
  store float 0.000000e+00, float* %1057, align 1
  %1058 = getelementptr inbounds i8, i8* %1044, i64 12
  %1059 = bitcast i8* %1058 to float*
  store float 0.000000e+00, float* %1059, align 1
  store %struct.Memory* %loadMem_400af0, %struct.Memory** %MEMORY
  %loadMem_400af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 33
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 1
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 15
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %1068 to i64*
  %1069 = load i64, i64* %RBP.i349
  %1070 = sub i64 %1069, 16
  %1071 = load i64, i64* %PC.i347
  %1072 = add i64 %1071, 4
  store i64 %1072, i64* %PC.i347
  %1073 = inttoptr i64 %1070 to i64*
  %1074 = load i64, i64* %1073
  store i64 %1074, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_400af5, %struct.Memory** %MEMORY
  %loadMem_400af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 33
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 5
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %1080 to i64*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 15
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %1083 to i64*
  %1084 = load i64, i64* %RBP.i346
  %1085 = sub i64 %1084, 40
  %1086 = load i64, i64* %PC.i344
  %1087 = add i64 %1086, 4
  store i64 %1087, i64* %PC.i344
  %1088 = inttoptr i64 %1085 to i32*
  %1089 = load i32, i32* %1088
  %1090 = sext i32 %1089 to i64
  store i64 %1090, i64* %RCX.i345, align 8
  store %struct.Memory* %loadMem_400af9, %struct.Memory** %MEMORY
  %loadMem_400afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 1
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 5
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1100, i64 0, i64 1
  %YMM1.i343 = bitcast %union.VectorReg* %1101 to %"class.std::bitset"*
  %1102 = bitcast %"class.std::bitset"* %YMM1.i343 to i8*
  %1103 = load i64, i64* %RAX.i341
  %1104 = load i64, i64* %RCX.i342
  %1105 = mul i64 %1104, 8
  %1106 = add i64 %1105, %1103
  %1107 = load i64, i64* %PC.i340
  %1108 = add i64 %1107, 5
  store i64 %1108, i64* %PC.i340
  %1109 = inttoptr i64 %1106 to float*
  %1110 = load float, float* %1109
  %1111 = bitcast i8* %1102 to float*
  store float %1110, float* %1111, align 1
  %1112 = getelementptr inbounds i8, i8* %1102, i64 4
  %1113 = bitcast i8* %1112 to float*
  store float 0.000000e+00, float* %1113, align 1
  %1114 = getelementptr inbounds i8, i8* %1102, i64 8
  %1115 = bitcast i8* %1114 to float*
  store float 0.000000e+00, float* %1115, align 1
  %1116 = getelementptr inbounds i8, i8* %1102, i64 12
  %1117 = bitcast i8* %1116 to float*
  store float 0.000000e+00, float* %1117, align 1
  store %struct.Memory* %loadMem_400afd, %struct.Memory** %MEMORY
  %loadMem_400b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 33
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 1
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %RAX.i338 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 15
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %1126 to i64*
  %1127 = load i64, i64* %RBP.i339
  %1128 = sub i64 %1127, 16
  %1129 = load i64, i64* %PC.i337
  %1130 = add i64 %1129, 4
  store i64 %1130, i64* %PC.i337
  %1131 = inttoptr i64 %1128 to i64*
  %1132 = load i64, i64* %1131
  store i64 %1132, i64* %RAX.i338, align 8
  store %struct.Memory* %loadMem_400b02, %struct.Memory** %MEMORY
  %loadMem_400b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 7
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RDX.i335 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 15
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %1141 to i64*
  %1142 = load i64, i64* %RBP.i336
  %1143 = sub i64 %1142, 40
  %1144 = load i64, i64* %PC.i334
  %1145 = add i64 %1144, 3
  store i64 %1145, i64* %PC.i334
  %1146 = inttoptr i64 %1143 to i32*
  %1147 = load i32, i32* %1146
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RDX.i335, align 8
  store %struct.Memory* %loadMem_400b06, %struct.Memory** %MEMORY
  %loadMem_400b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 7
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RDX.i332 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 15
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %RDX.i332
  %1159 = load i64, i64* %RBP.i333
  %1160 = sub i64 %1159, 56
  %1161 = load i64, i64* %PC.i331
  %1162 = add i64 %1161, 3
  store i64 %1162, i64* %PC.i331
  %1163 = trunc i64 %1158 to i32
  %1164 = inttoptr i64 %1160 to i32*
  %1165 = load i32, i32* %1164
  %1166 = add i32 %1165, %1163
  %1167 = zext i32 %1166 to i64
  store i64 %1167, i64* %RDX.i332, align 8
  %1168 = icmp ult i32 %1166, %1163
  %1169 = icmp ult i32 %1166, %1165
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
  %1179 = xor i32 %1165, %1163
  %1180 = xor i32 %1179, %1166
  %1181 = lshr i32 %1180, 4
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1183, i8* %1184, align 1
  %1185 = icmp eq i32 %1166, 0
  %1186 = zext i1 %1185 to i8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1186, i8* %1187, align 1
  %1188 = lshr i32 %1166, 31
  %1189 = trunc i32 %1188 to i8
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1189, i8* %1190, align 1
  %1191 = lshr i32 %1163, 31
  %1192 = lshr i32 %1165, 31
  %1193 = xor i32 %1188, %1191
  %1194 = xor i32 %1188, %1192
  %1195 = add i32 %1193, %1194
  %1196 = icmp eq i32 %1195, 2
  %1197 = zext i1 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1197, i8* %1198, align 1
  store %struct.Memory* %loadMem_400b09, %struct.Memory** %MEMORY
  %loadMem_400b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 7
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %EDX.i329 = bitcast %union.anon* %1204 to i32*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 5
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %1207 to i64*
  %1208 = load i32, i32* %EDX.i329
  %1209 = zext i32 %1208 to i64
  %1210 = load i64, i64* %PC.i328
  %1211 = add i64 %1210, 3
  store i64 %1211, i64* %PC.i328
  %1212 = shl i64 %1209, 32
  %1213 = ashr exact i64 %1212, 32
  store i64 %1213, i64* %RCX.i330, align 8
  store %struct.Memory* %loadMem_400b0c, %struct.Memory** %MEMORY
  %loadMem_400b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 33
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1216 to i64*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 1
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 5
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1224 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1223, i64 0, i64 1
  %YMM1.i327 = bitcast %union.VectorReg* %1224 to %"class.std::bitset"*
  %1225 = bitcast %"class.std::bitset"* %YMM1.i327 to i8*
  %1226 = bitcast %"class.std::bitset"* %YMM1.i327 to i8*
  %1227 = load i64, i64* %RAX.i325
  %1228 = load i64, i64* %RCX.i326
  %1229 = mul i64 %1228, 8
  %1230 = add i64 %1229, %1227
  %1231 = load i64, i64* %PC.i324
  %1232 = add i64 %1231, 5
  store i64 %1232, i64* %PC.i324
  %1233 = bitcast i8* %1226 to <2 x float>*
  %1234 = load <2 x float>, <2 x float>* %1233, align 1
  %1235 = getelementptr inbounds i8, i8* %1226, i64 8
  %1236 = bitcast i8* %1235 to <2 x i32>*
  %1237 = load <2 x i32>, <2 x i32>* %1236, align 1
  %1238 = inttoptr i64 %1230 to float*
  %1239 = load float, float* %1238
  %1240 = extractelement <2 x float> %1234, i32 0
  %1241 = fsub float %1240, %1239
  %1242 = bitcast i8* %1225 to float*
  store float %1241, float* %1242, align 1
  %1243 = bitcast <2 x float> %1234 to <2 x i32>
  %1244 = extractelement <2 x i32> %1243, i32 1
  %1245 = getelementptr inbounds i8, i8* %1225, i64 4
  %1246 = bitcast i8* %1245 to i32*
  store i32 %1244, i32* %1246, align 1
  %1247 = extractelement <2 x i32> %1237, i32 0
  %1248 = getelementptr inbounds i8, i8* %1225, i64 8
  %1249 = bitcast i8* %1248 to i32*
  store i32 %1247, i32* %1249, align 1
  %1250 = extractelement <2 x i32> %1237, i32 1
  %1251 = getelementptr inbounds i8, i8* %1225, i64 12
  %1252 = bitcast i8* %1251 to i32*
  store i32 %1250, i32* %1252, align 1
  store %struct.Memory* %loadMem_400b0f, %struct.Memory** %MEMORY
  %loadMem_400b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 33
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1255 to i64*
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1257 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1256, i64 0, i64 0
  %YMM0.i322 = bitcast %union.VectorReg* %1257 to %"class.std::bitset"*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1258, i64 0, i64 1
  %XMM1.i323 = bitcast %union.VectorReg* %1259 to %union.vec128_t*
  %1260 = bitcast %"class.std::bitset"* %YMM0.i322 to i8*
  %1261 = bitcast %"class.std::bitset"* %YMM0.i322 to i8*
  %1262 = bitcast %union.vec128_t* %XMM1.i323 to i8*
  %1263 = load i64, i64* %PC.i321
  %1264 = add i64 %1263, 4
  store i64 %1264, i64* %PC.i321
  %1265 = bitcast i8* %1261 to <2 x float>*
  %1266 = load <2 x float>, <2 x float>* %1265, align 1
  %1267 = getelementptr inbounds i8, i8* %1261, i64 8
  %1268 = bitcast i8* %1267 to <2 x i32>*
  %1269 = load <2 x i32>, <2 x i32>* %1268, align 1
  %1270 = bitcast i8* %1262 to <2 x float>*
  %1271 = load <2 x float>, <2 x float>* %1270, align 1
  %1272 = extractelement <2 x float> %1266, i32 0
  %1273 = extractelement <2 x float> %1271, i32 0
  %1274 = fmul float %1272, %1273
  %1275 = bitcast i8* %1260 to float*
  store float %1274, float* %1275, align 1
  %1276 = bitcast <2 x float> %1266 to <2 x i32>
  %1277 = extractelement <2 x i32> %1276, i32 1
  %1278 = getelementptr inbounds i8, i8* %1260, i64 4
  %1279 = bitcast i8* %1278 to i32*
  store i32 %1277, i32* %1279, align 1
  %1280 = extractelement <2 x i32> %1269, i32 0
  %1281 = getelementptr inbounds i8, i8* %1260, i64 8
  %1282 = bitcast i8* %1281 to i32*
  store i32 %1280, i32* %1282, align 1
  %1283 = extractelement <2 x i32> %1269, i32 1
  %1284 = getelementptr inbounds i8, i8* %1260, i64 12
  %1285 = bitcast i8* %1284 to i32*
  store i32 %1283, i32* %1285, align 1
  store %struct.Memory* %loadMem_400b14, %struct.Memory** %MEMORY
  %loadMem_400b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 1
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 15
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %1294 to i64*
  %1295 = load i64, i64* %RBP.i320
  %1296 = sub i64 %1295, 32
  %1297 = load i64, i64* %PC.i318
  %1298 = add i64 %1297, 4
  store i64 %1298, i64* %PC.i318
  %1299 = inttoptr i64 %1296 to i64*
  %1300 = load i64, i64* %1299
  store i64 %1300, i64* %RAX.i319, align 8
  store %struct.Memory* %loadMem_400b18, %struct.Memory** %MEMORY
  %loadMem_400b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 33
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 7
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 15
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %1309 to i64*
  %1310 = load i64, i64* %RBP.i317
  %1311 = sub i64 %1310, 48
  %1312 = load i64, i64* %PC.i315
  %1313 = add i64 %1312, 3
  store i64 %1313, i64* %PC.i315
  %1314 = inttoptr i64 %1311 to i32*
  %1315 = load i32, i32* %1314
  %1316 = zext i32 %1315 to i64
  store i64 %1316, i64* %RDX.i316, align 8
  store %struct.Memory* %loadMem_400b1c, %struct.Memory** %MEMORY
  %loadMem_400b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 33
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 7
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %1322 to i64*
  %1323 = load i64, i64* %RDX.i314
  %1324 = load i64, i64* %PC.i313
  %1325 = add i64 %1324, 3
  store i64 %1325, i64* %PC.i313
  %1326 = trunc i64 %1323 to i32
  %1327 = add i32 1, %1326
  %1328 = zext i32 %1327 to i64
  store i64 %1328, i64* %RDX.i314, align 8
  %1329 = icmp ult i32 %1327, %1326
  %1330 = icmp ult i32 %1327, 1
  %1331 = or i1 %1329, %1330
  %1332 = zext i1 %1331 to i8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1332, i8* %1333, align 1
  %1334 = and i32 %1327, 255
  %1335 = call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1338, i8* %1339, align 1
  %1340 = xor i64 1, %1323
  %1341 = trunc i64 %1340 to i32
  %1342 = xor i32 %1341, %1327
  %1343 = lshr i32 %1342, 4
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1345, i8* %1346, align 1
  %1347 = icmp eq i32 %1327, 0
  %1348 = zext i1 %1347 to i8
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1348, i8* %1349, align 1
  %1350 = lshr i32 %1327, 31
  %1351 = trunc i32 %1350 to i8
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1351, i8* %1352, align 1
  %1353 = lshr i32 %1326, 31
  %1354 = xor i32 %1350, %1353
  %1355 = add i32 %1354, %1350
  %1356 = icmp eq i32 %1355, 2
  %1357 = zext i1 %1356 to i8
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1357, i8* %1358, align 1
  store %struct.Memory* %loadMem_400b1f, %struct.Memory** %MEMORY
  %loadMem_400b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 7
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %EDX.i311 = bitcast %union.anon* %1364 to i32*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 5
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %1367 to i64*
  %1368 = load i32, i32* %EDX.i311
  %1369 = zext i32 %1368 to i64
  %1370 = load i64, i64* %PC.i310
  %1371 = add i64 %1370, 3
  store i64 %1371, i64* %PC.i310
  %1372 = shl i64 %1369, 32
  %1373 = ashr exact i64 %1372, 32
  store i64 %1373, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_400b22, %struct.Memory** %MEMORY
  %loadMem_400b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 1
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 5
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1384 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1383, i64 0, i64 1
  %YMM1.i309 = bitcast %union.VectorReg* %1384 to %"class.std::bitset"*
  %1385 = bitcast %"class.std::bitset"* %YMM1.i309 to i8*
  %1386 = load i64, i64* %RAX.i307
  %1387 = load i64, i64* %RCX.i308
  %1388 = mul i64 %1387, 8
  %1389 = add i64 %1386, 4
  %1390 = add i64 %1389, %1388
  %1391 = load i64, i64* %PC.i306
  %1392 = add i64 %1391, 6
  store i64 %1392, i64* %PC.i306
  %1393 = inttoptr i64 %1390 to float*
  %1394 = load float, float* %1393
  %1395 = bitcast i8* %1385 to float*
  store float %1394, float* %1395, align 1
  %1396 = getelementptr inbounds i8, i8* %1385, i64 4
  %1397 = bitcast i8* %1396 to float*
  store float 0.000000e+00, float* %1397, align 1
  %1398 = getelementptr inbounds i8, i8* %1385, i64 8
  %1399 = bitcast i8* %1398 to float*
  store float 0.000000e+00, float* %1399, align 1
  %1400 = getelementptr inbounds i8, i8* %1385, i64 12
  %1401 = bitcast i8* %1400 to float*
  store float 0.000000e+00, float* %1401, align 1
  store %struct.Memory* %loadMem_400b25, %struct.Memory** %MEMORY
  %loadMem_400b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 1
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 15
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %1410 to i64*
  %1411 = load i64, i64* %RBP.i305
  %1412 = sub i64 %1411, 16
  %1413 = load i64, i64* %PC.i303
  %1414 = add i64 %1413, 4
  store i64 %1414, i64* %PC.i303
  %1415 = inttoptr i64 %1412 to i64*
  %1416 = load i64, i64* %1415
  store i64 %1416, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_400b2b, %struct.Memory** %MEMORY
  %loadMem_400b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 33
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 5
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %1422 to i64*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 15
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %1425 to i64*
  %1426 = load i64, i64* %RBP.i302
  %1427 = sub i64 %1426, 40
  %1428 = load i64, i64* %PC.i300
  %1429 = add i64 %1428, 4
  store i64 %1429, i64* %PC.i300
  %1430 = inttoptr i64 %1427 to i32*
  %1431 = load i32, i32* %1430
  %1432 = sext i32 %1431 to i64
  store i64 %1432, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_400b2f, %struct.Memory** %MEMORY
  %loadMem_400b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 1
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 5
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1443 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1442, i64 0, i64 2
  %YMM2.i299 = bitcast %union.VectorReg* %1443 to %"class.std::bitset"*
  %1444 = bitcast %"class.std::bitset"* %YMM2.i299 to i8*
  %1445 = load i64, i64* %RAX.i297
  %1446 = load i64, i64* %RCX.i298
  %1447 = mul i64 %1446, 8
  %1448 = add i64 %1445, 4
  %1449 = add i64 %1448, %1447
  %1450 = load i64, i64* %PC.i296
  %1451 = add i64 %1450, 6
  store i64 %1451, i64* %PC.i296
  %1452 = inttoptr i64 %1449 to float*
  %1453 = load float, float* %1452
  %1454 = bitcast i8* %1444 to float*
  store float %1453, float* %1454, align 1
  %1455 = getelementptr inbounds i8, i8* %1444, i64 4
  %1456 = bitcast i8* %1455 to float*
  store float 0.000000e+00, float* %1456, align 1
  %1457 = getelementptr inbounds i8, i8* %1444, i64 8
  %1458 = bitcast i8* %1457 to float*
  store float 0.000000e+00, float* %1458, align 1
  %1459 = getelementptr inbounds i8, i8* %1444, i64 12
  %1460 = bitcast i8* %1459 to float*
  store float 0.000000e+00, float* %1460, align 1
  store %struct.Memory* %loadMem_400b33, %struct.Memory** %MEMORY
  %loadMem_400b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1463 to i64*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 1
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 15
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %RBP.i295
  %1471 = sub i64 %1470, 16
  %1472 = load i64, i64* %PC.i293
  %1473 = add i64 %1472, 4
  store i64 %1473, i64* %PC.i293
  %1474 = inttoptr i64 %1471 to i64*
  %1475 = load i64, i64* %1474
  store i64 %1475, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_400b39, %struct.Memory** %MEMORY
  %loadMem_400b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 7
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RDX.i291 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 15
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %1484 to i64*
  %1485 = load i64, i64* %RBP.i292
  %1486 = sub i64 %1485, 40
  %1487 = load i64, i64* %PC.i290
  %1488 = add i64 %1487, 3
  store i64 %1488, i64* %PC.i290
  %1489 = inttoptr i64 %1486 to i32*
  %1490 = load i32, i32* %1489
  %1491 = zext i32 %1490 to i64
  store i64 %1491, i64* %RDX.i291, align 8
  store %struct.Memory* %loadMem_400b3d, %struct.Memory** %MEMORY
  %loadMem_400b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 7
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RDX.i288 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 15
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %1500 to i64*
  %1501 = load i64, i64* %RDX.i288
  %1502 = load i64, i64* %RBP.i289
  %1503 = sub i64 %1502, 56
  %1504 = load i64, i64* %PC.i287
  %1505 = add i64 %1504, 3
  store i64 %1505, i64* %PC.i287
  %1506 = trunc i64 %1501 to i32
  %1507 = inttoptr i64 %1503 to i32*
  %1508 = load i32, i32* %1507
  %1509 = add i32 %1508, %1506
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RDX.i288, align 8
  %1511 = icmp ult i32 %1509, %1506
  %1512 = icmp ult i32 %1509, %1508
  %1513 = or i1 %1511, %1512
  %1514 = zext i1 %1513 to i8
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1514, i8* %1515, align 1
  %1516 = and i32 %1509, 255
  %1517 = call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1520, i8* %1521, align 1
  %1522 = xor i32 %1508, %1506
  %1523 = xor i32 %1522, %1509
  %1524 = lshr i32 %1523, 4
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1526, i8* %1527, align 1
  %1528 = icmp eq i32 %1509, 0
  %1529 = zext i1 %1528 to i8
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1529, i8* %1530, align 1
  %1531 = lshr i32 %1509, 31
  %1532 = trunc i32 %1531 to i8
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1532, i8* %1533, align 1
  %1534 = lshr i32 %1506, 31
  %1535 = lshr i32 %1508, 31
  %1536 = xor i32 %1531, %1534
  %1537 = xor i32 %1531, %1535
  %1538 = add i32 %1536, %1537
  %1539 = icmp eq i32 %1538, 2
  %1540 = zext i1 %1539 to i8
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1540, i8* %1541, align 1
  store %struct.Memory* %loadMem_400b40, %struct.Memory** %MEMORY
  %loadMem_400b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 7
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %EDX.i285 = bitcast %union.anon* %1547 to i32*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 5
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %1550 to i64*
  %1551 = load i32, i32* %EDX.i285
  %1552 = zext i32 %1551 to i64
  %1553 = load i64, i64* %PC.i284
  %1554 = add i64 %1553, 3
  store i64 %1554, i64* %PC.i284
  %1555 = shl i64 %1552, 32
  %1556 = ashr exact i64 %1555, 32
  store i64 %1556, i64* %RCX.i286, align 8
  store %struct.Memory* %loadMem_400b43, %struct.Memory** %MEMORY
  %loadMem_400b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 1
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 5
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1567 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1566, i64 0, i64 2
  %YMM2.i283 = bitcast %union.VectorReg* %1567 to %"class.std::bitset"*
  %1568 = bitcast %"class.std::bitset"* %YMM2.i283 to i8*
  %1569 = bitcast %"class.std::bitset"* %YMM2.i283 to i8*
  %1570 = load i64, i64* %RAX.i281
  %1571 = load i64, i64* %RCX.i282
  %1572 = mul i64 %1571, 8
  %1573 = add i64 %1570, 4
  %1574 = add i64 %1573, %1572
  %1575 = load i64, i64* %PC.i280
  %1576 = add i64 %1575, 6
  store i64 %1576, i64* %PC.i280
  %1577 = bitcast i8* %1569 to <2 x float>*
  %1578 = load <2 x float>, <2 x float>* %1577, align 1
  %1579 = getelementptr inbounds i8, i8* %1569, i64 8
  %1580 = bitcast i8* %1579 to <2 x i32>*
  %1581 = load <2 x i32>, <2 x i32>* %1580, align 1
  %1582 = inttoptr i64 %1574 to float*
  %1583 = load float, float* %1582
  %1584 = extractelement <2 x float> %1578, i32 0
  %1585 = fsub float %1584, %1583
  %1586 = bitcast i8* %1568 to float*
  store float %1585, float* %1586, align 1
  %1587 = bitcast <2 x float> %1578 to <2 x i32>
  %1588 = extractelement <2 x i32> %1587, i32 1
  %1589 = getelementptr inbounds i8, i8* %1568, i64 4
  %1590 = bitcast i8* %1589 to i32*
  store i32 %1588, i32* %1590, align 1
  %1591 = extractelement <2 x i32> %1581, i32 0
  %1592 = getelementptr inbounds i8, i8* %1568, i64 8
  %1593 = bitcast i8* %1592 to i32*
  store i32 %1591, i32* %1593, align 1
  %1594 = extractelement <2 x i32> %1581, i32 1
  %1595 = getelementptr inbounds i8, i8* %1568, i64 12
  %1596 = bitcast i8* %1595 to i32*
  store i32 %1594, i32* %1596, align 1
  store %struct.Memory* %loadMem_400b46, %struct.Memory** %MEMORY
  %loadMem_400b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 33
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1601 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1600, i64 0, i64 1
  %YMM1.i278 = bitcast %union.VectorReg* %1601 to %"class.std::bitset"*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1603 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1602, i64 0, i64 2
  %XMM2.i279 = bitcast %union.VectorReg* %1603 to %union.vec128_t*
  %1604 = bitcast %"class.std::bitset"* %YMM1.i278 to i8*
  %1605 = bitcast %"class.std::bitset"* %YMM1.i278 to i8*
  %1606 = bitcast %union.vec128_t* %XMM2.i279 to i8*
  %1607 = load i64, i64* %PC.i277
  %1608 = add i64 %1607, 4
  store i64 %1608, i64* %PC.i277
  %1609 = bitcast i8* %1605 to <2 x float>*
  %1610 = load <2 x float>, <2 x float>* %1609, align 1
  %1611 = getelementptr inbounds i8, i8* %1605, i64 8
  %1612 = bitcast i8* %1611 to <2 x i32>*
  %1613 = load <2 x i32>, <2 x i32>* %1612, align 1
  %1614 = bitcast i8* %1606 to <2 x float>*
  %1615 = load <2 x float>, <2 x float>* %1614, align 1
  %1616 = extractelement <2 x float> %1610, i32 0
  %1617 = extractelement <2 x float> %1615, i32 0
  %1618 = fmul float %1616, %1617
  %1619 = bitcast i8* %1604 to float*
  store float %1618, float* %1619, align 1
  %1620 = bitcast <2 x float> %1610 to <2 x i32>
  %1621 = extractelement <2 x i32> %1620, i32 1
  %1622 = getelementptr inbounds i8, i8* %1604, i64 4
  %1623 = bitcast i8* %1622 to i32*
  store i32 %1621, i32* %1623, align 1
  %1624 = extractelement <2 x i32> %1613, i32 0
  %1625 = getelementptr inbounds i8, i8* %1604, i64 8
  %1626 = bitcast i8* %1625 to i32*
  store i32 %1624, i32* %1626, align 1
  %1627 = extractelement <2 x i32> %1613, i32 1
  %1628 = getelementptr inbounds i8, i8* %1604, i64 12
  %1629 = bitcast i8* %1628 to i32*
  store i32 %1627, i32* %1629, align 1
  store %struct.Memory* %loadMem_400b4c, %struct.Memory** %MEMORY
  %loadMem_400b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1633, i64 0, i64 0
  %YMM0.i275 = bitcast %union.VectorReg* %1634 to %"class.std::bitset"*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1635, i64 0, i64 1
  %XMM1.i276 = bitcast %union.VectorReg* %1636 to %union.vec128_t*
  %1637 = bitcast %"class.std::bitset"* %YMM0.i275 to i8*
  %1638 = bitcast %"class.std::bitset"* %YMM0.i275 to i8*
  %1639 = bitcast %union.vec128_t* %XMM1.i276 to i8*
  %1640 = load i64, i64* %PC.i274
  %1641 = add i64 %1640, 4
  store i64 %1641, i64* %PC.i274
  %1642 = bitcast i8* %1638 to <2 x float>*
  %1643 = load <2 x float>, <2 x float>* %1642, align 1
  %1644 = getelementptr inbounds i8, i8* %1638, i64 8
  %1645 = bitcast i8* %1644 to <2 x i32>*
  %1646 = load <2 x i32>, <2 x i32>* %1645, align 1
  %1647 = bitcast i8* %1639 to <2 x float>*
  %1648 = load <2 x float>, <2 x float>* %1647, align 1
  %1649 = extractelement <2 x float> %1643, i32 0
  %1650 = extractelement <2 x float> %1648, i32 0
  %1651 = fsub float %1649, %1650
  %1652 = bitcast i8* %1637 to float*
  store float %1651, float* %1652, align 1
  %1653 = bitcast <2 x float> %1643 to <2 x i32>
  %1654 = extractelement <2 x i32> %1653, i32 1
  %1655 = getelementptr inbounds i8, i8* %1637, i64 4
  %1656 = bitcast i8* %1655 to i32*
  store i32 %1654, i32* %1656, align 1
  %1657 = extractelement <2 x i32> %1646, i32 0
  %1658 = getelementptr inbounds i8, i8* %1637, i64 8
  %1659 = bitcast i8* %1658 to i32*
  store i32 %1657, i32* %1659, align 1
  %1660 = extractelement <2 x i32> %1646, i32 1
  %1661 = getelementptr inbounds i8, i8* %1637, i64 12
  %1662 = bitcast i8* %1661 to i32*
  store i32 %1660, i32* %1662, align 1
  store %struct.Memory* %loadMem_400b50, %struct.Memory** %MEMORY
  %loadMem_400b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 1
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 15
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %1671 to i64*
  %1672 = load i64, i64* %RBP.i273
  %1673 = sub i64 %1672, 24
  %1674 = load i64, i64* %PC.i271
  %1675 = add i64 %1674, 4
  store i64 %1675, i64* %PC.i271
  %1676 = inttoptr i64 %1673 to i64*
  %1677 = load i64, i64* %1676
  store i64 %1677, i64* %RAX.i272, align 8
  store %struct.Memory* %loadMem_400b54, %struct.Memory** %MEMORY
  %loadMem_400b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 7
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RDX.i269 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 15
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %1686 to i64*
  %1687 = load i64, i64* %RBP.i270
  %1688 = sub i64 %1687, 40
  %1689 = load i64, i64* %PC.i268
  %1690 = add i64 %1689, 3
  store i64 %1690, i64* %PC.i268
  %1691 = inttoptr i64 %1688 to i32*
  %1692 = load i32, i32* %1691
  %1693 = zext i32 %1692 to i64
  store i64 %1693, i64* %RDX.i269, align 8
  store %struct.Memory* %loadMem_400b58, %struct.Memory** %MEMORY
  %loadMem_400b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 7
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RDX.i266 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 15
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %1702 to i64*
  %1703 = load i64, i64* %RDX.i266
  %1704 = load i64, i64* %RBP.i267
  %1705 = sub i64 %1704, 44
  %1706 = load i64, i64* %PC.i265
  %1707 = add i64 %1706, 3
  store i64 %1707, i64* %PC.i265
  %1708 = trunc i64 %1703 to i32
  %1709 = inttoptr i64 %1705 to i32*
  %1710 = load i32, i32* %1709
  %1711 = add i32 %1710, %1708
  %1712 = zext i32 %1711 to i64
  store i64 %1712, i64* %RDX.i266, align 8
  %1713 = icmp ult i32 %1711, %1708
  %1714 = icmp ult i32 %1711, %1710
  %1715 = or i1 %1713, %1714
  %1716 = zext i1 %1715 to i8
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1716, i8* %1717, align 1
  %1718 = and i32 %1711, 255
  %1719 = call i32 @llvm.ctpop.i32(i32 %1718)
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  %1722 = xor i8 %1721, 1
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1722, i8* %1723, align 1
  %1724 = xor i32 %1710, %1708
  %1725 = xor i32 %1724, %1711
  %1726 = lshr i32 %1725, 4
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1728, i8* %1729, align 1
  %1730 = icmp eq i32 %1711, 0
  %1731 = zext i1 %1730 to i8
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1731, i8* %1732, align 1
  %1733 = lshr i32 %1711, 31
  %1734 = trunc i32 %1733 to i8
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1734, i8* %1735, align 1
  %1736 = lshr i32 %1708, 31
  %1737 = lshr i32 %1710, 31
  %1738 = xor i32 %1733, %1736
  %1739 = xor i32 %1733, %1737
  %1740 = add i32 %1738, %1739
  %1741 = icmp eq i32 %1740, 2
  %1742 = zext i1 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1742, i8* %1743, align 1
  store %struct.Memory* %loadMem_400b5b, %struct.Memory** %MEMORY
  %loadMem_400b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 33
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 7
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %EDX.i263 = bitcast %union.anon* %1749 to i32*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 5
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %1752 to i64*
  %1753 = load i32, i32* %EDX.i263
  %1754 = zext i32 %1753 to i64
  %1755 = load i64, i64* %PC.i262
  %1756 = add i64 %1755, 3
  store i64 %1756, i64* %PC.i262
  %1757 = shl i64 %1754, 32
  %1758 = ashr exact i64 %1757, 32
  store i64 %1758, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_400b5e, %struct.Memory** %MEMORY
  %loadMem_400b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 33
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 1
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 5
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1769 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1768, i64 0, i64 0
  %XMM0.i261 = bitcast %union.VectorReg* %1769 to %union.vec128_t*
  %1770 = load i64, i64* %RAX.i259
  %1771 = load i64, i64* %RCX.i260
  %1772 = mul i64 %1771, 8
  %1773 = add i64 %1772, %1770
  %1774 = bitcast %union.vec128_t* %XMM0.i261 to i8*
  %1775 = load i64, i64* %PC.i258
  %1776 = add i64 %1775, 5
  store i64 %1776, i64* %PC.i258
  %1777 = bitcast i8* %1774 to <2 x float>*
  %1778 = load <2 x float>, <2 x float>* %1777, align 1
  %1779 = extractelement <2 x float> %1778, i32 0
  %1780 = inttoptr i64 %1773 to float*
  store float %1779, float* %1780
  store %struct.Memory* %loadMem_400b61, %struct.Memory** %MEMORY
  %loadMem_400b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 33
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 1
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 15
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %RBP.i257
  %1791 = sub i64 %1790, 32
  %1792 = load i64, i64* %PC.i255
  %1793 = add i64 %1792, 4
  store i64 %1793, i64* %PC.i255
  %1794 = inttoptr i64 %1791 to i64*
  %1795 = load i64, i64* %1794
  store i64 %1795, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_400b66, %struct.Memory** %MEMORY
  %loadMem_400b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 33
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1798 to i64*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 7
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RDX.i253 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 15
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %1804 to i64*
  %1805 = load i64, i64* %RBP.i254
  %1806 = sub i64 %1805, 48
  %1807 = load i64, i64* %PC.i252
  %1808 = add i64 %1807, 3
  store i64 %1808, i64* %PC.i252
  %1809 = inttoptr i64 %1806 to i32*
  %1810 = load i32, i32* %1809
  %1811 = zext i32 %1810 to i64
  store i64 %1811, i64* %RDX.i253, align 8
  store %struct.Memory* %loadMem_400b6a, %struct.Memory** %MEMORY
  %loadMem_400b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 7
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RDX.i251 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %RDX.i251
  %1819 = load i64, i64* %PC.i250
  %1820 = add i64 %1819, 3
  store i64 %1820, i64* %PC.i250
  %1821 = trunc i64 %1818 to i32
  %1822 = add i32 1, %1821
  %1823 = zext i32 %1822 to i64
  store i64 %1823, i64* %RDX.i251, align 8
  %1824 = icmp ult i32 %1822, %1821
  %1825 = icmp ult i32 %1822, 1
  %1826 = or i1 %1824, %1825
  %1827 = zext i1 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1827, i8* %1828, align 1
  %1829 = and i32 %1822, 255
  %1830 = call i32 @llvm.ctpop.i32(i32 %1829)
  %1831 = trunc i32 %1830 to i8
  %1832 = and i8 %1831, 1
  %1833 = xor i8 %1832, 1
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1833, i8* %1834, align 1
  %1835 = xor i64 1, %1818
  %1836 = trunc i64 %1835 to i32
  %1837 = xor i32 %1836, %1822
  %1838 = lshr i32 %1837, 4
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1840, i8* %1841, align 1
  %1842 = icmp eq i32 %1822, 0
  %1843 = zext i1 %1842 to i8
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1843, i8* %1844, align 1
  %1845 = lshr i32 %1822, 31
  %1846 = trunc i32 %1845 to i8
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1846, i8* %1847, align 1
  %1848 = lshr i32 %1821, 31
  %1849 = xor i32 %1845, %1848
  %1850 = add i32 %1849, %1845
  %1851 = icmp eq i32 %1850, 2
  %1852 = zext i1 %1851 to i8
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1852, i8* %1853, align 1
  store %struct.Memory* %loadMem_400b6d, %struct.Memory** %MEMORY
  %loadMem_400b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 7
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %EDX.i248 = bitcast %union.anon* %1859 to i32*
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 5
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %1862 to i64*
  %1863 = load i32, i32* %EDX.i248
  %1864 = zext i32 %1863 to i64
  %1865 = load i64, i64* %PC.i247
  %1866 = add i64 %1865, 3
  store i64 %1866, i64* %PC.i247
  %1867 = shl i64 %1864, 32
  %1868 = ashr exact i64 %1867, 32
  store i64 %1868, i64* %RCX.i249, align 8
  store %struct.Memory* %loadMem_400b70, %struct.Memory** %MEMORY
  %loadMem_400b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 1
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 5
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %1877 to i64*
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1879 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1878, i64 0, i64 0
  %YMM0.i246 = bitcast %union.VectorReg* %1879 to %"class.std::bitset"*
  %1880 = bitcast %"class.std::bitset"* %YMM0.i246 to i8*
  %1881 = load i64, i64* %RAX.i244
  %1882 = load i64, i64* %RCX.i245
  %1883 = mul i64 %1882, 8
  %1884 = add i64 %1883, %1881
  %1885 = load i64, i64* %PC.i243
  %1886 = add i64 %1885, 5
  store i64 %1886, i64* %PC.i243
  %1887 = inttoptr i64 %1884 to float*
  %1888 = load float, float* %1887
  %1889 = bitcast i8* %1880 to float*
  store float %1888, float* %1889, align 1
  %1890 = getelementptr inbounds i8, i8* %1880, i64 4
  %1891 = bitcast i8* %1890 to float*
  store float 0.000000e+00, float* %1891, align 1
  %1892 = getelementptr inbounds i8, i8* %1880, i64 8
  %1893 = bitcast i8* %1892 to float*
  store float 0.000000e+00, float* %1893, align 1
  %1894 = getelementptr inbounds i8, i8* %1880, i64 12
  %1895 = bitcast i8* %1894 to float*
  store float 0.000000e+00, float* %1895, align 1
  store %struct.Memory* %loadMem_400b73, %struct.Memory** %MEMORY
  %loadMem_400b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 1
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 15
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %RBP.i242
  %1906 = sub i64 %1905, 16
  %1907 = load i64, i64* %PC.i240
  %1908 = add i64 %1907, 4
  store i64 %1908, i64* %PC.i240
  %1909 = inttoptr i64 %1906 to i64*
  %1910 = load i64, i64* %1909
  store i64 %1910, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_400b78, %struct.Memory** %MEMORY
  %loadMem_400b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 33
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 5
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %1916 to i64*
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 15
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %1919 to i64*
  %1920 = load i64, i64* %RBP.i239
  %1921 = sub i64 %1920, 40
  %1922 = load i64, i64* %PC.i237
  %1923 = add i64 %1922, 4
  store i64 %1923, i64* %PC.i237
  %1924 = inttoptr i64 %1921 to i32*
  %1925 = load i32, i32* %1924
  %1926 = sext i32 %1925 to i64
  store i64 %1926, i64* %RCX.i238, align 8
  store %struct.Memory* %loadMem_400b7c, %struct.Memory** %MEMORY
  %loadMem_400b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 33
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 1
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 5
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %1935 to i64*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1937 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1936, i64 0, i64 1
  %YMM1.i236 = bitcast %union.VectorReg* %1937 to %"class.std::bitset"*
  %1938 = bitcast %"class.std::bitset"* %YMM1.i236 to i8*
  %1939 = load i64, i64* %RAX.i234
  %1940 = load i64, i64* %RCX.i235
  %1941 = mul i64 %1940, 8
  %1942 = add i64 %1939, 4
  %1943 = add i64 %1942, %1941
  %1944 = load i64, i64* %PC.i233
  %1945 = add i64 %1944, 6
  store i64 %1945, i64* %PC.i233
  %1946 = inttoptr i64 %1943 to float*
  %1947 = load float, float* %1946
  %1948 = bitcast i8* %1938 to float*
  store float %1947, float* %1948, align 1
  %1949 = getelementptr inbounds i8, i8* %1938, i64 4
  %1950 = bitcast i8* %1949 to float*
  store float 0.000000e+00, float* %1950, align 1
  %1951 = getelementptr inbounds i8, i8* %1938, i64 8
  %1952 = bitcast i8* %1951 to float*
  store float 0.000000e+00, float* %1952, align 1
  %1953 = getelementptr inbounds i8, i8* %1938, i64 12
  %1954 = bitcast i8* %1953 to float*
  store float 0.000000e+00, float* %1954, align 1
  store %struct.Memory* %loadMem_400b80, %struct.Memory** %MEMORY
  %loadMem_400b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 33
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1957 to i64*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 1
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 15
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %1963 to i64*
  %1964 = load i64, i64* %RBP.i232
  %1965 = sub i64 %1964, 16
  %1966 = load i64, i64* %PC.i230
  %1967 = add i64 %1966, 4
  store i64 %1967, i64* %PC.i230
  %1968 = inttoptr i64 %1965 to i64*
  %1969 = load i64, i64* %1968
  store i64 %1969, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_400b86, %struct.Memory** %MEMORY
  %loadMem_400b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 33
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 7
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %RDX.i228 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 15
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %1978 to i64*
  %1979 = load i64, i64* %RBP.i229
  %1980 = sub i64 %1979, 40
  %1981 = load i64, i64* %PC.i227
  %1982 = add i64 %1981, 3
  store i64 %1982, i64* %PC.i227
  %1983 = inttoptr i64 %1980 to i32*
  %1984 = load i32, i32* %1983
  %1985 = zext i32 %1984 to i64
  store i64 %1985, i64* %RDX.i228, align 8
  store %struct.Memory* %loadMem_400b8a, %struct.Memory** %MEMORY
  %loadMem_400b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 33
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1988 to i64*
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 7
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %RDX.i225 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 15
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %1994 to i64*
  %1995 = load i64, i64* %RDX.i225
  %1996 = load i64, i64* %RBP.i226
  %1997 = sub i64 %1996, 56
  %1998 = load i64, i64* %PC.i224
  %1999 = add i64 %1998, 3
  store i64 %1999, i64* %PC.i224
  %2000 = trunc i64 %1995 to i32
  %2001 = inttoptr i64 %1997 to i32*
  %2002 = load i32, i32* %2001
  %2003 = add i32 %2002, %2000
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RDX.i225, align 8
  %2005 = icmp ult i32 %2003, %2000
  %2006 = icmp ult i32 %2003, %2002
  %2007 = or i1 %2005, %2006
  %2008 = zext i1 %2007 to i8
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2008, i8* %2009, align 1
  %2010 = and i32 %2003, 255
  %2011 = call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2014, i8* %2015, align 1
  %2016 = xor i32 %2002, %2000
  %2017 = xor i32 %2016, %2003
  %2018 = lshr i32 %2017, 4
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2020, i8* %2021, align 1
  %2022 = icmp eq i32 %2003, 0
  %2023 = zext i1 %2022 to i8
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2023, i8* %2024, align 1
  %2025 = lshr i32 %2003, 31
  %2026 = trunc i32 %2025 to i8
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2026, i8* %2027, align 1
  %2028 = lshr i32 %2000, 31
  %2029 = lshr i32 %2002, 31
  %2030 = xor i32 %2025, %2028
  %2031 = xor i32 %2025, %2029
  %2032 = add i32 %2030, %2031
  %2033 = icmp eq i32 %2032, 2
  %2034 = zext i1 %2033 to i8
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2034, i8* %2035, align 1
  store %struct.Memory* %loadMem_400b8d, %struct.Memory** %MEMORY
  %loadMem_400b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 33
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2038 to i64*
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 7
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %EDX.i222 = bitcast %union.anon* %2041 to i32*
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 5
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %2044 to i64*
  %2045 = load i32, i32* %EDX.i222
  %2046 = zext i32 %2045 to i64
  %2047 = load i64, i64* %PC.i221
  %2048 = add i64 %2047, 3
  store i64 %2048, i64* %PC.i221
  %2049 = shl i64 %2046, 32
  %2050 = ashr exact i64 %2049, 32
  store i64 %2050, i64* %RCX.i223, align 8
  store %struct.Memory* %loadMem_400b90, %struct.Memory** %MEMORY
  %loadMem_400b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 1
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %2056 to i64*
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 5
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2061 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2060, i64 0, i64 1
  %YMM1.i220 = bitcast %union.VectorReg* %2061 to %"class.std::bitset"*
  %2062 = bitcast %"class.std::bitset"* %YMM1.i220 to i8*
  %2063 = bitcast %"class.std::bitset"* %YMM1.i220 to i8*
  %2064 = load i64, i64* %RAX.i218
  %2065 = load i64, i64* %RCX.i219
  %2066 = mul i64 %2065, 8
  %2067 = add i64 %2064, 4
  %2068 = add i64 %2067, %2066
  %2069 = load i64, i64* %PC.i217
  %2070 = add i64 %2069, 6
  store i64 %2070, i64* %PC.i217
  %2071 = bitcast i8* %2063 to <2 x float>*
  %2072 = load <2 x float>, <2 x float>* %2071, align 1
  %2073 = getelementptr inbounds i8, i8* %2063, i64 8
  %2074 = bitcast i8* %2073 to <2 x i32>*
  %2075 = load <2 x i32>, <2 x i32>* %2074, align 1
  %2076 = inttoptr i64 %2068 to float*
  %2077 = load float, float* %2076
  %2078 = extractelement <2 x float> %2072, i32 0
  %2079 = fsub float %2078, %2077
  %2080 = bitcast i8* %2062 to float*
  store float %2079, float* %2080, align 1
  %2081 = bitcast <2 x float> %2072 to <2 x i32>
  %2082 = extractelement <2 x i32> %2081, i32 1
  %2083 = getelementptr inbounds i8, i8* %2062, i64 4
  %2084 = bitcast i8* %2083 to i32*
  store i32 %2082, i32* %2084, align 1
  %2085 = extractelement <2 x i32> %2075, i32 0
  %2086 = getelementptr inbounds i8, i8* %2062, i64 8
  %2087 = bitcast i8* %2086 to i32*
  store i32 %2085, i32* %2087, align 1
  %2088 = extractelement <2 x i32> %2075, i32 1
  %2089 = getelementptr inbounds i8, i8* %2062, i64 12
  %2090 = bitcast i8* %2089 to i32*
  store i32 %2088, i32* %2090, align 1
  store %struct.Memory* %loadMem_400b93, %struct.Memory** %MEMORY
  %loadMem_400b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2095 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2094, i64 0, i64 0
  %YMM0.i215 = bitcast %union.VectorReg* %2095 to %"class.std::bitset"*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2097 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2096, i64 0, i64 1
  %XMM1.i216 = bitcast %union.VectorReg* %2097 to %union.vec128_t*
  %2098 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %2099 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %2100 = bitcast %union.vec128_t* %XMM1.i216 to i8*
  %2101 = load i64, i64* %PC.i214
  %2102 = add i64 %2101, 4
  store i64 %2102, i64* %PC.i214
  %2103 = bitcast i8* %2099 to <2 x float>*
  %2104 = load <2 x float>, <2 x float>* %2103, align 1
  %2105 = getelementptr inbounds i8, i8* %2099, i64 8
  %2106 = bitcast i8* %2105 to <2 x i32>*
  %2107 = load <2 x i32>, <2 x i32>* %2106, align 1
  %2108 = bitcast i8* %2100 to <2 x float>*
  %2109 = load <2 x float>, <2 x float>* %2108, align 1
  %2110 = extractelement <2 x float> %2104, i32 0
  %2111 = extractelement <2 x float> %2109, i32 0
  %2112 = fmul float %2110, %2111
  %2113 = bitcast i8* %2098 to float*
  store float %2112, float* %2113, align 1
  %2114 = bitcast <2 x float> %2104 to <2 x i32>
  %2115 = extractelement <2 x i32> %2114, i32 1
  %2116 = getelementptr inbounds i8, i8* %2098, i64 4
  %2117 = bitcast i8* %2116 to i32*
  store i32 %2115, i32* %2117, align 1
  %2118 = extractelement <2 x i32> %2107, i32 0
  %2119 = getelementptr inbounds i8, i8* %2098, i64 8
  %2120 = bitcast i8* %2119 to i32*
  store i32 %2118, i32* %2120, align 1
  %2121 = extractelement <2 x i32> %2107, i32 1
  %2122 = getelementptr inbounds i8, i8* %2098, i64 12
  %2123 = bitcast i8* %2122 to i32*
  store i32 %2121, i32* %2123, align 1
  store %struct.Memory* %loadMem_400b99, %struct.Memory** %MEMORY
  %loadMem_400b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 1
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 15
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RBP.i213
  %2134 = sub i64 %2133, 32
  %2135 = load i64, i64* %PC.i211
  %2136 = add i64 %2135, 4
  store i64 %2136, i64* %PC.i211
  %2137 = inttoptr i64 %2134 to i64*
  %2138 = load i64, i64* %2137
  store i64 %2138, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_400b9d, %struct.Memory** %MEMORY
  %loadMem_400ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 7
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RDX.i209 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 15
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %2147 to i64*
  %2148 = load i64, i64* %RBP.i210
  %2149 = sub i64 %2148, 48
  %2150 = load i64, i64* %PC.i208
  %2151 = add i64 %2150, 3
  store i64 %2151, i64* %PC.i208
  %2152 = inttoptr i64 %2149 to i32*
  %2153 = load i32, i32* %2152
  %2154 = zext i32 %2153 to i64
  store i64 %2154, i64* %RDX.i209, align 8
  store %struct.Memory* %loadMem_400ba1, %struct.Memory** %MEMORY
  %loadMem_400ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 33
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 7
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RDX.i207 = bitcast %union.anon* %2160 to i64*
  %2161 = load i64, i64* %RDX.i207
  %2162 = load i64, i64* %PC.i206
  %2163 = add i64 %2162, 3
  store i64 %2163, i64* %PC.i206
  %2164 = trunc i64 %2161 to i32
  %2165 = add i32 1, %2164
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RDX.i207, align 8
  %2167 = icmp ult i32 %2165, %2164
  %2168 = icmp ult i32 %2165, 1
  %2169 = or i1 %2167, %2168
  %2170 = zext i1 %2169 to i8
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2170, i8* %2171, align 1
  %2172 = and i32 %2165, 255
  %2173 = call i32 @llvm.ctpop.i32(i32 %2172)
  %2174 = trunc i32 %2173 to i8
  %2175 = and i8 %2174, 1
  %2176 = xor i8 %2175, 1
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2176, i8* %2177, align 1
  %2178 = xor i64 1, %2161
  %2179 = trunc i64 %2178 to i32
  %2180 = xor i32 %2179, %2165
  %2181 = lshr i32 %2180, 4
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2183, i8* %2184, align 1
  %2185 = icmp eq i32 %2165, 0
  %2186 = zext i1 %2185 to i8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2186, i8* %2187, align 1
  %2188 = lshr i32 %2165, 31
  %2189 = trunc i32 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2189, i8* %2190, align 1
  %2191 = lshr i32 %2164, 31
  %2192 = xor i32 %2188, %2191
  %2193 = add i32 %2192, %2188
  %2194 = icmp eq i32 %2193, 2
  %2195 = zext i1 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2195, i8* %2196, align 1
  store %struct.Memory* %loadMem_400ba4, %struct.Memory** %MEMORY
  %loadMem_400ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 33
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 7
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %EDX.i204 = bitcast %union.anon* %2202 to i32*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 5
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %2205 to i64*
  %2206 = load i32, i32* %EDX.i204
  %2207 = zext i32 %2206 to i64
  %2208 = load i64, i64* %PC.i203
  %2209 = add i64 %2208, 3
  store i64 %2209, i64* %PC.i203
  %2210 = shl i64 %2207, 32
  %2211 = ashr exact i64 %2210, 32
  store i64 %2211, i64* %RCX.i205, align 8
  store %struct.Memory* %loadMem_400ba7, %struct.Memory** %MEMORY
  %loadMem_400baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 1
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 5
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2221, i64 0, i64 1
  %YMM1.i202 = bitcast %union.VectorReg* %2222 to %"class.std::bitset"*
  %2223 = bitcast %"class.std::bitset"* %YMM1.i202 to i8*
  %2224 = load i64, i64* %RAX.i200
  %2225 = load i64, i64* %RCX.i201
  %2226 = mul i64 %2225, 8
  %2227 = add i64 %2224, 4
  %2228 = add i64 %2227, %2226
  %2229 = load i64, i64* %PC.i199
  %2230 = add i64 %2229, 6
  store i64 %2230, i64* %PC.i199
  %2231 = inttoptr i64 %2228 to float*
  %2232 = load float, float* %2231
  %2233 = bitcast i8* %2223 to float*
  store float %2232, float* %2233, align 1
  %2234 = getelementptr inbounds i8, i8* %2223, i64 4
  %2235 = bitcast i8* %2234 to float*
  store float 0.000000e+00, float* %2235, align 1
  %2236 = getelementptr inbounds i8, i8* %2223, i64 8
  %2237 = bitcast i8* %2236 to float*
  store float 0.000000e+00, float* %2237, align 1
  %2238 = getelementptr inbounds i8, i8* %2223, i64 12
  %2239 = bitcast i8* %2238 to float*
  store float 0.000000e+00, float* %2239, align 1
  store %struct.Memory* %loadMem_400baa, %struct.Memory** %MEMORY
  %loadMem_400bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 33
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 1
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 15
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %2248 to i64*
  %2249 = load i64, i64* %RBP.i198
  %2250 = sub i64 %2249, 16
  %2251 = load i64, i64* %PC.i196
  %2252 = add i64 %2251, 4
  store i64 %2252, i64* %PC.i196
  %2253 = inttoptr i64 %2250 to i64*
  %2254 = load i64, i64* %2253
  store i64 %2254, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_400bb0, %struct.Memory** %MEMORY
  %loadMem_400bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 33
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 5
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 15
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %2263 to i64*
  %2264 = load i64, i64* %RBP.i195
  %2265 = sub i64 %2264, 40
  %2266 = load i64, i64* %PC.i193
  %2267 = add i64 %2266, 4
  store i64 %2267, i64* %PC.i193
  %2268 = inttoptr i64 %2265 to i32*
  %2269 = load i32, i32* %2268
  %2270 = sext i32 %2269 to i64
  store i64 %2270, i64* %RCX.i194, align 8
  store %struct.Memory* %loadMem_400bb4, %struct.Memory** %MEMORY
  %loadMem_400bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 33
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 1
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 5
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2280, i64 0, i64 2
  %YMM2.i192 = bitcast %union.VectorReg* %2281 to %"class.std::bitset"*
  %2282 = bitcast %"class.std::bitset"* %YMM2.i192 to i8*
  %2283 = load i64, i64* %RAX.i190
  %2284 = load i64, i64* %RCX.i191
  %2285 = mul i64 %2284, 8
  %2286 = add i64 %2285, %2283
  %2287 = load i64, i64* %PC.i189
  %2288 = add i64 %2287, 5
  store i64 %2288, i64* %PC.i189
  %2289 = inttoptr i64 %2286 to float*
  %2290 = load float, float* %2289
  %2291 = bitcast i8* %2282 to float*
  store float %2290, float* %2291, align 1
  %2292 = getelementptr inbounds i8, i8* %2282, i64 4
  %2293 = bitcast i8* %2292 to float*
  store float 0.000000e+00, float* %2293, align 1
  %2294 = getelementptr inbounds i8, i8* %2282, i64 8
  %2295 = bitcast i8* %2294 to float*
  store float 0.000000e+00, float* %2295, align 1
  %2296 = getelementptr inbounds i8, i8* %2282, i64 12
  %2297 = bitcast i8* %2296 to float*
  store float 0.000000e+00, float* %2297, align 1
  store %struct.Memory* %loadMem_400bb8, %struct.Memory** %MEMORY
  %loadMem_400bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 33
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 1
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 15
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %2306 to i64*
  %2307 = load i64, i64* %RBP.i188
  %2308 = sub i64 %2307, 16
  %2309 = load i64, i64* %PC.i186
  %2310 = add i64 %2309, 4
  store i64 %2310, i64* %PC.i186
  %2311 = inttoptr i64 %2308 to i64*
  %2312 = load i64, i64* %2311
  store i64 %2312, i64* %RAX.i187, align 8
  store %struct.Memory* %loadMem_400bbd, %struct.Memory** %MEMORY
  %loadMem_400bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 7
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RDX.i184 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 15
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %2321 to i64*
  %2322 = load i64, i64* %RBP.i185
  %2323 = sub i64 %2322, 40
  %2324 = load i64, i64* %PC.i183
  %2325 = add i64 %2324, 3
  store i64 %2325, i64* %PC.i183
  %2326 = inttoptr i64 %2323 to i32*
  %2327 = load i32, i32* %2326
  %2328 = zext i32 %2327 to i64
  store i64 %2328, i64* %RDX.i184, align 8
  store %struct.Memory* %loadMem_400bc1, %struct.Memory** %MEMORY
  %loadMem_400bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 7
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 15
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %2337 to i64*
  %2338 = load i64, i64* %RDX.i181
  %2339 = load i64, i64* %RBP.i182
  %2340 = sub i64 %2339, 56
  %2341 = load i64, i64* %PC.i180
  %2342 = add i64 %2341, 3
  store i64 %2342, i64* %PC.i180
  %2343 = trunc i64 %2338 to i32
  %2344 = inttoptr i64 %2340 to i32*
  %2345 = load i32, i32* %2344
  %2346 = add i32 %2345, %2343
  %2347 = zext i32 %2346 to i64
  store i64 %2347, i64* %RDX.i181, align 8
  %2348 = icmp ult i32 %2346, %2343
  %2349 = icmp ult i32 %2346, %2345
  %2350 = or i1 %2348, %2349
  %2351 = zext i1 %2350 to i8
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2351, i8* %2352, align 1
  %2353 = and i32 %2346, 255
  %2354 = call i32 @llvm.ctpop.i32(i32 %2353)
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = xor i8 %2356, 1
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2357, i8* %2358, align 1
  %2359 = xor i32 %2345, %2343
  %2360 = xor i32 %2359, %2346
  %2361 = lshr i32 %2360, 4
  %2362 = trunc i32 %2361 to i8
  %2363 = and i8 %2362, 1
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2363, i8* %2364, align 1
  %2365 = icmp eq i32 %2346, 0
  %2366 = zext i1 %2365 to i8
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2366, i8* %2367, align 1
  %2368 = lshr i32 %2346, 31
  %2369 = trunc i32 %2368 to i8
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2369, i8* %2370, align 1
  %2371 = lshr i32 %2343, 31
  %2372 = lshr i32 %2345, 31
  %2373 = xor i32 %2368, %2371
  %2374 = xor i32 %2368, %2372
  %2375 = add i32 %2373, %2374
  %2376 = icmp eq i32 %2375, 2
  %2377 = zext i1 %2376 to i8
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2377, i8* %2378, align 1
  store %struct.Memory* %loadMem_400bc4, %struct.Memory** %MEMORY
  %loadMem_400bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 33
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2381 to i64*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 7
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %EDX.i178 = bitcast %union.anon* %2384 to i32*
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 5
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %2387 to i64*
  %2388 = load i32, i32* %EDX.i178
  %2389 = zext i32 %2388 to i64
  %2390 = load i64, i64* %PC.i177
  %2391 = add i64 %2390, 3
  store i64 %2391, i64* %PC.i177
  %2392 = shl i64 %2389, 32
  %2393 = ashr exact i64 %2392, 32
  store i64 %2393, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_400bc7, %struct.Memory** %MEMORY
  %loadMem_400bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 33
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 1
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 5
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2404 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2403, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2404 to %"class.std::bitset"*
  %2405 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2406 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2407 = load i64, i64* %RAX.i175
  %2408 = load i64, i64* %RCX.i176
  %2409 = mul i64 %2408, 8
  %2410 = add i64 %2409, %2407
  %2411 = load i64, i64* %PC.i174
  %2412 = add i64 %2411, 5
  store i64 %2412, i64* %PC.i174
  %2413 = bitcast i8* %2406 to <2 x float>*
  %2414 = load <2 x float>, <2 x float>* %2413, align 1
  %2415 = getelementptr inbounds i8, i8* %2406, i64 8
  %2416 = bitcast i8* %2415 to <2 x i32>*
  %2417 = load <2 x i32>, <2 x i32>* %2416, align 1
  %2418 = inttoptr i64 %2410 to float*
  %2419 = load float, float* %2418
  %2420 = extractelement <2 x float> %2414, i32 0
  %2421 = fsub float %2420, %2419
  %2422 = bitcast i8* %2405 to float*
  store float %2421, float* %2422, align 1
  %2423 = bitcast <2 x float> %2414 to <2 x i32>
  %2424 = extractelement <2 x i32> %2423, i32 1
  %2425 = getelementptr inbounds i8, i8* %2405, i64 4
  %2426 = bitcast i8* %2425 to i32*
  store i32 %2424, i32* %2426, align 1
  %2427 = extractelement <2 x i32> %2417, i32 0
  %2428 = getelementptr inbounds i8, i8* %2405, i64 8
  %2429 = bitcast i8* %2428 to i32*
  store i32 %2427, i32* %2429, align 1
  %2430 = extractelement <2 x i32> %2417, i32 1
  %2431 = getelementptr inbounds i8, i8* %2405, i64 12
  %2432 = bitcast i8* %2431 to i32*
  store i32 %2430, i32* %2432, align 1
  store %struct.Memory* %loadMem_400bca, %struct.Memory** %MEMORY
  %loadMem_400bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 33
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2435 to i64*
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2437 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2436, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2437 to %"class.std::bitset"*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2438, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2439 to %union.vec128_t*
  %2440 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2441 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2442 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2443 = load i64, i64* %PC.i173
  %2444 = add i64 %2443, 4
  store i64 %2444, i64* %PC.i173
  %2445 = bitcast i8* %2441 to <2 x float>*
  %2446 = load <2 x float>, <2 x float>* %2445, align 1
  %2447 = getelementptr inbounds i8, i8* %2441, i64 8
  %2448 = bitcast i8* %2447 to <2 x i32>*
  %2449 = load <2 x i32>, <2 x i32>* %2448, align 1
  %2450 = bitcast i8* %2442 to <2 x float>*
  %2451 = load <2 x float>, <2 x float>* %2450, align 1
  %2452 = extractelement <2 x float> %2446, i32 0
  %2453 = extractelement <2 x float> %2451, i32 0
  %2454 = fmul float %2452, %2453
  %2455 = bitcast i8* %2440 to float*
  store float %2454, float* %2455, align 1
  %2456 = bitcast <2 x float> %2446 to <2 x i32>
  %2457 = extractelement <2 x i32> %2456, i32 1
  %2458 = getelementptr inbounds i8, i8* %2440, i64 4
  %2459 = bitcast i8* %2458 to i32*
  store i32 %2457, i32* %2459, align 1
  %2460 = extractelement <2 x i32> %2449, i32 0
  %2461 = getelementptr inbounds i8, i8* %2440, i64 8
  %2462 = bitcast i8* %2461 to i32*
  store i32 %2460, i32* %2462, align 1
  %2463 = extractelement <2 x i32> %2449, i32 1
  %2464 = getelementptr inbounds i8, i8* %2440, i64 12
  %2465 = bitcast i8* %2464 to i32*
  store i32 %2463, i32* %2465, align 1
  store %struct.Memory* %loadMem_400bcf, %struct.Memory** %MEMORY
  %loadMem_400bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 33
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2470 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2469, i64 0, i64 0
  %YMM0.i172 = bitcast %union.VectorReg* %2470 to %"class.std::bitset"*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2472 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2471, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2472 to %union.vec128_t*
  %2473 = bitcast %"class.std::bitset"* %YMM0.i172 to i8*
  %2474 = bitcast %"class.std::bitset"* %YMM0.i172 to i8*
  %2475 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2476 = load i64, i64* %PC.i171
  %2477 = add i64 %2476, 4
  store i64 %2477, i64* %PC.i171
  %2478 = bitcast i8* %2474 to <2 x float>*
  %2479 = load <2 x float>, <2 x float>* %2478, align 1
  %2480 = getelementptr inbounds i8, i8* %2474, i64 8
  %2481 = bitcast i8* %2480 to <2 x i32>*
  %2482 = load <2 x i32>, <2 x i32>* %2481, align 1
  %2483 = bitcast i8* %2475 to <2 x float>*
  %2484 = load <2 x float>, <2 x float>* %2483, align 1
  %2485 = extractelement <2 x float> %2479, i32 0
  %2486 = extractelement <2 x float> %2484, i32 0
  %2487 = fadd float %2485, %2486
  %2488 = bitcast i8* %2473 to float*
  store float %2487, float* %2488, align 1
  %2489 = bitcast <2 x float> %2479 to <2 x i32>
  %2490 = extractelement <2 x i32> %2489, i32 1
  %2491 = getelementptr inbounds i8, i8* %2473, i64 4
  %2492 = bitcast i8* %2491 to i32*
  store i32 %2490, i32* %2492, align 1
  %2493 = extractelement <2 x i32> %2482, i32 0
  %2494 = getelementptr inbounds i8, i8* %2473, i64 8
  %2495 = bitcast i8* %2494 to i32*
  store i32 %2493, i32* %2495, align 1
  %2496 = extractelement <2 x i32> %2482, i32 1
  %2497 = getelementptr inbounds i8, i8* %2473, i64 12
  %2498 = bitcast i8* %2497 to i32*
  store i32 %2496, i32* %2498, align 1
  store %struct.Memory* %loadMem_400bd3, %struct.Memory** %MEMORY
  %loadMem_400bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 1
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 15
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %RBP.i170
  %2509 = sub i64 %2508, 24
  %2510 = load i64, i64* %PC.i168
  %2511 = add i64 %2510, 4
  store i64 %2511, i64* %PC.i168
  %2512 = inttoptr i64 %2509 to i64*
  %2513 = load i64, i64* %2512
  store i64 %2513, i64* %RAX.i169, align 8
  store %struct.Memory* %loadMem_400bd7, %struct.Memory** %MEMORY
  %loadMem_400bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 7
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 15
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %2522 to i64*
  %2523 = load i64, i64* %RBP.i167
  %2524 = sub i64 %2523, 40
  %2525 = load i64, i64* %PC.i165
  %2526 = add i64 %2525, 3
  store i64 %2526, i64* %PC.i165
  %2527 = inttoptr i64 %2524 to i32*
  %2528 = load i32, i32* %2527
  %2529 = zext i32 %2528 to i64
  store i64 %2529, i64* %RDX.i166, align 8
  store %struct.Memory* %loadMem_400bdb, %struct.Memory** %MEMORY
  %loadMem_400bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 33
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2532 to i64*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 7
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RDX.i163 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 15
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %2538 to i64*
  %2539 = load i64, i64* %RDX.i163
  %2540 = load i64, i64* %RBP.i164
  %2541 = sub i64 %2540, 44
  %2542 = load i64, i64* %PC.i162
  %2543 = add i64 %2542, 3
  store i64 %2543, i64* %PC.i162
  %2544 = trunc i64 %2539 to i32
  %2545 = inttoptr i64 %2541 to i32*
  %2546 = load i32, i32* %2545
  %2547 = add i32 %2546, %2544
  %2548 = zext i32 %2547 to i64
  store i64 %2548, i64* %RDX.i163, align 8
  %2549 = icmp ult i32 %2547, %2544
  %2550 = icmp ult i32 %2547, %2546
  %2551 = or i1 %2549, %2550
  %2552 = zext i1 %2551 to i8
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2552, i8* %2553, align 1
  %2554 = and i32 %2547, 255
  %2555 = call i32 @llvm.ctpop.i32(i32 %2554)
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  %2558 = xor i8 %2557, 1
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2558, i8* %2559, align 1
  %2560 = xor i32 %2546, %2544
  %2561 = xor i32 %2560, %2547
  %2562 = lshr i32 %2561, 4
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2564, i8* %2565, align 1
  %2566 = icmp eq i32 %2547, 0
  %2567 = zext i1 %2566 to i8
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2567, i8* %2568, align 1
  %2569 = lshr i32 %2547, 31
  %2570 = trunc i32 %2569 to i8
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2570, i8* %2571, align 1
  %2572 = lshr i32 %2544, 31
  %2573 = lshr i32 %2546, 31
  %2574 = xor i32 %2569, %2572
  %2575 = xor i32 %2569, %2573
  %2576 = add i32 %2574, %2575
  %2577 = icmp eq i32 %2576, 2
  %2578 = zext i1 %2577 to i8
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2578, i8* %2579, align 1
  store %struct.Memory* %loadMem_400bde, %struct.Memory** %MEMORY
  %loadMem_400be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 7
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %EDX.i160 = bitcast %union.anon* %2585 to i32*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 5
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %2588 to i64*
  %2589 = load i32, i32* %EDX.i160
  %2590 = zext i32 %2589 to i64
  %2591 = load i64, i64* %PC.i159
  %2592 = add i64 %2591, 3
  store i64 %2592, i64* %PC.i159
  %2593 = shl i64 %2590, 32
  %2594 = ashr exact i64 %2593, 32
  store i64 %2594, i64* %RCX.i161, align 8
  store %struct.Memory* %loadMem_400be1, %struct.Memory** %MEMORY
  %loadMem_400be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 33
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 1
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %2600 to i64*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 5
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2605 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2604, i64 0, i64 0
  %XMM0.i158 = bitcast %union.VectorReg* %2605 to %union.vec128_t*
  %2606 = load i64, i64* %RAX.i156
  %2607 = load i64, i64* %RCX.i157
  %2608 = mul i64 %2607, 8
  %2609 = add i64 %2606, 4
  %2610 = add i64 %2609, %2608
  %2611 = bitcast %union.vec128_t* %XMM0.i158 to i8*
  %2612 = load i64, i64* %PC.i155
  %2613 = add i64 %2612, 6
  store i64 %2613, i64* %PC.i155
  %2614 = bitcast i8* %2611 to <2 x float>*
  %2615 = load <2 x float>, <2 x float>* %2614, align 1
  %2616 = extractelement <2 x float> %2615, i32 0
  %2617 = inttoptr i64 %2610 to float*
  store float %2616, float* %2617
  store %struct.Memory* %loadMem_400be4, %struct.Memory** %MEMORY
  %loadMem_400bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 7
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RDX.i153 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 15
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RBP.i154
  %2628 = sub i64 %2627, 40
  %2629 = load i64, i64* %PC.i152
  %2630 = add i64 %2629, 3
  store i64 %2630, i64* %PC.i152
  %2631 = inttoptr i64 %2628 to i32*
  %2632 = load i32, i32* %2631
  %2633 = zext i32 %2632 to i64
  store i64 %2633, i64* %RDX.i153, align 8
  store %struct.Memory* %loadMem_400bea, %struct.Memory** %MEMORY
  %loadMem_400bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 33
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2636 to i64*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 7
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %2639 to i64*
  %2640 = load i64, i64* %RDX.i151
  %2641 = load i64, i64* %PC.i150
  %2642 = add i64 %2641, 3
  store i64 %2642, i64* %PC.i150
  %2643 = trunc i64 %2640 to i32
  %2644 = add i32 1, %2643
  %2645 = zext i32 %2644 to i64
  store i64 %2645, i64* %RDX.i151, align 8
  %2646 = icmp ult i32 %2644, %2643
  %2647 = icmp ult i32 %2644, 1
  %2648 = or i1 %2646, %2647
  %2649 = zext i1 %2648 to i8
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2649, i8* %2650, align 1
  %2651 = and i32 %2644, 255
  %2652 = call i32 @llvm.ctpop.i32(i32 %2651)
  %2653 = trunc i32 %2652 to i8
  %2654 = and i8 %2653, 1
  %2655 = xor i8 %2654, 1
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2655, i8* %2656, align 1
  %2657 = xor i64 1, %2640
  %2658 = trunc i64 %2657 to i32
  %2659 = xor i32 %2658, %2644
  %2660 = lshr i32 %2659, 4
  %2661 = trunc i32 %2660 to i8
  %2662 = and i8 %2661, 1
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2662, i8* %2663, align 1
  %2664 = icmp eq i32 %2644, 0
  %2665 = zext i1 %2664 to i8
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2665, i8* %2666, align 1
  %2667 = lshr i32 %2644, 31
  %2668 = trunc i32 %2667 to i8
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2668, i8* %2669, align 1
  %2670 = lshr i32 %2643, 31
  %2671 = xor i32 %2667, %2670
  %2672 = add i32 %2671, %2667
  %2673 = icmp eq i32 %2672, 2
  %2674 = zext i1 %2673 to i8
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2674, i8* %2675, align 1
  store %struct.Memory* %loadMem_400bed, %struct.Memory** %MEMORY
  %loadMem_400bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 33
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2678 to i64*
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 7
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %EDX.i148 = bitcast %union.anon* %2681 to i32*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 15
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %2684 to i64*
  %2685 = load i64, i64* %RBP.i149
  %2686 = sub i64 %2685, 40
  %2687 = load i32, i32* %EDX.i148
  %2688 = zext i32 %2687 to i64
  %2689 = load i64, i64* %PC.i147
  %2690 = add i64 %2689, 3
  store i64 %2690, i64* %PC.i147
  %2691 = inttoptr i64 %2686 to i32*
  store i32 %2687, i32* %2691
  store %struct.Memory* %loadMem_400bf0, %struct.Memory** %MEMORY
  %loadMem_400bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 33
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2694 to i64*
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 1
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 15
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %RBP.i146
  %2702 = sub i64 %2701, 40
  %2703 = load i64, i64* %PC.i144
  %2704 = add i64 %2703, 3
  store i64 %2704, i64* %PC.i144
  %2705 = inttoptr i64 %2702 to i32*
  %2706 = load i32, i32* %2705
  %2707 = zext i32 %2706 to i64
  store i64 %2707, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_400bf3, %struct.Memory** %MEMORY
  %loadMem_400bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 33
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2710 to i64*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 1
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %EAX.i142 = bitcast %union.anon* %2713 to i32*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 15
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %2716 to i64*
  %2717 = load i32, i32* %EAX.i142
  %2718 = zext i32 %2717 to i64
  %2719 = load i64, i64* %RBP.i143
  %2720 = sub i64 %2719, 44
  %2721 = load i64, i64* %PC.i141
  %2722 = add i64 %2721, 3
  store i64 %2722, i64* %PC.i141
  %2723 = inttoptr i64 %2720 to i32*
  %2724 = load i32, i32* %2723
  %2725 = sub i32 %2717, %2724
  %2726 = icmp ult i32 %2717, %2724
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2727, i8* %2728, align 1
  %2729 = and i32 %2725, 255
  %2730 = call i32 @llvm.ctpop.i32(i32 %2729)
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2733, i8* %2734, align 1
  %2735 = xor i32 %2724, %2717
  %2736 = xor i32 %2735, %2725
  %2737 = lshr i32 %2736, 4
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2739, i8* %2740, align 1
  %2741 = icmp eq i32 %2725, 0
  %2742 = zext i1 %2741 to i8
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2742, i8* %2743, align 1
  %2744 = lshr i32 %2725, 31
  %2745 = trunc i32 %2744 to i8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2745, i8* %2746, align 1
  %2747 = lshr i32 %2717, 31
  %2748 = lshr i32 %2724, 31
  %2749 = xor i32 %2748, %2747
  %2750 = xor i32 %2744, %2747
  %2751 = add i32 %2750, %2749
  %2752 = icmp eq i32 %2751, 2
  %2753 = zext i1 %2752 to i8
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2753, i8* %2754, align 1
  store %struct.Memory* %loadMem_400bf6, %struct.Memory** %MEMORY
  %loadMem_400bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 33
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2757 to i64*
  %2758 = load i64, i64* %PC.i140
  %2759 = add i64 %2758, -379
  %2760 = load i64, i64* %PC.i140
  %2761 = add i64 %2760, 6
  %2762 = load i64, i64* %PC.i140
  %2763 = add i64 %2762, 6
  store i64 %2763, i64* %PC.i140
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2765 = load i8, i8* %2764, align 1
  %2766 = icmp ne i8 %2765, 0
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2768 = load i8, i8* %2767, align 1
  %2769 = icmp ne i8 %2768, 0
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2771 = load i8, i8* %2770, align 1
  %2772 = icmp ne i8 %2771, 0
  %2773 = xor i1 %2769, %2772
  %2774 = or i1 %2766, %2773
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %BRANCH_TAKEN, align 1
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2777 = select i1 %2774, i64 %2759, i64 %2761
  store i64 %2777, i64* %2776, align 8
  store %struct.Memory* %loadMem_400bf9, %struct.Memory** %MEMORY
  %loadBr_400bf9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400bf9 = icmp eq i8 %loadBr_400bf9, 1
  br i1 %cmpBr_400bf9, label %block_.L_400a7e, label %block_400bff

block_400bff:                                     ; preds = %block_.L_400a7e
  %loadMem_400bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 33
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2780 to i64*
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 1
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 15
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %2786 to i64*
  %2787 = load i64, i64* %RBP.i139
  %2788 = sub i64 %2787, 44
  %2789 = load i64, i64* %PC.i137
  %2790 = add i64 %2789, 3
  store i64 %2790, i64* %PC.i137
  %2791 = inttoptr i64 %2788 to i32*
  %2792 = load i32, i32* %2791
  %2793 = zext i32 %2792 to i64
  store i64 %2793, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_400bff, %struct.Memory** %MEMORY
  %loadMem_400c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 1
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %EAX.i135 = bitcast %union.anon* %2799 to i32*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 15
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %RBP.i136
  %2804 = sub i64 %2803, 48
  %2805 = load i32, i32* %EAX.i135
  %2806 = zext i32 %2805 to i64
  %2807 = load i64, i64* %PC.i134
  %2808 = add i64 %2807, 3
  store i64 %2808, i64* %PC.i134
  %2809 = inttoptr i64 %2804 to i32*
  store i32 %2805, i32* %2809
  store %struct.Memory* %loadMem_400c02, %struct.Memory** %MEMORY
  %loadMem_400c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 33
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 1
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 15
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %2818 to i64*
  %2819 = load i64, i64* %RBP.i133
  %2820 = sub i64 %2819, 48
  %2821 = load i64, i64* %PC.i131
  %2822 = add i64 %2821, 3
  store i64 %2822, i64* %PC.i131
  %2823 = inttoptr i64 %2820 to i32*
  %2824 = load i32, i32* %2823
  %2825 = zext i32 %2824 to i64
  store i64 %2825, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_400c05, %struct.Memory** %MEMORY
  %loadMem_400c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 33
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 1
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 15
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %2834 to i64*
  %2835 = load i64, i64* %RAX.i129
  %2836 = load i64, i64* %RBP.i130
  %2837 = sub i64 %2836, 52
  %2838 = load i64, i64* %PC.i128
  %2839 = add i64 %2838, 3
  store i64 %2839, i64* %PC.i128
  %2840 = trunc i64 %2835 to i32
  %2841 = inttoptr i64 %2837 to i32*
  %2842 = load i32, i32* %2841
  %2843 = add i32 %2842, %2840
  %2844 = zext i32 %2843 to i64
  store i64 %2844, i64* %RAX.i129, align 8
  %2845 = icmp ult i32 %2843, %2840
  %2846 = icmp ult i32 %2843, %2842
  %2847 = or i1 %2845, %2846
  %2848 = zext i1 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2848, i8* %2849, align 1
  %2850 = and i32 %2843, 255
  %2851 = call i32 @llvm.ctpop.i32(i32 %2850)
  %2852 = trunc i32 %2851 to i8
  %2853 = and i8 %2852, 1
  %2854 = xor i8 %2853, 1
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2854, i8* %2855, align 1
  %2856 = xor i32 %2842, %2840
  %2857 = xor i32 %2856, %2843
  %2858 = lshr i32 %2857, 4
  %2859 = trunc i32 %2858 to i8
  %2860 = and i8 %2859, 1
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2860, i8* %2861, align 1
  %2862 = icmp eq i32 %2843, 0
  %2863 = zext i1 %2862 to i8
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2863, i8* %2864, align 1
  %2865 = lshr i32 %2843, 31
  %2866 = trunc i32 %2865 to i8
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2866, i8* %2867, align 1
  %2868 = lshr i32 %2840, 31
  %2869 = lshr i32 %2842, 31
  %2870 = xor i32 %2865, %2868
  %2871 = xor i32 %2865, %2869
  %2872 = add i32 %2870, %2871
  %2873 = icmp eq i32 %2872, 2
  %2874 = zext i1 %2873 to i8
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2874, i8* %2875, align 1
  store %struct.Memory* %loadMem_400c08, %struct.Memory** %MEMORY
  %loadMem_400c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 33
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2878 to i64*
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 1
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %EAX.i126 = bitcast %union.anon* %2881 to i32*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 15
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %2884 to i64*
  %2885 = load i64, i64* %RBP.i127
  %2886 = sub i64 %2885, 44
  %2887 = load i32, i32* %EAX.i126
  %2888 = zext i32 %2887 to i64
  %2889 = load i64, i64* %PC.i125
  %2890 = add i64 %2889, 3
  store i64 %2890, i64* %PC.i125
  %2891 = inttoptr i64 %2886 to i32*
  store i32 %2887, i32* %2891
  store %struct.Memory* %loadMem_400c0b, %struct.Memory** %MEMORY
  %loadMem_400c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 33
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2894 to i64*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 1
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 15
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %2900 to i64*
  %2901 = load i64, i64* %RBP.i124
  %2902 = sub i64 %2901, 44
  %2903 = load i64, i64* %PC.i122
  %2904 = add i64 %2903, 3
  store i64 %2904, i64* %PC.i122
  %2905 = inttoptr i64 %2902 to i32*
  %2906 = load i32, i32* %2905
  %2907 = zext i32 %2906 to i64
  store i64 %2907, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_400c0e, %struct.Memory** %MEMORY
  %loadMem_400c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 1
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %EAX.i120 = bitcast %union.anon* %2913 to i32*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 15
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %2916 to i64*
  %2917 = load i32, i32* %EAX.i120
  %2918 = zext i32 %2917 to i64
  %2919 = load i64, i64* %RBP.i121
  %2920 = sub i64 %2919, 56
  %2921 = load i64, i64* %PC.i119
  %2922 = add i64 %2921, 3
  store i64 %2922, i64* %PC.i119
  %2923 = inttoptr i64 %2920 to i32*
  %2924 = load i32, i32* %2923
  %2925 = sub i32 %2917, %2924
  %2926 = icmp ult i32 %2917, %2924
  %2927 = zext i1 %2926 to i8
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2927, i8* %2928, align 1
  %2929 = and i32 %2925, 255
  %2930 = call i32 @llvm.ctpop.i32(i32 %2929)
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = xor i8 %2932, 1
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2933, i8* %2934, align 1
  %2935 = xor i32 %2924, %2917
  %2936 = xor i32 %2935, %2925
  %2937 = lshr i32 %2936, 4
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2939, i8* %2940, align 1
  %2941 = icmp eq i32 %2925, 0
  %2942 = zext i1 %2941 to i8
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2942, i8* %2943, align 1
  %2944 = lshr i32 %2925, 31
  %2945 = trunc i32 %2944 to i8
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2945, i8* %2946, align 1
  %2947 = lshr i32 %2917, 31
  %2948 = lshr i32 %2924, 31
  %2949 = xor i32 %2948, %2947
  %2950 = xor i32 %2944, %2947
  %2951 = add i32 %2950, %2949
  %2952 = icmp eq i32 %2951, 2
  %2953 = zext i1 %2952 to i8
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2953, i8* %2954, align 1
  store %struct.Memory* %loadMem_400c11, %struct.Memory** %MEMORY
  %loadMem_400c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2957 to i64*
  %2958 = load i64, i64* %PC.i118
  %2959 = add i64 %2958, -411
  %2960 = load i64, i64* %PC.i118
  %2961 = add i64 %2960, 6
  %2962 = load i64, i64* %PC.i118
  %2963 = add i64 %2962, 6
  store i64 %2963, i64* %PC.i118
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2965 = load i8, i8* %2964, align 1
  %2966 = icmp ne i8 %2965, 0
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2968 = load i8, i8* %2967, align 1
  %2969 = icmp ne i8 %2968, 0
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2971 = load i8, i8* %2970, align 1
  %2972 = icmp ne i8 %2971, 0
  %2973 = xor i1 %2969, %2972
  %2974 = or i1 %2966, %2973
  %2975 = zext i1 %2974 to i8
  store i8 %2975, i8* %BRANCH_TAKEN, align 1
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2977 = select i1 %2974, i64 %2959, i64 %2961
  store i64 %2977, i64* %2976, align 8
  store %struct.Memory* %loadMem_400c14, %struct.Memory** %MEMORY
  %loadBr_400c14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c14 = icmp eq i8 %loadBr_400c14, 1
  br i1 %cmpBr_400c14, label %block_.L_400a79, label %block_400c1a

block_400c1a:                                     ; preds = %block_400bff
  %loadMem_400c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 15
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %2983 to i64*
  %2984 = load i64, i64* %RBP.i117
  %2985 = sub i64 %2984, 60
  %2986 = load i64, i64* %PC.i116
  %2987 = add i64 %2986, 7
  store i64 %2987, i64* %PC.i116
  %2988 = inttoptr i64 %2985 to i32*
  store i32 1, i32* %2988
  store %struct.Memory* %loadMem_400c1a, %struct.Memory** %MEMORY
  br label %block_.L_400c21

block_.L_400c21:                                  ; preds = %block_.L_400c21, %block_400c1a
  %loadMem_400c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 1
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 15
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %2997 to i64*
  %2998 = load i64, i64* %RBP.i115
  %2999 = sub i64 %2998, 16
  %3000 = load i64, i64* %PC.i113
  %3001 = add i64 %3000, 4
  store i64 %3001, i64* %PC.i113
  %3002 = inttoptr i64 %2999 to i64*
  %3003 = load i64, i64* %3002
  store i64 %3003, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_400c21, %struct.Memory** %MEMORY
  %loadMem_400c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 5
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 15
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %3012 to i64*
  %3013 = load i64, i64* %RBP.i112
  %3014 = sub i64 %3013, 60
  %3015 = load i64, i64* %PC.i110
  %3016 = add i64 %3015, 4
  store i64 %3016, i64* %PC.i110
  %3017 = inttoptr i64 %3014 to i32*
  %3018 = load i32, i32* %3017
  %3019 = sext i32 %3018 to i64
  store i64 %3019, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_400c25, %struct.Memory** %MEMORY
  %loadMem_400c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 7
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RDX.i108 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 15
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %3028 to i64*
  %3029 = load i64, i64* %RBP.i109
  %3030 = sub i64 %3029, 24
  %3031 = load i64, i64* %PC.i107
  %3032 = add i64 %3031, 4
  store i64 %3032, i64* %PC.i107
  %3033 = inttoptr i64 %3030 to i64*
  %3034 = load i64, i64* %3033
  store i64 %3034, i64* %RDX.i108, align 8
  store %struct.Memory* %loadMem_400c29, %struct.Memory** %MEMORY
  %loadMem_400c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 33
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 9
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RSI.i105 = bitcast %union.anon* %3040 to i64*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 15
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %3043 to i64*
  %3044 = load i64, i64* %RBP.i106
  %3045 = sub i64 %3044, 60
  %3046 = load i64, i64* %PC.i104
  %3047 = add i64 %3046, 4
  store i64 %3047, i64* %PC.i104
  %3048 = inttoptr i64 %3045 to i32*
  %3049 = load i32, i32* %3048
  %3050 = sext i32 %3049 to i64
  store i64 %3050, i64* %RSI.i105, align 8
  store %struct.Memory* %loadMem_400c2d, %struct.Memory** %MEMORY
  %loadMem_400c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 33
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3053 to i64*
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 7
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 9
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3059 to i64*
  %3060 = load i64, i64* %RDX.i103
  %3061 = load i64, i64* %RSI.i
  %3062 = mul i64 %3061, 8
  %3063 = add i64 %3062, %3060
  %3064 = load i64, i64* %PC.i102
  %3065 = add i64 %3064, 4
  store i64 %3065, i64* %PC.i102
  %3066 = inttoptr i64 %3063 to i64*
  %3067 = load i64, i64* %3066
  store i64 %3067, i64* %RDX.i103, align 8
  store %struct.Memory* %loadMem_400c31, %struct.Memory** %MEMORY
  %loadMem_400c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 33
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 1
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 5
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 7
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %RDX.i101 = bitcast %union.anon* %3079 to i64*
  %3080 = load i64, i64* %RAX.i99
  %3081 = load i64, i64* %RCX.i100
  %3082 = mul i64 %3081, 8
  %3083 = add i64 %3082, %3080
  %3084 = load i64, i64* %RDX.i101
  %3085 = load i64, i64* %PC.i98
  %3086 = add i64 %3085, 4
  store i64 %3086, i64* %PC.i98
  %3087 = inttoptr i64 %3083 to i64*
  store i64 %3084, i64* %3087
  store %struct.Memory* %loadMem_400c35, %struct.Memory** %MEMORY
  %loadMem_400c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 11
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RDI.i96 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 15
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %3096 to i64*
  %3097 = load i64, i64* %RBP.i97
  %3098 = sub i64 %3097, 60
  %3099 = load i64, i64* %PC.i95
  %3100 = add i64 %3099, 3
  store i64 %3100, i64* %PC.i95
  %3101 = inttoptr i64 %3098 to i32*
  %3102 = load i32, i32* %3101
  %3103 = zext i32 %3102 to i64
  store i64 %3103, i64* %RDI.i96, align 8
  store %struct.Memory* %loadMem_400c39, %struct.Memory** %MEMORY
  %loadMem_400c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 33
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 11
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3109 to i64*
  %3110 = load i64, i64* %RDI.i
  %3111 = load i64, i64* %PC.i94
  %3112 = add i64 %3111, 3
  store i64 %3112, i64* %PC.i94
  %3113 = trunc i64 %3110 to i32
  %3114 = add i32 1, %3113
  %3115 = zext i32 %3114 to i64
  store i64 %3115, i64* %RDI.i, align 8
  %3116 = icmp ult i32 %3114, %3113
  %3117 = icmp ult i32 %3114, 1
  %3118 = or i1 %3116, %3117
  %3119 = zext i1 %3118 to i8
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3119, i8* %3120, align 1
  %3121 = and i32 %3114, 255
  %3122 = call i32 @llvm.ctpop.i32(i32 %3121)
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = xor i8 %3124, 1
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3125, i8* %3126, align 1
  %3127 = xor i64 1, %3110
  %3128 = trunc i64 %3127 to i32
  %3129 = xor i32 %3128, %3114
  %3130 = lshr i32 %3129, 4
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3132, i8* %3133, align 1
  %3134 = icmp eq i32 %3114, 0
  %3135 = zext i1 %3134 to i8
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3135, i8* %3136, align 1
  %3137 = lshr i32 %3114, 31
  %3138 = trunc i32 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3138, i8* %3139, align 1
  %3140 = lshr i32 %3113, 31
  %3141 = xor i32 %3137, %3140
  %3142 = add i32 %3141, %3137
  %3143 = icmp eq i32 %3142, 2
  %3144 = zext i1 %3143 to i8
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3144, i8* %3145, align 1
  store %struct.Memory* %loadMem_400c3c, %struct.Memory** %MEMORY
  %loadMem_400c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 11
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %3151 to i32*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 15
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %3154 to i64*
  %3155 = load i64, i64* %RBP.i93
  %3156 = sub i64 %3155, 60
  %3157 = load i32, i32* %EDI.i
  %3158 = zext i32 %3157 to i64
  %3159 = load i64, i64* %PC.i92
  %3160 = add i64 %3159, 3
  store i64 %3160, i64* %PC.i92
  %3161 = inttoptr i64 %3156 to i32*
  store i32 %3157, i32* %3161
  store %struct.Memory* %loadMem_400c3f, %struct.Memory** %MEMORY
  %loadMem_400c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 33
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 1
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 15
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %3170 to i64*
  %3171 = load i64, i64* %RBP.i91
  %3172 = sub i64 %3171, 60
  %3173 = load i64, i64* %PC.i89
  %3174 = add i64 %3173, 3
  store i64 %3174, i64* %PC.i89
  %3175 = inttoptr i64 %3172 to i32*
  %3176 = load i32, i32* %3175
  %3177 = zext i32 %3176 to i64
  store i64 %3177, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_400c42, %struct.Memory** %MEMORY
  %loadMem_400c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 1
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %EAX.i87 = bitcast %union.anon* %3183 to i32*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 15
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %3186 to i64*
  %3187 = load i32, i32* %EAX.i87
  %3188 = zext i32 %3187 to i64
  %3189 = load i64, i64* %RBP.i88
  %3190 = sub i64 %3189, 4
  %3191 = load i64, i64* %PC.i86
  %3192 = add i64 %3191, 3
  store i64 %3192, i64* %PC.i86
  %3193 = inttoptr i64 %3190 to i32*
  %3194 = load i32, i32* %3193
  %3195 = sub i32 %3187, %3194
  %3196 = icmp ult i32 %3187, %3194
  %3197 = zext i1 %3196 to i8
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3197, i8* %3198, align 1
  %3199 = and i32 %3195, 255
  %3200 = call i32 @llvm.ctpop.i32(i32 %3199)
  %3201 = trunc i32 %3200 to i8
  %3202 = and i8 %3201, 1
  %3203 = xor i8 %3202, 1
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3203, i8* %3204, align 1
  %3205 = xor i32 %3194, %3187
  %3206 = xor i32 %3205, %3195
  %3207 = lshr i32 %3206, 4
  %3208 = trunc i32 %3207 to i8
  %3209 = and i8 %3208, 1
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3209, i8* %3210, align 1
  %3211 = icmp eq i32 %3195, 0
  %3212 = zext i1 %3211 to i8
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3212, i8* %3213, align 1
  %3214 = lshr i32 %3195, 31
  %3215 = trunc i32 %3214 to i8
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3215, i8* %3216, align 1
  %3217 = lshr i32 %3187, 31
  %3218 = lshr i32 %3194, 31
  %3219 = xor i32 %3218, %3217
  %3220 = xor i32 %3214, %3217
  %3221 = add i32 %3220, %3219
  %3222 = icmp eq i32 %3221, 2
  %3223 = zext i1 %3222 to i8
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3223, i8* %3224, align 1
  store %struct.Memory* %loadMem_400c45, %struct.Memory** %MEMORY
  %loadMem_400c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %PC.i85
  %3229 = add i64 %3228, -39
  %3230 = load i64, i64* %PC.i85
  %3231 = add i64 %3230, 6
  %3232 = load i64, i64* %PC.i85
  %3233 = add i64 %3232, 6
  store i64 %3233, i64* %PC.i85
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3235 = load i8, i8* %3234, align 1
  %3236 = icmp ne i8 %3235, 0
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3238 = load i8, i8* %3237, align 1
  %3239 = icmp ne i8 %3238, 0
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3241 = load i8, i8* %3240, align 1
  %3242 = icmp ne i8 %3241, 0
  %3243 = xor i1 %3239, %3242
  %3244 = or i1 %3236, %3243
  %3245 = zext i1 %3244 to i8
  store i8 %3245, i8* %BRANCH_TAKEN, align 1
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3247 = select i1 %3244, i64 %3229, i64 %3231
  store i64 %3247, i64* %3246, align 8
  store %struct.Memory* %loadMem_400c48, %struct.Memory** %MEMORY
  %loadBr_400c48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c48 = icmp eq i8 %loadBr_400c48, 1
  br i1 %cmpBr_400c48, label %block_.L_400c21, label %block_400c4e

block_400c4e:                                     ; preds = %block_.L_400c21
  %loadMem_400c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 33
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 1
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 15
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %3256 to i64*
  %3257 = load i64, i64* %RBP.i84
  %3258 = sub i64 %3257, 52
  %3259 = load i64, i64* %PC.i82
  %3260 = add i64 %3259, 3
  store i64 %3260, i64* %PC.i82
  %3261 = inttoptr i64 %3258 to i32*
  %3262 = load i32, i32* %3261
  %3263 = zext i32 %3262 to i64
  store i64 %3263, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_400c4e, %struct.Memory** %MEMORY
  %loadMem_400c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 33
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 1
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 15
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %3272 to i64*
  %3273 = load i64, i64* %RAX.i80
  %3274 = load i64, i64* %RBP.i81
  %3275 = sub i64 %3274, 52
  %3276 = load i64, i64* %PC.i79
  %3277 = add i64 %3276, 3
  store i64 %3277, i64* %PC.i79
  %3278 = trunc i64 %3273 to i32
  %3279 = inttoptr i64 %3275 to i32*
  %3280 = load i32, i32* %3279
  %3281 = add i32 %3280, %3278
  %3282 = zext i32 %3281 to i64
  store i64 %3282, i64* %RAX.i80, align 8
  %3283 = icmp ult i32 %3281, %3278
  %3284 = icmp ult i32 %3281, %3280
  %3285 = or i1 %3283, %3284
  %3286 = zext i1 %3285 to i8
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3286, i8* %3287, align 1
  %3288 = and i32 %3281, 255
  %3289 = call i32 @llvm.ctpop.i32(i32 %3288)
  %3290 = trunc i32 %3289 to i8
  %3291 = and i8 %3290, 1
  %3292 = xor i8 %3291, 1
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3292, i8* %3293, align 1
  %3294 = xor i32 %3280, %3278
  %3295 = xor i32 %3294, %3281
  %3296 = lshr i32 %3295, 4
  %3297 = trunc i32 %3296 to i8
  %3298 = and i8 %3297, 1
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3298, i8* %3299, align 1
  %3300 = icmp eq i32 %3281, 0
  %3301 = zext i1 %3300 to i8
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3301, i8* %3302, align 1
  %3303 = lshr i32 %3281, 31
  %3304 = trunc i32 %3303 to i8
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3304, i8* %3305, align 1
  %3306 = lshr i32 %3278, 31
  %3307 = lshr i32 %3280, 31
  %3308 = xor i32 %3303, %3306
  %3309 = xor i32 %3303, %3307
  %3310 = add i32 %3308, %3309
  %3311 = icmp eq i32 %3310, 2
  %3312 = zext i1 %3311 to i8
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3312, i8* %3313, align 1
  store %struct.Memory* %loadMem_400c51, %struct.Memory** %MEMORY
  %loadMem_400c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 33
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3316 to i64*
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 1
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %EAX.i77 = bitcast %union.anon* %3319 to i32*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 15
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %3322 to i64*
  %3323 = load i64, i64* %RBP.i78
  %3324 = sub i64 %3323, 52
  %3325 = load i32, i32* %EAX.i77
  %3326 = zext i32 %3325 to i64
  %3327 = load i64, i64* %PC.i76
  %3328 = add i64 %3327, 3
  store i64 %3328, i64* %PC.i76
  %3329 = inttoptr i64 %3324 to i32*
  store i32 %3325, i32* %3329
  store %struct.Memory* %loadMem_400c54, %struct.Memory** %MEMORY
  %loadMem_400c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 33
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 1
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 15
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %3338 to i64*
  %3339 = load i64, i64* %RBP.i75
  %3340 = sub i64 %3339, 52
  %3341 = load i64, i64* %PC.i73
  %3342 = add i64 %3341, 3
  store i64 %3342, i64* %PC.i73
  %3343 = inttoptr i64 %3340 to i32*
  %3344 = load i32, i32* %3343
  %3345 = zext i32 %3344 to i64
  store i64 %3345, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_400c57, %struct.Memory** %MEMORY
  %loadMem_400c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 33
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3348 to i64*
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 1
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %EAX.i71 = bitcast %union.anon* %3351 to i32*
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 15
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %3354 to i64*
  %3355 = load i32, i32* %EAX.i71
  %3356 = zext i32 %3355 to i64
  %3357 = load i64, i64* %RBP.i72
  %3358 = sub i64 %3357, 56
  %3359 = load i64, i64* %PC.i70
  %3360 = add i64 %3359, 3
  store i64 %3360, i64* %PC.i70
  %3361 = inttoptr i64 %3358 to i32*
  %3362 = load i32, i32* %3361
  %3363 = sub i32 %3355, %3362
  %3364 = icmp ult i32 %3355, %3362
  %3365 = zext i1 %3364 to i8
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3365, i8* %3366, align 1
  %3367 = and i32 %3363, 255
  %3368 = call i32 @llvm.ctpop.i32(i32 %3367)
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = xor i8 %3370, 1
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3371, i8* %3372, align 1
  %3373 = xor i32 %3362, %3355
  %3374 = xor i32 %3373, %3363
  %3375 = lshr i32 %3374, 4
  %3376 = trunc i32 %3375 to i8
  %3377 = and i8 %3376, 1
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3377, i8* %3378, align 1
  %3379 = icmp eq i32 %3363, 0
  %3380 = zext i1 %3379 to i8
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3380, i8* %3381, align 1
  %3382 = lshr i32 %3363, 31
  %3383 = trunc i32 %3382 to i8
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3383, i8* %3384, align 1
  %3385 = lshr i32 %3355, 31
  %3386 = lshr i32 %3362, 31
  %3387 = xor i32 %3386, %3385
  %3388 = xor i32 %3382, %3385
  %3389 = add i32 %3388, %3387
  %3390 = icmp eq i32 %3389, 2
  %3391 = zext i1 %3390 to i8
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3391, i8* %3392, align 1
  store %struct.Memory* %loadMem_400c5a, %struct.Memory** %MEMORY
  %loadMem_400c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3395 to i64*
  %3396 = load i64, i64* %PC.i69
  %3397 = add i64 %3396, -504
  %3398 = load i64, i64* %PC.i69
  %3399 = add i64 %3398, 6
  %3400 = load i64, i64* %PC.i69
  %3401 = add i64 %3400, 6
  store i64 %3401, i64* %PC.i69
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3403 = load i8, i8* %3402, align 1
  %3404 = icmp ne i8 %3403, 0
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3406 = load i8, i8* %3405, align 1
  %3407 = icmp ne i8 %3406, 0
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3409 = load i8, i8* %3408, align 1
  %3410 = icmp ne i8 %3409, 0
  %3411 = xor i1 %3407, %3410
  %3412 = or i1 %3404, %3411
  %3413 = zext i1 %3412 to i8
  store i8 %3413, i8* %BRANCH_TAKEN, align 1
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3415 = select i1 %3412, i64 %3397, i64 %3399
  store i64 %3415, i64* %3414, align 8
  store %struct.Memory* %loadMem_400c5d, %struct.Memory** %MEMORY
  %loadBr_400c5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c5d = icmp eq i8 %loadBr_400c5d, 1
  br i1 %cmpBr_400c5d, label %block_.L_400a65, label %block_400c63

block_400c63:                                     ; preds = %block_400c4e
  %loadMem_400c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 33
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3418 to i64*
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 15
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %3421 to i64*
  %3422 = load i64, i64* %RBP.i68
  %3423 = sub i64 %3422, 40
  %3424 = load i64, i64* %PC.i67
  %3425 = add i64 %3424, 7
  store i64 %3425, i64* %PC.i67
  %3426 = inttoptr i64 %3423 to i32*
  store i32 1, i32* %3426
  store %struct.Memory* %loadMem_400c63, %struct.Memory** %MEMORY
  br label %block_.L_400c6a

block_.L_400c6a:                                  ; preds = %block_400c76, %block_400c63
  %loadMem_400c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 33
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 1
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %3432 to i64*
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 15
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %3435 to i64*
  %3436 = load i64, i64* %RBP.i66
  %3437 = sub i64 %3436, 40
  %3438 = load i64, i64* %PC.i64
  %3439 = add i64 %3438, 3
  store i64 %3439, i64* %PC.i64
  %3440 = inttoptr i64 %3437 to i32*
  %3441 = load i32, i32* %3440
  %3442 = zext i32 %3441 to i64
  store i64 %3442, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_400c6a, %struct.Memory** %MEMORY
  %loadMem_400c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 1
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %EAX.i62 = bitcast %union.anon* %3448 to i32*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 15
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %3451 to i64*
  %3452 = load i32, i32* %EAX.i62
  %3453 = zext i32 %3452 to i64
  %3454 = load i64, i64* %RBP.i63
  %3455 = sub i64 %3454, 4
  %3456 = load i64, i64* %PC.i61
  %3457 = add i64 %3456, 3
  store i64 %3457, i64* %PC.i61
  %3458 = inttoptr i64 %3455 to i32*
  %3459 = load i32, i32* %3458
  %3460 = sub i32 %3452, %3459
  %3461 = icmp ult i32 %3452, %3459
  %3462 = zext i1 %3461 to i8
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3462, i8* %3463, align 1
  %3464 = and i32 %3460, 255
  %3465 = call i32 @llvm.ctpop.i32(i32 %3464)
  %3466 = trunc i32 %3465 to i8
  %3467 = and i8 %3466, 1
  %3468 = xor i8 %3467, 1
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3468, i8* %3469, align 1
  %3470 = xor i32 %3459, %3452
  %3471 = xor i32 %3470, %3460
  %3472 = lshr i32 %3471, 4
  %3473 = trunc i32 %3472 to i8
  %3474 = and i8 %3473, 1
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3474, i8* %3475, align 1
  %3476 = icmp eq i32 %3460, 0
  %3477 = zext i1 %3476 to i8
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3477, i8* %3478, align 1
  %3479 = lshr i32 %3460, 31
  %3480 = trunc i32 %3479 to i8
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3480, i8* %3481, align 1
  %3482 = lshr i32 %3452, 31
  %3483 = lshr i32 %3459, 31
  %3484 = xor i32 %3483, %3482
  %3485 = xor i32 %3479, %3482
  %3486 = add i32 %3485, %3484
  %3487 = icmp eq i32 %3486, 2
  %3488 = zext i1 %3487 to i8
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3488, i8* %3489, align 1
  store %struct.Memory* %loadMem_400c6d, %struct.Memory** %MEMORY
  %loadMem_400c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3492 to i64*
  %3493 = load i64, i64* %PC.i60
  %3494 = add i64 %3493, 98
  %3495 = load i64, i64* %PC.i60
  %3496 = add i64 %3495, 6
  %3497 = load i64, i64* %PC.i60
  %3498 = add i64 %3497, 6
  store i64 %3498, i64* %PC.i60
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3500 = load i8, i8* %3499, align 1
  %3501 = icmp eq i8 %3500, 0
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3503 = load i8, i8* %3502, align 1
  %3504 = icmp ne i8 %3503, 0
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3506 = load i8, i8* %3505, align 1
  %3507 = icmp ne i8 %3506, 0
  %3508 = xor i1 %3504, %3507
  %3509 = xor i1 %3508, true
  %3510 = and i1 %3501, %3509
  %3511 = zext i1 %3510 to i8
  store i8 %3511, i8* %BRANCH_TAKEN, align 1
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3513 = select i1 %3510, i64 %3494, i64 %3496
  store i64 %3513, i64* %3512, align 8
  store %struct.Memory* %loadMem_400c70, %struct.Memory** %MEMORY
  %loadBr_400c70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c70 = icmp eq i8 %loadBr_400c70, 1
  br i1 %cmpBr_400c70, label %block_.L_400cd2, label %block_400c76

block_400c76:                                     ; preds = %block_.L_400c6a
  %loadMem_400c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 33
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 15
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %3519 to i64*
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3521 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3520, i64 0, i64 0
  %YMM0.i59 = bitcast %union.VectorReg* %3521 to %"class.std::bitset"*
  %3522 = bitcast %"class.std::bitset"* %YMM0.i59 to i8*
  %3523 = load i64, i64* %RBP.i58
  %3524 = sub i64 %3523, 36
  %3525 = load i64, i64* %PC.i57
  %3526 = add i64 %3525, 5
  store i64 %3526, i64* %PC.i57
  %3527 = inttoptr i64 %3524 to float*
  %3528 = load float, float* %3527
  %3529 = bitcast i8* %3522 to float*
  store float %3528, float* %3529, align 1
  %3530 = getelementptr inbounds i8, i8* %3522, i64 4
  %3531 = bitcast i8* %3530 to float*
  store float 0.000000e+00, float* %3531, align 1
  %3532 = getelementptr inbounds i8, i8* %3522, i64 8
  %3533 = bitcast i8* %3532 to float*
  store float 0.000000e+00, float* %3533, align 1
  %3534 = getelementptr inbounds i8, i8* %3522, i64 12
  %3535 = bitcast i8* %3534 to float*
  store float 0.000000e+00, float* %3535, align 1
  store %struct.Memory* %loadMem_400c76, %struct.Memory** %MEMORY
  %loadMem_400c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 33
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 1
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 15
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %3544 to i64*
  %3545 = load i64, i64* %RBP.i56
  %3546 = sub i64 %3545, 16
  %3547 = load i64, i64* %PC.i54
  %3548 = add i64 %3547, 4
  store i64 %3548, i64* %PC.i54
  %3549 = inttoptr i64 %3546 to i64*
  %3550 = load i64, i64* %3549
  store i64 %3550, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_400c7b, %struct.Memory** %MEMORY
  %loadMem_400c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 33
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 5
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %3556 to i64*
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 15
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %3559 to i64*
  %3560 = load i64, i64* %RBP.i53
  %3561 = sub i64 %3560, 40
  %3562 = load i64, i64* %PC.i51
  %3563 = add i64 %3562, 4
  store i64 %3563, i64* %PC.i51
  %3564 = inttoptr i64 %3561 to i32*
  %3565 = load i32, i32* %3564
  %3566 = sext i32 %3565 to i64
  store i64 %3566, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_400c7f, %struct.Memory** %MEMORY
  %loadMem_400c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3569 to i64*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 1
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 5
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3577 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3576, i64 0, i64 0
  %YMM0.i50 = bitcast %union.VectorReg* %3577 to %"class.std::bitset"*
  %3578 = bitcast %"class.std::bitset"* %YMM0.i50 to i8*
  %3579 = bitcast %"class.std::bitset"* %YMM0.i50 to i8*
  %3580 = load i64, i64* %RAX.i48
  %3581 = load i64, i64* %RCX.i49
  %3582 = mul i64 %3581, 8
  %3583 = add i64 %3582, %3580
  %3584 = load i64, i64* %PC.i47
  %3585 = add i64 %3584, 5
  store i64 %3585, i64* %PC.i47
  %3586 = bitcast i8* %3579 to <2 x float>*
  %3587 = load <2 x float>, <2 x float>* %3586, align 1
  %3588 = getelementptr inbounds i8, i8* %3579, i64 8
  %3589 = bitcast i8* %3588 to <2 x i32>*
  %3590 = load <2 x i32>, <2 x i32>* %3589, align 1
  %3591 = inttoptr i64 %3583 to float*
  %3592 = load float, float* %3591
  %3593 = extractelement <2 x float> %3587, i32 0
  %3594 = fmul float %3593, %3592
  %3595 = bitcast i8* %3578 to float*
  store float %3594, float* %3595, align 1
  %3596 = bitcast <2 x float> %3587 to <2 x i32>
  %3597 = extractelement <2 x i32> %3596, i32 1
  %3598 = getelementptr inbounds i8, i8* %3578, i64 4
  %3599 = bitcast i8* %3598 to i32*
  store i32 %3597, i32* %3599, align 1
  %3600 = extractelement <2 x i32> %3590, i32 0
  %3601 = getelementptr inbounds i8, i8* %3578, i64 8
  %3602 = bitcast i8* %3601 to i32*
  store i32 %3600, i32* %3602, align 1
  %3603 = extractelement <2 x i32> %3590, i32 1
  %3604 = getelementptr inbounds i8, i8* %3578, i64 12
  %3605 = bitcast i8* %3604 to i32*
  store i32 %3603, i32* %3605, align 1
  store %struct.Memory* %loadMem_400c83, %struct.Memory** %MEMORY
  %loadMem_400c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 33
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 1
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 15
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3614 to i64*
  %3615 = load i64, i64* %RBP.i46
  %3616 = sub i64 %3615, 16
  %3617 = load i64, i64* %PC.i44
  %3618 = add i64 %3617, 4
  store i64 %3618, i64* %PC.i44
  %3619 = inttoptr i64 %3616 to i64*
  %3620 = load i64, i64* %3619
  store i64 %3620, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_400c88, %struct.Memory** %MEMORY
  %loadMem_400c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 33
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3623 to i64*
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 5
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %3626 to i64*
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 15
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %3629 to i64*
  %3630 = load i64, i64* %RBP.i43
  %3631 = sub i64 %3630, 40
  %3632 = load i64, i64* %PC.i41
  %3633 = add i64 %3632, 4
  store i64 %3633, i64* %PC.i41
  %3634 = inttoptr i64 %3631 to i32*
  %3635 = load i32, i32* %3634
  %3636 = sext i32 %3635 to i64
  store i64 %3636, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_400c8c, %struct.Memory** %MEMORY
  %loadMem_400c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 33
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 1
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %3642 to i64*
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 5
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %3645 to i64*
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3647 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3646, i64 0, i64 0
  %XMM0.i40 = bitcast %union.VectorReg* %3647 to %union.vec128_t*
  %3648 = load i64, i64* %RAX.i38
  %3649 = load i64, i64* %RCX.i39
  %3650 = mul i64 %3649, 8
  %3651 = add i64 %3650, %3648
  %3652 = bitcast %union.vec128_t* %XMM0.i40 to i8*
  %3653 = load i64, i64* %PC.i37
  %3654 = add i64 %3653, 5
  store i64 %3654, i64* %PC.i37
  %3655 = bitcast i8* %3652 to <2 x float>*
  %3656 = load <2 x float>, <2 x float>* %3655, align 1
  %3657 = extractelement <2 x float> %3656, i32 0
  %3658 = inttoptr i64 %3651 to float*
  store float %3657, float* %3658
  store %struct.Memory* %loadMem_400c90, %struct.Memory** %MEMORY
  %loadMem_400c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3661 to i64*
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 15
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %3664 to i64*
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3666 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3665, i64 0, i64 0
  %YMM0.i36 = bitcast %union.VectorReg* %3666 to %"class.std::bitset"*
  %3667 = bitcast %"class.std::bitset"* %YMM0.i36 to i8*
  %3668 = load i64, i64* %RBP.i35
  %3669 = sub i64 %3668, 36
  %3670 = load i64, i64* %PC.i34
  %3671 = add i64 %3670, 5
  store i64 %3671, i64* %PC.i34
  %3672 = inttoptr i64 %3669 to float*
  %3673 = load float, float* %3672
  %3674 = bitcast i8* %3667 to float*
  store float %3673, float* %3674, align 1
  %3675 = getelementptr inbounds i8, i8* %3667, i64 4
  %3676 = bitcast i8* %3675 to float*
  store float 0.000000e+00, float* %3676, align 1
  %3677 = getelementptr inbounds i8, i8* %3667, i64 8
  %3678 = bitcast i8* %3677 to float*
  store float 0.000000e+00, float* %3678, align 1
  %3679 = getelementptr inbounds i8, i8* %3667, i64 12
  %3680 = bitcast i8* %3679 to float*
  store float 0.000000e+00, float* %3680, align 1
  store %struct.Memory* %loadMem_400c95, %struct.Memory** %MEMORY
  %loadMem_400c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 33
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3683 to i64*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 7
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %RDX.i32 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3687, i64 0, i64 0
  %XMM0.i33 = bitcast %union.VectorReg* %3688 to %union.vec128_t*
  %3689 = bitcast %union.vec128_t* %XMM0.i33 to i8*
  %3690 = load i64, i64* %PC.i31
  %3691 = add i64 %3690, 4
  store i64 %3691, i64* %PC.i31
  %3692 = bitcast i8* %3689 to i64*
  %3693 = load i64, i64* %3692, align 1
  %3694 = trunc i64 %3693 to i32
  %3695 = bitcast i64* %RDX.i32 to [2 x i32]*
  %3696 = bitcast i64* %RDX.i32 to i32*
  store i32 %3694, i32* %3696, align 1
  %3697 = getelementptr inbounds [2 x i32], [2 x i32]* %3695, i64 0, i64 1
  store i32 0, i32* %3697, align 1
  store %struct.Memory* %loadMem_400c9a, %struct.Memory** %MEMORY
  %loadMem_400c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 33
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3700 to i64*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 7
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3703 to i64*
  %3704 = load i64, i64* %RDX.i
  %3705 = load i64, i64* %PC.i30
  %3706 = add i64 %3705, 6
  store i64 %3706, i64* %PC.i30
  %3707 = xor i64 -2147483648, %3704
  %3708 = trunc i64 %3707 to i32
  %3709 = and i64 %3707, 4294967295
  store i64 %3709, i64* %RDX.i, align 8
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3710, align 1
  %3711 = and i32 %3708, 255
  %3712 = call i32 @llvm.ctpop.i32(i32 %3711)
  %3713 = trunc i32 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = xor i8 %3714, 1
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3715, i8* %3716, align 1
  %3717 = icmp eq i32 %3708, 0
  %3718 = zext i1 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3718, i8* %3719, align 1
  %3720 = lshr i32 %3708, 31
  %3721 = trunc i32 %3720 to i8
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3721, i8* %3722, align 1
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3723, align 1
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3724, align 1
  store %struct.Memory* %loadMem_400c9e, %struct.Memory** %MEMORY
  %loadMem_400ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 33
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3727 to i64*
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 7
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3730 to i32*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3731, i64 0, i64 0
  %YMM0.i29 = bitcast %union.VectorReg* %3732 to %"class.std::bitset"*
  %3733 = bitcast %"class.std::bitset"* %YMM0.i29 to i8*
  %3734 = load i32, i32* %EDX.i
  %3735 = zext i32 %3734 to i64
  %3736 = load i64, i64* %PC.i28
  %3737 = add i64 %3736, 4
  store i64 %3737, i64* %PC.i28
  %3738 = bitcast i8* %3733 to i32*
  store i32 %3734, i32* %3738, align 1
  %3739 = getelementptr inbounds i8, i8* %3733, i64 4
  %3740 = bitcast i8* %3739 to i32*
  store i32 0, i32* %3740, align 1
  %3741 = getelementptr inbounds i8, i8* %3733, i64 8
  %3742 = bitcast i8* %3741 to i32*
  store i32 0, i32* %3742, align 1
  %3743 = getelementptr inbounds i8, i8* %3733, i64 12
  %3744 = bitcast i8* %3743 to i32*
  store i32 0, i32* %3744, align 1
  store %struct.Memory* %loadMem_400ca4, %struct.Memory** %MEMORY
  %loadMem_400ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 33
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 1
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %3750 to i64*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 15
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %3753 to i64*
  %3754 = load i64, i64* %RBP.i27
  %3755 = sub i64 %3754, 16
  %3756 = load i64, i64* %PC.i25
  %3757 = add i64 %3756, 4
  store i64 %3757, i64* %PC.i25
  %3758 = inttoptr i64 %3755 to i64*
  %3759 = load i64, i64* %3758
  store i64 %3759, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_400ca8, %struct.Memory** %MEMORY
  %loadMem_400cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 33
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3762 to i64*
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 5
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 15
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %3768 to i64*
  %3769 = load i64, i64* %RBP.i24
  %3770 = sub i64 %3769, 40
  %3771 = load i64, i64* %PC.i22
  %3772 = add i64 %3771, 4
  store i64 %3772, i64* %PC.i22
  %3773 = inttoptr i64 %3770 to i32*
  %3774 = load i32, i32* %3773
  %3775 = sext i32 %3774 to i64
  store i64 %3775, i64* %RCX.i23, align 8
  store %struct.Memory* %loadMem_400cac, %struct.Memory** %MEMORY
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 33
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3778 to i64*
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 1
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %3781 to i64*
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 5
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %RCX.i21 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3785, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3786 to %"class.std::bitset"*
  %3787 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3788 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3789 = load i64, i64* %RAX.i20
  %3790 = load i64, i64* %RCX.i21
  %3791 = mul i64 %3790, 8
  %3792 = add i64 %3789, 4
  %3793 = add i64 %3792, %3791
  %3794 = load i64, i64* %PC.i19
  %3795 = add i64 %3794, 6
  store i64 %3795, i64* %PC.i19
  %3796 = bitcast i8* %3788 to <2 x float>*
  %3797 = load <2 x float>, <2 x float>* %3796, align 1
  %3798 = getelementptr inbounds i8, i8* %3788, i64 8
  %3799 = bitcast i8* %3798 to <2 x i32>*
  %3800 = load <2 x i32>, <2 x i32>* %3799, align 1
  %3801 = inttoptr i64 %3793 to float*
  %3802 = load float, float* %3801
  %3803 = extractelement <2 x float> %3797, i32 0
  %3804 = fmul float %3803, %3802
  %3805 = bitcast i8* %3787 to float*
  store float %3804, float* %3805, align 1
  %3806 = bitcast <2 x float> %3797 to <2 x i32>
  %3807 = extractelement <2 x i32> %3806, i32 1
  %3808 = getelementptr inbounds i8, i8* %3787, i64 4
  %3809 = bitcast i8* %3808 to i32*
  store i32 %3807, i32* %3809, align 1
  %3810 = extractelement <2 x i32> %3800, i32 0
  %3811 = getelementptr inbounds i8, i8* %3787, i64 8
  %3812 = bitcast i8* %3811 to i32*
  store i32 %3810, i32* %3812, align 1
  %3813 = extractelement <2 x i32> %3800, i32 1
  %3814 = getelementptr inbounds i8, i8* %3787, i64 12
  %3815 = bitcast i8* %3814 to i32*
  store i32 %3813, i32* %3815, align 1
  store %struct.Memory* %loadMem_400cb0, %struct.Memory** %MEMORY
  %loadMem_400cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 1
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 15
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %3824 to i64*
  %3825 = load i64, i64* %RBP.i18
  %3826 = sub i64 %3825, 16
  %3827 = load i64, i64* %PC.i16
  %3828 = add i64 %3827, 4
  store i64 %3828, i64* %PC.i16
  %3829 = inttoptr i64 %3826 to i64*
  %3830 = load i64, i64* %3829
  store i64 %3830, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_400cb6, %struct.Memory** %MEMORY
  %loadMem_400cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 33
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 5
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RCX.i14 = bitcast %union.anon* %3836 to i64*
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 15
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %3839 to i64*
  %3840 = load i64, i64* %RBP.i15
  %3841 = sub i64 %3840, 40
  %3842 = load i64, i64* %PC.i13
  %3843 = add i64 %3842, 4
  store i64 %3843, i64* %PC.i13
  %3844 = inttoptr i64 %3841 to i32*
  %3845 = load i32, i32* %3844
  %3846 = sext i32 %3845 to i64
  store i64 %3846, i64* %RCX.i14, align 8
  store %struct.Memory* %loadMem_400cba, %struct.Memory** %MEMORY
  %loadMem_400cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 33
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3849 to i64*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 1
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %3852 to i64*
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3854 = getelementptr inbounds %struct.GPR, %struct.GPR* %3853, i32 0, i32 5
  %3855 = getelementptr inbounds %struct.Reg, %struct.Reg* %3854, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3855 to i64*
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3857 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3856, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3857 to %union.vec128_t*
  %3858 = load i64, i64* %RAX.i12
  %3859 = load i64, i64* %RCX.i
  %3860 = mul i64 %3859, 8
  %3861 = add i64 %3858, 4
  %3862 = add i64 %3861, %3860
  %3863 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3864 = load i64, i64* %PC.i11
  %3865 = add i64 %3864, 6
  store i64 %3865, i64* %PC.i11
  %3866 = bitcast i8* %3863 to <2 x float>*
  %3867 = load <2 x float>, <2 x float>* %3866, align 1
  %3868 = extractelement <2 x float> %3867, i32 0
  %3869 = inttoptr i64 %3862 to float*
  store float %3868, float* %3869
  store %struct.Memory* %loadMem_400cbe, %struct.Memory** %MEMORY
  %loadMem_400cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 33
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3872 to i64*
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 1
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %3875 to i64*
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 15
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %3878 to i64*
  %3879 = load i64, i64* %RBP.i10
  %3880 = sub i64 %3879, 40
  %3881 = load i64, i64* %PC.i8
  %3882 = add i64 %3881, 3
  store i64 %3882, i64* %PC.i8
  %3883 = inttoptr i64 %3880 to i32*
  %3884 = load i32, i32* %3883
  %3885 = zext i32 %3884 to i64
  store i64 %3885, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_400cc4, %struct.Memory** %MEMORY
  %loadMem_400cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 33
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 1
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3891 to i64*
  %3892 = load i64, i64* %RAX.i
  %3893 = load i64, i64* %PC.i7
  %3894 = add i64 %3893, 3
  store i64 %3894, i64* %PC.i7
  %3895 = trunc i64 %3892 to i32
  %3896 = add i32 1, %3895
  %3897 = zext i32 %3896 to i64
  store i64 %3897, i64* %RAX.i, align 8
  %3898 = icmp ult i32 %3896, %3895
  %3899 = icmp ult i32 %3896, 1
  %3900 = or i1 %3898, %3899
  %3901 = zext i1 %3900 to i8
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3901, i8* %3902, align 1
  %3903 = and i32 %3896, 255
  %3904 = call i32 @llvm.ctpop.i32(i32 %3903)
  %3905 = trunc i32 %3904 to i8
  %3906 = and i8 %3905, 1
  %3907 = xor i8 %3906, 1
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3907, i8* %3908, align 1
  %3909 = xor i64 1, %3892
  %3910 = trunc i64 %3909 to i32
  %3911 = xor i32 %3910, %3896
  %3912 = lshr i32 %3911, 4
  %3913 = trunc i32 %3912 to i8
  %3914 = and i8 %3913, 1
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3914, i8* %3915, align 1
  %3916 = icmp eq i32 %3896, 0
  %3917 = zext i1 %3916 to i8
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3917, i8* %3918, align 1
  %3919 = lshr i32 %3896, 31
  %3920 = trunc i32 %3919 to i8
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3920, i8* %3921, align 1
  %3922 = lshr i32 %3895, 31
  %3923 = xor i32 %3919, %3922
  %3924 = add i32 %3923, %3919
  %3925 = icmp eq i32 %3924, 2
  %3926 = zext i1 %3925 to i8
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3926, i8* %3927, align 1
  store %struct.Memory* %loadMem_400cc7, %struct.Memory** %MEMORY
  %loadMem_400cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 33
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 1
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3933 to i32*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 15
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3936 to i64*
  %3937 = load i64, i64* %RBP.i6
  %3938 = sub i64 %3937, 40
  %3939 = load i32, i32* %EAX.i
  %3940 = zext i32 %3939 to i64
  %3941 = load i64, i64* %PC.i5
  %3942 = add i64 %3941, 3
  store i64 %3942, i64* %PC.i5
  %3943 = inttoptr i64 %3938 to i32*
  store i32 %3939, i32* %3943
  store %struct.Memory* %loadMem_400cca, %struct.Memory** %MEMORY
  %loadMem_400ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 33
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3946 to i64*
  %3947 = load i64, i64* %PC.i4
  %3948 = add i64 %3947, -99
  %3949 = load i64, i64* %PC.i4
  %3950 = add i64 %3949, 5
  store i64 %3950, i64* %PC.i4
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3948, i64* %3951, align 8
  store %struct.Memory* %loadMem_400ccd, %struct.Memory** %MEMORY
  br label %block_.L_400c6a

block_.L_400cd2:                                  ; preds = %block_.L_400c6a
  %loadMem_400cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 33
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3954 to i64*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 15
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3957 to i64*
  %3958 = load i64, i64* %PC.i2
  %3959 = add i64 %3958, 1
  store i64 %3959, i64* %PC.i2
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3961 = load i64, i64* %3960, align 8
  %3962 = add i64 %3961, 8
  %3963 = inttoptr i64 %3961 to i64*
  %3964 = load i64, i64* %3963
  store i64 %3964, i64* %RBP.i3, align 8
  store i64 %3962, i64* %3960, align 8
  store %struct.Memory* %loadMem_400cd2, %struct.Memory** %MEMORY
  %loadMem_400cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 33
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3967 to i64*
  %3968 = load i64, i64* %PC.i1
  %3969 = add i64 %3968, 1
  store i64 %3969, i64* %PC.i1
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3972 = load i64, i64* %3971, align 8
  %3973 = inttoptr i64 %3972 to i64*
  %3974 = load i64, i64* %3973
  store i64 %3974, i64* %3970, align 8
  %3975 = add i64 %3972, 8
  store i64 %3975, i64* %3971, align 8
  store %struct.Memory* %loadMem_400cd3, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400cd3
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

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 36
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

define %struct.Memory* @routine_movl__edi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDI
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = bitcast i8* %14 to float*
  store float %22, float* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 4
  %25 = bitcast i8* %24 to float*
  store float 0.000000e+00, float* %25, align 1
  %26 = getelementptr inbounds i8, i8* %14, i64 8
  %27 = bitcast i8* %26 to float*
  store float 0.000000e+00, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %14, i64 12
  %29 = bitcast i8* %28 to float*
  store float 0.000000e+00, float* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_addss___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fadd float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movss__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %21 = bitcast i8* %18 to <2 x float>*
  %22 = load <2 x float>, <2 x float>* %21, align 1
  %23 = extractelement <2 x float> %22, i32 0
  %24 = inttoptr i64 %17 to float*
  store float %23, float* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x4__rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 4
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 6
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %14 to float*
  store float %23, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 4
  %26 = bitcast i8* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 8
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 12
  %30 = bitcast i8* %29 to float*
  store float 0.000000e+00, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_0x4__rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, 4
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 6
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fadd float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x4__rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %14, 4
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 6
  store i64 %21, i64* %PC
  %22 = bitcast i8* %19 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = extractelement <2 x float> %23, i32 0
  %25 = inttoptr i64 %18 to float*
  store float %24, float* %25
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movss___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = bitcast i8* %14 to float*
  store float %22, float* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 4
  %25 = bitcast i8* %24 to float*
  store float 0.000000e+00, float* %25, align 1
  %26 = getelementptr inbounds i8, i8* %14, i64 8
  %27 = bitcast i8* %26 to float*
  store float 0.000000e+00, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %14, i64 12
  %29 = bitcast i8* %28 to float*
  store float 0.000000e+00, float* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_subss___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fsub float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fmul float %22, %23
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

define %struct.Memory* @routine_movss_0x4__rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 4
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 6
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %14 to float*
  store float %23, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 4
  %26 = bitcast i8* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 8
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 12
  %30 = bitcast i8* %29 to float*
  store float 0.000000e+00, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x4__rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 4
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 6
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %14 to float*
  store float %23, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 4
  %26 = bitcast i8* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 8
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 12
  %30 = bitcast i8* %29 to float*
  store float 0.000000e+00, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss_0x4__rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, 4
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 6
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fsub float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fmul float %22, %23
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_subss_0x4__rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, 4
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 6
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fsub float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = bitcast i8* %14 to float*
  store float %22, float* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 4
  %25 = bitcast i8* %24 to float*
  store float 0.000000e+00, float* %25, align 1
  %26 = getelementptr inbounds i8, i8* %14, i64 8
  %27 = bitcast i8* %26 to float*
  store float 0.000000e+00, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %14, i64 12
  %29 = bitcast i8* %28 to float*
  store float 0.000000e+00, float* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fsub float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
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

define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jle_.L_400a7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_jle_.L_400a79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RDX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__edi__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EDI
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

define %struct.Memory* @routine_jle_.L_400c21(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_400a65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jg_.L_400cd2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_mulss___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fmul float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movd__xmm0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = trunc i64 %15 to i32
  %17 = bitcast i64* %RDX to [2 x i32]*
  %18 = bitcast i64* %RDX to i32*
  store i32 %16, i32* %18, align 1
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__0x80000000___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = xor i64 -2147483648, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RDX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movd__edx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to i32*
  store i32 %12, i32* %16, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to i32*
  store i32 0, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 0, i32* %22, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_0x4__rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, 4
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 6
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fmul float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
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

define %struct.Memory* @routine_jmpq_.L_400c6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
