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
define %struct.Memory* @kernel_reg_detect_StrictFP(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400e90 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400e90, %struct.Memory** %MEMORY
  %loadMem_400e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i569
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i569
  store i64 %26, i64* %RBP.i570, align 8
  store %struct.Memory* %loadMem_400e91, %struct.Memory** %MEMORY
  %loadMem_400e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i568
  %39 = add i64 %38, 24
  %40 = load i64, i64* %PC.i566
  %41 = add i64 %40, 4
  store i64 %41, i64* %PC.i566
  %42 = inttoptr i64 %39 to i64*
  %43 = load i64, i64* %42
  store i64 %43, i64* %RAX.i567, align 8
  store %struct.Memory* %loadMem_400e94, %struct.Memory** %MEMORY
  %loadMem_400e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 15
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %49 to i64*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 21
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %R10.i565 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %RBP.i564
  %54 = add i64 %53, 16
  %55 = load i64, i64* %PC.i563
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC.i563
  %57 = inttoptr i64 %54 to i64*
  %58 = load i64, i64* %57
  store i64 %58, i64* %R10.i565, align 8
  store %struct.Memory* %loadMem_400e98, %struct.Memory** %MEMORY
  %loadMem_400e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 33
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %61 to i64*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %63 = getelementptr inbounds %struct.GPR, %struct.GPR* %62, i32 0, i32 11
  %64 = getelementptr inbounds %struct.Reg, %struct.Reg* %63, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %64 to i32*
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %66 = getelementptr inbounds %struct.GPR, %struct.GPR* %65, i32 0, i32 15
  %67 = getelementptr inbounds %struct.Reg, %struct.Reg* %66, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %67 to i64*
  %68 = load i64, i64* %RBP.i562
  %69 = sub i64 %68, 4
  %70 = load i32, i32* %EDI.i
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* %PC.i561
  %73 = add i64 %72, 3
  store i64 %73, i64* %PC.i561
  %74 = inttoptr i64 %69 to i32*
  store i32 %70, i32* %74
  store %struct.Memory* %loadMem_400e9c, %struct.Memory** %MEMORY
  %loadMem_400e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i560
  %85 = sub i64 %84, 8
  %86 = load i32, i32* %ESI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i559
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i559
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_400e9f, %struct.Memory** %MEMORY
  %loadMem_400ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %EDX.i557 = bitcast %union.anon* %96 to i32*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i558
  %101 = sub i64 %100, 12
  %102 = load i32, i32* %EDX.i557
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %PC.i556
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i556
  %106 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %106
  store %struct.Memory* %loadMem_400ea2, %struct.Memory** %MEMORY
  %loadMem_400ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RCX.i554 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i555
  %117 = sub i64 %116, 24
  %118 = load i64, i64* %RCX.i554
  %119 = load i64, i64* %PC.i553
  %120 = add i64 %119, 4
  store i64 %120, i64* %PC.i553
  %121 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %121
  store %struct.Memory* %loadMem_400ea5, %struct.Memory** %MEMORY
  %loadMem_400ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 17
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %R8.i = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RBP.i552
  %132 = sub i64 %131, 32
  %133 = load i64, i64* %R8.i
  %134 = load i64, i64* %PC.i551
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC.i551
  %136 = inttoptr i64 %132 to i64*
  store i64 %133, i64* %136
  store %struct.Memory* %loadMem_400ea9, %struct.Memory** %MEMORY
  %loadMem_400ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 19
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %R9.i = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RBP.i550
  %147 = sub i64 %146, 40
  %148 = load i64, i64* %R9.i
  %149 = load i64, i64* %PC.i549
  %150 = add i64 %149, 4
  store i64 %150, i64* %PC.i549
  %151 = inttoptr i64 %147 to i64*
  store i64 %148, i64* %151
  store %struct.Memory* %loadMem_400ead, %struct.Memory** %MEMORY
  %loadMem_400eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 33
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 15
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 21
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %R10.i = bitcast %union.anon* %160 to i64*
  %161 = load i64, i64* %RBP.i548
  %162 = sub i64 %161, 48
  %163 = load i64, i64* %R10.i
  %164 = load i64, i64* %PC.i547
  %165 = add i64 %164, 4
  store i64 %165, i64* %PC.i547
  %166 = inttoptr i64 %162 to i64*
  store i64 %163, i64* %166
  store %struct.Memory* %loadMem_400eb1, %struct.Memory** %MEMORY
  %loadMem_400eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 33
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RAX.i545 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 15
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %175 to i64*
  %176 = load i64, i64* %RBP.i546
  %177 = sub i64 %176, 56
  %178 = load i64, i64* %RAX.i545
  %179 = load i64, i64* %PC.i544
  %180 = add i64 %179, 4
  store i64 %180, i64* %PC.i544
  %181 = inttoptr i64 %177 to i64*
  store i64 %178, i64* %181
  store %struct.Memory* %loadMem_400eb5, %struct.Memory** %MEMORY
  %loadMem_400eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 33
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RBP.i543
  %189 = sub i64 %188, 60
  %190 = load i64, i64* %PC.i542
  %191 = add i64 %190, 7
  store i64 %191, i64* %PC.i542
  %192 = inttoptr i64 %189 to i32*
  store i32 0, i32* %192
  store %struct.Memory* %loadMem_400eb9, %struct.Memory** %MEMORY
  br label %block_.L_400ec0

block_.L_400ec0:                                  ; preds = %block_.L_4011c2, %entry
  %loadMem_400ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 33
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %195 to i64*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 15
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %201 to i64*
  %202 = load i64, i64* %RBP.i541
  %203 = sub i64 %202, 60
  %204 = load i64, i64* %PC.i539
  %205 = add i64 %204, 3
  store i64 %205, i64* %PC.i539
  %206 = inttoptr i64 %203 to i32*
  %207 = load i32, i32* %206
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_400ec0, %struct.Memory** %MEMORY
  %loadMem_400ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %EAX.i537 = bitcast %union.anon* %214 to i32*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 15
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %217 to i64*
  %218 = load i32, i32* %EAX.i537
  %219 = zext i32 %218 to i64
  %220 = load i64, i64* %RBP.i538
  %221 = sub i64 %220, 4
  %222 = load i64, i64* %PC.i536
  %223 = add i64 %222, 3
  store i64 %223, i64* %PC.i536
  %224 = inttoptr i64 %221 to i32*
  %225 = load i32, i32* %224
  %226 = sub i32 %218, %225
  %227 = icmp ult i32 %218, %225
  %228 = zext i1 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %228, i8* %229, align 1
  %230 = and i32 %226, 255
  %231 = call i32 @llvm.ctpop.i32(i32 %230)
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %234, i8* %235, align 1
  %236 = xor i32 %225, %218
  %237 = xor i32 %236, %226
  %238 = lshr i32 %237, 4
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %240, i8* %241, align 1
  %242 = icmp eq i32 %226, 0
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %243, i8* %244, align 1
  %245 = lshr i32 %226, 31
  %246 = trunc i32 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %246, i8* %247, align 1
  %248 = lshr i32 %218, 31
  %249 = lshr i32 %225, 31
  %250 = xor i32 %249, %248
  %251 = xor i32 %245, %248
  %252 = add i32 %251, %250
  %253 = icmp eq i32 %252, 2
  %254 = zext i1 %253 to i8
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %254, i8* %255, align 1
  store %struct.Memory* %loadMem_400ec3, %struct.Memory** %MEMORY
  %loadMem_400ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %258 to i64*
  %259 = load i64, i64* %PC.i535
  %260 = add i64 %259, 778
  %261 = load i64, i64* %PC.i535
  %262 = add i64 %261, 6
  %263 = load i64, i64* %PC.i535
  %264 = add i64 %263, 6
  store i64 %264, i64* %PC.i535
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %266 = load i8, i8* %265, align 1
  %267 = icmp ne i8 %266, 0
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %269 = load i8, i8* %268, align 1
  %270 = icmp ne i8 %269, 0
  %271 = xor i1 %267, %270
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %BRANCH_TAKEN, align 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %275 = select i1 %271, i64 %262, i64 %260
  store i64 %275, i64* %274, align 8
  store %struct.Memory* %loadMem_400ec6, %struct.Memory** %MEMORY
  %loadBr_400ec6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ec6 = icmp eq i8 %loadBr_400ec6, 1
  br i1 %cmpBr_400ec6, label %block_.L_4011d0, label %block_400ecc

block_400ecc:                                     ; preds = %block_.L_400ec0
  %loadMem_400ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 15
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %281 to i64*
  %282 = load i64, i64* %RBP.i534
  %283 = sub i64 %282, 68
  %284 = load i64, i64* %PC.i533
  %285 = add i64 %284, 7
  store i64 %285, i64* %PC.i533
  %286 = inttoptr i64 %283 to i32*
  store i32 0, i32* %286
  store %struct.Memory* %loadMem_400ecc, %struct.Memory** %MEMORY
  br label %block_.L_400ed3

block_.L_400ed3:                                  ; preds = %block_.L_400f73, %block_400ecc
  %loadMem_400ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 15
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %RBP.i532
  %297 = sub i64 %296, 68
  %298 = load i64, i64* %PC.i530
  %299 = add i64 %298, 3
  store i64 %299, i64* %PC.i530
  %300 = inttoptr i64 %297 to i32*
  %301 = load i32, i32* %300
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_400ed3, %struct.Memory** %MEMORY
  %loadMem_400ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 15
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %RBP.i529
  %313 = sub i64 %312, 8
  %314 = load i64, i64* %PC.i527
  %315 = add i64 %314, 3
  store i64 %315, i64* %PC.i527
  %316 = inttoptr i64 %313 to i32*
  %317 = load i32, i32* %316
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RCX.i528, align 8
  store %struct.Memory* %loadMem_400ed6, %struct.Memory** %MEMORY
  %loadMem_400ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %RCX.i526
  %326 = load i64, i64* %PC.i525
  %327 = add i64 %326, 3
  store i64 %327, i64* %PC.i525
  %328 = trunc i64 %325 to i32
  %329 = sub i32 %328, 1
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RCX.i526, align 8
  %331 = icmp ult i32 %328, 1
  %332 = zext i1 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %332, i8* %333, align 1
  %334 = and i32 %329, 255
  %335 = call i32 @llvm.ctpop.i32(i32 %334)
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %338, i8* %339, align 1
  %340 = xor i64 1, %325
  %341 = trunc i64 %340 to i32
  %342 = xor i32 %341, %329
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %345, i8* %346, align 1
  %347 = icmp eq i32 %329, 0
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %348, i8* %349, align 1
  %350 = lshr i32 %329, 31
  %351 = trunc i32 %350 to i8
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %351, i8* %352, align 1
  %353 = lshr i32 %328, 31
  %354 = xor i32 %350, %353
  %355 = add i32 %354, %353
  %356 = icmp eq i32 %355, 2
  %357 = zext i1 %356 to i8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %357, i8* %358, align 1
  store %struct.Memory* %loadMem_400ed9, %struct.Memory** %MEMORY
  %loadMem_400edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %EAX.i523 = bitcast %union.anon* %364 to i32*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %ECX.i524 = bitcast %union.anon* %367 to i32*
  %368 = load i32, i32* %EAX.i523
  %369 = zext i32 %368 to i64
  %370 = load i32, i32* %ECX.i524
  %371 = zext i32 %370 to i64
  %372 = load i64, i64* %PC.i522
  %373 = add i64 %372, 2
  store i64 %373, i64* %PC.i522
  %374 = sub i32 %368, %370
  %375 = icmp ult i32 %368, %370
  %376 = zext i1 %375 to i8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %376, i8* %377, align 1
  %378 = and i32 %374, 255
  %379 = call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %382, i8* %383, align 1
  %384 = xor i64 %371, %369
  %385 = trunc i64 %384 to i32
  %386 = xor i32 %385, %374
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %389, i8* %390, align 1
  %391 = icmp eq i32 %374, 0
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %392, i8* %393, align 1
  %394 = lshr i32 %374, 31
  %395 = trunc i32 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %395, i8* %396, align 1
  %397 = lshr i32 %368, 31
  %398 = lshr i32 %370, 31
  %399 = xor i32 %398, %397
  %400 = xor i32 %394, %397
  %401 = add i32 %400, %399
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %403, i8* %404, align 1
  store %struct.Memory* %loadMem_400edc, %struct.Memory** %MEMORY
  %loadMem_400ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 33
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %407 to i64*
  %408 = load i64, i64* %PC.i521
  %409 = add i64 %408, 163
  %410 = load i64, i64* %PC.i521
  %411 = add i64 %410, 6
  %412 = load i64, i64* %PC.i521
  %413 = add i64 %412, 6
  store i64 %413, i64* %PC.i521
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %415 = load i8, i8* %414, align 1
  %416 = icmp eq i8 %415, 0
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %418 = load i8, i8* %417, align 1
  %419 = icmp ne i8 %418, 0
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %421 = load i8, i8* %420, align 1
  %422 = icmp ne i8 %421, 0
  %423 = xor i1 %419, %422
  %424 = xor i1 %423, true
  %425 = and i1 %416, %424
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %BRANCH_TAKEN, align 1
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %428 = select i1 %425, i64 %409, i64 %411
  store i64 %428, i64* %427, align 8
  store %struct.Memory* %loadMem_400ede, %struct.Memory** %MEMORY
  %loadBr_400ede = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ede = icmp eq i8 %loadBr_400ede, 1
  br i1 %cmpBr_400ede, label %block_.L_400f81, label %block_400ee4

block_400ee4:                                     ; preds = %block_.L_400ed3
  %loadMem_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 15
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %437 to i64*
  %438 = load i64, i64* %RBP.i520
  %439 = sub i64 %438, 68
  %440 = load i64, i64* %PC.i518
  %441 = add i64 %440, 3
  store i64 %441, i64* %PC.i518
  %442 = inttoptr i64 %439 to i32*
  %443 = load i32, i32* %442
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RAX.i519, align 8
  store %struct.Memory* %loadMem_400ee4, %struct.Memory** %MEMORY
  %loadMem_400ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 33
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %EAX.i516 = bitcast %union.anon* %450 to i32*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 15
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %RBP.i517
  %455 = sub i64 %454, 64
  %456 = load i32, i32* %EAX.i516
  %457 = zext i32 %456 to i64
  %458 = load i64, i64* %PC.i515
  %459 = add i64 %458, 3
  store i64 %459, i64* %PC.i515
  %460 = inttoptr i64 %455 to i32*
  store i32 %456, i32* %460
  store %struct.Memory* %loadMem_400ee7, %struct.Memory** %MEMORY
  br label %block_.L_400eea

block_.L_400eea:                                  ; preds = %block_.L_400f60, %block_400ee4
  %loadMem_400eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 33
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %463 to i64*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 15
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %469 to i64*
  %470 = load i64, i64* %RBP.i514
  %471 = sub i64 %470, 64
  %472 = load i64, i64* %PC.i512
  %473 = add i64 %472, 3
  store i64 %473, i64* %PC.i512
  %474 = inttoptr i64 %471 to i32*
  %475 = load i32, i32* %474
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RAX.i513, align 8
  store %struct.Memory* %loadMem_400eea, %struct.Memory** %MEMORY
  %loadMem_400eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 5
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 15
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %RBP.i511
  %487 = sub i64 %486, 8
  %488 = load i64, i64* %PC.i509
  %489 = add i64 %488, 3
  store i64 %489, i64* %PC.i509
  %490 = inttoptr i64 %487 to i32*
  %491 = load i32, i32* %490
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RCX.i510, align 8
  store %struct.Memory* %loadMem_400eed, %struct.Memory** %MEMORY
  %loadMem_400ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 33
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 5
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %498 to i64*
  %499 = load i64, i64* %RCX.i508
  %500 = load i64, i64* %PC.i507
  %501 = add i64 %500, 3
  store i64 %501, i64* %PC.i507
  %502 = trunc i64 %499 to i32
  %503 = sub i32 %502, 1
  %504 = zext i32 %503 to i64
  store i64 %504, i64* %RCX.i508, align 8
  %505 = icmp ult i32 %502, 1
  %506 = zext i1 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %506, i8* %507, align 1
  %508 = and i32 %503, 255
  %509 = call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %512, i8* %513, align 1
  %514 = xor i64 1, %499
  %515 = trunc i64 %514 to i32
  %516 = xor i32 %515, %503
  %517 = lshr i32 %516, 4
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %519, i8* %520, align 1
  %521 = icmp eq i32 %503, 0
  %522 = zext i1 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %522, i8* %523, align 1
  %524 = lshr i32 %503, 31
  %525 = trunc i32 %524 to i8
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %525, i8* %526, align 1
  %527 = lshr i32 %502, 31
  %528 = xor i32 %524, %527
  %529 = add i32 %528, %527
  %530 = icmp eq i32 %529, 2
  %531 = zext i1 %530 to i8
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %531, i8* %532, align 1
  store %struct.Memory* %loadMem_400ef0, %struct.Memory** %MEMORY
  %loadMem_400ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 1
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %EAX.i505 = bitcast %union.anon* %538 to i32*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 5
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %ECX.i506 = bitcast %union.anon* %541 to i32*
  %542 = load i32, i32* %EAX.i505
  %543 = zext i32 %542 to i64
  %544 = load i32, i32* %ECX.i506
  %545 = zext i32 %544 to i64
  %546 = load i64, i64* %PC.i504
  %547 = add i64 %546, 2
  store i64 %547, i64* %PC.i504
  %548 = sub i32 %542, %544
  %549 = icmp ult i32 %542, %544
  %550 = zext i1 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %550, i8* %551, align 1
  %552 = and i32 %548, 255
  %553 = call i32 @llvm.ctpop.i32(i32 %552)
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %556, i8* %557, align 1
  %558 = xor i64 %545, %543
  %559 = trunc i64 %558 to i32
  %560 = xor i32 %559, %548
  %561 = lshr i32 %560, 4
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %563, i8* %564, align 1
  %565 = icmp eq i32 %548, 0
  %566 = zext i1 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %566, i8* %567, align 1
  %568 = lshr i32 %548, 31
  %569 = trunc i32 %568 to i8
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %569, i8* %570, align 1
  %571 = lshr i32 %542, 31
  %572 = lshr i32 %544, 31
  %573 = xor i32 %572, %571
  %574 = xor i32 %568, %571
  %575 = add i32 %574, %573
  %576 = icmp eq i32 %575, 2
  %577 = zext i1 %576 to i8
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %577, i8* %578, align 1
  store %struct.Memory* %loadMem_400ef3, %struct.Memory** %MEMORY
  %loadMem_400ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 33
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %PC.i503
  %583 = add i64 %582, 121
  %584 = load i64, i64* %PC.i503
  %585 = add i64 %584, 6
  %586 = load i64, i64* %PC.i503
  %587 = add i64 %586, 6
  store i64 %587, i64* %PC.i503
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %589 = load i8, i8* %588, align 1
  %590 = icmp eq i8 %589, 0
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %592 = load i8, i8* %591, align 1
  %593 = icmp ne i8 %592, 0
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %595 = load i8, i8* %594, align 1
  %596 = icmp ne i8 %595, 0
  %597 = xor i1 %593, %596
  %598 = xor i1 %597, true
  %599 = and i1 %590, %598
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %BRANCH_TAKEN, align 1
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %602 = select i1 %599, i64 %583, i64 %585
  store i64 %602, i64* %601, align 8
  store %struct.Memory* %loadMem_400ef5, %struct.Memory** %MEMORY
  %loadBr_400ef5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ef5 = icmp eq i8 %loadBr_400ef5, 1
  br i1 %cmpBr_400ef5, label %block_.L_400f6e, label %block_400efb

block_400efb:                                     ; preds = %block_.L_400eea
  %loadMem_400efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 33
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 15
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %RBP.i502
  %610 = sub i64 %609, 72
  %611 = load i64, i64* %PC.i501
  %612 = add i64 %611, 7
  store i64 %612, i64* %PC.i501
  %613 = inttoptr i64 %610 to i32*
  store i32 0, i32* %613
  store %struct.Memory* %loadMem_400efb, %struct.Memory** %MEMORY
  br label %block_.L_400f02

block_.L_400f02:                                  ; preds = %block_400f13, %block_400efb
  %loadMem_400f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 33
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 15
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %RBP.i500
  %624 = sub i64 %623, 72
  %625 = load i64, i64* %PC.i498
  %626 = add i64 %625, 3
  store i64 %626, i64* %PC.i498
  %627 = inttoptr i64 %624 to i32*
  %628 = load i32, i32* %627
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_400f02, %struct.Memory** %MEMORY
  %loadMem_400f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 5
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 15
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %638 to i64*
  %639 = load i64, i64* %RBP.i497
  %640 = sub i64 %639, 12
  %641 = load i64, i64* %PC.i495
  %642 = add i64 %641, 3
  store i64 %642, i64* %PC.i495
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RCX.i496, align 8
  store %struct.Memory* %loadMem_400f05, %struct.Memory** %MEMORY
  %loadMem_400f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 5
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %651 to i64*
  %652 = load i64, i64* %RCX.i494
  %653 = load i64, i64* %PC.i493
  %654 = add i64 %653, 3
  store i64 %654, i64* %PC.i493
  %655 = trunc i64 %652 to i32
  %656 = sub i32 %655, 1
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %RCX.i494, align 8
  %658 = icmp ult i32 %655, 1
  %659 = zext i1 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %659, i8* %660, align 1
  %661 = and i32 %656, 255
  %662 = call i32 @llvm.ctpop.i32(i32 %661)
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %665, i8* %666, align 1
  %667 = xor i64 1, %652
  %668 = trunc i64 %667 to i32
  %669 = xor i32 %668, %656
  %670 = lshr i32 %669, 4
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %672, i8* %673, align 1
  %674 = icmp eq i32 %656, 0
  %675 = zext i1 %674 to i8
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %675, i8* %676, align 1
  %677 = lshr i32 %656, 31
  %678 = trunc i32 %677 to i8
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %678, i8* %679, align 1
  %680 = lshr i32 %655, 31
  %681 = xor i32 %677, %680
  %682 = add i32 %681, %680
  %683 = icmp eq i32 %682, 2
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %684, i8* %685, align 1
  store %struct.Memory* %loadMem_400f08, %struct.Memory** %MEMORY
  %loadMem_400f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 1
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %EAX.i491 = bitcast %union.anon* %691 to i32*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 5
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %ECX.i492 = bitcast %union.anon* %694 to i32*
  %695 = load i32, i32* %EAX.i491
  %696 = zext i32 %695 to i64
  %697 = load i32, i32* %ECX.i492
  %698 = zext i32 %697 to i64
  %699 = load i64, i64* %PC.i490
  %700 = add i64 %699, 2
  store i64 %700, i64* %PC.i490
  %701 = sub i32 %695, %697
  %702 = icmp ult i32 %695, %697
  %703 = zext i1 %702 to i8
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %703, i8* %704, align 1
  %705 = and i32 %701, 255
  %706 = call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %709, i8* %710, align 1
  %711 = xor i64 %698, %696
  %712 = trunc i64 %711 to i32
  %713 = xor i32 %712, %701
  %714 = lshr i32 %713, 4
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %716, i8* %717, align 1
  %718 = icmp eq i32 %701, 0
  %719 = zext i1 %718 to i8
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %719, i8* %720, align 1
  %721 = lshr i32 %701, 31
  %722 = trunc i32 %721 to i8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %722, i8* %723, align 1
  %724 = lshr i32 %695, 31
  %725 = lshr i32 %697, 31
  %726 = xor i32 %725, %724
  %727 = xor i32 %721, %724
  %728 = add i32 %727, %726
  %729 = icmp eq i32 %728, 2
  %730 = zext i1 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %730, i8* %731, align 1
  store %struct.Memory* %loadMem_400f0b, %struct.Memory** %MEMORY
  %loadMem_400f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 33
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %734 to i64*
  %735 = load i64, i64* %PC.i489
  %736 = add i64 %735, 78
  %737 = load i64, i64* %PC.i489
  %738 = add i64 %737, 6
  %739 = load i64, i64* %PC.i489
  %740 = add i64 %739, 6
  store i64 %740, i64* %PC.i489
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %742 = load i8, i8* %741, align 1
  %743 = icmp eq i8 %742, 0
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %745 = load i8, i8* %744, align 1
  %746 = icmp ne i8 %745, 0
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %748 = load i8, i8* %747, align 1
  %749 = icmp ne i8 %748, 0
  %750 = xor i1 %746, %749
  %751 = xor i1 %750, true
  %752 = and i1 %743, %751
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %BRANCH_TAKEN, align 1
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %755 = select i1 %752, i64 %736, i64 %738
  store i64 %755, i64* %754, align 8
  store %struct.Memory* %loadMem_400f0d, %struct.Memory** %MEMORY
  %loadBr_400f0d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f0d = icmp eq i8 %loadBr_400f0d, 1
  br i1 %cmpBr_400f0d, label %block_.L_400f5b, label %block_400f13

block_400f13:                                     ; preds = %block_.L_400f02
  %loadMem_400f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 33
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 1
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 15
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %764 to i64*
  %765 = load i64, i64* %RBP.i488
  %766 = sub i64 %765, 24
  %767 = load i64, i64* %PC.i486
  %768 = add i64 %767, 4
  store i64 %768, i64* %PC.i486
  %769 = inttoptr i64 %766 to i64*
  %770 = load i64, i64* %769
  store i64 %770, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_400f13, %struct.Memory** %MEMORY
  %loadMem_400f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 5
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 15
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %779 to i64*
  %780 = load i64, i64* %RBP.i485
  %781 = sub i64 %780, 68
  %782 = load i64, i64* %PC.i483
  %783 = add i64 %782, 4
  store i64 %783, i64* %PC.i483
  %784 = inttoptr i64 %781 to i32*
  %785 = load i32, i32* %784
  %786 = sext i32 %785 to i64
  store i64 %786, i64* %RCX.i484, align 8
  store %struct.Memory* %loadMem_400f17, %struct.Memory** %MEMORY
  %loadMem_400f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 33
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 5
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %RCX.i482
  %794 = load i64, i64* %PC.i481
  %795 = add i64 %794, 4
  store i64 %795, i64* %PC.i481
  %796 = sext i64 %793 to i128
  %797 = and i128 %796, -18446744073709551616
  %798 = zext i64 %793 to i128
  %799 = or i128 %797, %798
  %800 = mul i128 24, %799
  %801 = trunc i128 %800 to i64
  store i64 %801, i64* %RCX.i482, align 8
  %802 = sext i64 %801 to i128
  %803 = icmp ne i128 %802, %800
  %804 = zext i1 %803 to i8
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %804, i8* %805, align 1
  %806 = trunc i128 %800 to i32
  %807 = and i32 %806, 255
  %808 = call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %811, i8* %812, align 1
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %813, align 1
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %814, align 1
  %815 = lshr i64 %801, 63
  %816 = trunc i64 %815 to i8
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %816, i8* %817, align 1
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %804, i8* %818, align 1
  store %struct.Memory* %loadMem_400f1b, %struct.Memory** %MEMORY
  %loadMem_400f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 1
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 5
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %827 to i64*
  %828 = load i64, i64* %RAX.i479
  %829 = load i64, i64* %RCX.i480
  %830 = load i64, i64* %PC.i478
  %831 = add i64 %830, 3
  store i64 %831, i64* %PC.i478
  %832 = add i64 %829, %828
  store i64 %832, i64* %RAX.i479, align 8
  %833 = icmp ult i64 %832, %828
  %834 = icmp ult i64 %832, %829
  %835 = or i1 %833, %834
  %836 = zext i1 %835 to i8
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %836, i8* %837, align 1
  %838 = trunc i64 %832 to i32
  %839 = and i32 %838, 255
  %840 = call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %843, i8* %844, align 1
  %845 = xor i64 %829, %828
  %846 = xor i64 %845, %832
  %847 = lshr i64 %846, 4
  %848 = trunc i64 %847 to i8
  %849 = and i8 %848, 1
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %849, i8* %850, align 1
  %851 = icmp eq i64 %832, 0
  %852 = zext i1 %851 to i8
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %852, i8* %853, align 1
  %854 = lshr i64 %832, 63
  %855 = trunc i64 %854 to i8
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %855, i8* %856, align 1
  %857 = lshr i64 %828, 63
  %858 = lshr i64 %829, 63
  %859 = xor i64 %854, %857
  %860 = xor i64 %854, %858
  %861 = add i64 %859, %860
  %862 = icmp eq i64 %861, 2
  %863 = zext i1 %862 to i8
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %863, i8* %864, align 1
  store %struct.Memory* %loadMem_400f1f, %struct.Memory** %MEMORY
  %loadMem_400f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %867 to i64*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 5
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %RCX.i476 = bitcast %union.anon* %870 to i64*
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 15
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %873 to i64*
  %874 = load i64, i64* %RBP.i477
  %875 = sub i64 %874, 64
  %876 = load i64, i64* %PC.i475
  %877 = add i64 %876, 4
  store i64 %877, i64* %PC.i475
  %878 = inttoptr i64 %875 to i32*
  %879 = load i32, i32* %878
  %880 = sext i32 %879 to i64
  store i64 %880, i64* %RCX.i476, align 8
  store %struct.Memory* %loadMem_400f22, %struct.Memory** %MEMORY
  %loadMem_400f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 1
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 5
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RCX.i473 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 7
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RDX.i474 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %RAX.i472
  %894 = load i64, i64* %RCX.i473
  %895 = mul i64 %894, 4
  %896 = add i64 %895, %893
  %897 = load i64, i64* %PC.i471
  %898 = add i64 %897, 3
  store i64 %898, i64* %PC.i471
  %899 = inttoptr i64 %896 to i32*
  %900 = load i32, i32* %899
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RDX.i474, align 8
  store %struct.Memory* %loadMem_400f26, %struct.Memory** %MEMORY
  %loadMem_400f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 1
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %907 to i64*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 15
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %910 to i64*
  %911 = load i64, i64* %RBP.i470
  %912 = sub i64 %911, 48
  %913 = load i64, i64* %PC.i468
  %914 = add i64 %913, 4
  store i64 %914, i64* %PC.i468
  %915 = inttoptr i64 %912 to i64*
  %916 = load i64, i64* %915
  store i64 %916, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_400f29, %struct.Memory** %MEMORY
  %loadMem_400f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 33
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 5
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 15
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %925 to i64*
  %926 = load i64, i64* %RBP.i467
  %927 = sub i64 %926, 68
  %928 = load i64, i64* %PC.i465
  %929 = add i64 %928, 4
  store i64 %929, i64* %PC.i465
  %930 = inttoptr i64 %927 to i32*
  %931 = load i32, i32* %930
  %932 = sext i32 %931 to i64
  store i64 %932, i64* %RCX.i466, align 8
  store %struct.Memory* %loadMem_400f2d, %struct.Memory** %MEMORY
  %loadMem_400f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 33
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 5
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %938 to i64*
  %939 = load i64, i64* %RCX.i464
  %940 = load i64, i64* %PC.i463
  %941 = add i64 %940, 7
  store i64 %941, i64* %PC.i463
  %942 = sext i64 %939 to i128
  %943 = and i128 %942, -18446744073709551616
  %944 = zext i64 %939 to i128
  %945 = or i128 %943, %944
  %946 = mul i128 1536, %945
  %947 = trunc i128 %946 to i64
  store i64 %947, i64* %RCX.i464, align 8
  %948 = sext i64 %947 to i128
  %949 = icmp ne i128 %948, %946
  %950 = zext i1 %949 to i8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %950, i8* %951, align 1
  %952 = trunc i128 %946 to i32
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %953, align 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %954, align 1
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %955, align 1
  %956 = lshr i64 %947, 63
  %957 = trunc i64 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %957, i8* %958, align 1
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %950, i8* %959, align 1
  store %struct.Memory* %loadMem_400f31, %struct.Memory** %MEMORY
  %loadMem_400f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 1
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 5
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RAX.i461
  %970 = load i64, i64* %RCX.i462
  %971 = load i64, i64* %PC.i460
  %972 = add i64 %971, 3
  store i64 %972, i64* %PC.i460
  %973 = add i64 %970, %969
  store i64 %973, i64* %RAX.i461, align 8
  %974 = icmp ult i64 %973, %969
  %975 = icmp ult i64 %973, %970
  %976 = or i1 %974, %975
  %977 = zext i1 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %977, i8* %978, align 1
  %979 = trunc i64 %973 to i32
  %980 = and i32 %979, 255
  %981 = call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %984, i8* %985, align 1
  %986 = xor i64 %970, %969
  %987 = xor i64 %986, %973
  %988 = lshr i64 %987, 4
  %989 = trunc i64 %988 to i8
  %990 = and i8 %989, 1
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %990, i8* %991, align 1
  %992 = icmp eq i64 %973, 0
  %993 = zext i1 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %993, i8* %994, align 1
  %995 = lshr i64 %973, 63
  %996 = trunc i64 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %996, i8* %997, align 1
  %998 = lshr i64 %969, 63
  %999 = lshr i64 %970, 63
  %1000 = xor i64 %995, %998
  %1001 = xor i64 %995, %999
  %1002 = add i64 %1000, %1001
  %1003 = icmp eq i64 %1002, 2
  %1004 = zext i1 %1003 to i8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1004, i8* %1005, align 1
  store %struct.Memory* %loadMem_400f38, %struct.Memory** %MEMORY
  %loadMem_400f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 33
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 5
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RCX.i458 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 15
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %1014 to i64*
  %1015 = load i64, i64* %RBP.i459
  %1016 = sub i64 %1015, 64
  %1017 = load i64, i64* %PC.i457
  %1018 = add i64 %1017, 4
  store i64 %1018, i64* %PC.i457
  %1019 = inttoptr i64 %1016 to i32*
  %1020 = load i32, i32* %1019
  %1021 = sext i32 %1020 to i64
  store i64 %1021, i64* %RCX.i458, align 8
  store %struct.Memory* %loadMem_400f3b, %struct.Memory** %MEMORY
  %loadMem_400f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 33
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1024 to i64*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 5
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %1027 to i64*
  %1028 = load i64, i64* %RCX.i456
  %1029 = load i64, i64* %PC.i455
  %1030 = add i64 %1029, 4
  store i64 %1030, i64* %PC.i455
  %1031 = shl i64 %1028, 7
  %1032 = icmp slt i64 %1031, 0
  %1033 = shl i64 %1031, 1
  store i64 %1033, i64* %RCX.i456, align 8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1035 = zext i1 %1032 to i8
  store i8 %1035, i8* %1034, align 1
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1037 = trunc i64 %1033 to i32
  store i8 1, i8* %1036, align 1
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1038, align 1
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1040 = icmp eq i64 %1033, 0
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %1039, align 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1043 = lshr i64 %1033, 63
  %1044 = trunc i64 %1043 to i8
  store i8 %1044, i8* %1042, align 1
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1045, align 1
  store %struct.Memory* %loadMem_400f3f, %struct.Memory** %MEMORY
  %loadMem_400f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 1
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 5
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RAX.i453
  %1056 = load i64, i64* %RCX.i454
  %1057 = load i64, i64* %PC.i452
  %1058 = add i64 %1057, 3
  store i64 %1058, i64* %PC.i452
  %1059 = add i64 %1056, %1055
  store i64 %1059, i64* %RAX.i453, align 8
  %1060 = icmp ult i64 %1059, %1055
  %1061 = icmp ult i64 %1059, %1056
  %1062 = or i1 %1060, %1061
  %1063 = zext i1 %1062 to i8
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1063, i8* %1064, align 1
  %1065 = trunc i64 %1059 to i32
  %1066 = and i32 %1065, 255
  %1067 = call i32 @llvm.ctpop.i32(i32 %1066)
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = xor i8 %1069, 1
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1070, i8* %1071, align 1
  %1072 = xor i64 %1056, %1055
  %1073 = xor i64 %1072, %1059
  %1074 = lshr i64 %1073, 4
  %1075 = trunc i64 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1076, i8* %1077, align 1
  %1078 = icmp eq i64 %1059, 0
  %1079 = zext i1 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1079, i8* %1080, align 1
  %1081 = lshr i64 %1059, 63
  %1082 = trunc i64 %1081 to i8
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1082, i8* %1083, align 1
  %1084 = lshr i64 %1055, 63
  %1085 = lshr i64 %1056, 63
  %1086 = xor i64 %1081, %1084
  %1087 = xor i64 %1081, %1085
  %1088 = add i64 %1086, %1087
  %1089 = icmp eq i64 %1088, 2
  %1090 = zext i1 %1089 to i8
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1090, i8* %1091, align 1
  store %struct.Memory* %loadMem_400f43, %struct.Memory** %MEMORY
  %loadMem_400f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 33
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1094 to i64*
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 5
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 15
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %1100 to i64*
  %1101 = load i64, i64* %RBP.i451
  %1102 = sub i64 %1101, 72
  %1103 = load i64, i64* %PC.i449
  %1104 = add i64 %1103, 4
  store i64 %1104, i64* %PC.i449
  %1105 = inttoptr i64 %1102 to i32*
  %1106 = load i32, i32* %1105
  %1107 = sext i32 %1106 to i64
  store i64 %1107, i64* %RCX.i450, align 8
  store %struct.Memory* %loadMem_400f46, %struct.Memory** %MEMORY
  %loadMem_400f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 7
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %EDX.i446 = bitcast %union.anon* %1113 to i32*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 1
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 5
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RCX.i448 = bitcast %union.anon* %1119 to i64*
  %1120 = load i64, i64* %RAX.i447
  %1121 = load i64, i64* %RCX.i448
  %1122 = mul i64 %1121, 4
  %1123 = add i64 %1122, %1120
  %1124 = load i32, i32* %EDX.i446
  %1125 = zext i32 %1124 to i64
  %1126 = load i64, i64* %PC.i445
  %1127 = add i64 %1126, 3
  store i64 %1127, i64* %PC.i445
  %1128 = inttoptr i64 %1123 to i32*
  store i32 %1124, i32* %1128
  store %struct.Memory* %loadMem_400f4a, %struct.Memory** %MEMORY
  %loadMem_400f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 1
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 15
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %RBP.i444
  %1139 = sub i64 %1138, 72
  %1140 = load i64, i64* %PC.i442
  %1141 = add i64 %1140, 3
  store i64 %1141, i64* %PC.i442
  %1142 = inttoptr i64 %1139 to i32*
  %1143 = load i32, i32* %1142
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RAX.i443, align 8
  store %struct.Memory* %loadMem_400f4d, %struct.Memory** %MEMORY
  %loadMem_400f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 1
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %1150 to i64*
  %1151 = load i64, i64* %RAX.i441
  %1152 = load i64, i64* %PC.i440
  %1153 = add i64 %1152, 3
  store i64 %1153, i64* %PC.i440
  %1154 = trunc i64 %1151 to i32
  %1155 = add i32 1, %1154
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RAX.i441, align 8
  %1157 = icmp ult i32 %1155, %1154
  %1158 = icmp ult i32 %1155, 1
  %1159 = or i1 %1157, %1158
  %1160 = zext i1 %1159 to i8
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1160, i8* %1161, align 1
  %1162 = and i32 %1155, 255
  %1163 = call i32 @llvm.ctpop.i32(i32 %1162)
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1166, i8* %1167, align 1
  %1168 = xor i64 1, %1151
  %1169 = trunc i64 %1168 to i32
  %1170 = xor i32 %1169, %1155
  %1171 = lshr i32 %1170, 4
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1173, i8* %1174, align 1
  %1175 = icmp eq i32 %1155, 0
  %1176 = zext i1 %1175 to i8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1176, i8* %1177, align 1
  %1178 = lshr i32 %1155, 31
  %1179 = trunc i32 %1178 to i8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1179, i8* %1180, align 1
  %1181 = lshr i32 %1154, 31
  %1182 = xor i32 %1178, %1181
  %1183 = add i32 %1182, %1178
  %1184 = icmp eq i32 %1183, 2
  %1185 = zext i1 %1184 to i8
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1185, i8* %1186, align 1
  store %struct.Memory* %loadMem_400f50, %struct.Memory** %MEMORY
  %loadMem_400f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 33
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1189 to i64*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 1
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %EAX.i438 = bitcast %union.anon* %1192 to i32*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 15
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %1195 to i64*
  %1196 = load i64, i64* %RBP.i439
  %1197 = sub i64 %1196, 72
  %1198 = load i32, i32* %EAX.i438
  %1199 = zext i32 %1198 to i64
  %1200 = load i64, i64* %PC.i437
  %1201 = add i64 %1200, 3
  store i64 %1201, i64* %PC.i437
  %1202 = inttoptr i64 %1197 to i32*
  store i32 %1198, i32* %1202
  store %struct.Memory* %loadMem_400f53, %struct.Memory** %MEMORY
  %loadMem_400f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1205 to i64*
  %1206 = load i64, i64* %PC.i436
  %1207 = add i64 %1206, -84
  %1208 = load i64, i64* %PC.i436
  %1209 = add i64 %1208, 5
  store i64 %1209, i64* %PC.i436
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1207, i64* %1210, align 8
  store %struct.Memory* %loadMem_400f56, %struct.Memory** %MEMORY
  br label %block_.L_400f02

block_.L_400f5b:                                  ; preds = %block_.L_400f02
  %loadMem_400f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %1213 to i64*
  %1214 = load i64, i64* %PC.i435
  %1215 = add i64 %1214, 5
  %1216 = load i64, i64* %PC.i435
  %1217 = add i64 %1216, 5
  store i64 %1217, i64* %PC.i435
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1215, i64* %1218, align 8
  store %struct.Memory* %loadMem_400f5b, %struct.Memory** %MEMORY
  br label %block_.L_400f60

block_.L_400f60:                                  ; preds = %block_.L_400f5b
  %loadMem_400f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 1
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 15
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %1227 to i64*
  %1228 = load i64, i64* %RBP.i434
  %1229 = sub i64 %1228, 64
  %1230 = load i64, i64* %PC.i432
  %1231 = add i64 %1230, 3
  store i64 %1231, i64* %PC.i432
  %1232 = inttoptr i64 %1229 to i32*
  %1233 = load i32, i32* %1232
  %1234 = zext i32 %1233 to i64
  store i64 %1234, i64* %RAX.i433, align 8
  store %struct.Memory* %loadMem_400f60, %struct.Memory** %MEMORY
  %loadMem_400f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 1
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %RAX.i431
  %1242 = load i64, i64* %PC.i430
  %1243 = add i64 %1242, 3
  store i64 %1243, i64* %PC.i430
  %1244 = trunc i64 %1241 to i32
  %1245 = add i32 1, %1244
  %1246 = zext i32 %1245 to i64
  store i64 %1246, i64* %RAX.i431, align 8
  %1247 = icmp ult i32 %1245, %1244
  %1248 = icmp ult i32 %1245, 1
  %1249 = or i1 %1247, %1248
  %1250 = zext i1 %1249 to i8
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1250, i8* %1251, align 1
  %1252 = and i32 %1245, 255
  %1253 = call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1256, i8* %1257, align 1
  %1258 = xor i64 1, %1241
  %1259 = trunc i64 %1258 to i32
  %1260 = xor i32 %1259, %1245
  %1261 = lshr i32 %1260, 4
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1263, i8* %1264, align 1
  %1265 = icmp eq i32 %1245, 0
  %1266 = zext i1 %1265 to i8
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1266, i8* %1267, align 1
  %1268 = lshr i32 %1245, 31
  %1269 = trunc i32 %1268 to i8
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1269, i8* %1270, align 1
  %1271 = lshr i32 %1244, 31
  %1272 = xor i32 %1268, %1271
  %1273 = add i32 %1272, %1268
  %1274 = icmp eq i32 %1273, 2
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1275, i8* %1276, align 1
  store %struct.Memory* %loadMem_400f63, %struct.Memory** %MEMORY
  %loadMem_400f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 1
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %EAX.i428 = bitcast %union.anon* %1282 to i32*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 15
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RBP.i429
  %1287 = sub i64 %1286, 64
  %1288 = load i32, i32* %EAX.i428
  %1289 = zext i32 %1288 to i64
  %1290 = load i64, i64* %PC.i427
  %1291 = add i64 %1290, 3
  store i64 %1291, i64* %PC.i427
  %1292 = inttoptr i64 %1287 to i32*
  store i32 %1288, i32* %1292
  store %struct.Memory* %loadMem_400f66, %struct.Memory** %MEMORY
  %loadMem_400f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1295 to i64*
  %1296 = load i64, i64* %PC.i426
  %1297 = add i64 %1296, -127
  %1298 = load i64, i64* %PC.i426
  %1299 = add i64 %1298, 5
  store i64 %1299, i64* %PC.i426
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1297, i64* %1300, align 8
  store %struct.Memory* %loadMem_400f69, %struct.Memory** %MEMORY
  br label %block_.L_400eea

block_.L_400f6e:                                  ; preds = %block_.L_400eea
  %loadMem_400f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 33
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1303 to i64*
  %1304 = load i64, i64* %PC.i425
  %1305 = add i64 %1304, 5
  %1306 = load i64, i64* %PC.i425
  %1307 = add i64 %1306, 5
  store i64 %1307, i64* %PC.i425
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1305, i64* %1308, align 8
  store %struct.Memory* %loadMem_400f6e, %struct.Memory** %MEMORY
  br label %block_.L_400f73

block_.L_400f73:                                  ; preds = %block_.L_400f6e
  %loadMem_400f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 1
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 15
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %RBP.i424
  %1319 = sub i64 %1318, 68
  %1320 = load i64, i64* %PC.i422
  %1321 = add i64 %1320, 3
  store i64 %1321, i64* %PC.i422
  %1322 = inttoptr i64 %1319 to i32*
  %1323 = load i32, i32* %1322
  %1324 = zext i32 %1323 to i64
  store i64 %1324, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_400f73, %struct.Memory** %MEMORY
  %loadMem_400f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 33
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 1
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %1330 to i64*
  %1331 = load i64, i64* %RAX.i421
  %1332 = load i64, i64* %PC.i420
  %1333 = add i64 %1332, 3
  store i64 %1333, i64* %PC.i420
  %1334 = trunc i64 %1331 to i32
  %1335 = add i32 1, %1334
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RAX.i421, align 8
  %1337 = icmp ult i32 %1335, %1334
  %1338 = icmp ult i32 %1335, 1
  %1339 = or i1 %1337, %1338
  %1340 = zext i1 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1340, i8* %1341, align 1
  %1342 = and i32 %1335, 255
  %1343 = call i32 @llvm.ctpop.i32(i32 %1342)
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1346, i8* %1347, align 1
  %1348 = xor i64 1, %1331
  %1349 = trunc i64 %1348 to i32
  %1350 = xor i32 %1349, %1335
  %1351 = lshr i32 %1350, 4
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1353, i8* %1354, align 1
  %1355 = icmp eq i32 %1335, 0
  %1356 = zext i1 %1355 to i8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1356, i8* %1357, align 1
  %1358 = lshr i32 %1335, 31
  %1359 = trunc i32 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1359, i8* %1360, align 1
  %1361 = lshr i32 %1334, 31
  %1362 = xor i32 %1358, %1361
  %1363 = add i32 %1362, %1358
  %1364 = icmp eq i32 %1363, 2
  %1365 = zext i1 %1364 to i8
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1365, i8* %1366, align 1
  store %struct.Memory* %loadMem_400f76, %struct.Memory** %MEMORY
  %loadMem_400f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 1
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %EAX.i418 = bitcast %union.anon* %1372 to i32*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 15
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %1375 to i64*
  %1376 = load i64, i64* %RBP.i419
  %1377 = sub i64 %1376, 68
  %1378 = load i32, i32* %EAX.i418
  %1379 = zext i32 %1378 to i64
  %1380 = load i64, i64* %PC.i417
  %1381 = add i64 %1380, 3
  store i64 %1381, i64* %PC.i417
  %1382 = inttoptr i64 %1377 to i32*
  store i32 %1378, i32* %1382
  store %struct.Memory* %loadMem_400f79, %struct.Memory** %MEMORY
  %loadMem_400f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 33
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1385 to i64*
  %1386 = load i64, i64* %PC.i416
  %1387 = add i64 %1386, -169
  %1388 = load i64, i64* %PC.i416
  %1389 = add i64 %1388, 5
  store i64 %1389, i64* %PC.i416
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1387, i64* %1390, align 8
  store %struct.Memory* %loadMem_400f7c, %struct.Memory** %MEMORY
  br label %block_.L_400ed3

block_.L_400f81:                                  ; preds = %block_.L_400ed3
  %loadMem_400f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 33
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 15
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %1396 to i64*
  %1397 = load i64, i64* %RBP.i415
  %1398 = sub i64 %1397, 68
  %1399 = load i64, i64* %PC.i414
  %1400 = add i64 %1399, 7
  store i64 %1400, i64* %PC.i414
  %1401 = inttoptr i64 %1398 to i32*
  store i32 0, i32* %1401
  store %struct.Memory* %loadMem_400f81, %struct.Memory** %MEMORY
  br label %block_.L_400f88

block_.L_400f88:                                  ; preds = %block_.L_4010d7, %block_.L_400f81
  %loadMem_400f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 1
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 15
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %1410 to i64*
  %1411 = load i64, i64* %RBP.i413
  %1412 = sub i64 %1411, 68
  %1413 = load i64, i64* %PC.i411
  %1414 = add i64 %1413, 3
  store i64 %1414, i64* %PC.i411
  %1415 = inttoptr i64 %1412 to i32*
  %1416 = load i32, i32* %1415
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RAX.i412, align 8
  store %struct.Memory* %loadMem_400f88, %struct.Memory** %MEMORY
  %loadMem_400f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 5
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 15
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %RBP.i410
  %1428 = sub i64 %1427, 8
  %1429 = load i64, i64* %PC.i408
  %1430 = add i64 %1429, 3
  store i64 %1430, i64* %PC.i408
  %1431 = inttoptr i64 %1428 to i32*
  %1432 = load i32, i32* %1431
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RCX.i409, align 8
  store %struct.Memory* %loadMem_400f8b, %struct.Memory** %MEMORY
  %loadMem_400f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 33
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 5
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %RCX.i407
  %1441 = load i64, i64* %PC.i406
  %1442 = add i64 %1441, 3
  store i64 %1442, i64* %PC.i406
  %1443 = trunc i64 %1440 to i32
  %1444 = sub i32 %1443, 1
  %1445 = zext i32 %1444 to i64
  store i64 %1445, i64* %RCX.i407, align 8
  %1446 = icmp ult i32 %1443, 1
  %1447 = zext i1 %1446 to i8
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1447, i8* %1448, align 1
  %1449 = and i32 %1444, 255
  %1450 = call i32 @llvm.ctpop.i32(i32 %1449)
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = xor i8 %1452, 1
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1453, i8* %1454, align 1
  %1455 = xor i64 1, %1440
  %1456 = trunc i64 %1455 to i32
  %1457 = xor i32 %1456, %1444
  %1458 = lshr i32 %1457, 4
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1460, i8* %1461, align 1
  %1462 = icmp eq i32 %1444, 0
  %1463 = zext i1 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1463, i8* %1464, align 1
  %1465 = lshr i32 %1444, 31
  %1466 = trunc i32 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1466, i8* %1467, align 1
  %1468 = lshr i32 %1443, 31
  %1469 = xor i32 %1465, %1468
  %1470 = add i32 %1469, %1468
  %1471 = icmp eq i32 %1470, 2
  %1472 = zext i1 %1471 to i8
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1472, i8* %1473, align 1
  store %struct.Memory* %loadMem_400f8e, %struct.Memory** %MEMORY
  %loadMem_400f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 33
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 1
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %EAX.i404 = bitcast %union.anon* %1479 to i32*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 5
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %ECX.i405 = bitcast %union.anon* %1482 to i32*
  %1483 = load i32, i32* %EAX.i404
  %1484 = zext i32 %1483 to i64
  %1485 = load i32, i32* %ECX.i405
  %1486 = zext i32 %1485 to i64
  %1487 = load i64, i64* %PC.i403
  %1488 = add i64 %1487, 2
  store i64 %1488, i64* %PC.i403
  %1489 = sub i32 %1483, %1485
  %1490 = icmp ult i32 %1483, %1485
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1491, i8* %1492, align 1
  %1493 = and i32 %1489, 255
  %1494 = call i32 @llvm.ctpop.i32(i32 %1493)
  %1495 = trunc i32 %1494 to i8
  %1496 = and i8 %1495, 1
  %1497 = xor i8 %1496, 1
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1497, i8* %1498, align 1
  %1499 = xor i64 %1486, %1484
  %1500 = trunc i64 %1499 to i32
  %1501 = xor i32 %1500, %1489
  %1502 = lshr i32 %1501, 4
  %1503 = trunc i32 %1502 to i8
  %1504 = and i8 %1503, 1
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1504, i8* %1505, align 1
  %1506 = icmp eq i32 %1489, 0
  %1507 = zext i1 %1506 to i8
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1507, i8* %1508, align 1
  %1509 = lshr i32 %1489, 31
  %1510 = trunc i32 %1509 to i8
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1510, i8* %1511, align 1
  %1512 = lshr i32 %1483, 31
  %1513 = lshr i32 %1485, 31
  %1514 = xor i32 %1513, %1512
  %1515 = xor i32 %1509, %1512
  %1516 = add i32 %1515, %1514
  %1517 = icmp eq i32 %1516, 2
  %1518 = zext i1 %1517 to i8
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1518, i8* %1519, align 1
  store %struct.Memory* %loadMem_400f91, %struct.Memory** %MEMORY
  %loadMem_400f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 33
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1522 to i64*
  %1523 = load i64, i64* %PC.i402
  %1524 = add i64 %1523, 338
  %1525 = load i64, i64* %PC.i402
  %1526 = add i64 %1525, 6
  %1527 = load i64, i64* %PC.i402
  %1528 = add i64 %1527, 6
  store i64 %1528, i64* %PC.i402
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1530 = load i8, i8* %1529, align 1
  %1531 = icmp eq i8 %1530, 0
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1533 = load i8, i8* %1532, align 1
  %1534 = icmp ne i8 %1533, 0
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1536 = load i8, i8* %1535, align 1
  %1537 = icmp ne i8 %1536, 0
  %1538 = xor i1 %1534, %1537
  %1539 = xor i1 %1538, true
  %1540 = and i1 %1531, %1539
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %BRANCH_TAKEN, align 1
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1543 = select i1 %1540, i64 %1524, i64 %1526
  store i64 %1543, i64* %1542, align 8
  store %struct.Memory* %loadMem_400f93, %struct.Memory** %MEMORY
  %loadBr_400f93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f93 = icmp eq i8 %loadBr_400f93, 1
  br i1 %cmpBr_400f93, label %block_.L_4010e5, label %block_400f99

block_400f99:                                     ; preds = %block_.L_400f88
  %loadMem_400f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 1
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 15
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %RBP.i401
  %1554 = sub i64 %1553, 68
  %1555 = load i64, i64* %PC.i399
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC.i399
  %1557 = inttoptr i64 %1554 to i32*
  %1558 = load i32, i32* %1557
  %1559 = zext i32 %1558 to i64
  store i64 %1559, i64* %RAX.i400, align 8
  store %struct.Memory* %loadMem_400f99, %struct.Memory** %MEMORY
  %loadMem_400f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 33
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 1
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %EAX.i397 = bitcast %union.anon* %1565 to i32*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 15
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %1568 to i64*
  %1569 = load i64, i64* %RBP.i398
  %1570 = sub i64 %1569, 64
  %1571 = load i32, i32* %EAX.i397
  %1572 = zext i32 %1571 to i64
  %1573 = load i64, i64* %PC.i396
  %1574 = add i64 %1573, 3
  store i64 %1574, i64* %PC.i396
  %1575 = inttoptr i64 %1570 to i32*
  store i32 %1571, i32* %1575
  store %struct.Memory* %loadMem_400f9c, %struct.Memory** %MEMORY
  br label %block_.L_400f9f

block_.L_400f9f:                                  ; preds = %block_.L_401085, %block_400f99
  %loadMem_400f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 1
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 15
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %1584 to i64*
  %1585 = load i64, i64* %RBP.i395
  %1586 = sub i64 %1585, 64
  %1587 = load i64, i64* %PC.i393
  %1588 = add i64 %1587, 3
  store i64 %1588, i64* %PC.i393
  %1589 = inttoptr i64 %1586 to i32*
  %1590 = load i32, i32* %1589
  %1591 = zext i32 %1590 to i64
  store i64 %1591, i64* %RAX.i394, align 8
  store %struct.Memory* %loadMem_400f9f, %struct.Memory** %MEMORY
  %loadMem_400fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 5
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 15
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %1600 to i64*
  %1601 = load i64, i64* %RBP.i392
  %1602 = sub i64 %1601, 8
  %1603 = load i64, i64* %PC.i390
  %1604 = add i64 %1603, 3
  store i64 %1604, i64* %PC.i390
  %1605 = inttoptr i64 %1602 to i32*
  %1606 = load i32, i32* %1605
  %1607 = zext i32 %1606 to i64
  store i64 %1607, i64* %RCX.i391, align 8
  store %struct.Memory* %loadMem_400fa2, %struct.Memory** %MEMORY
  %loadMem_400fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 5
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %1613 to i64*
  %1614 = load i64, i64* %RCX.i389
  %1615 = load i64, i64* %PC.i388
  %1616 = add i64 %1615, 3
  store i64 %1616, i64* %PC.i388
  %1617 = trunc i64 %1614 to i32
  %1618 = sub i32 %1617, 1
  %1619 = zext i32 %1618 to i64
  store i64 %1619, i64* %RCX.i389, align 8
  %1620 = icmp ult i32 %1617, 1
  %1621 = zext i1 %1620 to i8
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1621, i8* %1622, align 1
  %1623 = and i32 %1618, 255
  %1624 = call i32 @llvm.ctpop.i32(i32 %1623)
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  %1627 = xor i8 %1626, 1
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1627, i8* %1628, align 1
  %1629 = xor i64 1, %1614
  %1630 = trunc i64 %1629 to i32
  %1631 = xor i32 %1630, %1618
  %1632 = lshr i32 %1631, 4
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1634, i8* %1635, align 1
  %1636 = icmp eq i32 %1618, 0
  %1637 = zext i1 %1636 to i8
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1637, i8* %1638, align 1
  %1639 = lshr i32 %1618, 31
  %1640 = trunc i32 %1639 to i8
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1640, i8* %1641, align 1
  %1642 = lshr i32 %1617, 31
  %1643 = xor i32 %1639, %1642
  %1644 = add i32 %1643, %1642
  %1645 = icmp eq i32 %1644, 2
  %1646 = zext i1 %1645 to i8
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1646, i8* %1647, align 1
  store %struct.Memory* %loadMem_400fa5, %struct.Memory** %MEMORY
  %loadMem_400fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 33
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 1
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %EAX.i386 = bitcast %union.anon* %1653 to i32*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 5
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %ECX.i387 = bitcast %union.anon* %1656 to i32*
  %1657 = load i32, i32* %EAX.i386
  %1658 = zext i32 %1657 to i64
  %1659 = load i32, i32* %ECX.i387
  %1660 = zext i32 %1659 to i64
  %1661 = load i64, i64* %PC.i385
  %1662 = add i64 %1661, 2
  store i64 %1662, i64* %PC.i385
  %1663 = sub i32 %1657, %1659
  %1664 = icmp ult i32 %1657, %1659
  %1665 = zext i1 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1665, i8* %1666, align 1
  %1667 = and i32 %1663, 255
  %1668 = call i32 @llvm.ctpop.i32(i32 %1667)
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  %1671 = xor i8 %1670, 1
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1671, i8* %1672, align 1
  %1673 = xor i64 %1660, %1658
  %1674 = trunc i64 %1673 to i32
  %1675 = xor i32 %1674, %1663
  %1676 = lshr i32 %1675, 4
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1678, i8* %1679, align 1
  %1680 = icmp eq i32 %1663, 0
  %1681 = zext i1 %1680 to i8
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1681, i8* %1682, align 1
  %1683 = lshr i32 %1663, 31
  %1684 = trunc i32 %1683 to i8
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1684, i8* %1685, align 1
  %1686 = lshr i32 %1657, 31
  %1687 = lshr i32 %1659, 31
  %1688 = xor i32 %1687, %1686
  %1689 = xor i32 %1683, %1686
  %1690 = add i32 %1689, %1688
  %1691 = icmp eq i32 %1690, 2
  %1692 = zext i1 %1691 to i8
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1692, i8* %1693, align 1
  store %struct.Memory* %loadMem_400fa8, %struct.Memory** %MEMORY
  %loadMem_400faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1696 to i64*
  %1697 = load i64, i64* %PC.i384
  %1698 = add i64 %1697, 296
  %1699 = load i64, i64* %PC.i384
  %1700 = add i64 %1699, 6
  %1701 = load i64, i64* %PC.i384
  %1702 = add i64 %1701, 6
  store i64 %1702, i64* %PC.i384
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1704 = load i8, i8* %1703, align 1
  %1705 = icmp eq i8 %1704, 0
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1707 = load i8, i8* %1706, align 1
  %1708 = icmp ne i8 %1707, 0
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1710 = load i8, i8* %1709, align 1
  %1711 = icmp ne i8 %1710, 0
  %1712 = xor i1 %1708, %1711
  %1713 = xor i1 %1712, true
  %1714 = and i1 %1705, %1713
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %BRANCH_TAKEN, align 1
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1717 = select i1 %1714, i64 %1698, i64 %1700
  store i64 %1717, i64* %1716, align 8
  store %struct.Memory* %loadMem_400faa, %struct.Memory** %MEMORY
  %loadBr_400faa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400faa = icmp eq i8 %loadBr_400faa, 1
  br i1 %cmpBr_400faa, label %block_.L_4010d2, label %block_400fb0

block_400fb0:                                     ; preds = %block_.L_400f9f
  %loadMem_400fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 33
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 1
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %1723 to i64*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 15
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %1726 to i64*
  %1727 = load i64, i64* %RBP.i383
  %1728 = sub i64 %1727, 48
  %1729 = load i64, i64* %PC.i381
  %1730 = add i64 %1729, 4
  store i64 %1730, i64* %PC.i381
  %1731 = inttoptr i64 %1728 to i64*
  %1732 = load i64, i64* %1731
  store i64 %1732, i64* %RAX.i382, align 8
  store %struct.Memory* %loadMem_400fb0, %struct.Memory** %MEMORY
  %loadMem_400fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 5
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RCX.i379 = bitcast %union.anon* %1738 to i64*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 15
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %1741 to i64*
  %1742 = load i64, i64* %RBP.i380
  %1743 = sub i64 %1742, 68
  %1744 = load i64, i64* %PC.i378
  %1745 = add i64 %1744, 4
  store i64 %1745, i64* %PC.i378
  %1746 = inttoptr i64 %1743 to i32*
  %1747 = load i32, i32* %1746
  %1748 = sext i32 %1747 to i64
  store i64 %1748, i64* %RCX.i379, align 8
  store %struct.Memory* %loadMem_400fb4, %struct.Memory** %MEMORY
  %loadMem_400fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 5
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RCX.i377
  %1756 = load i64, i64* %PC.i376
  %1757 = add i64 %1756, 7
  store i64 %1757, i64* %PC.i376
  %1758 = sext i64 %1755 to i128
  %1759 = and i128 %1758, -18446744073709551616
  %1760 = zext i64 %1755 to i128
  %1761 = or i128 %1759, %1760
  %1762 = mul i128 1536, %1761
  %1763 = trunc i128 %1762 to i64
  store i64 %1763, i64* %RCX.i377, align 8
  %1764 = sext i64 %1763 to i128
  %1765 = icmp ne i128 %1764, %1762
  %1766 = zext i1 %1765 to i8
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1766, i8* %1767, align 1
  %1768 = trunc i128 %1762 to i32
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1769, align 1
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1770, align 1
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1771, align 1
  %1772 = lshr i64 %1763, 63
  %1773 = trunc i64 %1772 to i8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1773, i8* %1774, align 1
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1766, i8* %1775, align 1
  store %struct.Memory* %loadMem_400fb8, %struct.Memory** %MEMORY
  %loadMem_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 33
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 1
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 5
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %1784 to i64*
  %1785 = load i64, i64* %RAX.i374
  %1786 = load i64, i64* %RCX.i375
  %1787 = load i64, i64* %PC.i373
  %1788 = add i64 %1787, 3
  store i64 %1788, i64* %PC.i373
  %1789 = add i64 %1786, %1785
  store i64 %1789, i64* %RAX.i374, align 8
  %1790 = icmp ult i64 %1789, %1785
  %1791 = icmp ult i64 %1789, %1786
  %1792 = or i1 %1790, %1791
  %1793 = zext i1 %1792 to i8
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1793, i8* %1794, align 1
  %1795 = trunc i64 %1789 to i32
  %1796 = and i32 %1795, 255
  %1797 = call i32 @llvm.ctpop.i32(i32 %1796)
  %1798 = trunc i32 %1797 to i8
  %1799 = and i8 %1798, 1
  %1800 = xor i8 %1799, 1
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1800, i8* %1801, align 1
  %1802 = xor i64 %1786, %1785
  %1803 = xor i64 %1802, %1789
  %1804 = lshr i64 %1803, 4
  %1805 = trunc i64 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1806, i8* %1807, align 1
  %1808 = icmp eq i64 %1789, 0
  %1809 = zext i1 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1809, i8* %1810, align 1
  %1811 = lshr i64 %1789, 63
  %1812 = trunc i64 %1811 to i8
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1812, i8* %1813, align 1
  %1814 = lshr i64 %1785, 63
  %1815 = lshr i64 %1786, 63
  %1816 = xor i64 %1811, %1814
  %1817 = xor i64 %1811, %1815
  %1818 = add i64 %1816, %1817
  %1819 = icmp eq i64 %1818, 2
  %1820 = zext i1 %1819 to i8
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1820, i8* %1821, align 1
  store %struct.Memory* %loadMem_400fbf, %struct.Memory** %MEMORY
  %loadMem_400fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 33
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1824 to i64*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 5
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RCX.i371 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 15
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %1830 to i64*
  %1831 = load i64, i64* %RBP.i372
  %1832 = sub i64 %1831, 64
  %1833 = load i64, i64* %PC.i370
  %1834 = add i64 %1833, 4
  store i64 %1834, i64* %PC.i370
  %1835 = inttoptr i64 %1832 to i32*
  %1836 = load i32, i32* %1835
  %1837 = sext i32 %1836 to i64
  store i64 %1837, i64* %RCX.i371, align 8
  store %struct.Memory* %loadMem_400fc2, %struct.Memory** %MEMORY
  %loadMem_400fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 33
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 5
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %RCX.i369
  %1845 = load i64, i64* %PC.i368
  %1846 = add i64 %1845, 4
  store i64 %1846, i64* %PC.i368
  %1847 = shl i64 %1844, 7
  %1848 = icmp slt i64 %1847, 0
  %1849 = shl i64 %1847, 1
  store i64 %1849, i64* %RCX.i369, align 8
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1851 = zext i1 %1848 to i8
  store i8 %1851, i8* %1850, align 1
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1853 = trunc i64 %1849 to i32
  store i8 1, i8* %1852, align 1
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1854, align 1
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1856 = icmp eq i64 %1849, 0
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %1855, align 1
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1859 = lshr i64 %1849, 63
  %1860 = trunc i64 %1859 to i8
  store i8 %1860, i8* %1858, align 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1861, align 1
  store %struct.Memory* %loadMem_400fc6, %struct.Memory** %MEMORY
  %loadMem_400fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 33
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 1
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 5
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %1870 to i64*
  %1871 = load i64, i64* %RAX.i366
  %1872 = load i64, i64* %RCX.i367
  %1873 = load i64, i64* %PC.i365
  %1874 = add i64 %1873, 3
  store i64 %1874, i64* %PC.i365
  %1875 = add i64 %1872, %1871
  store i64 %1875, i64* %RAX.i366, align 8
  %1876 = icmp ult i64 %1875, %1871
  %1877 = icmp ult i64 %1875, %1872
  %1878 = or i1 %1876, %1877
  %1879 = zext i1 %1878 to i8
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1879, i8* %1880, align 1
  %1881 = trunc i64 %1875 to i32
  %1882 = and i32 %1881, 255
  %1883 = call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1886, i8* %1887, align 1
  %1888 = xor i64 %1872, %1871
  %1889 = xor i64 %1888, %1875
  %1890 = lshr i64 %1889, 4
  %1891 = trunc i64 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1892, i8* %1893, align 1
  %1894 = icmp eq i64 %1875, 0
  %1895 = zext i1 %1894 to i8
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1895, i8* %1896, align 1
  %1897 = lshr i64 %1875, 63
  %1898 = trunc i64 %1897 to i8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1898, i8* %1899, align 1
  %1900 = lshr i64 %1871, 63
  %1901 = lshr i64 %1872, 63
  %1902 = xor i64 %1897, %1900
  %1903 = xor i64 %1897, %1901
  %1904 = add i64 %1902, %1903
  %1905 = icmp eq i64 %1904, 2
  %1906 = zext i1 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1906, i8* %1907, align 1
  store %struct.Memory* %loadMem_400fca, %struct.Memory** %MEMORY
  %loadMem_400fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 1
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 7
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %RAX.i363
  %1918 = load i64, i64* %PC.i362
  %1919 = add i64 %1918, 2
  store i64 %1919, i64* %PC.i362
  %1920 = inttoptr i64 %1917 to i32*
  %1921 = load i32, i32* %1920
  %1922 = zext i32 %1921 to i64
  store i64 %1922, i64* %RDX.i364, align 8
  store %struct.Memory* %loadMem_400fcd, %struct.Memory** %MEMORY
  %loadMem_400fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 33
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 1
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 15
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %1931 to i64*
  %1932 = load i64, i64* %RBP.i361
  %1933 = sub i64 %1932, 56
  %1934 = load i64, i64* %PC.i359
  %1935 = add i64 %1934, 4
  store i64 %1935, i64* %PC.i359
  %1936 = inttoptr i64 %1933 to i64*
  %1937 = load i64, i64* %1936
  store i64 %1937, i64* %RAX.i360, align 8
  store %struct.Memory* %loadMem_400fcf, %struct.Memory** %MEMORY
  %loadMem_400fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 5
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 15
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %1946 to i64*
  %1947 = load i64, i64* %RBP.i358
  %1948 = sub i64 %1947, 68
  %1949 = load i64, i64* %PC.i356
  %1950 = add i64 %1949, 4
  store i64 %1950, i64* %PC.i356
  %1951 = inttoptr i64 %1948 to i32*
  %1952 = load i32, i32* %1951
  %1953 = sext i32 %1952 to i64
  store i64 %1953, i64* %RCX.i357, align 8
  store %struct.Memory* %loadMem_400fd3, %struct.Memory** %MEMORY
  %loadMem_400fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 33
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 5
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %1959 to i64*
  %1960 = load i64, i64* %RCX.i355
  %1961 = load i64, i64* %PC.i354
  %1962 = add i64 %1961, 7
  store i64 %1962, i64* %PC.i354
  %1963 = sext i64 %1960 to i128
  %1964 = and i128 %1963, -18446744073709551616
  %1965 = zext i64 %1960 to i128
  %1966 = or i128 %1964, %1965
  %1967 = mul i128 1536, %1966
  %1968 = trunc i128 %1967 to i64
  store i64 %1968, i64* %RCX.i355, align 8
  %1969 = sext i64 %1968 to i128
  %1970 = icmp ne i128 %1969, %1967
  %1971 = zext i1 %1970 to i8
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1971, i8* %1972, align 1
  %1973 = trunc i128 %1967 to i32
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1974, align 1
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1975, align 1
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1976, align 1
  %1977 = lshr i64 %1968, 63
  %1978 = trunc i64 %1977 to i8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1978, i8* %1979, align 1
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1971, i8* %1980, align 1
  store %struct.Memory* %loadMem_400fd7, %struct.Memory** %MEMORY
  %loadMem_400fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 33
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1983 to i64*
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 1
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %1986 to i64*
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 5
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %1989 to i64*
  %1990 = load i64, i64* %RAX.i352
  %1991 = load i64, i64* %RCX.i353
  %1992 = load i64, i64* %PC.i351
  %1993 = add i64 %1992, 3
  store i64 %1993, i64* %PC.i351
  %1994 = add i64 %1991, %1990
  store i64 %1994, i64* %RAX.i352, align 8
  %1995 = icmp ult i64 %1994, %1990
  %1996 = icmp ult i64 %1994, %1991
  %1997 = or i1 %1995, %1996
  %1998 = zext i1 %1997 to i8
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1998, i8* %1999, align 1
  %2000 = trunc i64 %1994 to i32
  %2001 = and i32 %2000, 255
  %2002 = call i32 @llvm.ctpop.i32(i32 %2001)
  %2003 = trunc i32 %2002 to i8
  %2004 = and i8 %2003, 1
  %2005 = xor i8 %2004, 1
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2005, i8* %2006, align 1
  %2007 = xor i64 %1991, %1990
  %2008 = xor i64 %2007, %1994
  %2009 = lshr i64 %2008, 4
  %2010 = trunc i64 %2009 to i8
  %2011 = and i8 %2010, 1
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2011, i8* %2012, align 1
  %2013 = icmp eq i64 %1994, 0
  %2014 = zext i1 %2013 to i8
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2014, i8* %2015, align 1
  %2016 = lshr i64 %1994, 63
  %2017 = trunc i64 %2016 to i8
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2017, i8* %2018, align 1
  %2019 = lshr i64 %1990, 63
  %2020 = lshr i64 %1991, 63
  %2021 = xor i64 %2016, %2019
  %2022 = xor i64 %2016, %2020
  %2023 = add i64 %2021, %2022
  %2024 = icmp eq i64 %2023, 2
  %2025 = zext i1 %2024 to i8
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2025, i8* %2026, align 1
  store %struct.Memory* %loadMem_400fde, %struct.Memory** %MEMORY
  %loadMem_400fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 33
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2029 to i64*
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 5
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 15
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %2035 to i64*
  %2036 = load i64, i64* %RBP.i350
  %2037 = sub i64 %2036, 64
  %2038 = load i64, i64* %PC.i348
  %2039 = add i64 %2038, 4
  store i64 %2039, i64* %PC.i348
  %2040 = inttoptr i64 %2037 to i32*
  %2041 = load i32, i32* %2040
  %2042 = sext i32 %2041 to i64
  store i64 %2042, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_400fe1, %struct.Memory** %MEMORY
  %loadMem_400fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2045 to i64*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 5
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %2048 to i64*
  %2049 = load i64, i64* %RCX.i347
  %2050 = load i64, i64* %PC.i346
  %2051 = add i64 %2050, 4
  store i64 %2051, i64* %PC.i346
  %2052 = shl i64 %2049, 7
  %2053 = icmp slt i64 %2052, 0
  %2054 = shl i64 %2052, 1
  store i64 %2054, i64* %RCX.i347, align 8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2056 = zext i1 %2053 to i8
  store i8 %2056, i8* %2055, align 1
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2058 = trunc i64 %2054 to i32
  store i8 1, i8* %2057, align 1
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2059, align 1
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2061 = icmp eq i64 %2054, 0
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %2060, align 1
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2064 = lshr i64 %2054, 63
  %2065 = trunc i64 %2064 to i8
  store i8 %2065, i8* %2063, align 1
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2066, align 1
  store %struct.Memory* %loadMem_400fe5, %struct.Memory** %MEMORY
  %loadMem_400fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 1
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 5
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %2075 to i64*
  %2076 = load i64, i64* %RAX.i344
  %2077 = load i64, i64* %RCX.i345
  %2078 = load i64, i64* %PC.i343
  %2079 = add i64 %2078, 3
  store i64 %2079, i64* %PC.i343
  %2080 = add i64 %2077, %2076
  store i64 %2080, i64* %RAX.i344, align 8
  %2081 = icmp ult i64 %2080, %2076
  %2082 = icmp ult i64 %2080, %2077
  %2083 = or i1 %2081, %2082
  %2084 = zext i1 %2083 to i8
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2084, i8* %2085, align 1
  %2086 = trunc i64 %2080 to i32
  %2087 = and i32 %2086, 255
  %2088 = call i32 @llvm.ctpop.i32(i32 %2087)
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  %2091 = xor i8 %2090, 1
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2091, i8* %2092, align 1
  %2093 = xor i64 %2077, %2076
  %2094 = xor i64 %2093, %2080
  %2095 = lshr i64 %2094, 4
  %2096 = trunc i64 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2097, i8* %2098, align 1
  %2099 = icmp eq i64 %2080, 0
  %2100 = zext i1 %2099 to i8
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2100, i8* %2101, align 1
  %2102 = lshr i64 %2080, 63
  %2103 = trunc i64 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2103, i8* %2104, align 1
  %2105 = lshr i64 %2076, 63
  %2106 = lshr i64 %2077, 63
  %2107 = xor i64 %2102, %2105
  %2108 = xor i64 %2102, %2106
  %2109 = add i64 %2107, %2108
  %2110 = icmp eq i64 %2109, 2
  %2111 = zext i1 %2110 to i8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2111, i8* %2112, align 1
  store %struct.Memory* %loadMem_400fe9, %struct.Memory** %MEMORY
  %loadMem_400fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 7
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %EDX.i341 = bitcast %union.anon* %2118 to i32*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 1
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %2121 to i64*
  %2122 = load i64, i64* %RAX.i342
  %2123 = load i32, i32* %EDX.i341
  %2124 = zext i32 %2123 to i64
  %2125 = load i64, i64* %PC.i340
  %2126 = add i64 %2125, 2
  store i64 %2126, i64* %PC.i340
  %2127 = inttoptr i64 %2122 to i32*
  store i32 %2123, i32* %2127
  store %struct.Memory* %loadMem_400fec, %struct.Memory** %MEMORY
  %loadMem_400fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 33
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2130 to i64*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 15
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %2133 to i64*
  %2134 = load i64, i64* %RBP.i339
  %2135 = sub i64 %2134, 72
  %2136 = load i64, i64* %PC.i338
  %2137 = add i64 %2136, 7
  store i64 %2137, i64* %PC.i338
  %2138 = inttoptr i64 %2135 to i32*
  store i32 1, i32* %2138
  store %struct.Memory* %loadMem_400fee, %struct.Memory** %MEMORY
  br label %block_.L_400ff5

block_.L_400ff5:                                  ; preds = %block_401006, %block_400fb0
  %loadMem_400ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 1
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 15
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %2147 to i64*
  %2148 = load i64, i64* %RBP.i337
  %2149 = sub i64 %2148, 72
  %2150 = load i64, i64* %PC.i335
  %2151 = add i64 %2150, 3
  store i64 %2151, i64* %PC.i335
  %2152 = inttoptr i64 %2149 to i32*
  %2153 = load i32, i32* %2152
  %2154 = zext i32 %2153 to i64
  store i64 %2154, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_400ff5, %struct.Memory** %MEMORY
  %loadMem_400ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 33
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 5
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 15
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %2163 to i64*
  %2164 = load i64, i64* %RBP.i334
  %2165 = sub i64 %2164, 12
  %2166 = load i64, i64* %PC.i332
  %2167 = add i64 %2166, 3
  store i64 %2167, i64* %PC.i332
  %2168 = inttoptr i64 %2165 to i32*
  %2169 = load i32, i32* %2168
  %2170 = zext i32 %2169 to i64
  store i64 %2170, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_400ff8, %struct.Memory** %MEMORY
  %loadMem_400ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 33
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2173 to i64*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 5
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %2176 to i64*
  %2177 = load i64, i64* %RCX.i331
  %2178 = load i64, i64* %PC.i330
  %2179 = add i64 %2178, 3
  store i64 %2179, i64* %PC.i330
  %2180 = trunc i64 %2177 to i32
  %2181 = sub i32 %2180, 1
  %2182 = zext i32 %2181 to i64
  store i64 %2182, i64* %RCX.i331, align 8
  %2183 = icmp ult i32 %2180, 1
  %2184 = zext i1 %2183 to i8
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2184, i8* %2185, align 1
  %2186 = and i32 %2181, 255
  %2187 = call i32 @llvm.ctpop.i32(i32 %2186)
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = xor i8 %2189, 1
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2190, i8* %2191, align 1
  %2192 = xor i64 1, %2177
  %2193 = trunc i64 %2192 to i32
  %2194 = xor i32 %2193, %2181
  %2195 = lshr i32 %2194, 4
  %2196 = trunc i32 %2195 to i8
  %2197 = and i8 %2196, 1
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2197, i8* %2198, align 1
  %2199 = icmp eq i32 %2181, 0
  %2200 = zext i1 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2200, i8* %2201, align 1
  %2202 = lshr i32 %2181, 31
  %2203 = trunc i32 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2203, i8* %2204, align 1
  %2205 = lshr i32 %2180, 31
  %2206 = xor i32 %2202, %2205
  %2207 = add i32 %2206, %2205
  %2208 = icmp eq i32 %2207, 2
  %2209 = zext i1 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2209, i8* %2210, align 1
  store %struct.Memory* %loadMem_400ffb, %struct.Memory** %MEMORY
  %loadMem_400ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 33
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2213 to i64*
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 1
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %EAX.i328 = bitcast %union.anon* %2216 to i32*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 5
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %ECX.i329 = bitcast %union.anon* %2219 to i32*
  %2220 = load i32, i32* %EAX.i328
  %2221 = zext i32 %2220 to i64
  %2222 = load i32, i32* %ECX.i329
  %2223 = zext i32 %2222 to i64
  %2224 = load i64, i64* %PC.i327
  %2225 = add i64 %2224, 2
  store i64 %2225, i64* %PC.i327
  %2226 = sub i32 %2220, %2222
  %2227 = icmp ult i32 %2220, %2222
  %2228 = zext i1 %2227 to i8
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2228, i8* %2229, align 1
  %2230 = and i32 %2226, 255
  %2231 = call i32 @llvm.ctpop.i32(i32 %2230)
  %2232 = trunc i32 %2231 to i8
  %2233 = and i8 %2232, 1
  %2234 = xor i8 %2233, 1
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2234, i8* %2235, align 1
  %2236 = xor i64 %2223, %2221
  %2237 = trunc i64 %2236 to i32
  %2238 = xor i32 %2237, %2226
  %2239 = lshr i32 %2238, 4
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2241, i8* %2242, align 1
  %2243 = icmp eq i32 %2226, 0
  %2244 = zext i1 %2243 to i8
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2244, i8* %2245, align 1
  %2246 = lshr i32 %2226, 31
  %2247 = trunc i32 %2246 to i8
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2247, i8* %2248, align 1
  %2249 = lshr i32 %2220, 31
  %2250 = lshr i32 %2222, 31
  %2251 = xor i32 %2250, %2249
  %2252 = xor i32 %2246, %2249
  %2253 = add i32 %2252, %2251
  %2254 = icmp eq i32 %2253, 2
  %2255 = zext i1 %2254 to i8
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2255, i8* %2256, align 1
  store %struct.Memory* %loadMem_400ffe, %struct.Memory** %MEMORY
  %loadMem_401000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2259 to i64*
  %2260 = load i64, i64* %PC.i326
  %2261 = add i64 %2260, 133
  %2262 = load i64, i64* %PC.i326
  %2263 = add i64 %2262, 6
  %2264 = load i64, i64* %PC.i326
  %2265 = add i64 %2264, 6
  store i64 %2265, i64* %PC.i326
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2267 = load i8, i8* %2266, align 1
  %2268 = icmp eq i8 %2267, 0
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2270 = load i8, i8* %2269, align 1
  %2271 = icmp ne i8 %2270, 0
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2273 = load i8, i8* %2272, align 1
  %2274 = icmp ne i8 %2273, 0
  %2275 = xor i1 %2271, %2274
  %2276 = xor i1 %2275, true
  %2277 = and i1 %2268, %2276
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %BRANCH_TAKEN, align 1
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2280 = select i1 %2277, i64 %2261, i64 %2263
  store i64 %2280, i64* %2279, align 8
  store %struct.Memory* %loadMem_401000, %struct.Memory** %MEMORY
  %loadBr_401000 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401000 = icmp eq i8 %loadBr_401000, 1
  br i1 %cmpBr_401000, label %block_.L_401085, label %block_401006

block_401006:                                     ; preds = %block_.L_400ff5
  %loadMem_401006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 33
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 1
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %2286 to i64*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 15
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %2289 to i64*
  %2290 = load i64, i64* %RBP.i325
  %2291 = sub i64 %2290, 56
  %2292 = load i64, i64* %PC.i323
  %2293 = add i64 %2292, 4
  store i64 %2293, i64* %PC.i323
  %2294 = inttoptr i64 %2291 to i64*
  %2295 = load i64, i64* %2294
  store i64 %2295, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_401006, %struct.Memory** %MEMORY
  %loadMem_40100a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 33
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 5
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 15
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %2304 to i64*
  %2305 = load i64, i64* %RBP.i322
  %2306 = sub i64 %2305, 68
  %2307 = load i64, i64* %PC.i320
  %2308 = add i64 %2307, 4
  store i64 %2308, i64* %PC.i320
  %2309 = inttoptr i64 %2306 to i32*
  %2310 = load i32, i32* %2309
  %2311 = sext i32 %2310 to i64
  store i64 %2311, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_40100a, %struct.Memory** %MEMORY
  %loadMem_40100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 33
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2314 to i64*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 5
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %2317 to i64*
  %2318 = load i64, i64* %RCX.i319
  %2319 = load i64, i64* %PC.i318
  %2320 = add i64 %2319, 7
  store i64 %2320, i64* %PC.i318
  %2321 = sext i64 %2318 to i128
  %2322 = and i128 %2321, -18446744073709551616
  %2323 = zext i64 %2318 to i128
  %2324 = or i128 %2322, %2323
  %2325 = mul i128 1536, %2324
  %2326 = trunc i128 %2325 to i64
  store i64 %2326, i64* %RCX.i319, align 8
  %2327 = sext i64 %2326 to i128
  %2328 = icmp ne i128 %2327, %2325
  %2329 = zext i1 %2328 to i8
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2329, i8* %2330, align 1
  %2331 = trunc i128 %2325 to i32
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2332, align 1
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2333, align 1
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2334, align 1
  %2335 = lshr i64 %2326, 63
  %2336 = trunc i64 %2335 to i8
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2336, i8* %2337, align 1
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2329, i8* %2338, align 1
  store %struct.Memory* %loadMem_40100e, %struct.Memory** %MEMORY
  %loadMem_401015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 33
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 1
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 5
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %2347 to i64*
  %2348 = load i64, i64* %RAX.i316
  %2349 = load i64, i64* %RCX.i317
  %2350 = load i64, i64* %PC.i315
  %2351 = add i64 %2350, 3
  store i64 %2351, i64* %PC.i315
  %2352 = add i64 %2349, %2348
  store i64 %2352, i64* %RAX.i316, align 8
  %2353 = icmp ult i64 %2352, %2348
  %2354 = icmp ult i64 %2352, %2349
  %2355 = or i1 %2353, %2354
  %2356 = zext i1 %2355 to i8
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2356, i8* %2357, align 1
  %2358 = trunc i64 %2352 to i32
  %2359 = and i32 %2358, 255
  %2360 = call i32 @llvm.ctpop.i32(i32 %2359)
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  %2363 = xor i8 %2362, 1
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2363, i8* %2364, align 1
  %2365 = xor i64 %2349, %2348
  %2366 = xor i64 %2365, %2352
  %2367 = lshr i64 %2366, 4
  %2368 = trunc i64 %2367 to i8
  %2369 = and i8 %2368, 1
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2369, i8* %2370, align 1
  %2371 = icmp eq i64 %2352, 0
  %2372 = zext i1 %2371 to i8
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2372, i8* %2373, align 1
  %2374 = lshr i64 %2352, 63
  %2375 = trunc i64 %2374 to i8
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2375, i8* %2376, align 1
  %2377 = lshr i64 %2348, 63
  %2378 = lshr i64 %2349, 63
  %2379 = xor i64 %2374, %2377
  %2380 = xor i64 %2374, %2378
  %2381 = add i64 %2379, %2380
  %2382 = icmp eq i64 %2381, 2
  %2383 = zext i1 %2382 to i8
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2383, i8* %2384, align 1
  store %struct.Memory* %loadMem_401015, %struct.Memory** %MEMORY
  %loadMem_401018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 33
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %2387 to i64*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 5
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 15
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %2393 to i64*
  %2394 = load i64, i64* %RBP.i314
  %2395 = sub i64 %2394, 64
  %2396 = load i64, i64* %PC.i312
  %2397 = add i64 %2396, 4
  store i64 %2397, i64* %PC.i312
  %2398 = inttoptr i64 %2395 to i32*
  %2399 = load i32, i32* %2398
  %2400 = sext i32 %2399 to i64
  store i64 %2400, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_401018, %struct.Memory** %MEMORY
  %loadMem_40101c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 5
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %2406 to i64*
  %2407 = load i64, i64* %RCX.i311
  %2408 = load i64, i64* %PC.i310
  %2409 = add i64 %2408, 4
  store i64 %2409, i64* %PC.i310
  %2410 = shl i64 %2407, 7
  %2411 = icmp slt i64 %2410, 0
  %2412 = shl i64 %2410, 1
  store i64 %2412, i64* %RCX.i311, align 8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2414 = zext i1 %2411 to i8
  store i8 %2414, i8* %2413, align 1
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2416 = trunc i64 %2412 to i32
  store i8 1, i8* %2415, align 1
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2417, align 1
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2419 = icmp eq i64 %2412, 0
  %2420 = zext i1 %2419 to i8
  store i8 %2420, i8* %2418, align 1
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2422 = lshr i64 %2412, 63
  %2423 = trunc i64 %2422 to i8
  store i8 %2423, i8* %2421, align 1
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2424, align 1
  store %struct.Memory* %loadMem_40101c, %struct.Memory** %MEMORY
  %loadMem_401020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 33
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 1
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %2430 to i64*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 5
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %2433 to i64*
  %2434 = load i64, i64* %RAX.i308
  %2435 = load i64, i64* %RCX.i309
  %2436 = load i64, i64* %PC.i307
  %2437 = add i64 %2436, 3
  store i64 %2437, i64* %PC.i307
  %2438 = add i64 %2435, %2434
  store i64 %2438, i64* %RAX.i308, align 8
  %2439 = icmp ult i64 %2438, %2434
  %2440 = icmp ult i64 %2438, %2435
  %2441 = or i1 %2439, %2440
  %2442 = zext i1 %2441 to i8
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2442, i8* %2443, align 1
  %2444 = trunc i64 %2438 to i32
  %2445 = and i32 %2444, 255
  %2446 = call i32 @llvm.ctpop.i32(i32 %2445)
  %2447 = trunc i32 %2446 to i8
  %2448 = and i8 %2447, 1
  %2449 = xor i8 %2448, 1
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2449, i8* %2450, align 1
  %2451 = xor i64 %2435, %2434
  %2452 = xor i64 %2451, %2438
  %2453 = lshr i64 %2452, 4
  %2454 = trunc i64 %2453 to i8
  %2455 = and i8 %2454, 1
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2455, i8* %2456, align 1
  %2457 = icmp eq i64 %2438, 0
  %2458 = zext i1 %2457 to i8
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2458, i8* %2459, align 1
  %2460 = lshr i64 %2438, 63
  %2461 = trunc i64 %2460 to i8
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2461, i8* %2462, align 1
  %2463 = lshr i64 %2434, 63
  %2464 = lshr i64 %2435, 63
  %2465 = xor i64 %2460, %2463
  %2466 = xor i64 %2460, %2464
  %2467 = add i64 %2465, %2466
  %2468 = icmp eq i64 %2467, 2
  %2469 = zext i1 %2468 to i8
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2469, i8* %2470, align 1
  store %struct.Memory* %loadMem_401020, %struct.Memory** %MEMORY
  %loadMem_401023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 33
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 7
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RDX.i305 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 15
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %2479 to i64*
  %2480 = load i64, i64* %RBP.i306
  %2481 = sub i64 %2480, 72
  %2482 = load i64, i64* %PC.i304
  %2483 = add i64 %2482, 3
  store i64 %2483, i64* %PC.i304
  %2484 = inttoptr i64 %2481 to i32*
  %2485 = load i32, i32* %2484
  %2486 = zext i32 %2485 to i64
  store i64 %2486, i64* %RDX.i305, align 8
  store %struct.Memory* %loadMem_401023, %struct.Memory** %MEMORY
  %loadMem_401026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 7
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RDX.i303 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RDX.i303
  %2494 = load i64, i64* %PC.i302
  %2495 = add i64 %2494, 3
  store i64 %2495, i64* %PC.i302
  %2496 = trunc i64 %2493 to i32
  %2497 = sub i32 %2496, 1
  %2498 = zext i32 %2497 to i64
  store i64 %2498, i64* %RDX.i303, align 8
  %2499 = icmp ult i32 %2496, 1
  %2500 = zext i1 %2499 to i8
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2500, i8* %2501, align 1
  %2502 = and i32 %2497, 255
  %2503 = call i32 @llvm.ctpop.i32(i32 %2502)
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  %2506 = xor i8 %2505, 1
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2506, i8* %2507, align 1
  %2508 = xor i64 1, %2493
  %2509 = trunc i64 %2508 to i32
  %2510 = xor i32 %2509, %2497
  %2511 = lshr i32 %2510, 4
  %2512 = trunc i32 %2511 to i8
  %2513 = and i8 %2512, 1
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2513, i8* %2514, align 1
  %2515 = icmp eq i32 %2497, 0
  %2516 = zext i1 %2515 to i8
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2516, i8* %2517, align 1
  %2518 = lshr i32 %2497, 31
  %2519 = trunc i32 %2518 to i8
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2519, i8* %2520, align 1
  %2521 = lshr i32 %2496, 31
  %2522 = xor i32 %2518, %2521
  %2523 = add i32 %2522, %2521
  %2524 = icmp eq i32 %2523, 2
  %2525 = zext i1 %2524 to i8
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2525, i8* %2526, align 1
  store %struct.Memory* %loadMem_401026, %struct.Memory** %MEMORY
  %loadMem_401029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 33
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 7
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %EDX.i300 = bitcast %union.anon* %2532 to i32*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 5
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %2535 to i64*
  %2536 = load i32, i32* %EDX.i300
  %2537 = zext i32 %2536 to i64
  %2538 = load i64, i64* %PC.i299
  %2539 = add i64 %2538, 3
  store i64 %2539, i64* %PC.i299
  %2540 = shl i64 %2537, 32
  %2541 = ashr exact i64 %2540, 32
  store i64 %2541, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_401029, %struct.Memory** %MEMORY
  %loadMem_40102c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 33
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 1
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 5
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 7
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %2553 to i64*
  %2554 = load i64, i64* %RAX.i296
  %2555 = load i64, i64* %RCX.i297
  %2556 = mul i64 %2555, 4
  %2557 = add i64 %2556, %2554
  %2558 = load i64, i64* %PC.i295
  %2559 = add i64 %2558, 3
  store i64 %2559, i64* %PC.i295
  %2560 = inttoptr i64 %2557 to i32*
  %2561 = load i32, i32* %2560
  %2562 = zext i32 %2561 to i64
  store i64 %2562, i64* %RDX.i298, align 8
  store %struct.Memory* %loadMem_40102c, %struct.Memory** %MEMORY
  %loadMem_40102f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 33
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 1
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %2568 to i64*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 15
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2571 to i64*
  %2572 = load i64, i64* %RBP.i294
  %2573 = sub i64 %2572, 48
  %2574 = load i64, i64* %PC.i292
  %2575 = add i64 %2574, 4
  store i64 %2575, i64* %PC.i292
  %2576 = inttoptr i64 %2573 to i64*
  %2577 = load i64, i64* %2576
  store i64 %2577, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_40102f, %struct.Memory** %MEMORY
  %loadMem_401033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 33
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2580 to i64*
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 5
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %2583 to i64*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 15
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %2586 to i64*
  %2587 = load i64, i64* %RBP.i291
  %2588 = sub i64 %2587, 68
  %2589 = load i64, i64* %PC.i289
  %2590 = add i64 %2589, 4
  store i64 %2590, i64* %PC.i289
  %2591 = inttoptr i64 %2588 to i32*
  %2592 = load i32, i32* %2591
  %2593 = sext i32 %2592 to i64
  store i64 %2593, i64* %RCX.i290, align 8
  store %struct.Memory* %loadMem_401033, %struct.Memory** %MEMORY
  %loadMem_401037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 5
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %2599 to i64*
  %2600 = load i64, i64* %RCX.i288
  %2601 = load i64, i64* %PC.i287
  %2602 = add i64 %2601, 7
  store i64 %2602, i64* %PC.i287
  %2603 = sext i64 %2600 to i128
  %2604 = and i128 %2603, -18446744073709551616
  %2605 = zext i64 %2600 to i128
  %2606 = or i128 %2604, %2605
  %2607 = mul i128 1536, %2606
  %2608 = trunc i128 %2607 to i64
  store i64 %2608, i64* %RCX.i288, align 8
  %2609 = sext i64 %2608 to i128
  %2610 = icmp ne i128 %2609, %2607
  %2611 = zext i1 %2610 to i8
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2611, i8* %2612, align 1
  %2613 = trunc i128 %2607 to i32
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2614, align 1
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2615, align 1
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2616, align 1
  %2617 = lshr i64 %2608, 63
  %2618 = trunc i64 %2617 to i8
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2618, i8* %2619, align 1
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2611, i8* %2620, align 1
  store %struct.Memory* %loadMem_401037, %struct.Memory** %MEMORY
  %loadMem_40103e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 1
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %2626 to i64*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 5
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %2629 to i64*
  %2630 = load i64, i64* %RAX.i285
  %2631 = load i64, i64* %RCX.i286
  %2632 = load i64, i64* %PC.i284
  %2633 = add i64 %2632, 3
  store i64 %2633, i64* %PC.i284
  %2634 = add i64 %2631, %2630
  store i64 %2634, i64* %RAX.i285, align 8
  %2635 = icmp ult i64 %2634, %2630
  %2636 = icmp ult i64 %2634, %2631
  %2637 = or i1 %2635, %2636
  %2638 = zext i1 %2637 to i8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2638, i8* %2639, align 1
  %2640 = trunc i64 %2634 to i32
  %2641 = and i32 %2640, 255
  %2642 = call i32 @llvm.ctpop.i32(i32 %2641)
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  %2645 = xor i8 %2644, 1
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2645, i8* %2646, align 1
  %2647 = xor i64 %2631, %2630
  %2648 = xor i64 %2647, %2634
  %2649 = lshr i64 %2648, 4
  %2650 = trunc i64 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2651, i8* %2652, align 1
  %2653 = icmp eq i64 %2634, 0
  %2654 = zext i1 %2653 to i8
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2654, i8* %2655, align 1
  %2656 = lshr i64 %2634, 63
  %2657 = trunc i64 %2656 to i8
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2657, i8* %2658, align 1
  %2659 = lshr i64 %2630, 63
  %2660 = lshr i64 %2631, 63
  %2661 = xor i64 %2656, %2659
  %2662 = xor i64 %2656, %2660
  %2663 = add i64 %2661, %2662
  %2664 = icmp eq i64 %2663, 2
  %2665 = zext i1 %2664 to i8
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2665, i8* %2666, align 1
  store %struct.Memory* %loadMem_40103e, %struct.Memory** %MEMORY
  %loadMem_401041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 5
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 15
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %2675 to i64*
  %2676 = load i64, i64* %RBP.i283
  %2677 = sub i64 %2676, 64
  %2678 = load i64, i64* %PC.i281
  %2679 = add i64 %2678, 4
  store i64 %2679, i64* %PC.i281
  %2680 = inttoptr i64 %2677 to i32*
  %2681 = load i32, i32* %2680
  %2682 = sext i32 %2681 to i64
  store i64 %2682, i64* %RCX.i282, align 8
  store %struct.Memory* %loadMem_401041, %struct.Memory** %MEMORY
  %loadMem_401045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 33
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 5
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %2688 to i64*
  %2689 = load i64, i64* %RCX.i280
  %2690 = load i64, i64* %PC.i279
  %2691 = add i64 %2690, 4
  store i64 %2691, i64* %PC.i279
  %2692 = shl i64 %2689, 7
  %2693 = icmp slt i64 %2692, 0
  %2694 = shl i64 %2692, 1
  store i64 %2694, i64* %RCX.i280, align 8
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2696 = zext i1 %2693 to i8
  store i8 %2696, i8* %2695, align 1
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2698 = trunc i64 %2694 to i32
  store i8 1, i8* %2697, align 1
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2699, align 1
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2701 = icmp eq i64 %2694, 0
  %2702 = zext i1 %2701 to i8
  store i8 %2702, i8* %2700, align 1
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2704 = lshr i64 %2694, 63
  %2705 = trunc i64 %2704 to i8
  store i8 %2705, i8* %2703, align 1
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2706, align 1
  store %struct.Memory* %loadMem_401045, %struct.Memory** %MEMORY
  %loadMem_401049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 33
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2709 to i64*
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 1
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %2712 to i64*
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 5
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %RCX.i278 = bitcast %union.anon* %2715 to i64*
  %2716 = load i64, i64* %RAX.i277
  %2717 = load i64, i64* %RCX.i278
  %2718 = load i64, i64* %PC.i276
  %2719 = add i64 %2718, 3
  store i64 %2719, i64* %PC.i276
  %2720 = add i64 %2717, %2716
  store i64 %2720, i64* %RAX.i277, align 8
  %2721 = icmp ult i64 %2720, %2716
  %2722 = icmp ult i64 %2720, %2717
  %2723 = or i1 %2721, %2722
  %2724 = zext i1 %2723 to i8
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2724, i8* %2725, align 1
  %2726 = trunc i64 %2720 to i32
  %2727 = and i32 %2726, 255
  %2728 = call i32 @llvm.ctpop.i32(i32 %2727)
  %2729 = trunc i32 %2728 to i8
  %2730 = and i8 %2729, 1
  %2731 = xor i8 %2730, 1
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2731, i8* %2732, align 1
  %2733 = xor i64 %2717, %2716
  %2734 = xor i64 %2733, %2720
  %2735 = lshr i64 %2734, 4
  %2736 = trunc i64 %2735 to i8
  %2737 = and i8 %2736, 1
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2737, i8* %2738, align 1
  %2739 = icmp eq i64 %2720, 0
  %2740 = zext i1 %2739 to i8
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2740, i8* %2741, align 1
  %2742 = lshr i64 %2720, 63
  %2743 = trunc i64 %2742 to i8
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2743, i8* %2744, align 1
  %2745 = lshr i64 %2716, 63
  %2746 = lshr i64 %2717, 63
  %2747 = xor i64 %2742, %2745
  %2748 = xor i64 %2742, %2746
  %2749 = add i64 %2747, %2748
  %2750 = icmp eq i64 %2749, 2
  %2751 = zext i1 %2750 to i8
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2751, i8* %2752, align 1
  store %struct.Memory* %loadMem_401049, %struct.Memory** %MEMORY
  %loadMem_40104c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 5
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 15
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %RBP.i275
  %2763 = sub i64 %2762, 72
  %2764 = load i64, i64* %PC.i273
  %2765 = add i64 %2764, 4
  store i64 %2765, i64* %PC.i273
  %2766 = inttoptr i64 %2763 to i32*
  %2767 = load i32, i32* %2766
  %2768 = sext i32 %2767 to i64
  store i64 %2768, i64* %RCX.i274, align 8
  store %struct.Memory* %loadMem_40104c, %struct.Memory** %MEMORY
  %loadMem_401050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 1
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %2774 to i64*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 5
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %2777 to i64*
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 7
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %RDX.i272 = bitcast %union.anon* %2780 to i64*
  %2781 = load i64, i64* %RDX.i272
  %2782 = load i64, i64* %RAX.i270
  %2783 = load i64, i64* %RCX.i271
  %2784 = mul i64 %2783, 4
  %2785 = add i64 %2784, %2782
  %2786 = load i64, i64* %PC.i269
  %2787 = add i64 %2786, 3
  store i64 %2787, i64* %PC.i269
  %2788 = trunc i64 %2781 to i32
  %2789 = inttoptr i64 %2785 to i32*
  %2790 = load i32, i32* %2789
  %2791 = add i32 %2790, %2788
  %2792 = zext i32 %2791 to i64
  store i64 %2792, i64* %RDX.i272, align 8
  %2793 = icmp ult i32 %2791, %2788
  %2794 = icmp ult i32 %2791, %2790
  %2795 = or i1 %2793, %2794
  %2796 = zext i1 %2795 to i8
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2796, i8* %2797, align 1
  %2798 = and i32 %2791, 255
  %2799 = call i32 @llvm.ctpop.i32(i32 %2798)
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  %2802 = xor i8 %2801, 1
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2802, i8* %2803, align 1
  %2804 = xor i32 %2790, %2788
  %2805 = xor i32 %2804, %2791
  %2806 = lshr i32 %2805, 4
  %2807 = trunc i32 %2806 to i8
  %2808 = and i8 %2807, 1
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2808, i8* %2809, align 1
  %2810 = icmp eq i32 %2791, 0
  %2811 = zext i1 %2810 to i8
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2811, i8* %2812, align 1
  %2813 = lshr i32 %2791, 31
  %2814 = trunc i32 %2813 to i8
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2814, i8* %2815, align 1
  %2816 = lshr i32 %2788, 31
  %2817 = lshr i32 %2790, 31
  %2818 = xor i32 %2813, %2816
  %2819 = xor i32 %2813, %2817
  %2820 = add i32 %2818, %2819
  %2821 = icmp eq i32 %2820, 2
  %2822 = zext i1 %2821 to i8
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2822, i8* %2823, align 1
  store %struct.Memory* %loadMem_401050, %struct.Memory** %MEMORY
  %loadMem_401053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 1
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %2829 to i64*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 15
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %2832 to i64*
  %2833 = load i64, i64* %RBP.i268
  %2834 = sub i64 %2833, 56
  %2835 = load i64, i64* %PC.i266
  %2836 = add i64 %2835, 4
  store i64 %2836, i64* %PC.i266
  %2837 = inttoptr i64 %2834 to i64*
  %2838 = load i64, i64* %2837
  store i64 %2838, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_401053, %struct.Memory** %MEMORY
  %loadMem_401057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 33
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 5
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 15
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2847 to i64*
  %2848 = load i64, i64* %RBP.i265
  %2849 = sub i64 %2848, 68
  %2850 = load i64, i64* %PC.i263
  %2851 = add i64 %2850, 4
  store i64 %2851, i64* %PC.i263
  %2852 = inttoptr i64 %2849 to i32*
  %2853 = load i32, i32* %2852
  %2854 = sext i32 %2853 to i64
  store i64 %2854, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_401057, %struct.Memory** %MEMORY
  %loadMem_40105b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 5
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %2860 to i64*
  %2861 = load i64, i64* %RCX.i262
  %2862 = load i64, i64* %PC.i261
  %2863 = add i64 %2862, 7
  store i64 %2863, i64* %PC.i261
  %2864 = sext i64 %2861 to i128
  %2865 = and i128 %2864, -18446744073709551616
  %2866 = zext i64 %2861 to i128
  %2867 = or i128 %2865, %2866
  %2868 = mul i128 1536, %2867
  %2869 = trunc i128 %2868 to i64
  store i64 %2869, i64* %RCX.i262, align 8
  %2870 = sext i64 %2869 to i128
  %2871 = icmp ne i128 %2870, %2868
  %2872 = zext i1 %2871 to i8
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2872, i8* %2873, align 1
  %2874 = trunc i128 %2868 to i32
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2875, align 1
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2876, align 1
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2877, align 1
  %2878 = lshr i64 %2869, 63
  %2879 = trunc i64 %2878 to i8
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2879, i8* %2880, align 1
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2872, i8* %2881, align 1
  store %struct.Memory* %loadMem_40105b, %struct.Memory** %MEMORY
  %loadMem_401062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 33
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2884 to i64*
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 1
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %2887 to i64*
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 5
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %2890 to i64*
  %2891 = load i64, i64* %RAX.i259
  %2892 = load i64, i64* %RCX.i260
  %2893 = load i64, i64* %PC.i258
  %2894 = add i64 %2893, 3
  store i64 %2894, i64* %PC.i258
  %2895 = add i64 %2892, %2891
  store i64 %2895, i64* %RAX.i259, align 8
  %2896 = icmp ult i64 %2895, %2891
  %2897 = icmp ult i64 %2895, %2892
  %2898 = or i1 %2896, %2897
  %2899 = zext i1 %2898 to i8
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2899, i8* %2900, align 1
  %2901 = trunc i64 %2895 to i32
  %2902 = and i32 %2901, 255
  %2903 = call i32 @llvm.ctpop.i32(i32 %2902)
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2906, i8* %2907, align 1
  %2908 = xor i64 %2892, %2891
  %2909 = xor i64 %2908, %2895
  %2910 = lshr i64 %2909, 4
  %2911 = trunc i64 %2910 to i8
  %2912 = and i8 %2911, 1
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2912, i8* %2913, align 1
  %2914 = icmp eq i64 %2895, 0
  %2915 = zext i1 %2914 to i8
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2915, i8* %2916, align 1
  %2917 = lshr i64 %2895, 63
  %2918 = trunc i64 %2917 to i8
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2918, i8* %2919, align 1
  %2920 = lshr i64 %2891, 63
  %2921 = lshr i64 %2892, 63
  %2922 = xor i64 %2917, %2920
  %2923 = xor i64 %2917, %2921
  %2924 = add i64 %2922, %2923
  %2925 = icmp eq i64 %2924, 2
  %2926 = zext i1 %2925 to i8
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2926, i8* %2927, align 1
  store %struct.Memory* %loadMem_401062, %struct.Memory** %MEMORY
  %loadMem_401065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 5
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 15
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %2936 to i64*
  %2937 = load i64, i64* %RBP.i257
  %2938 = sub i64 %2937, 64
  %2939 = load i64, i64* %PC.i255
  %2940 = add i64 %2939, 4
  store i64 %2940, i64* %PC.i255
  %2941 = inttoptr i64 %2938 to i32*
  %2942 = load i32, i32* %2941
  %2943 = sext i32 %2942 to i64
  store i64 %2943, i64* %RCX.i256, align 8
  store %struct.Memory* %loadMem_401065, %struct.Memory** %MEMORY
  %loadMem_401069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 33
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2946 to i64*
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 5
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %2949 to i64*
  %2950 = load i64, i64* %RCX.i254
  %2951 = load i64, i64* %PC.i253
  %2952 = add i64 %2951, 4
  store i64 %2952, i64* %PC.i253
  %2953 = shl i64 %2950, 7
  %2954 = icmp slt i64 %2953, 0
  %2955 = shl i64 %2953, 1
  store i64 %2955, i64* %RCX.i254, align 8
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2957 = zext i1 %2954 to i8
  store i8 %2957, i8* %2956, align 1
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2959 = trunc i64 %2955 to i32
  store i8 1, i8* %2958, align 1
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2960, align 1
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2962 = icmp eq i64 %2955, 0
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %2961, align 1
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2965 = lshr i64 %2955, 63
  %2966 = trunc i64 %2965 to i8
  store i8 %2966, i8* %2964, align 1
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2967, align 1
  store %struct.Memory* %loadMem_401069, %struct.Memory** %MEMORY
  %loadMem_40106d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 1
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 5
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %RAX.i251
  %2978 = load i64, i64* %RCX.i252
  %2979 = load i64, i64* %PC.i250
  %2980 = add i64 %2979, 3
  store i64 %2980, i64* %PC.i250
  %2981 = add i64 %2978, %2977
  store i64 %2981, i64* %RAX.i251, align 8
  %2982 = icmp ult i64 %2981, %2977
  %2983 = icmp ult i64 %2981, %2978
  %2984 = or i1 %2982, %2983
  %2985 = zext i1 %2984 to i8
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2985, i8* %2986, align 1
  %2987 = trunc i64 %2981 to i32
  %2988 = and i32 %2987, 255
  %2989 = call i32 @llvm.ctpop.i32(i32 %2988)
  %2990 = trunc i32 %2989 to i8
  %2991 = and i8 %2990, 1
  %2992 = xor i8 %2991, 1
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2992, i8* %2993, align 1
  %2994 = xor i64 %2978, %2977
  %2995 = xor i64 %2994, %2981
  %2996 = lshr i64 %2995, 4
  %2997 = trunc i64 %2996 to i8
  %2998 = and i8 %2997, 1
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2998, i8* %2999, align 1
  %3000 = icmp eq i64 %2981, 0
  %3001 = zext i1 %3000 to i8
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3001, i8* %3002, align 1
  %3003 = lshr i64 %2981, 63
  %3004 = trunc i64 %3003 to i8
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3004, i8* %3005, align 1
  %3006 = lshr i64 %2977, 63
  %3007 = lshr i64 %2978, 63
  %3008 = xor i64 %3003, %3006
  %3009 = xor i64 %3003, %3007
  %3010 = add i64 %3008, %3009
  %3011 = icmp eq i64 %3010, 2
  %3012 = zext i1 %3011 to i8
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3012, i8* %3013, align 1
  store %struct.Memory* %loadMem_40106d, %struct.Memory** %MEMORY
  %loadMem_401070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 33
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 5
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %3019 to i64*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 15
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %3022 to i64*
  %3023 = load i64, i64* %RBP.i249
  %3024 = sub i64 %3023, 72
  %3025 = load i64, i64* %PC.i247
  %3026 = add i64 %3025, 4
  store i64 %3026, i64* %PC.i247
  %3027 = inttoptr i64 %3024 to i32*
  %3028 = load i32, i32* %3027
  %3029 = sext i32 %3028 to i64
  store i64 %3029, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_401070, %struct.Memory** %MEMORY
  %loadMem_401074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 33
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3032 to i64*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 7
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %EDX.i244 = bitcast %union.anon* %3035 to i32*
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 1
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %3038 to i64*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 5
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %3041 to i64*
  %3042 = load i64, i64* %RAX.i245
  %3043 = load i64, i64* %RCX.i246
  %3044 = mul i64 %3043, 4
  %3045 = add i64 %3044, %3042
  %3046 = load i32, i32* %EDX.i244
  %3047 = zext i32 %3046 to i64
  %3048 = load i64, i64* %PC.i243
  %3049 = add i64 %3048, 3
  store i64 %3049, i64* %PC.i243
  %3050 = inttoptr i64 %3045 to i32*
  store i32 %3046, i32* %3050
  store %struct.Memory* %loadMem_401074, %struct.Memory** %MEMORY
  %loadMem_401077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 33
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3053 to i64*
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 1
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 15
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %3059 to i64*
  %3060 = load i64, i64* %RBP.i242
  %3061 = sub i64 %3060, 72
  %3062 = load i64, i64* %PC.i240
  %3063 = add i64 %3062, 3
  store i64 %3063, i64* %PC.i240
  %3064 = inttoptr i64 %3061 to i32*
  %3065 = load i32, i32* %3064
  %3066 = zext i32 %3065 to i64
  store i64 %3066, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_401077, %struct.Memory** %MEMORY
  %loadMem_40107a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 33
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3069 to i64*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 1
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %3072 to i64*
  %3073 = load i64, i64* %RAX.i239
  %3074 = load i64, i64* %PC.i238
  %3075 = add i64 %3074, 3
  store i64 %3075, i64* %PC.i238
  %3076 = trunc i64 %3073 to i32
  %3077 = add i32 1, %3076
  %3078 = zext i32 %3077 to i64
  store i64 %3078, i64* %RAX.i239, align 8
  %3079 = icmp ult i32 %3077, %3076
  %3080 = icmp ult i32 %3077, 1
  %3081 = or i1 %3079, %3080
  %3082 = zext i1 %3081 to i8
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3082, i8* %3083, align 1
  %3084 = and i32 %3077, 255
  %3085 = call i32 @llvm.ctpop.i32(i32 %3084)
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = xor i8 %3087, 1
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3088, i8* %3089, align 1
  %3090 = xor i64 1, %3073
  %3091 = trunc i64 %3090 to i32
  %3092 = xor i32 %3091, %3077
  %3093 = lshr i32 %3092, 4
  %3094 = trunc i32 %3093 to i8
  %3095 = and i8 %3094, 1
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3095, i8* %3096, align 1
  %3097 = icmp eq i32 %3077, 0
  %3098 = zext i1 %3097 to i8
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3098, i8* %3099, align 1
  %3100 = lshr i32 %3077, 31
  %3101 = trunc i32 %3100 to i8
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3101, i8* %3102, align 1
  %3103 = lshr i32 %3076, 31
  %3104 = xor i32 %3100, %3103
  %3105 = add i32 %3104, %3100
  %3106 = icmp eq i32 %3105, 2
  %3107 = zext i1 %3106 to i8
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3107, i8* %3108, align 1
  store %struct.Memory* %loadMem_40107a, %struct.Memory** %MEMORY
  %loadMem_40107d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 33
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 1
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %EAX.i236 = bitcast %union.anon* %3114 to i32*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 15
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %3117 to i64*
  %3118 = load i64, i64* %RBP.i237
  %3119 = sub i64 %3118, 72
  %3120 = load i32, i32* %EAX.i236
  %3121 = zext i32 %3120 to i64
  %3122 = load i64, i64* %PC.i235
  %3123 = add i64 %3122, 3
  store i64 %3123, i64* %PC.i235
  %3124 = inttoptr i64 %3119 to i32*
  store i32 %3120, i32* %3124
  store %struct.Memory* %loadMem_40107d, %struct.Memory** %MEMORY
  %loadMem_401080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 33
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3127 to i64*
  %3128 = load i64, i64* %PC.i234
  %3129 = add i64 %3128, -139
  %3130 = load i64, i64* %PC.i234
  %3131 = add i64 %3130, 5
  store i64 %3131, i64* %PC.i234
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3129, i64* %3132, align 8
  store %struct.Memory* %loadMem_401080, %struct.Memory** %MEMORY
  br label %block_.L_400ff5

block_.L_401085:                                  ; preds = %block_.L_400ff5
  %loadMem_401085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 33
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 1
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 15
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %3141 to i64*
  %3142 = load i64, i64* %RBP.i233
  %3143 = sub i64 %3142, 56
  %3144 = load i64, i64* %PC.i231
  %3145 = add i64 %3144, 4
  store i64 %3145, i64* %PC.i231
  %3146 = inttoptr i64 %3143 to i64*
  %3147 = load i64, i64* %3146
  store i64 %3147, i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_401085, %struct.Memory** %MEMORY
  %loadMem_401089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 33
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 5
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 15
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %3156 to i64*
  %3157 = load i64, i64* %RBP.i230
  %3158 = sub i64 %3157, 68
  %3159 = load i64, i64* %PC.i228
  %3160 = add i64 %3159, 4
  store i64 %3160, i64* %PC.i228
  %3161 = inttoptr i64 %3158 to i32*
  %3162 = load i32, i32* %3161
  %3163 = sext i32 %3162 to i64
  store i64 %3163, i64* %RCX.i229, align 8
  store %struct.Memory* %loadMem_401089, %struct.Memory** %MEMORY
  %loadMem_40108d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 5
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RCX.i227 = bitcast %union.anon* %3169 to i64*
  %3170 = load i64, i64* %RCX.i227
  %3171 = load i64, i64* %PC.i226
  %3172 = add i64 %3171, 7
  store i64 %3172, i64* %PC.i226
  %3173 = sext i64 %3170 to i128
  %3174 = and i128 %3173, -18446744073709551616
  %3175 = zext i64 %3170 to i128
  %3176 = or i128 %3174, %3175
  %3177 = mul i128 1536, %3176
  %3178 = trunc i128 %3177 to i64
  store i64 %3178, i64* %RCX.i227, align 8
  %3179 = sext i64 %3178 to i128
  %3180 = icmp ne i128 %3179, %3177
  %3181 = zext i1 %3180 to i8
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3181, i8* %3182, align 1
  %3183 = trunc i128 %3177 to i32
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3184, align 1
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3185, align 1
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3186, align 1
  %3187 = lshr i64 %3178, 63
  %3188 = trunc i64 %3187 to i8
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3188, i8* %3189, align 1
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3181, i8* %3190, align 1
  store %struct.Memory* %loadMem_40108d, %struct.Memory** %MEMORY
  %loadMem_401094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 33
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3193 to i64*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 1
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 5
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %3199 to i64*
  %3200 = load i64, i64* %RAX.i224
  %3201 = load i64, i64* %RCX.i225
  %3202 = load i64, i64* %PC.i223
  %3203 = add i64 %3202, 3
  store i64 %3203, i64* %PC.i223
  %3204 = add i64 %3201, %3200
  store i64 %3204, i64* %RAX.i224, align 8
  %3205 = icmp ult i64 %3204, %3200
  %3206 = icmp ult i64 %3204, %3201
  %3207 = or i1 %3205, %3206
  %3208 = zext i1 %3207 to i8
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3208, i8* %3209, align 1
  %3210 = trunc i64 %3204 to i32
  %3211 = and i32 %3210, 255
  %3212 = call i32 @llvm.ctpop.i32(i32 %3211)
  %3213 = trunc i32 %3212 to i8
  %3214 = and i8 %3213, 1
  %3215 = xor i8 %3214, 1
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3215, i8* %3216, align 1
  %3217 = xor i64 %3201, %3200
  %3218 = xor i64 %3217, %3204
  %3219 = lshr i64 %3218, 4
  %3220 = trunc i64 %3219 to i8
  %3221 = and i8 %3220, 1
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3221, i8* %3222, align 1
  %3223 = icmp eq i64 %3204, 0
  %3224 = zext i1 %3223 to i8
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3224, i8* %3225, align 1
  %3226 = lshr i64 %3204, 63
  %3227 = trunc i64 %3226 to i8
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3227, i8* %3228, align 1
  %3229 = lshr i64 %3200, 63
  %3230 = lshr i64 %3201, 63
  %3231 = xor i64 %3226, %3229
  %3232 = xor i64 %3226, %3230
  %3233 = add i64 %3231, %3232
  %3234 = icmp eq i64 %3233, 2
  %3235 = zext i1 %3234 to i8
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3235, i8* %3236, align 1
  store %struct.Memory* %loadMem_401094, %struct.Memory** %MEMORY
  %loadMem_401097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 5
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 15
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %3245 to i64*
  %3246 = load i64, i64* %RBP.i222
  %3247 = sub i64 %3246, 64
  %3248 = load i64, i64* %PC.i220
  %3249 = add i64 %3248, 4
  store i64 %3249, i64* %PC.i220
  %3250 = inttoptr i64 %3247 to i32*
  %3251 = load i32, i32* %3250
  %3252 = sext i32 %3251 to i64
  store i64 %3252, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_401097, %struct.Memory** %MEMORY
  %loadMem_40109b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 33
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3255 to i64*
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 5
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %3258 to i64*
  %3259 = load i64, i64* %RCX.i219
  %3260 = load i64, i64* %PC.i218
  %3261 = add i64 %3260, 4
  store i64 %3261, i64* %PC.i218
  %3262 = shl i64 %3259, 7
  %3263 = icmp slt i64 %3262, 0
  %3264 = shl i64 %3262, 1
  store i64 %3264, i64* %RCX.i219, align 8
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3266 = zext i1 %3263 to i8
  store i8 %3266, i8* %3265, align 1
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3268 = trunc i64 %3264 to i32
  store i8 1, i8* %3267, align 1
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3269, align 1
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3271 = icmp eq i64 %3264, 0
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %3270, align 1
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3274 = lshr i64 %3264, 63
  %3275 = trunc i64 %3274 to i8
  store i8 %3275, i8* %3273, align 1
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3276, align 1
  store %struct.Memory* %loadMem_40109b, %struct.Memory** %MEMORY
  %loadMem_40109f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 33
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 1
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %3282 to i64*
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 5
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %3285 to i64*
  %3286 = load i64, i64* %RAX.i216
  %3287 = load i64, i64* %RCX.i217
  %3288 = load i64, i64* %PC.i215
  %3289 = add i64 %3288, 3
  store i64 %3289, i64* %PC.i215
  %3290 = add i64 %3287, %3286
  store i64 %3290, i64* %RAX.i216, align 8
  %3291 = icmp ult i64 %3290, %3286
  %3292 = icmp ult i64 %3290, %3287
  %3293 = or i1 %3291, %3292
  %3294 = zext i1 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3294, i8* %3295, align 1
  %3296 = trunc i64 %3290 to i32
  %3297 = and i32 %3296, 255
  %3298 = call i32 @llvm.ctpop.i32(i32 %3297)
  %3299 = trunc i32 %3298 to i8
  %3300 = and i8 %3299, 1
  %3301 = xor i8 %3300, 1
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3301, i8* %3302, align 1
  %3303 = xor i64 %3287, %3286
  %3304 = xor i64 %3303, %3290
  %3305 = lshr i64 %3304, 4
  %3306 = trunc i64 %3305 to i8
  %3307 = and i8 %3306, 1
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3307, i8* %3308, align 1
  %3309 = icmp eq i64 %3290, 0
  %3310 = zext i1 %3309 to i8
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3310, i8* %3311, align 1
  %3312 = lshr i64 %3290, 63
  %3313 = trunc i64 %3312 to i8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3313, i8* %3314, align 1
  %3315 = lshr i64 %3286, 63
  %3316 = lshr i64 %3287, 63
  %3317 = xor i64 %3312, %3315
  %3318 = xor i64 %3312, %3316
  %3319 = add i64 %3317, %3318
  %3320 = icmp eq i64 %3319, 2
  %3321 = zext i1 %3320 to i8
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3321, i8* %3322, align 1
  store %struct.Memory* %loadMem_40109f, %struct.Memory** %MEMORY
  %loadMem_4010a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 33
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 7
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RDX.i213 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 15
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %3331 to i64*
  %3332 = load i64, i64* %RBP.i214
  %3333 = sub i64 %3332, 12
  %3334 = load i64, i64* %PC.i212
  %3335 = add i64 %3334, 3
  store i64 %3335, i64* %PC.i212
  %3336 = inttoptr i64 %3333 to i32*
  %3337 = load i32, i32* %3336
  %3338 = zext i32 %3337 to i64
  store i64 %3338, i64* %RDX.i213, align 8
  store %struct.Memory* %loadMem_4010a2, %struct.Memory** %MEMORY
  %loadMem_4010a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 33
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 7
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %3344 to i64*
  %3345 = load i64, i64* %RDX.i211
  %3346 = load i64, i64* %PC.i210
  %3347 = add i64 %3346, 3
  store i64 %3347, i64* %PC.i210
  %3348 = trunc i64 %3345 to i32
  %3349 = sub i32 %3348, 1
  %3350 = zext i32 %3349 to i64
  store i64 %3350, i64* %RDX.i211, align 8
  %3351 = icmp ult i32 %3348, 1
  %3352 = zext i1 %3351 to i8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3352, i8* %3353, align 1
  %3354 = and i32 %3349, 255
  %3355 = call i32 @llvm.ctpop.i32(i32 %3354)
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  %3358 = xor i8 %3357, 1
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3358, i8* %3359, align 1
  %3360 = xor i64 1, %3345
  %3361 = trunc i64 %3360 to i32
  %3362 = xor i32 %3361, %3349
  %3363 = lshr i32 %3362, 4
  %3364 = trunc i32 %3363 to i8
  %3365 = and i8 %3364, 1
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3365, i8* %3366, align 1
  %3367 = icmp eq i32 %3349, 0
  %3368 = zext i1 %3367 to i8
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3368, i8* %3369, align 1
  %3370 = lshr i32 %3349, 31
  %3371 = trunc i32 %3370 to i8
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3371, i8* %3372, align 1
  %3373 = lshr i32 %3348, 31
  %3374 = xor i32 %3370, %3373
  %3375 = add i32 %3374, %3373
  %3376 = icmp eq i32 %3375, 2
  %3377 = zext i1 %3376 to i8
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3377, i8* %3378, align 1
  store %struct.Memory* %loadMem_4010a5, %struct.Memory** %MEMORY
  %loadMem_4010a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 33
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3381 to i64*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 7
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %EDX.i208 = bitcast %union.anon* %3384 to i32*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 5
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %3387 to i64*
  %3388 = load i32, i32* %EDX.i208
  %3389 = zext i32 %3388 to i64
  %3390 = load i64, i64* %PC.i207
  %3391 = add i64 %3390, 3
  store i64 %3391, i64* %PC.i207
  %3392 = shl i64 %3389, 32
  %3393 = ashr exact i64 %3392, 32
  store i64 %3393, i64* %RCX.i209, align 8
  store %struct.Memory* %loadMem_4010a8, %struct.Memory** %MEMORY
  %loadMem_4010ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 33
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3396 to i64*
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 1
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 5
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 7
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %RDX.i206 = bitcast %union.anon* %3405 to i64*
  %3406 = load i64, i64* %RAX.i204
  %3407 = load i64, i64* %RCX.i205
  %3408 = mul i64 %3407, 4
  %3409 = add i64 %3408, %3406
  %3410 = load i64, i64* %PC.i203
  %3411 = add i64 %3410, 3
  store i64 %3411, i64* %PC.i203
  %3412 = inttoptr i64 %3409 to i32*
  %3413 = load i32, i32* %3412
  %3414 = zext i32 %3413 to i64
  store i64 %3414, i64* %RDX.i206, align 8
  store %struct.Memory* %loadMem_4010ab, %struct.Memory** %MEMORY
  %loadMem_4010ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 33
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3417 to i64*
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 1
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 15
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %3423 to i64*
  %3424 = load i64, i64* %RBP.i202
  %3425 = sub i64 %3424, 32
  %3426 = load i64, i64* %PC.i200
  %3427 = add i64 %3426, 4
  store i64 %3427, i64* %PC.i200
  %3428 = inttoptr i64 %3425 to i64*
  %3429 = load i64, i64* %3428
  store i64 %3429, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_4010ae, %struct.Memory** %MEMORY
  %loadMem_4010b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 33
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3432 to i64*
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 5
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 15
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %3438 to i64*
  %3439 = load i64, i64* %RBP.i199
  %3440 = sub i64 %3439, 68
  %3441 = load i64, i64* %PC.i197
  %3442 = add i64 %3441, 4
  store i64 %3442, i64* %PC.i197
  %3443 = inttoptr i64 %3440 to i32*
  %3444 = load i32, i32* %3443
  %3445 = sext i32 %3444 to i64
  store i64 %3445, i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_4010b2, %struct.Memory** %MEMORY
  %loadMem_4010b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 33
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 5
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %3451 to i64*
  %3452 = load i64, i64* %RCX.i196
  %3453 = load i64, i64* %PC.i195
  %3454 = add i64 %3453, 4
  store i64 %3454, i64* %PC.i195
  %3455 = sext i64 %3452 to i128
  %3456 = and i128 %3455, -18446744073709551616
  %3457 = zext i64 %3452 to i128
  %3458 = or i128 %3456, %3457
  %3459 = mul i128 24, %3458
  %3460 = trunc i128 %3459 to i64
  store i64 %3460, i64* %RCX.i196, align 8
  %3461 = sext i64 %3460 to i128
  %3462 = icmp ne i128 %3461, %3459
  %3463 = zext i1 %3462 to i8
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3463, i8* %3464, align 1
  %3465 = trunc i128 %3459 to i32
  %3466 = and i32 %3465, 255
  %3467 = call i32 @llvm.ctpop.i32(i32 %3466)
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  %3470 = xor i8 %3469, 1
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3470, i8* %3471, align 1
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3472, align 1
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3473, align 1
  %3474 = lshr i64 %3460, 63
  %3475 = trunc i64 %3474 to i8
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3475, i8* %3476, align 1
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3463, i8* %3477, align 1
  store %struct.Memory* %loadMem_4010b6, %struct.Memory** %MEMORY
  %loadMem_4010ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 33
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 1
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 5
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %3486 to i64*
  %3487 = load i64, i64* %RAX.i193
  %3488 = load i64, i64* %RCX.i194
  %3489 = load i64, i64* %PC.i192
  %3490 = add i64 %3489, 3
  store i64 %3490, i64* %PC.i192
  %3491 = add i64 %3488, %3487
  store i64 %3491, i64* %RAX.i193, align 8
  %3492 = icmp ult i64 %3491, %3487
  %3493 = icmp ult i64 %3491, %3488
  %3494 = or i1 %3492, %3493
  %3495 = zext i1 %3494 to i8
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3495, i8* %3496, align 1
  %3497 = trunc i64 %3491 to i32
  %3498 = and i32 %3497, 255
  %3499 = call i32 @llvm.ctpop.i32(i32 %3498)
  %3500 = trunc i32 %3499 to i8
  %3501 = and i8 %3500, 1
  %3502 = xor i8 %3501, 1
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3502, i8* %3503, align 1
  %3504 = xor i64 %3488, %3487
  %3505 = xor i64 %3504, %3491
  %3506 = lshr i64 %3505, 4
  %3507 = trunc i64 %3506 to i8
  %3508 = and i8 %3507, 1
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3508, i8* %3509, align 1
  %3510 = icmp eq i64 %3491, 0
  %3511 = zext i1 %3510 to i8
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3511, i8* %3512, align 1
  %3513 = lshr i64 %3491, 63
  %3514 = trunc i64 %3513 to i8
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3514, i8* %3515, align 1
  %3516 = lshr i64 %3487, 63
  %3517 = lshr i64 %3488, 63
  %3518 = xor i64 %3513, %3516
  %3519 = xor i64 %3513, %3517
  %3520 = add i64 %3518, %3519
  %3521 = icmp eq i64 %3520, 2
  %3522 = zext i1 %3521 to i8
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3522, i8* %3523, align 1
  store %struct.Memory* %loadMem_4010ba, %struct.Memory** %MEMORY
  %loadMem_4010bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 33
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3526 to i64*
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 5
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %3529 to i64*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 15
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %3532 to i64*
  %3533 = load i64, i64* %RBP.i191
  %3534 = sub i64 %3533, 64
  %3535 = load i64, i64* %PC.i189
  %3536 = add i64 %3535, 4
  store i64 %3536, i64* %PC.i189
  %3537 = inttoptr i64 %3534 to i32*
  %3538 = load i32, i32* %3537
  %3539 = sext i32 %3538 to i64
  store i64 %3539, i64* %RCX.i190, align 8
  store %struct.Memory* %loadMem_4010bd, %struct.Memory** %MEMORY
  %loadMem_4010c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 33
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 7
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %EDX.i186 = bitcast %union.anon* %3545 to i32*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 1
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 5
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %3551 to i64*
  %3552 = load i64, i64* %RAX.i187
  %3553 = load i64, i64* %RCX.i188
  %3554 = mul i64 %3553, 4
  %3555 = add i64 %3554, %3552
  %3556 = load i32, i32* %EDX.i186
  %3557 = zext i32 %3556 to i64
  %3558 = load i64, i64* %PC.i185
  %3559 = add i64 %3558, 3
  store i64 %3559, i64* %PC.i185
  %3560 = inttoptr i64 %3555 to i32*
  store i32 %3556, i32* %3560
  store %struct.Memory* %loadMem_4010c1, %struct.Memory** %MEMORY
  %loadMem_4010c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 33
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3563 to i64*
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 1
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %3566 to i64*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 15
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %3569 to i64*
  %3570 = load i64, i64* %RBP.i184
  %3571 = sub i64 %3570, 64
  %3572 = load i64, i64* %PC.i182
  %3573 = add i64 %3572, 3
  store i64 %3573, i64* %PC.i182
  %3574 = inttoptr i64 %3571 to i32*
  %3575 = load i32, i32* %3574
  %3576 = zext i32 %3575 to i64
  store i64 %3576, i64* %RAX.i183, align 8
  store %struct.Memory* %loadMem_4010c4, %struct.Memory** %MEMORY
  %loadMem_4010c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 33
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 1
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %RAX.i181
  %3584 = load i64, i64* %PC.i180
  %3585 = add i64 %3584, 3
  store i64 %3585, i64* %PC.i180
  %3586 = trunc i64 %3583 to i32
  %3587 = add i32 1, %3586
  %3588 = zext i32 %3587 to i64
  store i64 %3588, i64* %RAX.i181, align 8
  %3589 = icmp ult i32 %3587, %3586
  %3590 = icmp ult i32 %3587, 1
  %3591 = or i1 %3589, %3590
  %3592 = zext i1 %3591 to i8
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3592, i8* %3593, align 1
  %3594 = and i32 %3587, 255
  %3595 = call i32 @llvm.ctpop.i32(i32 %3594)
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = xor i8 %3597, 1
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3598, i8* %3599, align 1
  %3600 = xor i64 1, %3583
  %3601 = trunc i64 %3600 to i32
  %3602 = xor i32 %3601, %3587
  %3603 = lshr i32 %3602, 4
  %3604 = trunc i32 %3603 to i8
  %3605 = and i8 %3604, 1
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3605, i8* %3606, align 1
  %3607 = icmp eq i32 %3587, 0
  %3608 = zext i1 %3607 to i8
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3608, i8* %3609, align 1
  %3610 = lshr i32 %3587, 31
  %3611 = trunc i32 %3610 to i8
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3611, i8* %3612, align 1
  %3613 = lshr i32 %3586, 31
  %3614 = xor i32 %3610, %3613
  %3615 = add i32 %3614, %3610
  %3616 = icmp eq i32 %3615, 2
  %3617 = zext i1 %3616 to i8
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3617, i8* %3618, align 1
  store %struct.Memory* %loadMem_4010c7, %struct.Memory** %MEMORY
  %loadMem_4010ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 33
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 1
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %EAX.i178 = bitcast %union.anon* %3624 to i32*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 15
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %3627 to i64*
  %3628 = load i64, i64* %RBP.i179
  %3629 = sub i64 %3628, 64
  %3630 = load i32, i32* %EAX.i178
  %3631 = zext i32 %3630 to i64
  %3632 = load i64, i64* %PC.i177
  %3633 = add i64 %3632, 3
  store i64 %3633, i64* %PC.i177
  %3634 = inttoptr i64 %3629 to i32*
  store i32 %3630, i32* %3634
  store %struct.Memory* %loadMem_4010ca, %struct.Memory** %MEMORY
  %loadMem_4010cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 33
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3637 to i64*
  %3638 = load i64, i64* %PC.i176
  %3639 = add i64 %3638, -302
  %3640 = load i64, i64* %PC.i176
  %3641 = add i64 %3640, 5
  store i64 %3641, i64* %PC.i176
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3639, i64* %3642, align 8
  store %struct.Memory* %loadMem_4010cd, %struct.Memory** %MEMORY
  br label %block_.L_400f9f

block_.L_4010d2:                                  ; preds = %block_.L_400f9f
  %loadMem_4010d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 33
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3645 to i64*
  %3646 = load i64, i64* %PC.i175
  %3647 = add i64 %3646, 5
  %3648 = load i64, i64* %PC.i175
  %3649 = add i64 %3648, 5
  store i64 %3649, i64* %PC.i175
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3647, i64* %3650, align 8
  store %struct.Memory* %loadMem_4010d2, %struct.Memory** %MEMORY
  br label %block_.L_4010d7

block_.L_4010d7:                                  ; preds = %block_.L_4010d2
  %loadMem_4010d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 33
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 1
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %3656 to i64*
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 15
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %3659 to i64*
  %3660 = load i64, i64* %RBP.i174
  %3661 = sub i64 %3660, 68
  %3662 = load i64, i64* %PC.i172
  %3663 = add i64 %3662, 3
  store i64 %3663, i64* %PC.i172
  %3664 = inttoptr i64 %3661 to i32*
  %3665 = load i32, i32* %3664
  %3666 = zext i32 %3665 to i64
  store i64 %3666, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_4010d7, %struct.Memory** %MEMORY
  %loadMem_4010da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 1
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %3672 to i64*
  %3673 = load i64, i64* %RAX.i171
  %3674 = load i64, i64* %PC.i170
  %3675 = add i64 %3674, 3
  store i64 %3675, i64* %PC.i170
  %3676 = trunc i64 %3673 to i32
  %3677 = add i32 1, %3676
  %3678 = zext i32 %3677 to i64
  store i64 %3678, i64* %RAX.i171, align 8
  %3679 = icmp ult i32 %3677, %3676
  %3680 = icmp ult i32 %3677, 1
  %3681 = or i1 %3679, %3680
  %3682 = zext i1 %3681 to i8
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3682, i8* %3683, align 1
  %3684 = and i32 %3677, 255
  %3685 = call i32 @llvm.ctpop.i32(i32 %3684)
  %3686 = trunc i32 %3685 to i8
  %3687 = and i8 %3686, 1
  %3688 = xor i8 %3687, 1
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3688, i8* %3689, align 1
  %3690 = xor i64 1, %3673
  %3691 = trunc i64 %3690 to i32
  %3692 = xor i32 %3691, %3677
  %3693 = lshr i32 %3692, 4
  %3694 = trunc i32 %3693 to i8
  %3695 = and i8 %3694, 1
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3695, i8* %3696, align 1
  %3697 = icmp eq i32 %3677, 0
  %3698 = zext i1 %3697 to i8
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3698, i8* %3699, align 1
  %3700 = lshr i32 %3677, 31
  %3701 = trunc i32 %3700 to i8
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3701, i8* %3702, align 1
  %3703 = lshr i32 %3676, 31
  %3704 = xor i32 %3700, %3703
  %3705 = add i32 %3704, %3700
  %3706 = icmp eq i32 %3705, 2
  %3707 = zext i1 %3706 to i8
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3707, i8* %3708, align 1
  store %struct.Memory* %loadMem_4010da, %struct.Memory** %MEMORY
  %loadMem_4010dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 33
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 1
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %EAX.i168 = bitcast %union.anon* %3714 to i32*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 15
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %3717 to i64*
  %3718 = load i64, i64* %RBP.i169
  %3719 = sub i64 %3718, 68
  %3720 = load i32, i32* %EAX.i168
  %3721 = zext i32 %3720 to i64
  %3722 = load i64, i64* %PC.i167
  %3723 = add i64 %3722, 3
  store i64 %3723, i64* %PC.i167
  %3724 = inttoptr i64 %3719 to i32*
  store i32 %3720, i32* %3724
  store %struct.Memory* %loadMem_4010dd, %struct.Memory** %MEMORY
  %loadMem_4010e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 33
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3727 to i64*
  %3728 = load i64, i64* %PC.i166
  %3729 = add i64 %3728, -344
  %3730 = load i64, i64* %PC.i166
  %3731 = add i64 %3730, 5
  store i64 %3731, i64* %PC.i166
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3729, i64* %3732, align 8
  store %struct.Memory* %loadMem_4010e0, %struct.Memory** %MEMORY
  br label %block_.L_400f88

block_.L_4010e5:                                  ; preds = %block_.L_400f88
  %loadMem_4010e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 33
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %3735 to i64*
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 15
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %3738 to i64*
  %3739 = load i64, i64* %RBP.i165
  %3740 = sub i64 %3739, 64
  %3741 = load i64, i64* %PC.i164
  %3742 = add i64 %3741, 7
  store i64 %3742, i64* %PC.i164
  %3743 = inttoptr i64 %3740 to i32*
  store i32 0, i32* %3743
  store %struct.Memory* %loadMem_4010e5, %struct.Memory** %MEMORY
  br label %block_.L_4010ec

block_.L_4010ec:                                  ; preds = %block_4010fd, %block_.L_4010e5
  %loadMem_4010ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 33
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %3746 to i64*
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3748 = getelementptr inbounds %struct.GPR, %struct.GPR* %3747, i32 0, i32 1
  %3749 = getelementptr inbounds %struct.Reg, %struct.Reg* %3748, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %3749 to i64*
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 15
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %3752 to i64*
  %3753 = load i64, i64* %RBP.i163
  %3754 = sub i64 %3753, 64
  %3755 = load i64, i64* %PC.i161
  %3756 = add i64 %3755, 3
  store i64 %3756, i64* %PC.i161
  %3757 = inttoptr i64 %3754 to i32*
  %3758 = load i32, i32* %3757
  %3759 = zext i32 %3758 to i64
  store i64 %3759, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_4010ec, %struct.Memory** %MEMORY
  %loadMem_4010ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 33
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3762 to i64*
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 5
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 15
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %3768 to i64*
  %3769 = load i64, i64* %RBP.i160
  %3770 = sub i64 %3769, 8
  %3771 = load i64, i64* %PC.i158
  %3772 = add i64 %3771, 3
  store i64 %3772, i64* %PC.i158
  %3773 = inttoptr i64 %3770 to i32*
  %3774 = load i32, i32* %3773
  %3775 = zext i32 %3774 to i64
  store i64 %3775, i64* %RCX.i159, align 8
  store %struct.Memory* %loadMem_4010ef, %struct.Memory** %MEMORY
  %loadMem_4010f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 33
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %3778 to i64*
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 5
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %3781 to i64*
  %3782 = load i64, i64* %RCX.i157
  %3783 = load i64, i64* %PC.i156
  %3784 = add i64 %3783, 3
  store i64 %3784, i64* %PC.i156
  %3785 = trunc i64 %3782 to i32
  %3786 = sub i32 %3785, 1
  %3787 = zext i32 %3786 to i64
  store i64 %3787, i64* %RCX.i157, align 8
  %3788 = icmp ult i32 %3785, 1
  %3789 = zext i1 %3788 to i8
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3789, i8* %3790, align 1
  %3791 = and i32 %3786, 255
  %3792 = call i32 @llvm.ctpop.i32(i32 %3791)
  %3793 = trunc i32 %3792 to i8
  %3794 = and i8 %3793, 1
  %3795 = xor i8 %3794, 1
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3795, i8* %3796, align 1
  %3797 = xor i64 1, %3782
  %3798 = trunc i64 %3797 to i32
  %3799 = xor i32 %3798, %3786
  %3800 = lshr i32 %3799, 4
  %3801 = trunc i32 %3800 to i8
  %3802 = and i8 %3801, 1
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3802, i8* %3803, align 1
  %3804 = icmp eq i32 %3786, 0
  %3805 = zext i1 %3804 to i8
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3805, i8* %3806, align 1
  %3807 = lshr i32 %3786, 31
  %3808 = trunc i32 %3807 to i8
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3808, i8* %3809, align 1
  %3810 = lshr i32 %3785, 31
  %3811 = xor i32 %3807, %3810
  %3812 = add i32 %3811, %3810
  %3813 = icmp eq i32 %3812, 2
  %3814 = zext i1 %3813 to i8
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3814, i8* %3815, align 1
  store %struct.Memory* %loadMem_4010f2, %struct.Memory** %MEMORY
  %loadMem_4010f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 1
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %EAX.i154 = bitcast %union.anon* %3821 to i32*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 5
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %ECX.i155 = bitcast %union.anon* %3824 to i32*
  %3825 = load i32, i32* %EAX.i154
  %3826 = zext i32 %3825 to i64
  %3827 = load i32, i32* %ECX.i155
  %3828 = zext i32 %3827 to i64
  %3829 = load i64, i64* %PC.i153
  %3830 = add i64 %3829, 2
  store i64 %3830, i64* %PC.i153
  %3831 = sub i32 %3825, %3827
  %3832 = icmp ult i32 %3825, %3827
  %3833 = zext i1 %3832 to i8
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3833, i8* %3834, align 1
  %3835 = and i32 %3831, 255
  %3836 = call i32 @llvm.ctpop.i32(i32 %3835)
  %3837 = trunc i32 %3836 to i8
  %3838 = and i8 %3837, 1
  %3839 = xor i8 %3838, 1
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3839, i8* %3840, align 1
  %3841 = xor i64 %3828, %3826
  %3842 = trunc i64 %3841 to i32
  %3843 = xor i32 %3842, %3831
  %3844 = lshr i32 %3843, 4
  %3845 = trunc i32 %3844 to i8
  %3846 = and i8 %3845, 1
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3846, i8* %3847, align 1
  %3848 = icmp eq i32 %3831, 0
  %3849 = zext i1 %3848 to i8
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3849, i8* %3850, align 1
  %3851 = lshr i32 %3831, 31
  %3852 = trunc i32 %3851 to i8
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3852, i8* %3853, align 1
  %3854 = lshr i32 %3825, 31
  %3855 = lshr i32 %3827, 31
  %3856 = xor i32 %3855, %3854
  %3857 = xor i32 %3851, %3854
  %3858 = add i32 %3857, %3856
  %3859 = icmp eq i32 %3858, 2
  %3860 = zext i1 %3859 to i8
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3860, i8* %3861, align 1
  store %struct.Memory* %loadMem_4010f5, %struct.Memory** %MEMORY
  %loadMem_4010f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 33
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3864 to i64*
  %3865 = load i64, i64* %PC.i152
  %3866 = add i64 %3865, 42
  %3867 = load i64, i64* %PC.i152
  %3868 = add i64 %3867, 6
  %3869 = load i64, i64* %PC.i152
  %3870 = add i64 %3869, 6
  store i64 %3870, i64* %PC.i152
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3872 = load i8, i8* %3871, align 1
  %3873 = icmp eq i8 %3872, 0
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3875 = load i8, i8* %3874, align 1
  %3876 = icmp ne i8 %3875, 0
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3878 = load i8, i8* %3877, align 1
  %3879 = icmp ne i8 %3878, 0
  %3880 = xor i1 %3876, %3879
  %3881 = xor i1 %3880, true
  %3882 = and i1 %3873, %3881
  %3883 = zext i1 %3882 to i8
  store i8 %3883, i8* %BRANCH_TAKEN, align 1
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3885 = select i1 %3882, i64 %3866, i64 %3868
  store i64 %3885, i64* %3884, align 8
  store %struct.Memory* %loadMem_4010f7, %struct.Memory** %MEMORY
  %loadBr_4010f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010f7 = icmp eq i8 %loadBr_4010f7, 1
  br i1 %cmpBr_4010f7, label %block_.L_401121, label %block_4010fd

block_4010fd:                                     ; preds = %block_.L_4010ec
  %loadMem_4010fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 33
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 1
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 15
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %3894 to i64*
  %3895 = load i64, i64* %RBP.i151
  %3896 = sub i64 %3895, 32
  %3897 = load i64, i64* %PC.i149
  %3898 = add i64 %3897, 4
  store i64 %3898, i64* %PC.i149
  %3899 = inttoptr i64 %3896 to i64*
  %3900 = load i64, i64* %3899
  store i64 %3900, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_4010fd, %struct.Memory** %MEMORY
  %loadMem_401101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 33
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3903 to i64*
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 5
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 15
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %3909 to i64*
  %3910 = load i64, i64* %RBP.i148
  %3911 = sub i64 %3910, 64
  %3912 = load i64, i64* %PC.i146
  %3913 = add i64 %3912, 4
  store i64 %3913, i64* %PC.i146
  %3914 = inttoptr i64 %3911 to i32*
  %3915 = load i32, i32* %3914
  %3916 = sext i32 %3915 to i64
  store i64 %3916, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_401101, %struct.Memory** %MEMORY
  %loadMem_401105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3919 to i64*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 1
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 5
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 7
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %3928 to i64*
  %3929 = load i64, i64* %RAX.i143
  %3930 = load i64, i64* %RCX.i144
  %3931 = mul i64 %3930, 4
  %3932 = add i64 %3931, %3929
  %3933 = load i64, i64* %PC.i142
  %3934 = add i64 %3933, 3
  store i64 %3934, i64* %PC.i142
  %3935 = inttoptr i64 %3932 to i32*
  %3936 = load i32, i32* %3935
  %3937 = zext i32 %3936 to i64
  store i64 %3937, i64* %RDX.i145, align 8
  store %struct.Memory* %loadMem_401105, %struct.Memory** %MEMORY
  %loadMem_401108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 33
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 1
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %3943 to i64*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 15
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %3946 to i64*
  %3947 = load i64, i64* %RBP.i141
  %3948 = sub i64 %3947, 40
  %3949 = load i64, i64* %PC.i139
  %3950 = add i64 %3949, 4
  store i64 %3950, i64* %PC.i139
  %3951 = inttoptr i64 %3948 to i64*
  %3952 = load i64, i64* %3951
  store i64 %3952, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_401108, %struct.Memory** %MEMORY
  %loadMem_40110c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 33
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3955 to i64*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 5
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 15
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %3961 to i64*
  %3962 = load i64, i64* %RBP.i138
  %3963 = sub i64 %3962, 64
  %3964 = load i64, i64* %PC.i136
  %3965 = add i64 %3964, 4
  store i64 %3965, i64* %PC.i136
  %3966 = inttoptr i64 %3963 to i32*
  %3967 = load i32, i32* %3966
  %3968 = sext i32 %3967 to i64
  store i64 %3968, i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_40110c, %struct.Memory** %MEMORY
  %loadMem_401110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 33
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 7
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3974 to i32*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 1
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %3977 to i64*
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 5
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %3980 to i64*
  %3981 = load i64, i64* %RAX.i134
  %3982 = load i64, i64* %RCX.i135
  %3983 = mul i64 %3982, 4
  %3984 = add i64 %3983, %3981
  %3985 = load i32, i32* %EDX.i
  %3986 = zext i32 %3985 to i64
  %3987 = load i64, i64* %PC.i133
  %3988 = add i64 %3987, 3
  store i64 %3988, i64* %PC.i133
  %3989 = inttoptr i64 %3984 to i32*
  store i32 %3985, i32* %3989
  store %struct.Memory* %loadMem_401110, %struct.Memory** %MEMORY
  %loadMem_401113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 33
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3992 to i64*
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 1
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 15
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %3998 to i64*
  %3999 = load i64, i64* %RBP.i132
  %4000 = sub i64 %3999, 64
  %4001 = load i64, i64* %PC.i130
  %4002 = add i64 %4001, 3
  store i64 %4002, i64* %PC.i130
  %4003 = inttoptr i64 %4000 to i32*
  %4004 = load i32, i32* %4003
  %4005 = zext i32 %4004 to i64
  store i64 %4005, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_401113, %struct.Memory** %MEMORY
  %loadMem_401116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 33
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4008 to i64*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 1
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %4011 to i64*
  %4012 = load i64, i64* %RAX.i129
  %4013 = load i64, i64* %PC.i128
  %4014 = add i64 %4013, 3
  store i64 %4014, i64* %PC.i128
  %4015 = trunc i64 %4012 to i32
  %4016 = add i32 1, %4015
  %4017 = zext i32 %4016 to i64
  store i64 %4017, i64* %RAX.i129, align 8
  %4018 = icmp ult i32 %4016, %4015
  %4019 = icmp ult i32 %4016, 1
  %4020 = or i1 %4018, %4019
  %4021 = zext i1 %4020 to i8
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4021, i8* %4022, align 1
  %4023 = and i32 %4016, 255
  %4024 = call i32 @llvm.ctpop.i32(i32 %4023)
  %4025 = trunc i32 %4024 to i8
  %4026 = and i8 %4025, 1
  %4027 = xor i8 %4026, 1
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4027, i8* %4028, align 1
  %4029 = xor i64 1, %4012
  %4030 = trunc i64 %4029 to i32
  %4031 = xor i32 %4030, %4016
  %4032 = lshr i32 %4031, 4
  %4033 = trunc i32 %4032 to i8
  %4034 = and i8 %4033, 1
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4034, i8* %4035, align 1
  %4036 = icmp eq i32 %4016, 0
  %4037 = zext i1 %4036 to i8
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4037, i8* %4038, align 1
  %4039 = lshr i32 %4016, 31
  %4040 = trunc i32 %4039 to i8
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4040, i8* %4041, align 1
  %4042 = lshr i32 %4015, 31
  %4043 = xor i32 %4039, %4042
  %4044 = add i32 %4043, %4039
  %4045 = icmp eq i32 %4044, 2
  %4046 = zext i1 %4045 to i8
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4046, i8* %4047, align 1
  store %struct.Memory* %loadMem_401116, %struct.Memory** %MEMORY
  %loadMem_401119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 33
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 1
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %EAX.i126 = bitcast %union.anon* %4053 to i32*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 15
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %4056 to i64*
  %4057 = load i64, i64* %RBP.i127
  %4058 = sub i64 %4057, 64
  %4059 = load i32, i32* %EAX.i126
  %4060 = zext i32 %4059 to i64
  %4061 = load i64, i64* %PC.i125
  %4062 = add i64 %4061, 3
  store i64 %4062, i64* %PC.i125
  %4063 = inttoptr i64 %4058 to i32*
  store i32 %4059, i32* %4063
  store %struct.Memory* %loadMem_401119, %struct.Memory** %MEMORY
  %loadMem_40111c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4066 to i64*
  %4067 = load i64, i64* %PC.i124
  %4068 = add i64 %4067, -48
  %4069 = load i64, i64* %PC.i124
  %4070 = add i64 %4069, 5
  store i64 %4070, i64* %PC.i124
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4068, i64* %4071, align 8
  store %struct.Memory* %loadMem_40111c, %struct.Memory** %MEMORY
  br label %block_.L_4010ec

block_.L_401121:                                  ; preds = %block_.L_4010ec
  %loadMem_401121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 33
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4074 to i64*
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 15
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %4077 to i64*
  %4078 = load i64, i64* %RBP.i123
  %4079 = sub i64 %4078, 68
  %4080 = load i64, i64* %PC.i122
  %4081 = add i64 %4080, 7
  store i64 %4081, i64* %PC.i122
  %4082 = inttoptr i64 %4079 to i32*
  store i32 1, i32* %4082
  store %struct.Memory* %loadMem_401121, %struct.Memory** %MEMORY
  br label %block_.L_401128

block_.L_401128:                                  ; preds = %block_.L_4011af, %block_.L_401121
  %loadMem_401128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 33
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4085 to i64*
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 1
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %4088 to i64*
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 15
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %4091 to i64*
  %4092 = load i64, i64* %RBP.i121
  %4093 = sub i64 %4092, 68
  %4094 = load i64, i64* %PC.i119
  %4095 = add i64 %4094, 3
  store i64 %4095, i64* %PC.i119
  %4096 = inttoptr i64 %4093 to i32*
  %4097 = load i32, i32* %4096
  %4098 = zext i32 %4097 to i64
  store i64 %4098, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_401128, %struct.Memory** %MEMORY
  %loadMem_40112b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4100 = getelementptr inbounds %struct.GPR, %struct.GPR* %4099, i32 0, i32 33
  %4101 = getelementptr inbounds %struct.Reg, %struct.Reg* %4100, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4101 to i64*
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4103 = getelementptr inbounds %struct.GPR, %struct.GPR* %4102, i32 0, i32 5
  %4104 = getelementptr inbounds %struct.Reg, %struct.Reg* %4103, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %4104 to i64*
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 15
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %4107 to i64*
  %4108 = load i64, i64* %RBP.i118
  %4109 = sub i64 %4108, 8
  %4110 = load i64, i64* %PC.i116
  %4111 = add i64 %4110, 3
  store i64 %4111, i64* %PC.i116
  %4112 = inttoptr i64 %4109 to i32*
  %4113 = load i32, i32* %4112
  %4114 = zext i32 %4113 to i64
  store i64 %4114, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_40112b, %struct.Memory** %MEMORY
  %loadMem_40112e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 33
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4117 to i64*
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 5
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %4120 to i64*
  %4121 = load i64, i64* %RCX.i115
  %4122 = load i64, i64* %PC.i114
  %4123 = add i64 %4122, 3
  store i64 %4123, i64* %PC.i114
  %4124 = trunc i64 %4121 to i32
  %4125 = sub i32 %4124, 1
  %4126 = zext i32 %4125 to i64
  store i64 %4126, i64* %RCX.i115, align 8
  %4127 = icmp ult i32 %4124, 1
  %4128 = zext i1 %4127 to i8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4128, i8* %4129, align 1
  %4130 = and i32 %4125, 255
  %4131 = call i32 @llvm.ctpop.i32(i32 %4130)
  %4132 = trunc i32 %4131 to i8
  %4133 = and i8 %4132, 1
  %4134 = xor i8 %4133, 1
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4134, i8* %4135, align 1
  %4136 = xor i64 1, %4121
  %4137 = trunc i64 %4136 to i32
  %4138 = xor i32 %4137, %4125
  %4139 = lshr i32 %4138, 4
  %4140 = trunc i32 %4139 to i8
  %4141 = and i8 %4140, 1
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4141, i8* %4142, align 1
  %4143 = icmp eq i32 %4125, 0
  %4144 = zext i1 %4143 to i8
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4144, i8* %4145, align 1
  %4146 = lshr i32 %4125, 31
  %4147 = trunc i32 %4146 to i8
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4147, i8* %4148, align 1
  %4149 = lshr i32 %4124, 31
  %4150 = xor i32 %4146, %4149
  %4151 = add i32 %4150, %4149
  %4152 = icmp eq i32 %4151, 2
  %4153 = zext i1 %4152 to i8
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4153, i8* %4154, align 1
  store %struct.Memory* %loadMem_40112e, %struct.Memory** %MEMORY
  %loadMem_401131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 33
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4157 to i64*
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 1
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %EAX.i112 = bitcast %union.anon* %4160 to i32*
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 5
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %ECX.i113 = bitcast %union.anon* %4163 to i32*
  %4164 = load i32, i32* %EAX.i112
  %4165 = zext i32 %4164 to i64
  %4166 = load i32, i32* %ECX.i113
  %4167 = zext i32 %4166 to i64
  %4168 = load i64, i64* %PC.i111
  %4169 = add i64 %4168, 2
  store i64 %4169, i64* %PC.i111
  %4170 = sub i32 %4164, %4166
  %4171 = icmp ult i32 %4164, %4166
  %4172 = zext i1 %4171 to i8
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4172, i8* %4173, align 1
  %4174 = and i32 %4170, 255
  %4175 = call i32 @llvm.ctpop.i32(i32 %4174)
  %4176 = trunc i32 %4175 to i8
  %4177 = and i8 %4176, 1
  %4178 = xor i8 %4177, 1
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4178, i8* %4179, align 1
  %4180 = xor i64 %4167, %4165
  %4181 = trunc i64 %4180 to i32
  %4182 = xor i32 %4181, %4170
  %4183 = lshr i32 %4182, 4
  %4184 = trunc i32 %4183 to i8
  %4185 = and i8 %4184, 1
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4185, i8* %4186, align 1
  %4187 = icmp eq i32 %4170, 0
  %4188 = zext i1 %4187 to i8
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4188, i8* %4189, align 1
  %4190 = lshr i32 %4170, 31
  %4191 = trunc i32 %4190 to i8
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4191, i8* %4192, align 1
  %4193 = lshr i32 %4164, 31
  %4194 = lshr i32 %4166, 31
  %4195 = xor i32 %4194, %4193
  %4196 = xor i32 %4190, %4193
  %4197 = add i32 %4196, %4195
  %4198 = icmp eq i32 %4197, 2
  %4199 = zext i1 %4198 to i8
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4199, i8* %4200, align 1
  store %struct.Memory* %loadMem_401131, %struct.Memory** %MEMORY
  %loadMem_401133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 33
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4203 to i64*
  %4204 = load i64, i64* %PC.i110
  %4205 = add i64 %4204, 138
  %4206 = load i64, i64* %PC.i110
  %4207 = add i64 %4206, 6
  %4208 = load i64, i64* %PC.i110
  %4209 = add i64 %4208, 6
  store i64 %4209, i64* %PC.i110
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4211 = load i8, i8* %4210, align 1
  %4212 = icmp eq i8 %4211, 0
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4214 = load i8, i8* %4213, align 1
  %4215 = icmp ne i8 %4214, 0
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4217 = load i8, i8* %4216, align 1
  %4218 = icmp ne i8 %4217, 0
  %4219 = xor i1 %4215, %4218
  %4220 = xor i1 %4219, true
  %4221 = and i1 %4212, %4220
  %4222 = zext i1 %4221 to i8
  store i8 %4222, i8* %BRANCH_TAKEN, align 1
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4224 = select i1 %4221, i64 %4205, i64 %4207
  store i64 %4224, i64* %4223, align 8
  store %struct.Memory* %loadMem_401133, %struct.Memory** %MEMORY
  %loadBr_401133 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401133 = icmp eq i8 %loadBr_401133, 1
  br i1 %cmpBr_401133, label %block_.L_4011bd, label %block_401139

block_401139:                                     ; preds = %block_.L_401128
  %loadMem_401139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 33
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4227 to i64*
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 1
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %4230 to i64*
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 15
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %4233 to i64*
  %4234 = load i64, i64* %RBP.i109
  %4235 = sub i64 %4234, 68
  %4236 = load i64, i64* %PC.i107
  %4237 = add i64 %4236, 3
  store i64 %4237, i64* %PC.i107
  %4238 = inttoptr i64 %4235 to i32*
  %4239 = load i32, i32* %4238
  %4240 = zext i32 %4239 to i64
  store i64 %4240, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_401139, %struct.Memory** %MEMORY
  %loadMem_40113c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 33
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4243 to i64*
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 1
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %EAX.i105 = bitcast %union.anon* %4246 to i32*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 15
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %4249 to i64*
  %4250 = load i64, i64* %RBP.i106
  %4251 = sub i64 %4250, 64
  %4252 = load i32, i32* %EAX.i105
  %4253 = zext i32 %4252 to i64
  %4254 = load i64, i64* %PC.i104
  %4255 = add i64 %4254, 3
  store i64 %4255, i64* %PC.i104
  %4256 = inttoptr i64 %4251 to i32*
  store i32 %4252, i32* %4256
  store %struct.Memory* %loadMem_40113c, %struct.Memory** %MEMORY
  br label %block_.L_40113f

block_.L_40113f:                                  ; preds = %block_401150, %block_401139
  %loadMem_40113f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 33
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4259 to i64*
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 1
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %4262 to i64*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 15
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %4265 to i64*
  %4266 = load i64, i64* %RBP.i103
  %4267 = sub i64 %4266, 64
  %4268 = load i64, i64* %PC.i101
  %4269 = add i64 %4268, 3
  store i64 %4269, i64* %PC.i101
  %4270 = inttoptr i64 %4267 to i32*
  %4271 = load i32, i32* %4270
  %4272 = zext i32 %4271 to i64
  store i64 %4272, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_40113f, %struct.Memory** %MEMORY
  %loadMem_401142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 33
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4275 to i64*
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 5
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %4278 to i64*
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 15
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %4281 to i64*
  %4282 = load i64, i64* %RBP.i100
  %4283 = sub i64 %4282, 8
  %4284 = load i64, i64* %PC.i98
  %4285 = add i64 %4284, 3
  store i64 %4285, i64* %PC.i98
  %4286 = inttoptr i64 %4283 to i32*
  %4287 = load i32, i32* %4286
  %4288 = zext i32 %4287 to i64
  store i64 %4288, i64* %RCX.i99, align 8
  store %struct.Memory* %loadMem_401142, %struct.Memory** %MEMORY
  %loadMem_401145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 33
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4291 to i64*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 5
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %4294 to i64*
  %4295 = load i64, i64* %RCX.i97
  %4296 = load i64, i64* %PC.i96
  %4297 = add i64 %4296, 3
  store i64 %4297, i64* %PC.i96
  %4298 = trunc i64 %4295 to i32
  %4299 = sub i32 %4298, 1
  %4300 = zext i32 %4299 to i64
  store i64 %4300, i64* %RCX.i97, align 8
  %4301 = icmp ult i32 %4298, 1
  %4302 = zext i1 %4301 to i8
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4302, i8* %4303, align 1
  %4304 = and i32 %4299, 255
  %4305 = call i32 @llvm.ctpop.i32(i32 %4304)
  %4306 = trunc i32 %4305 to i8
  %4307 = and i8 %4306, 1
  %4308 = xor i8 %4307, 1
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4308, i8* %4309, align 1
  %4310 = xor i64 1, %4295
  %4311 = trunc i64 %4310 to i32
  %4312 = xor i32 %4311, %4299
  %4313 = lshr i32 %4312, 4
  %4314 = trunc i32 %4313 to i8
  %4315 = and i8 %4314, 1
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4315, i8* %4316, align 1
  %4317 = icmp eq i32 %4299, 0
  %4318 = zext i1 %4317 to i8
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4318, i8* %4319, align 1
  %4320 = lshr i32 %4299, 31
  %4321 = trunc i32 %4320 to i8
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4321, i8* %4322, align 1
  %4323 = lshr i32 %4298, 31
  %4324 = xor i32 %4320, %4323
  %4325 = add i32 %4324, %4323
  %4326 = icmp eq i32 %4325, 2
  %4327 = zext i1 %4326 to i8
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4327, i8* %4328, align 1
  store %struct.Memory* %loadMem_401145, %struct.Memory** %MEMORY
  %loadMem_401148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 33
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4331 to i64*
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 1
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %EAX.i94 = bitcast %union.anon* %4334 to i32*
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 5
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %ECX.i95 = bitcast %union.anon* %4337 to i32*
  %4338 = load i32, i32* %EAX.i94
  %4339 = zext i32 %4338 to i64
  %4340 = load i32, i32* %ECX.i95
  %4341 = zext i32 %4340 to i64
  %4342 = load i64, i64* %PC.i93
  %4343 = add i64 %4342, 2
  store i64 %4343, i64* %PC.i93
  %4344 = sub i32 %4338, %4340
  %4345 = icmp ult i32 %4338, %4340
  %4346 = zext i1 %4345 to i8
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4346, i8* %4347, align 1
  %4348 = and i32 %4344, 255
  %4349 = call i32 @llvm.ctpop.i32(i32 %4348)
  %4350 = trunc i32 %4349 to i8
  %4351 = and i8 %4350, 1
  %4352 = xor i8 %4351, 1
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4352, i8* %4353, align 1
  %4354 = xor i64 %4341, %4339
  %4355 = trunc i64 %4354 to i32
  %4356 = xor i32 %4355, %4344
  %4357 = lshr i32 %4356, 4
  %4358 = trunc i32 %4357 to i8
  %4359 = and i8 %4358, 1
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4359, i8* %4360, align 1
  %4361 = icmp eq i32 %4344, 0
  %4362 = zext i1 %4361 to i8
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4362, i8* %4363, align 1
  %4364 = lshr i32 %4344, 31
  %4365 = trunc i32 %4364 to i8
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4365, i8* %4366, align 1
  %4367 = lshr i32 %4338, 31
  %4368 = lshr i32 %4340, 31
  %4369 = xor i32 %4368, %4367
  %4370 = xor i32 %4364, %4367
  %4371 = add i32 %4370, %4369
  %4372 = icmp eq i32 %4371, 2
  %4373 = zext i1 %4372 to i8
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4373, i8* %4374, align 1
  store %struct.Memory* %loadMem_401148, %struct.Memory** %MEMORY
  %loadMem_40114a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4377 to i64*
  %4378 = load i64, i64* %PC.i92
  %4379 = add i64 %4378, 96
  %4380 = load i64, i64* %PC.i92
  %4381 = add i64 %4380, 6
  %4382 = load i64, i64* %PC.i92
  %4383 = add i64 %4382, 6
  store i64 %4383, i64* %PC.i92
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4385 = load i8, i8* %4384, align 1
  %4386 = icmp eq i8 %4385, 0
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4388 = load i8, i8* %4387, align 1
  %4389 = icmp ne i8 %4388, 0
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4391 = load i8, i8* %4390, align 1
  %4392 = icmp ne i8 %4391, 0
  %4393 = xor i1 %4389, %4392
  %4394 = xor i1 %4393, true
  %4395 = and i1 %4386, %4394
  %4396 = zext i1 %4395 to i8
  store i8 %4396, i8* %BRANCH_TAKEN, align 1
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4398 = select i1 %4395, i64 %4379, i64 %4381
  store i64 %4398, i64* %4397, align 8
  store %struct.Memory* %loadMem_40114a, %struct.Memory** %MEMORY
  %loadBr_40114a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40114a = icmp eq i8 %loadBr_40114a, 1
  br i1 %cmpBr_40114a, label %block_.L_4011aa, label %block_401150

block_401150:                                     ; preds = %block_.L_40113f
  %loadMem_401150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 33
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4401 to i64*
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 1
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %4404 to i64*
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4406 = getelementptr inbounds %struct.GPR, %struct.GPR* %4405, i32 0, i32 15
  %4407 = getelementptr inbounds %struct.Reg, %struct.Reg* %4406, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %4407 to i64*
  %4408 = load i64, i64* %RBP.i91
  %4409 = sub i64 %4408, 40
  %4410 = load i64, i64* %PC.i89
  %4411 = add i64 %4410, 4
  store i64 %4411, i64* %PC.i89
  %4412 = inttoptr i64 %4409 to i64*
  %4413 = load i64, i64* %4412
  store i64 %4413, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_401150, %struct.Memory** %MEMORY
  %loadMem_401154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 33
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 5
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %4419 to i64*
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 15
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %4422 to i64*
  %4423 = load i64, i64* %RBP.i88
  %4424 = sub i64 %4423, 68
  %4425 = load i64, i64* %PC.i86
  %4426 = add i64 %4425, 3
  store i64 %4426, i64* %PC.i86
  %4427 = inttoptr i64 %4424 to i32*
  %4428 = load i32, i32* %4427
  %4429 = zext i32 %4428 to i64
  store i64 %4429, i64* %RCX.i87, align 8
  store %struct.Memory* %loadMem_401154, %struct.Memory** %MEMORY
  %loadMem_401157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 33
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4432 to i64*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 5
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %4435 to i64*
  %4436 = load i64, i64* %RCX.i85
  %4437 = load i64, i64* %PC.i84
  %4438 = add i64 %4437, 3
  store i64 %4438, i64* %PC.i84
  %4439 = trunc i64 %4436 to i32
  %4440 = sub i32 %4439, 1
  %4441 = zext i32 %4440 to i64
  store i64 %4441, i64* %RCX.i85, align 8
  %4442 = icmp ult i32 %4439, 1
  %4443 = zext i1 %4442 to i8
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4443, i8* %4444, align 1
  %4445 = and i32 %4440, 255
  %4446 = call i32 @llvm.ctpop.i32(i32 %4445)
  %4447 = trunc i32 %4446 to i8
  %4448 = and i8 %4447, 1
  %4449 = xor i8 %4448, 1
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4449, i8* %4450, align 1
  %4451 = xor i64 1, %4436
  %4452 = trunc i64 %4451 to i32
  %4453 = xor i32 %4452, %4440
  %4454 = lshr i32 %4453, 4
  %4455 = trunc i32 %4454 to i8
  %4456 = and i8 %4455, 1
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4456, i8* %4457, align 1
  %4458 = icmp eq i32 %4440, 0
  %4459 = zext i1 %4458 to i8
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4459, i8* %4460, align 1
  %4461 = lshr i32 %4440, 31
  %4462 = trunc i32 %4461 to i8
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4462, i8* %4463, align 1
  %4464 = lshr i32 %4439, 31
  %4465 = xor i32 %4461, %4464
  %4466 = add i32 %4465, %4464
  %4467 = icmp eq i32 %4466, 2
  %4468 = zext i1 %4467 to i8
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4468, i8* %4469, align 1
  store %struct.Memory* %loadMem_401157, %struct.Memory** %MEMORY
  %loadMem_40115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 33
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4472 to i64*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 5
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %ECX.i82 = bitcast %union.anon* %4475 to i32*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 7
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %4478 to i64*
  %4479 = load i32, i32* %ECX.i82
  %4480 = zext i32 %4479 to i64
  %4481 = load i64, i64* %PC.i81
  %4482 = add i64 %4481, 3
  store i64 %4482, i64* %PC.i81
  %4483 = shl i64 %4480, 32
  %4484 = ashr exact i64 %4483, 32
  store i64 %4484, i64* %RDX.i83, align 8
  store %struct.Memory* %loadMem_40115a, %struct.Memory** %MEMORY
  %loadMem_40115d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 33
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4487 to i64*
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 7
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %RDX.i80 = bitcast %union.anon* %4490 to i64*
  %4491 = load i64, i64* %RDX.i80
  %4492 = load i64, i64* %PC.i79
  %4493 = add i64 %4492, 4
  store i64 %4493, i64* %PC.i79
  %4494 = sext i64 %4491 to i128
  %4495 = and i128 %4494, -18446744073709551616
  %4496 = zext i64 %4491 to i128
  %4497 = or i128 %4495, %4496
  %4498 = mul i128 24, %4497
  %4499 = trunc i128 %4498 to i64
  store i64 %4499, i64* %RDX.i80, align 8
  %4500 = sext i64 %4499 to i128
  %4501 = icmp ne i128 %4500, %4498
  %4502 = zext i1 %4501 to i8
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4502, i8* %4503, align 1
  %4504 = trunc i128 %4498 to i32
  %4505 = and i32 %4504, 255
  %4506 = call i32 @llvm.ctpop.i32(i32 %4505)
  %4507 = trunc i32 %4506 to i8
  %4508 = and i8 %4507, 1
  %4509 = xor i8 %4508, 1
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4509, i8* %4510, align 1
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4511, align 1
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4512, align 1
  %4513 = lshr i64 %4499, 63
  %4514 = trunc i64 %4513 to i8
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4514, i8* %4515, align 1
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4502, i8* %4516, align 1
  store %struct.Memory* %loadMem_40115d, %struct.Memory** %MEMORY
  %loadMem_401161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 33
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4519 to i64*
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 1
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %4522 to i64*
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 7
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %4525 to i64*
  %4526 = load i64, i64* %RAX.i77
  %4527 = load i64, i64* %RDX.i78
  %4528 = load i64, i64* %PC.i76
  %4529 = add i64 %4528, 3
  store i64 %4529, i64* %PC.i76
  %4530 = add i64 %4527, %4526
  store i64 %4530, i64* %RAX.i77, align 8
  %4531 = icmp ult i64 %4530, %4526
  %4532 = icmp ult i64 %4530, %4527
  %4533 = or i1 %4531, %4532
  %4534 = zext i1 %4533 to i8
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4534, i8* %4535, align 1
  %4536 = trunc i64 %4530 to i32
  %4537 = and i32 %4536, 255
  %4538 = call i32 @llvm.ctpop.i32(i32 %4537)
  %4539 = trunc i32 %4538 to i8
  %4540 = and i8 %4539, 1
  %4541 = xor i8 %4540, 1
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4541, i8* %4542, align 1
  %4543 = xor i64 %4527, %4526
  %4544 = xor i64 %4543, %4530
  %4545 = lshr i64 %4544, 4
  %4546 = trunc i64 %4545 to i8
  %4547 = and i8 %4546, 1
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4547, i8* %4548, align 1
  %4549 = icmp eq i64 %4530, 0
  %4550 = zext i1 %4549 to i8
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4550, i8* %4551, align 1
  %4552 = lshr i64 %4530, 63
  %4553 = trunc i64 %4552 to i8
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4553, i8* %4554, align 1
  %4555 = lshr i64 %4526, 63
  %4556 = lshr i64 %4527, 63
  %4557 = xor i64 %4552, %4555
  %4558 = xor i64 %4552, %4556
  %4559 = add i64 %4557, %4558
  %4560 = icmp eq i64 %4559, 2
  %4561 = zext i1 %4560 to i8
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4561, i8* %4562, align 1
  store %struct.Memory* %loadMem_401161, %struct.Memory** %MEMORY
  %loadMem_401164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 33
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4565 to i64*
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 5
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 15
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %4571 to i64*
  %4572 = load i64, i64* %RBP.i75
  %4573 = sub i64 %4572, 64
  %4574 = load i64, i64* %PC.i73
  %4575 = add i64 %4574, 3
  store i64 %4575, i64* %PC.i73
  %4576 = inttoptr i64 %4573 to i32*
  %4577 = load i32, i32* %4576
  %4578 = zext i32 %4577 to i64
  store i64 %4578, i64* %RCX.i74, align 8
  store %struct.Memory* %loadMem_401164, %struct.Memory** %MEMORY
  %loadMem_401167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 33
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4581 to i64*
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 5
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %4584 to i64*
  %4585 = load i64, i64* %RCX.i72
  %4586 = load i64, i64* %PC.i71
  %4587 = add i64 %4586, 3
  store i64 %4587, i64* %PC.i71
  %4588 = trunc i64 %4585 to i32
  %4589 = sub i32 %4588, 1
  %4590 = zext i32 %4589 to i64
  store i64 %4590, i64* %RCX.i72, align 8
  %4591 = icmp ult i32 %4588, 1
  %4592 = zext i1 %4591 to i8
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4592, i8* %4593, align 1
  %4594 = and i32 %4589, 255
  %4595 = call i32 @llvm.ctpop.i32(i32 %4594)
  %4596 = trunc i32 %4595 to i8
  %4597 = and i8 %4596, 1
  %4598 = xor i8 %4597, 1
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4598, i8* %4599, align 1
  %4600 = xor i64 1, %4585
  %4601 = trunc i64 %4600 to i32
  %4602 = xor i32 %4601, %4589
  %4603 = lshr i32 %4602, 4
  %4604 = trunc i32 %4603 to i8
  %4605 = and i8 %4604, 1
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4605, i8* %4606, align 1
  %4607 = icmp eq i32 %4589, 0
  %4608 = zext i1 %4607 to i8
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4608, i8* %4609, align 1
  %4610 = lshr i32 %4589, 31
  %4611 = trunc i32 %4610 to i8
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4611, i8* %4612, align 1
  %4613 = lshr i32 %4588, 31
  %4614 = xor i32 %4610, %4613
  %4615 = add i32 %4614, %4613
  %4616 = icmp eq i32 %4615, 2
  %4617 = zext i1 %4616 to i8
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4617, i8* %4618, align 1
  store %struct.Memory* %loadMem_401167, %struct.Memory** %MEMORY
  %loadMem_40116a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 33
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4621 to i64*
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 5
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %ECX.i69 = bitcast %union.anon* %4624 to i32*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 7
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %RDX.i70 = bitcast %union.anon* %4627 to i64*
  %4628 = load i32, i32* %ECX.i69
  %4629 = zext i32 %4628 to i64
  %4630 = load i64, i64* %PC.i68
  %4631 = add i64 %4630, 3
  store i64 %4631, i64* %PC.i68
  %4632 = shl i64 %4629, 32
  %4633 = ashr exact i64 %4632, 32
  store i64 %4633, i64* %RDX.i70, align 8
  store %struct.Memory* %loadMem_40116a, %struct.Memory** %MEMORY
  %loadMem_40116d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 33
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4636 to i64*
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 1
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 5
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %4642 to i64*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 7
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %RDX.i67 = bitcast %union.anon* %4645 to i64*
  %4646 = load i64, i64* %RAX.i65
  %4647 = load i64, i64* %RDX.i67
  %4648 = mul i64 %4647, 4
  %4649 = add i64 %4648, %4646
  %4650 = load i64, i64* %PC.i64
  %4651 = add i64 %4650, 3
  store i64 %4651, i64* %PC.i64
  %4652 = inttoptr i64 %4649 to i32*
  %4653 = load i32, i32* %4652
  %4654 = zext i32 %4653 to i64
  store i64 %4654, i64* %RCX.i66, align 8
  store %struct.Memory* %loadMem_40116d, %struct.Memory** %MEMORY
  %loadMem_401170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4656 = getelementptr inbounds %struct.GPR, %struct.GPR* %4655, i32 0, i32 33
  %4657 = getelementptr inbounds %struct.Reg, %struct.Reg* %4656, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4657 to i64*
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 1
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %4660 to i64*
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 15
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %4663 to i64*
  %4664 = load i64, i64* %RBP.i63
  %4665 = sub i64 %4664, 32
  %4666 = load i64, i64* %PC.i61
  %4667 = add i64 %4666, 4
  store i64 %4667, i64* %PC.i61
  %4668 = inttoptr i64 %4665 to i64*
  %4669 = load i64, i64* %4668
  store i64 %4669, i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_401170, %struct.Memory** %MEMORY
  %loadMem_401174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 33
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4672 to i64*
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 7
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %4675 to i64*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 15
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %4678 to i64*
  %4679 = load i64, i64* %RBP.i60
  %4680 = sub i64 %4679, 68
  %4681 = load i64, i64* %PC.i58
  %4682 = add i64 %4681, 4
  store i64 %4682, i64* %PC.i58
  %4683 = inttoptr i64 %4680 to i32*
  %4684 = load i32, i32* %4683
  %4685 = sext i32 %4684 to i64
  store i64 %4685, i64* %RDX.i59, align 8
  store %struct.Memory* %loadMem_401174, %struct.Memory** %MEMORY
  %loadMem_401178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 33
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4688 to i64*
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 7
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %RDX.i57 = bitcast %union.anon* %4691 to i64*
  %4692 = load i64, i64* %RDX.i57
  %4693 = load i64, i64* %PC.i56
  %4694 = add i64 %4693, 4
  store i64 %4694, i64* %PC.i56
  %4695 = sext i64 %4692 to i128
  %4696 = and i128 %4695, -18446744073709551616
  %4697 = zext i64 %4692 to i128
  %4698 = or i128 %4696, %4697
  %4699 = mul i128 24, %4698
  %4700 = trunc i128 %4699 to i64
  store i64 %4700, i64* %RDX.i57, align 8
  %4701 = sext i64 %4700 to i128
  %4702 = icmp ne i128 %4701, %4699
  %4703 = zext i1 %4702 to i8
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4703, i8* %4704, align 1
  %4705 = trunc i128 %4699 to i32
  %4706 = and i32 %4705, 255
  %4707 = call i32 @llvm.ctpop.i32(i32 %4706)
  %4708 = trunc i32 %4707 to i8
  %4709 = and i8 %4708, 1
  %4710 = xor i8 %4709, 1
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4710, i8* %4711, align 1
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4712, align 1
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4713, align 1
  %4714 = lshr i64 %4700, 63
  %4715 = trunc i64 %4714 to i8
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4715, i8* %4716, align 1
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4703, i8* %4717, align 1
  store %struct.Memory* %loadMem_401178, %struct.Memory** %MEMORY
  %loadMem_40117c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 33
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4720 to i64*
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 1
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %4723 to i64*
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 7
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %4726 to i64*
  %4727 = load i64, i64* %RAX.i54
  %4728 = load i64, i64* %RDX.i55
  %4729 = load i64, i64* %PC.i53
  %4730 = add i64 %4729, 3
  store i64 %4730, i64* %PC.i53
  %4731 = add i64 %4728, %4727
  store i64 %4731, i64* %RAX.i54, align 8
  %4732 = icmp ult i64 %4731, %4727
  %4733 = icmp ult i64 %4731, %4728
  %4734 = or i1 %4732, %4733
  %4735 = zext i1 %4734 to i8
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4735, i8* %4736, align 1
  %4737 = trunc i64 %4731 to i32
  %4738 = and i32 %4737, 255
  %4739 = call i32 @llvm.ctpop.i32(i32 %4738)
  %4740 = trunc i32 %4739 to i8
  %4741 = and i8 %4740, 1
  %4742 = xor i8 %4741, 1
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4742, i8* %4743, align 1
  %4744 = xor i64 %4728, %4727
  %4745 = xor i64 %4744, %4731
  %4746 = lshr i64 %4745, 4
  %4747 = trunc i64 %4746 to i8
  %4748 = and i8 %4747, 1
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4748, i8* %4749, align 1
  %4750 = icmp eq i64 %4731, 0
  %4751 = zext i1 %4750 to i8
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4751, i8* %4752, align 1
  %4753 = lshr i64 %4731, 63
  %4754 = trunc i64 %4753 to i8
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4754, i8* %4755, align 1
  %4756 = lshr i64 %4727, 63
  %4757 = lshr i64 %4728, 63
  %4758 = xor i64 %4753, %4756
  %4759 = xor i64 %4753, %4757
  %4760 = add i64 %4758, %4759
  %4761 = icmp eq i64 %4760, 2
  %4762 = zext i1 %4761 to i8
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4762, i8* %4763, align 1
  store %struct.Memory* %loadMem_40117c, %struct.Memory** %MEMORY
  %loadMem_40117f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 33
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4766 to i64*
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 7
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %RDX.i51 = bitcast %union.anon* %4769 to i64*
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 15
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %4772 to i64*
  %4773 = load i64, i64* %RBP.i52
  %4774 = sub i64 %4773, 64
  %4775 = load i64, i64* %PC.i50
  %4776 = add i64 %4775, 4
  store i64 %4776, i64* %PC.i50
  %4777 = inttoptr i64 %4774 to i32*
  %4778 = load i32, i32* %4777
  %4779 = sext i32 %4778 to i64
  store i64 %4779, i64* %RDX.i51, align 8
  store %struct.Memory* %loadMem_40117f, %struct.Memory** %MEMORY
  %loadMem_401183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 33
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4782 to i64*
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 1
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 5
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4788 to i64*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 7
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RDX.i49 = bitcast %union.anon* %4791 to i64*
  %4792 = load i64, i64* %RCX.i
  %4793 = load i64, i64* %RAX.i48
  %4794 = load i64, i64* %RDX.i49
  %4795 = mul i64 %4794, 4
  %4796 = add i64 %4795, %4793
  %4797 = load i64, i64* %PC.i47
  %4798 = add i64 %4797, 3
  store i64 %4798, i64* %PC.i47
  %4799 = trunc i64 %4792 to i32
  %4800 = inttoptr i64 %4796 to i32*
  %4801 = load i32, i32* %4800
  %4802 = add i32 %4801, %4799
  %4803 = zext i32 %4802 to i64
  store i64 %4803, i64* %RCX.i, align 8
  %4804 = icmp ult i32 %4802, %4799
  %4805 = icmp ult i32 %4802, %4801
  %4806 = or i1 %4804, %4805
  %4807 = zext i1 %4806 to i8
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4807, i8* %4808, align 1
  %4809 = and i32 %4802, 255
  %4810 = call i32 @llvm.ctpop.i32(i32 %4809)
  %4811 = trunc i32 %4810 to i8
  %4812 = and i8 %4811, 1
  %4813 = xor i8 %4812, 1
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4813, i8* %4814, align 1
  %4815 = xor i32 %4801, %4799
  %4816 = xor i32 %4815, %4802
  %4817 = lshr i32 %4816, 4
  %4818 = trunc i32 %4817 to i8
  %4819 = and i8 %4818, 1
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4819, i8* %4820, align 1
  %4821 = icmp eq i32 %4802, 0
  %4822 = zext i1 %4821 to i8
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4822, i8* %4823, align 1
  %4824 = lshr i32 %4802, 31
  %4825 = trunc i32 %4824 to i8
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4825, i8* %4826, align 1
  %4827 = lshr i32 %4799, 31
  %4828 = lshr i32 %4801, 31
  %4829 = xor i32 %4824, %4827
  %4830 = xor i32 %4824, %4828
  %4831 = add i32 %4829, %4830
  %4832 = icmp eq i32 %4831, 2
  %4833 = zext i1 %4832 to i8
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4833, i8* %4834, align 1
  store %struct.Memory* %loadMem_401183, %struct.Memory** %MEMORY
  %loadMem_401186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 33
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4837 to i64*
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 1
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %4840 to i64*
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 15
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %4843 to i64*
  %4844 = load i64, i64* %RBP.i46
  %4845 = sub i64 %4844, 40
  %4846 = load i64, i64* %PC.i44
  %4847 = add i64 %4846, 4
  store i64 %4847, i64* %PC.i44
  %4848 = inttoptr i64 %4845 to i64*
  %4849 = load i64, i64* %4848
  store i64 %4849, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_401186, %struct.Memory** %MEMORY
  %loadMem_40118a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 33
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4852 to i64*
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 7
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %RDX.i42 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 15
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %4858 to i64*
  %4859 = load i64, i64* %RBP.i43
  %4860 = sub i64 %4859, 68
  %4861 = load i64, i64* %PC.i41
  %4862 = add i64 %4861, 4
  store i64 %4862, i64* %PC.i41
  %4863 = inttoptr i64 %4860 to i32*
  %4864 = load i32, i32* %4863
  %4865 = sext i32 %4864 to i64
  store i64 %4865, i64* %RDX.i42, align 8
  store %struct.Memory* %loadMem_40118a, %struct.Memory** %MEMORY
  %loadMem_40118e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 33
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4868 to i64*
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 7
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %RDX.i40 = bitcast %union.anon* %4871 to i64*
  %4872 = load i64, i64* %RDX.i40
  %4873 = load i64, i64* %PC.i39
  %4874 = add i64 %4873, 4
  store i64 %4874, i64* %PC.i39
  %4875 = sext i64 %4872 to i128
  %4876 = and i128 %4875, -18446744073709551616
  %4877 = zext i64 %4872 to i128
  %4878 = or i128 %4876, %4877
  %4879 = mul i128 24, %4878
  %4880 = trunc i128 %4879 to i64
  store i64 %4880, i64* %RDX.i40, align 8
  %4881 = sext i64 %4880 to i128
  %4882 = icmp ne i128 %4881, %4879
  %4883 = zext i1 %4882 to i8
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4883, i8* %4884, align 1
  %4885 = trunc i128 %4879 to i32
  %4886 = and i32 %4885, 255
  %4887 = call i32 @llvm.ctpop.i32(i32 %4886)
  %4888 = trunc i32 %4887 to i8
  %4889 = and i8 %4888, 1
  %4890 = xor i8 %4889, 1
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4890, i8* %4891, align 1
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4892, align 1
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4893, align 1
  %4894 = lshr i64 %4880, 63
  %4895 = trunc i64 %4894 to i8
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4895, i8* %4896, align 1
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4883, i8* %4897, align 1
  store %struct.Memory* %loadMem_40118e, %struct.Memory** %MEMORY
  %loadMem_401192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 33
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4900 to i64*
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 1
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %4903 to i64*
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 7
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %RDX.i38 = bitcast %union.anon* %4906 to i64*
  %4907 = load i64, i64* %RAX.i37
  %4908 = load i64, i64* %RDX.i38
  %4909 = load i64, i64* %PC.i36
  %4910 = add i64 %4909, 3
  store i64 %4910, i64* %PC.i36
  %4911 = add i64 %4908, %4907
  store i64 %4911, i64* %RAX.i37, align 8
  %4912 = icmp ult i64 %4911, %4907
  %4913 = icmp ult i64 %4911, %4908
  %4914 = or i1 %4912, %4913
  %4915 = zext i1 %4914 to i8
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4915, i8* %4916, align 1
  %4917 = trunc i64 %4911 to i32
  %4918 = and i32 %4917, 255
  %4919 = call i32 @llvm.ctpop.i32(i32 %4918)
  %4920 = trunc i32 %4919 to i8
  %4921 = and i8 %4920, 1
  %4922 = xor i8 %4921, 1
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4922, i8* %4923, align 1
  %4924 = xor i64 %4908, %4907
  %4925 = xor i64 %4924, %4911
  %4926 = lshr i64 %4925, 4
  %4927 = trunc i64 %4926 to i8
  %4928 = and i8 %4927, 1
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4928, i8* %4929, align 1
  %4930 = icmp eq i64 %4911, 0
  %4931 = zext i1 %4930 to i8
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4931, i8* %4932, align 1
  %4933 = lshr i64 %4911, 63
  %4934 = trunc i64 %4933 to i8
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4934, i8* %4935, align 1
  %4936 = lshr i64 %4907, 63
  %4937 = lshr i64 %4908, 63
  %4938 = xor i64 %4933, %4936
  %4939 = xor i64 %4933, %4937
  %4940 = add i64 %4938, %4939
  %4941 = icmp eq i64 %4940, 2
  %4942 = zext i1 %4941 to i8
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4942, i8* %4943, align 1
  store %struct.Memory* %loadMem_401192, %struct.Memory** %MEMORY
  %loadMem_401195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4945 = getelementptr inbounds %struct.GPR, %struct.GPR* %4944, i32 0, i32 33
  %4946 = getelementptr inbounds %struct.Reg, %struct.Reg* %4945, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4946 to i64*
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 7
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %RDX.i34 = bitcast %union.anon* %4949 to i64*
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4951 = getelementptr inbounds %struct.GPR, %struct.GPR* %4950, i32 0, i32 15
  %4952 = getelementptr inbounds %struct.Reg, %struct.Reg* %4951, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4952 to i64*
  %4953 = load i64, i64* %RBP.i35
  %4954 = sub i64 %4953, 64
  %4955 = load i64, i64* %PC.i33
  %4956 = add i64 %4955, 4
  store i64 %4956, i64* %PC.i33
  %4957 = inttoptr i64 %4954 to i32*
  %4958 = load i32, i32* %4957
  %4959 = sext i32 %4958 to i64
  store i64 %4959, i64* %RDX.i34, align 8
  store %struct.Memory* %loadMem_401195, %struct.Memory** %MEMORY
  %loadMem_401199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 33
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4962 to i64*
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 5
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4965 to i32*
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 1
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %4968 to i64*
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 7
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4971 to i64*
  %4972 = load i64, i64* %RAX.i32
  %4973 = load i64, i64* %RDX.i
  %4974 = mul i64 %4973, 4
  %4975 = add i64 %4974, %4972
  %4976 = load i32, i32* %ECX.i
  %4977 = zext i32 %4976 to i64
  %4978 = load i64, i64* %PC.i31
  %4979 = add i64 %4978, 3
  store i64 %4979, i64* %PC.i31
  %4980 = inttoptr i64 %4975 to i32*
  store i32 %4976, i32* %4980
  store %struct.Memory* %loadMem_401199, %struct.Memory** %MEMORY
  %loadMem_40119c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 33
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 1
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %4986 to i64*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 15
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %4989 to i64*
  %4990 = load i64, i64* %RBP.i30
  %4991 = sub i64 %4990, 64
  %4992 = load i64, i64* %PC.i28
  %4993 = add i64 %4992, 3
  store i64 %4993, i64* %PC.i28
  %4994 = inttoptr i64 %4991 to i32*
  %4995 = load i32, i32* %4994
  %4996 = zext i32 %4995 to i64
  store i64 %4996, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_40119c, %struct.Memory** %MEMORY
  %loadMem_40119f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 33
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 1
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %5002 to i64*
  %5003 = load i64, i64* %RAX.i27
  %5004 = load i64, i64* %PC.i26
  %5005 = add i64 %5004, 3
  store i64 %5005, i64* %PC.i26
  %5006 = trunc i64 %5003 to i32
  %5007 = add i32 1, %5006
  %5008 = zext i32 %5007 to i64
  store i64 %5008, i64* %RAX.i27, align 8
  %5009 = icmp ult i32 %5007, %5006
  %5010 = icmp ult i32 %5007, 1
  %5011 = or i1 %5009, %5010
  %5012 = zext i1 %5011 to i8
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5012, i8* %5013, align 1
  %5014 = and i32 %5007, 255
  %5015 = call i32 @llvm.ctpop.i32(i32 %5014)
  %5016 = trunc i32 %5015 to i8
  %5017 = and i8 %5016, 1
  %5018 = xor i8 %5017, 1
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5018, i8* %5019, align 1
  %5020 = xor i64 1, %5003
  %5021 = trunc i64 %5020 to i32
  %5022 = xor i32 %5021, %5007
  %5023 = lshr i32 %5022, 4
  %5024 = trunc i32 %5023 to i8
  %5025 = and i8 %5024, 1
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5025, i8* %5026, align 1
  %5027 = icmp eq i32 %5007, 0
  %5028 = zext i1 %5027 to i8
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5028, i8* %5029, align 1
  %5030 = lshr i32 %5007, 31
  %5031 = trunc i32 %5030 to i8
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5031, i8* %5032, align 1
  %5033 = lshr i32 %5006, 31
  %5034 = xor i32 %5030, %5033
  %5035 = add i32 %5034, %5030
  %5036 = icmp eq i32 %5035, 2
  %5037 = zext i1 %5036 to i8
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5037, i8* %5038, align 1
  store %struct.Memory* %loadMem_40119f, %struct.Memory** %MEMORY
  %loadMem_4011a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 33
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5041 to i64*
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5043 = getelementptr inbounds %struct.GPR, %struct.GPR* %5042, i32 0, i32 1
  %5044 = getelementptr inbounds %struct.Reg, %struct.Reg* %5043, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %5044 to i32*
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 15
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %5047 to i64*
  %5048 = load i64, i64* %RBP.i25
  %5049 = sub i64 %5048, 64
  %5050 = load i32, i32* %EAX.i24
  %5051 = zext i32 %5050 to i64
  %5052 = load i64, i64* %PC.i23
  %5053 = add i64 %5052, 3
  store i64 %5053, i64* %PC.i23
  %5054 = inttoptr i64 %5049 to i32*
  store i32 %5050, i32* %5054
  store %struct.Memory* %loadMem_4011a2, %struct.Memory** %MEMORY
  %loadMem_4011a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 33
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5057 to i64*
  %5058 = load i64, i64* %PC.i22
  %5059 = add i64 %5058, -102
  %5060 = load i64, i64* %PC.i22
  %5061 = add i64 %5060, 5
  store i64 %5061, i64* %PC.i22
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5059, i64* %5062, align 8
  store %struct.Memory* %loadMem_4011a5, %struct.Memory** %MEMORY
  br label %block_.L_40113f

block_.L_4011aa:                                  ; preds = %block_.L_40113f
  %loadMem_4011aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 33
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5065 to i64*
  %5066 = load i64, i64* %PC.i21
  %5067 = add i64 %5066, 5
  %5068 = load i64, i64* %PC.i21
  %5069 = add i64 %5068, 5
  store i64 %5069, i64* %PC.i21
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5067, i64* %5070, align 8
  store %struct.Memory* %loadMem_4011aa, %struct.Memory** %MEMORY
  br label %block_.L_4011af

block_.L_4011af:                                  ; preds = %block_.L_4011aa
  %loadMem_4011af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 33
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 1
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %5076 to i64*
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 15
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %5079 to i64*
  %5080 = load i64, i64* %RBP.i20
  %5081 = sub i64 %5080, 68
  %5082 = load i64, i64* %PC.i18
  %5083 = add i64 %5082, 3
  store i64 %5083, i64* %PC.i18
  %5084 = inttoptr i64 %5081 to i32*
  %5085 = load i32, i32* %5084
  %5086 = zext i32 %5085 to i64
  store i64 %5086, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_4011af, %struct.Memory** %MEMORY
  %loadMem_4011b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 33
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 1
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %5092 to i64*
  %5093 = load i64, i64* %RAX.i17
  %5094 = load i64, i64* %PC.i16
  %5095 = add i64 %5094, 3
  store i64 %5095, i64* %PC.i16
  %5096 = trunc i64 %5093 to i32
  %5097 = add i32 1, %5096
  %5098 = zext i32 %5097 to i64
  store i64 %5098, i64* %RAX.i17, align 8
  %5099 = icmp ult i32 %5097, %5096
  %5100 = icmp ult i32 %5097, 1
  %5101 = or i1 %5099, %5100
  %5102 = zext i1 %5101 to i8
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5102, i8* %5103, align 1
  %5104 = and i32 %5097, 255
  %5105 = call i32 @llvm.ctpop.i32(i32 %5104)
  %5106 = trunc i32 %5105 to i8
  %5107 = and i8 %5106, 1
  %5108 = xor i8 %5107, 1
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5108, i8* %5109, align 1
  %5110 = xor i64 1, %5093
  %5111 = trunc i64 %5110 to i32
  %5112 = xor i32 %5111, %5097
  %5113 = lshr i32 %5112, 4
  %5114 = trunc i32 %5113 to i8
  %5115 = and i8 %5114, 1
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5115, i8* %5116, align 1
  %5117 = icmp eq i32 %5097, 0
  %5118 = zext i1 %5117 to i8
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5118, i8* %5119, align 1
  %5120 = lshr i32 %5097, 31
  %5121 = trunc i32 %5120 to i8
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5121, i8* %5122, align 1
  %5123 = lshr i32 %5096, 31
  %5124 = xor i32 %5120, %5123
  %5125 = add i32 %5124, %5120
  %5126 = icmp eq i32 %5125, 2
  %5127 = zext i1 %5126 to i8
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5127, i8* %5128, align 1
  store %struct.Memory* %loadMem_4011b2, %struct.Memory** %MEMORY
  %loadMem_4011b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5130 = getelementptr inbounds %struct.GPR, %struct.GPR* %5129, i32 0, i32 33
  %5131 = getelementptr inbounds %struct.Reg, %struct.Reg* %5130, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5131 to i64*
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 1
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %5134 to i32*
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5136 = getelementptr inbounds %struct.GPR, %struct.GPR* %5135, i32 0, i32 15
  %5137 = getelementptr inbounds %struct.Reg, %struct.Reg* %5136, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %5137 to i64*
  %5138 = load i64, i64* %RBP.i15
  %5139 = sub i64 %5138, 68
  %5140 = load i32, i32* %EAX.i14
  %5141 = zext i32 %5140 to i64
  %5142 = load i64, i64* %PC.i13
  %5143 = add i64 %5142, 3
  store i64 %5143, i64* %PC.i13
  %5144 = inttoptr i64 %5139 to i32*
  store i32 %5140, i32* %5144
  store %struct.Memory* %loadMem_4011b5, %struct.Memory** %MEMORY
  %loadMem_4011b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5146 = getelementptr inbounds %struct.GPR, %struct.GPR* %5145, i32 0, i32 33
  %5147 = getelementptr inbounds %struct.Reg, %struct.Reg* %5146, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5147 to i64*
  %5148 = load i64, i64* %PC.i12
  %5149 = add i64 %5148, -144
  %5150 = load i64, i64* %PC.i12
  %5151 = add i64 %5150, 5
  store i64 %5151, i64* %PC.i12
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5149, i64* %5152, align 8
  store %struct.Memory* %loadMem_4011b8, %struct.Memory** %MEMORY
  br label %block_.L_401128

block_.L_4011bd:                                  ; preds = %block_.L_401128
  %loadMem_4011bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 33
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5155 to i64*
  %5156 = load i64, i64* %PC.i11
  %5157 = add i64 %5156, 5
  %5158 = load i64, i64* %PC.i11
  %5159 = add i64 %5158, 5
  store i64 %5159, i64* %PC.i11
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5157, i64* %5160, align 8
  store %struct.Memory* %loadMem_4011bd, %struct.Memory** %MEMORY
  br label %block_.L_4011c2

block_.L_4011c2:                                  ; preds = %block_.L_4011bd
  %loadMem_4011c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5162 = getelementptr inbounds %struct.GPR, %struct.GPR* %5161, i32 0, i32 33
  %5163 = getelementptr inbounds %struct.Reg, %struct.Reg* %5162, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5163 to i64*
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5165 = getelementptr inbounds %struct.GPR, %struct.GPR* %5164, i32 0, i32 1
  %5166 = getelementptr inbounds %struct.Reg, %struct.Reg* %5165, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %5166 to i64*
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 15
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %5169 to i64*
  %5170 = load i64, i64* %RBP.i10
  %5171 = sub i64 %5170, 60
  %5172 = load i64, i64* %PC.i8
  %5173 = add i64 %5172, 3
  store i64 %5173, i64* %PC.i8
  %5174 = inttoptr i64 %5171 to i32*
  %5175 = load i32, i32* %5174
  %5176 = zext i32 %5175 to i64
  store i64 %5176, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_4011c2, %struct.Memory** %MEMORY
  %loadMem_4011c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5178 = getelementptr inbounds %struct.GPR, %struct.GPR* %5177, i32 0, i32 33
  %5179 = getelementptr inbounds %struct.Reg, %struct.Reg* %5178, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5179 to i64*
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 1
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5182 to i64*
  %5183 = load i64, i64* %RAX.i
  %5184 = load i64, i64* %PC.i7
  %5185 = add i64 %5184, 3
  store i64 %5185, i64* %PC.i7
  %5186 = trunc i64 %5183 to i32
  %5187 = add i32 1, %5186
  %5188 = zext i32 %5187 to i64
  store i64 %5188, i64* %RAX.i, align 8
  %5189 = icmp ult i32 %5187, %5186
  %5190 = icmp ult i32 %5187, 1
  %5191 = or i1 %5189, %5190
  %5192 = zext i1 %5191 to i8
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5192, i8* %5193, align 1
  %5194 = and i32 %5187, 255
  %5195 = call i32 @llvm.ctpop.i32(i32 %5194)
  %5196 = trunc i32 %5195 to i8
  %5197 = and i8 %5196, 1
  %5198 = xor i8 %5197, 1
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5198, i8* %5199, align 1
  %5200 = xor i64 1, %5183
  %5201 = trunc i64 %5200 to i32
  %5202 = xor i32 %5201, %5187
  %5203 = lshr i32 %5202, 4
  %5204 = trunc i32 %5203 to i8
  %5205 = and i8 %5204, 1
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5205, i8* %5206, align 1
  %5207 = icmp eq i32 %5187, 0
  %5208 = zext i1 %5207 to i8
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5208, i8* %5209, align 1
  %5210 = lshr i32 %5187, 31
  %5211 = trunc i32 %5210 to i8
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5211, i8* %5212, align 1
  %5213 = lshr i32 %5186, 31
  %5214 = xor i32 %5210, %5213
  %5215 = add i32 %5214, %5210
  %5216 = icmp eq i32 %5215, 2
  %5217 = zext i1 %5216 to i8
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5217, i8* %5218, align 1
  store %struct.Memory* %loadMem_4011c5, %struct.Memory** %MEMORY
  %loadMem_4011c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5220 = getelementptr inbounds %struct.GPR, %struct.GPR* %5219, i32 0, i32 33
  %5221 = getelementptr inbounds %struct.Reg, %struct.Reg* %5220, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5221 to i64*
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 1
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5224 to i32*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 15
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5227 to i64*
  %5228 = load i64, i64* %RBP.i6
  %5229 = sub i64 %5228, 60
  %5230 = load i32, i32* %EAX.i
  %5231 = zext i32 %5230 to i64
  %5232 = load i64, i64* %PC.i5
  %5233 = add i64 %5232, 3
  store i64 %5233, i64* %PC.i5
  %5234 = inttoptr i64 %5229 to i32*
  store i32 %5230, i32* %5234
  store %struct.Memory* %loadMem_4011c8, %struct.Memory** %MEMORY
  %loadMem_4011cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5236 = getelementptr inbounds %struct.GPR, %struct.GPR* %5235, i32 0, i32 33
  %5237 = getelementptr inbounds %struct.Reg, %struct.Reg* %5236, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5237 to i64*
  %5238 = load i64, i64* %PC.i4
  %5239 = add i64 %5238, -779
  %5240 = load i64, i64* %PC.i4
  %5241 = add i64 %5240, 5
  store i64 %5241, i64* %PC.i4
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5239, i64* %5242, align 8
  store %struct.Memory* %loadMem_4011cb, %struct.Memory** %MEMORY
  br label %block_.L_400ec0

block_.L_4011d0:                                  ; preds = %block_.L_400ec0
  %loadMem_4011d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 33
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5245 to i64*
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 15
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5248 to i64*
  %5249 = load i64, i64* %PC.i2
  %5250 = add i64 %5249, 1
  store i64 %5250, i64* %PC.i2
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5252 = load i64, i64* %5251, align 8
  %5253 = add i64 %5252, 8
  %5254 = inttoptr i64 %5252 to i64*
  %5255 = load i64, i64* %5254
  store i64 %5255, i64* %RBP.i3, align 8
  store i64 %5253, i64* %5251, align 8
  store %struct.Memory* %loadMem_4011d0, %struct.Memory** %MEMORY
  %loadMem_4011d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 33
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5258 to i64*
  %5259 = load i64, i64* %PC.i1
  %5260 = add i64 %5259, 1
  store i64 %5260, i64* %PC.i1
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5263 = load i64, i64* %5262, align 8
  %5264 = inttoptr i64 %5263 to i64*
  %5265 = load i64, i64* %5264
  store i64 %5265, i64* %5261, align 8
  %5266 = add i64 %5263, 8
  store i64 %5266, i64* %5262, align 8
  store %struct.Memory* %loadMem_4011d1, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4011d1
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

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_4011d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jg_.L_400f81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jg_.L_400f6e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jg_.L_400f5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 24, %15
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

define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDX, align 8
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

define %struct.Memory* @routine_imulq__0x600___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 1536, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = sext i64 %17 to i128
  %19 = icmp ne i128 %18, %16
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i128 %16 to i32
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i64 %17, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %20, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 7
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
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

define %struct.Memory* @routine_jmpq_.L_400f02(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400f60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400eea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400f73(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400ed3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_4010e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jg_.L_4010d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401085(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RDX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ff5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400f9f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4010d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400f88(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401121(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4010ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4011bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jg_.L_4011aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 24, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RCX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_jmpq_.L_40113f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4011af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401128(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4011c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400ec0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
