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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_fdtd_2d(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400c50 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400c50, %struct.Memory** %MEMORY
  %loadMem_400c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i486
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i486
  store i64 %26, i64* %RBP.i487, align 8
  store %struct.Memory* %loadMem_400c51, %struct.Memory** %MEMORY
  %loadMem_400c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i485
  %39 = add i64 %38, 16
  %40 = load i64, i64* %PC.i483
  %41 = add i64 %40, 4
  store i64 %41, i64* %PC.i483
  %42 = inttoptr i64 %39 to i64*
  %43 = load i64, i64* %42
  store i64 %43, i64* %RAX.i484, align 8
  store %struct.Memory* %loadMem_400c54, %struct.Memory** %MEMORY
  %loadMem_400c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 11
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %49 to i32*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %RBP.i482
  %54 = sub i64 %53, 4
  %55 = load i32, i32* %EDI.i
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %PC.i481
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC.i481
  %59 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %59
  store %struct.Memory* %loadMem_400c58, %struct.Memory** %MEMORY
  %loadMem_400c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 33
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %62 to i64*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %65 to i32*
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.GPR, %struct.GPR* %66, i32 0, i32 15
  %68 = getelementptr inbounds %struct.Reg, %struct.Reg* %67, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %68 to i64*
  %69 = load i64, i64* %RBP.i480
  %70 = sub i64 %69, 8
  %71 = load i32, i32* %ESI.i
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %PC.i479
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC.i479
  %75 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %75
  store %struct.Memory* %loadMem_400c5b, %struct.Memory** %MEMORY
  %loadMem_400c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 33
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %EDX.i477 = bitcast %union.anon* %81 to i32*
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 15
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %84 to i64*
  %85 = load i64, i64* %RBP.i478
  %86 = sub i64 %85, 12
  %87 = load i32, i32* %EDX.i477
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %PC.i476
  %90 = add i64 %89, 3
  store i64 %90, i64* %PC.i476
  %91 = inttoptr i64 %86 to i32*
  store i32 %87, i32* %91
  store %struct.Memory* %loadMem_400c5e, %struct.Memory** %MEMORY
  %loadMem_400c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 33
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %94 to i64*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 15
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %100 to i64*
  %101 = load i64, i64* %RBP.i475
  %102 = sub i64 %101, 24
  %103 = load i64, i64* %RCX.i474
  %104 = load i64, i64* %PC.i473
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC.i473
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106
  store %struct.Memory* %loadMem_400c61, %struct.Memory** %MEMORY
  %loadMem_400c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 15
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 17
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %R8.i = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i472
  %117 = sub i64 %116, 32
  %118 = load i64, i64* %R8.i
  %119 = load i64, i64* %PC.i471
  %120 = add i64 %119, 4
  store i64 %120, i64* %PC.i471
  %121 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %121
  store %struct.Memory* %loadMem_400c65, %struct.Memory** %MEMORY
  %loadMem_400c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 19
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %R9.i = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RBP.i470
  %132 = sub i64 %131, 40
  %133 = load i64, i64* %R9.i
  %134 = load i64, i64* %PC.i469
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC.i469
  %136 = inttoptr i64 %132 to i64*
  store i64 %133, i64* %136
  store %struct.Memory* %loadMem_400c69, %struct.Memory** %MEMORY
  %loadMem_400c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 15
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RBP.i468
  %147 = sub i64 %146, 48
  %148 = load i64, i64* %RAX.i467
  %149 = load i64, i64* %PC.i466
  %150 = add i64 %149, 4
  store i64 %150, i64* %PC.i466
  %151 = inttoptr i64 %147 to i64*
  store i64 %148, i64* %151
  store %struct.Memory* %loadMem_400c6d, %struct.Memory** %MEMORY
  %loadMem_400c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 33
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 15
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %157 to i64*
  %158 = load i64, i64* %RBP.i465
  %159 = sub i64 %158, 52
  %160 = load i64, i64* %PC.i464
  %161 = add i64 %160, 7
  store i64 %161, i64* %PC.i464
  %162 = inttoptr i64 %159 to i32*
  store i32 0, i32* %162
  store %struct.Memory* %loadMem_400c71, %struct.Memory** %MEMORY
  br label %block_.L_400c78

block_.L_400c78:                                  ; preds = %block_.L_400f61, %entry
  %loadMem_400c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 33
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 15
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %171 to i64*
  %172 = load i64, i64* %RBP.i463
  %173 = sub i64 %172, 52
  %174 = load i64, i64* %PC.i461
  %175 = add i64 %174, 3
  store i64 %175, i64* %PC.i461
  %176 = inttoptr i64 %173 to i32*
  %177 = load i32, i32* %176
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_400c78, %struct.Memory** %MEMORY
  %loadMem_400c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %EAX.i459 = bitcast %union.anon* %184 to i32*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %187 to i64*
  %188 = load i32, i32* %EAX.i459
  %189 = zext i32 %188 to i64
  %190 = load i64, i64* %RBP.i460
  %191 = sub i64 %190, 4
  %192 = load i64, i64* %PC.i458
  %193 = add i64 %192, 3
  store i64 %193, i64* %PC.i458
  %194 = inttoptr i64 %191 to i32*
  %195 = load i32, i32* %194
  %196 = sub i32 %188, %195
  %197 = icmp ult i32 %188, %195
  %198 = zext i1 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %198, i8* %199, align 1
  %200 = and i32 %196, 255
  %201 = call i32 @llvm.ctpop.i32(i32 %200)
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %204, i8* %205, align 1
  %206 = xor i32 %195, %188
  %207 = xor i32 %206, %196
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %210, i8* %211, align 1
  %212 = icmp eq i32 %196, 0
  %213 = zext i1 %212 to i8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %213, i8* %214, align 1
  %215 = lshr i32 %196, 31
  %216 = trunc i32 %215 to i8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %216, i8* %217, align 1
  %218 = lshr i32 %188, 31
  %219 = lshr i32 %195, 31
  %220 = xor i32 %219, %218
  %221 = xor i32 %215, %218
  %222 = add i32 %221, %220
  %223 = icmp eq i32 %222, 2
  %224 = zext i1 %223 to i8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %224, i8* %225, align 1
  store %struct.Memory* %loadMem_400c7b, %struct.Memory** %MEMORY
  %loadMem_400c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %PC.i457
  %230 = add i64 %229, 753
  %231 = load i64, i64* %PC.i457
  %232 = add i64 %231, 6
  %233 = load i64, i64* %PC.i457
  %234 = add i64 %233, 6
  store i64 %234, i64* %PC.i457
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %236 = load i8, i8* %235, align 1
  %237 = icmp ne i8 %236, 0
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %239 = load i8, i8* %238, align 1
  %240 = icmp ne i8 %239, 0
  %241 = xor i1 %237, %240
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %BRANCH_TAKEN, align 1
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %245 = select i1 %241, i64 %232, i64 %230
  store i64 %245, i64* %244, align 8
  store %struct.Memory* %loadMem_400c7e, %struct.Memory** %MEMORY
  %loadBr_400c7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c7e = icmp eq i8 %loadBr_400c7e, 1
  br i1 %cmpBr_400c7e, label %block_.L_400f6f, label %block_400c84

block_400c84:                                     ; preds = %block_.L_400c78
  %loadMem_400c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RBP.i456
  %253 = sub i64 %252, 60
  %254 = load i64, i64* %PC.i455
  %255 = add i64 %254, 7
  store i64 %255, i64* %PC.i455
  %256 = inttoptr i64 %253 to i32*
  store i32 0, i32* %256
  store %struct.Memory* %loadMem_400c84, %struct.Memory** %MEMORY
  br label %block_.L_400c8b

block_.L_400c8b:                                  ; preds = %block_400c97, %block_400c84
  %loadMem_400c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 33
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 15
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %RBP.i454
  %267 = sub i64 %266, 60
  %268 = load i64, i64* %PC.i452
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC.i452
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_400c8b, %struct.Memory** %MEMORY
  %loadMem_400c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %278 to i32*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 15
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %281 to i64*
  %282 = load i32, i32* %EAX.i450
  %283 = zext i32 %282 to i64
  %284 = load i64, i64* %RBP.i451
  %285 = sub i64 %284, 12
  %286 = load i64, i64* %PC.i449
  %287 = add i64 %286, 3
  store i64 %287, i64* %PC.i449
  %288 = inttoptr i64 %285 to i32*
  %289 = load i32, i32* %288
  %290 = sub i32 %282, %289
  %291 = icmp ult i32 %282, %289
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %292, i8* %293, align 1
  %294 = and i32 %290, 255
  %295 = call i32 @llvm.ctpop.i32(i32 %294)
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %298, i8* %299, align 1
  %300 = xor i32 %289, %282
  %301 = xor i32 %300, %290
  %302 = lshr i32 %301, 4
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %304, i8* %305, align 1
  %306 = icmp eq i32 %290, 0
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %307, i8* %308, align 1
  %309 = lshr i32 %290, 31
  %310 = trunc i32 %309 to i8
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %310, i8* %311, align 1
  %312 = lshr i32 %282, 31
  %313 = lshr i32 %289, 31
  %314 = xor i32 %313, %312
  %315 = xor i32 %309, %312
  %316 = add i32 %315, %314
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %318, i8* %319, align 1
  store %struct.Memory* %loadMem_400c8e, %struct.Memory** %MEMORY
  %loadMem_400c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %PC.i448
  %324 = add i64 %323, 46
  %325 = load i64, i64* %PC.i448
  %326 = add i64 %325, 6
  %327 = load i64, i64* %PC.i448
  %328 = add i64 %327, 6
  store i64 %328, i64* %PC.i448
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %330 = load i8, i8* %329, align 1
  %331 = icmp ne i8 %330, 0
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %333 = load i8, i8* %332, align 1
  %334 = icmp ne i8 %333, 0
  %335 = xor i1 %331, %334
  %336 = xor i1 %335, true
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %BRANCH_TAKEN, align 1
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %339 = select i1 %335, i64 %326, i64 %324
  store i64 %339, i64* %338, align 8
  store %struct.Memory* %loadMem_400c91, %struct.Memory** %MEMORY
  %loadBr_400c91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c91 = icmp eq i8 %loadBr_400c91, 1
  br i1 %cmpBr_400c91, label %block_.L_400cbf, label %block_400c97

block_400c97:                                     ; preds = %block_.L_400c8b
  %loadMem_400c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 15
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %RBP.i447
  %350 = sub i64 %349, 48
  %351 = load i64, i64* %PC.i445
  %352 = add i64 %351, 4
  store i64 %352, i64* %PC.i445
  %353 = inttoptr i64 %350 to i64*
  %354 = load i64, i64* %353
  store i64 %354, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_400c97, %struct.Memory** %MEMORY
  %loadMem_400c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 33
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 5
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 15
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %363 to i64*
  %364 = load i64, i64* %RBP.i444
  %365 = sub i64 %364, 52
  %366 = load i64, i64* %PC.i442
  %367 = add i64 %366, 4
  store i64 %367, i64* %PC.i442
  %368 = inttoptr i64 %365 to i32*
  %369 = load i32, i32* %368
  %370 = sext i32 %369 to i64
  store i64 %370, i64* %RCX.i443, align 8
  store %struct.Memory* %loadMem_400c9b, %struct.Memory** %MEMORY
  %loadMem_400c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %380, i64 0, i64 0
  %YMM0.i441 = bitcast %union.VectorReg* %381 to %"class.std::bitset"*
  %382 = bitcast %"class.std::bitset"* %YMM0.i441 to i8*
  %383 = load i64, i64* %RAX.i439
  %384 = load i64, i64* %RCX.i440
  %385 = mul i64 %384, 8
  %386 = add i64 %385, %383
  %387 = load i64, i64* %PC.i438
  %388 = add i64 %387, 5
  store i64 %388, i64* %PC.i438
  %389 = inttoptr i64 %386 to double*
  %390 = load double, double* %389
  %391 = bitcast i8* %382 to double*
  store double %390, double* %391, align 1
  %392 = getelementptr inbounds i8, i8* %382, i64 8
  %393 = bitcast i8* %392 to double*
  store double 0.000000e+00, double* %393, align 1
  store %struct.Memory* %loadMem_400c9f, %struct.Memory** %MEMORY
  %loadMem_400ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 15
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %RBP.i437
  %404 = sub i64 %403, 32
  %405 = load i64, i64* %PC.i435
  %406 = add i64 %405, 4
  store i64 %406, i64* %PC.i435
  %407 = inttoptr i64 %404 to i64*
  %408 = load i64, i64* %407
  store i64 %408, i64* %RAX.i436, align 8
  store %struct.Memory* %loadMem_400ca4, %struct.Memory** %MEMORY
  %loadMem_400ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 5
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 15
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %RBP.i434
  %419 = sub i64 %418, 60
  %420 = load i64, i64* %PC.i432
  %421 = add i64 %420, 4
  store i64 %421, i64* %PC.i432
  %422 = inttoptr i64 %419 to i32*
  %423 = load i32, i32* %422
  %424 = sext i32 %423 to i64
  store i64 %424, i64* %RCX.i433, align 8
  store %struct.Memory* %loadMem_400ca8, %struct.Memory** %MEMORY
  %loadMem_400cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 5
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %435 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %434, i64 0, i64 0
  %XMM0.i431 = bitcast %union.VectorReg* %435 to %union.vec128_t*
  %436 = load i64, i64* %RAX.i429
  %437 = load i64, i64* %RCX.i430
  %438 = mul i64 %437, 8
  %439 = add i64 %438, %436
  %440 = bitcast %union.vec128_t* %XMM0.i431 to i8*
  %441 = load i64, i64* %PC.i428
  %442 = add i64 %441, 5
  store i64 %442, i64* %PC.i428
  %443 = bitcast i8* %440 to double*
  %444 = load double, double* %443, align 1
  %445 = inttoptr i64 %439 to double*
  store double %444, double* %445
  store %struct.Memory* %loadMem_400cac, %struct.Memory** %MEMORY
  %loadMem_400cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 15
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %454 to i64*
  %455 = load i64, i64* %RBP.i427
  %456 = sub i64 %455, 60
  %457 = load i64, i64* %PC.i425
  %458 = add i64 %457, 3
  store i64 %458, i64* %PC.i425
  %459 = inttoptr i64 %456 to i32*
  %460 = load i32, i32* %459
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_400cb1, %struct.Memory** %MEMORY
  %loadMem_400cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 33
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %467 to i64*
  %468 = load i64, i64* %RAX.i424
  %469 = load i64, i64* %PC.i423
  %470 = add i64 %469, 3
  store i64 %470, i64* %PC.i423
  %471 = trunc i64 %468 to i32
  %472 = add i32 1, %471
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX.i424, align 8
  %474 = icmp ult i32 %472, %471
  %475 = icmp ult i32 %472, 1
  %476 = or i1 %474, %475
  %477 = zext i1 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %477, i8* %478, align 1
  %479 = and i32 %472, 255
  %480 = call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %483, i8* %484, align 1
  %485 = xor i64 1, %468
  %486 = trunc i64 %485 to i32
  %487 = xor i32 %486, %472
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %490, i8* %491, align 1
  %492 = icmp eq i32 %472, 0
  %493 = zext i1 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %493, i8* %494, align 1
  %495 = lshr i32 %472, 31
  %496 = trunc i32 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %496, i8* %497, align 1
  %498 = lshr i32 %471, 31
  %499 = xor i32 %495, %498
  %500 = add i32 %499, %495
  %501 = icmp eq i32 %500, 2
  %502 = zext i1 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %502, i8* %503, align 1
  store %struct.Memory* %loadMem_400cb4, %struct.Memory** %MEMORY
  %loadMem_400cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 33
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %506 to i64*
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %EAX.i421 = bitcast %union.anon* %509 to i32*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 15
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %512 to i64*
  %513 = load i64, i64* %RBP.i422
  %514 = sub i64 %513, 60
  %515 = load i32, i32* %EAX.i421
  %516 = zext i32 %515 to i64
  %517 = load i64, i64* %PC.i420
  %518 = add i64 %517, 3
  store i64 %518, i64* %PC.i420
  %519 = inttoptr i64 %514 to i32*
  store i32 %515, i32* %519
  store %struct.Memory* %loadMem_400cb7, %struct.Memory** %MEMORY
  %loadMem_400cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 33
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %PC.i419
  %524 = add i64 %523, -47
  %525 = load i64, i64* %PC.i419
  %526 = add i64 %525, 5
  store i64 %526, i64* %PC.i419
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %524, i64* %527, align 8
  store %struct.Memory* %loadMem_400cba, %struct.Memory** %MEMORY
  br label %block_.L_400c8b

block_.L_400cbf:                                  ; preds = %block_.L_400c8b
  %loadMem_400cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 33
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 15
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %RBP.i418
  %535 = sub i64 %534, 56
  %536 = load i64, i64* %PC.i417
  %537 = add i64 %536, 7
  store i64 %537, i64* %PC.i417
  %538 = inttoptr i64 %535 to i32*
  store i32 1, i32* %538
  store %struct.Memory* %loadMem_400cbf, %struct.Memory** %MEMORY
  br label %block_.L_400cc6

block_.L_400cc6:                                  ; preds = %block_.L_400d79, %block_.L_400cbf
  %loadMem_400cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 15
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %547 to i64*
  %548 = load i64, i64* %RBP.i416
  %549 = sub i64 %548, 56
  %550 = load i64, i64* %PC.i414
  %551 = add i64 %550, 3
  store i64 %551, i64* %PC.i414
  %552 = inttoptr i64 %549 to i32*
  %553 = load i32, i32* %552
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RAX.i415, align 8
  store %struct.Memory* %loadMem_400cc6, %struct.Memory** %MEMORY
  %loadMem_400cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %EAX.i412 = bitcast %union.anon* %560 to i32*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 15
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %563 to i64*
  %564 = load i32, i32* %EAX.i412
  %565 = zext i32 %564 to i64
  %566 = load i64, i64* %RBP.i413
  %567 = sub i64 %566, 8
  %568 = load i64, i64* %PC.i411
  %569 = add i64 %568, 3
  store i64 %569, i64* %PC.i411
  %570 = inttoptr i64 %567 to i32*
  %571 = load i32, i32* %570
  %572 = sub i32 %564, %571
  %573 = icmp ult i32 %564, %571
  %574 = zext i1 %573 to i8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %574, i8* %575, align 1
  %576 = and i32 %572, 255
  %577 = call i32 @llvm.ctpop.i32(i32 %576)
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %580, i8* %581, align 1
  %582 = xor i32 %571, %564
  %583 = xor i32 %582, %572
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %586, i8* %587, align 1
  %588 = icmp eq i32 %572, 0
  %589 = zext i1 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %589, i8* %590, align 1
  %591 = lshr i32 %572, 31
  %592 = trunc i32 %591 to i8
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %592, i8* %593, align 1
  %594 = lshr i32 %564, 31
  %595 = lshr i32 %571, 31
  %596 = xor i32 %595, %594
  %597 = xor i32 %591, %594
  %598 = add i32 %597, %596
  %599 = icmp eq i32 %598, 2
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %600, i8* %601, align 1
  store %struct.Memory* %loadMem_400cc9, %struct.Memory** %MEMORY
  %loadMem_400ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %PC.i410
  %606 = add i64 %605, 187
  %607 = load i64, i64* %PC.i410
  %608 = add i64 %607, 6
  %609 = load i64, i64* %PC.i410
  %610 = add i64 %609, 6
  store i64 %610, i64* %PC.i410
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %612 = load i8, i8* %611, align 1
  %613 = icmp ne i8 %612, 0
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %615 = load i8, i8* %614, align 1
  %616 = icmp ne i8 %615, 0
  %617 = xor i1 %613, %616
  %618 = xor i1 %617, true
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %BRANCH_TAKEN, align 1
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %621 = select i1 %617, i64 %608, i64 %606
  store i64 %621, i64* %620, align 8
  store %struct.Memory* %loadMem_400ccc, %struct.Memory** %MEMORY
  %loadBr_400ccc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ccc = icmp eq i8 %loadBr_400ccc, 1
  br i1 %cmpBr_400ccc, label %block_.L_400d87, label %block_400cd2

block_400cd2:                                     ; preds = %block_.L_400cc6
  %loadMem_400cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 15
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %627 to i64*
  %628 = load i64, i64* %RBP.i409
  %629 = sub i64 %628, 60
  %630 = load i64, i64* %PC.i408
  %631 = add i64 %630, 7
  store i64 %631, i64* %PC.i408
  %632 = inttoptr i64 %629 to i32*
  store i32 0, i32* %632
  store %struct.Memory* %loadMem_400cd2, %struct.Memory** %MEMORY
  br label %block_.L_400cd9

block_.L_400cd9:                                  ; preds = %block_400ce5, %block_400cd2
  %loadMem_400cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 1
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i407
  %643 = sub i64 %642, 60
  %644 = load i64, i64* %PC.i405
  %645 = add i64 %644, 3
  store i64 %645, i64* %PC.i405
  %646 = inttoptr i64 %643 to i32*
  %647 = load i32, i32* %646
  %648 = zext i32 %647 to i64
  store i64 %648, i64* %RAX.i406, align 8
  store %struct.Memory* %loadMem_400cd9, %struct.Memory** %MEMORY
  %loadMem_400cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 1
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %EAX.i403 = bitcast %union.anon* %654 to i32*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 15
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %657 to i64*
  %658 = load i32, i32* %EAX.i403
  %659 = zext i32 %658 to i64
  %660 = load i64, i64* %RBP.i404
  %661 = sub i64 %660, 12
  %662 = load i64, i64* %PC.i402
  %663 = add i64 %662, 3
  store i64 %663, i64* %PC.i402
  %664 = inttoptr i64 %661 to i32*
  %665 = load i32, i32* %664
  %666 = sub i32 %658, %665
  %667 = icmp ult i32 %658, %665
  %668 = zext i1 %667 to i8
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %668, i8* %669, align 1
  %670 = and i32 %666, 255
  %671 = call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %674, i8* %675, align 1
  %676 = xor i32 %665, %658
  %677 = xor i32 %676, %666
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %680, i8* %681, align 1
  %682 = icmp eq i32 %666, 0
  %683 = zext i1 %682 to i8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %683, i8* %684, align 1
  %685 = lshr i32 %666, 31
  %686 = trunc i32 %685 to i8
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %686, i8* %687, align 1
  %688 = lshr i32 %658, 31
  %689 = lshr i32 %665, 31
  %690 = xor i32 %689, %688
  %691 = xor i32 %685, %688
  %692 = add i32 %691, %690
  %693 = icmp eq i32 %692, 2
  %694 = zext i1 %693 to i8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %694, i8* %695, align 1
  store %struct.Memory* %loadMem_400cdc, %struct.Memory** %MEMORY
  %loadMem_400cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %698 to i64*
  %699 = load i64, i64* %PC.i401
  %700 = add i64 %699, 149
  %701 = load i64, i64* %PC.i401
  %702 = add i64 %701, 6
  %703 = load i64, i64* %PC.i401
  %704 = add i64 %703, 6
  store i64 %704, i64* %PC.i401
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %706 = load i8, i8* %705, align 1
  %707 = icmp ne i8 %706, 0
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %709 = load i8, i8* %708, align 1
  %710 = icmp ne i8 %709, 0
  %711 = xor i1 %707, %710
  %712 = xor i1 %711, true
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %BRANCH_TAKEN, align 1
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %715 = select i1 %711, i64 %702, i64 %700
  store i64 %715, i64* %714, align 8
  store %struct.Memory* %loadMem_400cdf, %struct.Memory** %MEMORY
  %loadBr_400cdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cdf = icmp eq i8 %loadBr_400cdf, 1
  br i1 %cmpBr_400cdf, label %block_.L_400d74, label %block_400ce5

block_400ce5:                                     ; preds = %block_.L_400cd9
  %loadMem_400ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 33
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %720 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %719, i64 0, i64 0
  %YMM0.i400 = bitcast %union.VectorReg* %720 to %"class.std::bitset"*
  %721 = bitcast %"class.std::bitset"* %YMM0.i400 to i8*
  %722 = load i64, i64* %PC.i399
  %723 = add i64 %722, 2475
  %724 = load i64, i64* %PC.i399
  %725 = add i64 %724, 8
  store i64 %725, i64* %PC.i399
  %726 = inttoptr i64 %723 to double*
  %727 = load double, double* %726
  %728 = bitcast i8* %721 to double*
  store double %727, double* %728, align 1
  %729 = getelementptr inbounds i8, i8* %721, i64 8
  %730 = bitcast i8* %729 to double*
  store double 0.000000e+00, double* %730, align 1
  store %struct.Memory* %loadMem_400ce5, %struct.Memory** %MEMORY
  %loadMem_400ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 1
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 15
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %739 to i64*
  %740 = load i64, i64* %RBP.i398
  %741 = sub i64 %740, 32
  %742 = load i64, i64* %PC.i396
  %743 = add i64 %742, 4
  store i64 %743, i64* %PC.i396
  %744 = inttoptr i64 %741 to i64*
  %745 = load i64, i64* %744
  store i64 %745, i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_400ced, %struct.Memory** %MEMORY
  %loadMem_400cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 33
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 5
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 15
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %754 to i64*
  %755 = load i64, i64* %RBP.i395
  %756 = sub i64 %755, 56
  %757 = load i64, i64* %PC.i393
  %758 = add i64 %757, 4
  store i64 %758, i64* %PC.i393
  %759 = inttoptr i64 %756 to i32*
  %760 = load i32, i32* %759
  %761 = sext i32 %760 to i64
  store i64 %761, i64* %RCX.i394, align 8
  store %struct.Memory* %loadMem_400cf1, %struct.Memory** %MEMORY
  %loadMem_400cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 33
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 5
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %767 to i64*
  %768 = load i64, i64* %RCX.i392
  %769 = load i64, i64* %PC.i391
  %770 = add i64 %769, 7
  store i64 %770, i64* %PC.i391
  %771 = sext i64 %768 to i128
  %772 = and i128 %771, -18446744073709551616
  %773 = zext i64 %768 to i128
  %774 = or i128 %772, %773
  %775 = mul i128 8000, %774
  %776 = trunc i128 %775 to i64
  store i64 %776, i64* %RCX.i392, align 8
  %777 = sext i64 %776 to i128
  %778 = icmp ne i128 %777, %775
  %779 = zext i1 %778 to i8
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %779, i8* %780, align 1
  %781 = trunc i128 %775 to i32
  %782 = and i32 %781, 255
  %783 = call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %786, i8* %787, align 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %788, align 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %789, align 1
  %790 = lshr i64 %776, 63
  %791 = trunc i64 %790 to i8
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %791, i8* %792, align 1
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %779, i8* %793, align 1
  store %struct.Memory* %loadMem_400cf5, %struct.Memory** %MEMORY
  %loadMem_400cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 33
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 1
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %799 to i64*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 5
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %802 to i64*
  %803 = load i64, i64* %RAX.i389
  %804 = load i64, i64* %RCX.i390
  %805 = load i64, i64* %PC.i388
  %806 = add i64 %805, 3
  store i64 %806, i64* %PC.i388
  %807 = add i64 %804, %803
  store i64 %807, i64* %RAX.i389, align 8
  %808 = icmp ult i64 %807, %803
  %809 = icmp ult i64 %807, %804
  %810 = or i1 %808, %809
  %811 = zext i1 %810 to i8
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %811, i8* %812, align 1
  %813 = trunc i64 %807 to i32
  %814 = and i32 %813, 255
  %815 = call i32 @llvm.ctpop.i32(i32 %814)
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %818, i8* %819, align 1
  %820 = xor i64 %804, %803
  %821 = xor i64 %820, %807
  %822 = lshr i64 %821, 4
  %823 = trunc i64 %822 to i8
  %824 = and i8 %823, 1
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %824, i8* %825, align 1
  %826 = icmp eq i64 %807, 0
  %827 = zext i1 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %827, i8* %828, align 1
  %829 = lshr i64 %807, 63
  %830 = trunc i64 %829 to i8
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %830, i8* %831, align 1
  %832 = lshr i64 %803, 63
  %833 = lshr i64 %804, 63
  %834 = xor i64 %829, %832
  %835 = xor i64 %829, %833
  %836 = add i64 %834, %835
  %837 = icmp eq i64 %836, 2
  %838 = zext i1 %837 to i8
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %838, i8* %839, align 1
  store %struct.Memory* %loadMem_400cfc, %struct.Memory** %MEMORY
  %loadMem_400cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 33
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %842 to i64*
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 5
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %845 to i64*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 15
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %848 to i64*
  %849 = load i64, i64* %RBP.i387
  %850 = sub i64 %849, 60
  %851 = load i64, i64* %PC.i385
  %852 = add i64 %851, 4
  store i64 %852, i64* %PC.i385
  %853 = inttoptr i64 %850 to i32*
  %854 = load i32, i32* %853
  %855 = sext i32 %854 to i64
  store i64 %855, i64* %RCX.i386, align 8
  store %struct.Memory* %loadMem_400cff, %struct.Memory** %MEMORY
  %loadMem_400d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 1
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 5
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %866 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %865, i64 0, i64 1
  %YMM1.i384 = bitcast %union.VectorReg* %866 to %"class.std::bitset"*
  %867 = bitcast %"class.std::bitset"* %YMM1.i384 to i8*
  %868 = load i64, i64* %RAX.i382
  %869 = load i64, i64* %RCX.i383
  %870 = mul i64 %869, 8
  %871 = add i64 %870, %868
  %872 = load i64, i64* %PC.i381
  %873 = add i64 %872, 5
  store i64 %873, i64* %PC.i381
  %874 = inttoptr i64 %871 to double*
  %875 = load double, double* %874
  %876 = bitcast i8* %867 to double*
  store double %875, double* %876, align 1
  %877 = getelementptr inbounds i8, i8* %867, i64 8
  %878 = bitcast i8* %877 to double*
  store double 0.000000e+00, double* %878, align 1
  store %struct.Memory* %loadMem_400d03, %struct.Memory** %MEMORY
  %loadMem_400d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 1
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 15
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %887 to i64*
  %888 = load i64, i64* %RBP.i380
  %889 = sub i64 %888, 40
  %890 = load i64, i64* %PC.i378
  %891 = add i64 %890, 4
  store i64 %891, i64* %PC.i378
  %892 = inttoptr i64 %889 to i64*
  %893 = load i64, i64* %892
  store i64 %893, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_400d08, %struct.Memory** %MEMORY
  %loadMem_400d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 5
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 15
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %RBP.i377
  %904 = sub i64 %903, 56
  %905 = load i64, i64* %PC.i375
  %906 = add i64 %905, 4
  store i64 %906, i64* %PC.i375
  %907 = inttoptr i64 %904 to i32*
  %908 = load i32, i32* %907
  %909 = sext i32 %908 to i64
  store i64 %909, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_400d0c, %struct.Memory** %MEMORY
  %loadMem_400d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 5
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %915 to i64*
  %916 = load i64, i64* %RCX.i374
  %917 = load i64, i64* %PC.i373
  %918 = add i64 %917, 7
  store i64 %918, i64* %PC.i373
  %919 = sext i64 %916 to i128
  %920 = and i128 %919, -18446744073709551616
  %921 = zext i64 %916 to i128
  %922 = or i128 %920, %921
  %923 = mul i128 8000, %922
  %924 = trunc i128 %923 to i64
  store i64 %924, i64* %RCX.i374, align 8
  %925 = sext i64 %924 to i128
  %926 = icmp ne i128 %925, %923
  %927 = zext i1 %926 to i8
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %927, i8* %928, align 1
  %929 = trunc i128 %923 to i32
  %930 = and i32 %929, 255
  %931 = call i32 @llvm.ctpop.i32(i32 %930)
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %934, i8* %935, align 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %936, align 1
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %937, align 1
  %938 = lshr i64 %924, 63
  %939 = trunc i64 %938 to i8
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %939, i8* %940, align 1
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %927, i8* %941, align 1
  store %struct.Memory* %loadMem_400d10, %struct.Memory** %MEMORY
  %loadMem_400d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 33
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 1
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 5
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %950 to i64*
  %951 = load i64, i64* %RAX.i371
  %952 = load i64, i64* %RCX.i372
  %953 = load i64, i64* %PC.i370
  %954 = add i64 %953, 3
  store i64 %954, i64* %PC.i370
  %955 = add i64 %952, %951
  store i64 %955, i64* %RAX.i371, align 8
  %956 = icmp ult i64 %955, %951
  %957 = icmp ult i64 %955, %952
  %958 = or i1 %956, %957
  %959 = zext i1 %958 to i8
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %959, i8* %960, align 1
  %961 = trunc i64 %955 to i32
  %962 = and i32 %961, 255
  %963 = call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %966, i8* %967, align 1
  %968 = xor i64 %952, %951
  %969 = xor i64 %968, %955
  %970 = lshr i64 %969, 4
  %971 = trunc i64 %970 to i8
  %972 = and i8 %971, 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %972, i8* %973, align 1
  %974 = icmp eq i64 %955, 0
  %975 = zext i1 %974 to i8
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %975, i8* %976, align 1
  %977 = lshr i64 %955, 63
  %978 = trunc i64 %977 to i8
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %978, i8* %979, align 1
  %980 = lshr i64 %951, 63
  %981 = lshr i64 %952, 63
  %982 = xor i64 %977, %980
  %983 = xor i64 %977, %981
  %984 = add i64 %982, %983
  %985 = icmp eq i64 %984, 2
  %986 = zext i1 %985 to i8
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %986, i8* %987, align 1
  store %struct.Memory* %loadMem_400d17, %struct.Memory** %MEMORY
  %loadMem_400d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 5
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 15
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %996 to i64*
  %997 = load i64, i64* %RBP.i369
  %998 = sub i64 %997, 60
  %999 = load i64, i64* %PC.i367
  %1000 = add i64 %999, 4
  store i64 %1000, i64* %PC.i367
  %1001 = inttoptr i64 %998 to i32*
  %1002 = load i32, i32* %1001
  %1003 = sext i32 %1002 to i64
  store i64 %1003, i64* %RCX.i368, align 8
  store %struct.Memory* %loadMem_400d1a, %struct.Memory** %MEMORY
  %loadMem_400d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 1
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 5
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1014 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1013, i64 0, i64 2
  %YMM2.i366 = bitcast %union.VectorReg* %1014 to %"class.std::bitset"*
  %1015 = bitcast %"class.std::bitset"* %YMM2.i366 to i8*
  %1016 = load i64, i64* %RAX.i364
  %1017 = load i64, i64* %RCX.i365
  %1018 = mul i64 %1017, 8
  %1019 = add i64 %1018, %1016
  %1020 = load i64, i64* %PC.i363
  %1021 = add i64 %1020, 5
  store i64 %1021, i64* %PC.i363
  %1022 = inttoptr i64 %1019 to double*
  %1023 = load double, double* %1022
  %1024 = bitcast i8* %1015 to double*
  store double %1023, double* %1024, align 1
  %1025 = getelementptr inbounds i8, i8* %1015, i64 8
  %1026 = bitcast i8* %1025 to double*
  store double 0.000000e+00, double* %1026, align 1
  store %struct.Memory* %loadMem_400d1e, %struct.Memory** %MEMORY
  %loadMem_400d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 1
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 15
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %1035 to i64*
  %1036 = load i64, i64* %RBP.i362
  %1037 = sub i64 %1036, 40
  %1038 = load i64, i64* %PC.i360
  %1039 = add i64 %1038, 4
  store i64 %1039, i64* %PC.i360
  %1040 = inttoptr i64 %1037 to i64*
  %1041 = load i64, i64* %1040
  store i64 %1041, i64* %RAX.i361, align 8
  store %struct.Memory* %loadMem_400d23, %struct.Memory** %MEMORY
  %loadMem_400d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 7
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 15
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %1050 to i64*
  %1051 = load i64, i64* %RBP.i359
  %1052 = sub i64 %1051, 56
  %1053 = load i64, i64* %PC.i357
  %1054 = add i64 %1053, 3
  store i64 %1054, i64* %PC.i357
  %1055 = inttoptr i64 %1052 to i32*
  %1056 = load i32, i32* %1055
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RDX.i358, align 8
  store %struct.Memory* %loadMem_400d27, %struct.Memory** %MEMORY
  %loadMem_400d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 7
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RDX.i356 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %RDX.i356
  %1065 = load i64, i64* %PC.i355
  %1066 = add i64 %1065, 3
  store i64 %1066, i64* %PC.i355
  %1067 = trunc i64 %1064 to i32
  %1068 = sub i32 %1067, 1
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RDX.i356, align 8
  %1070 = icmp ult i32 %1067, 1
  %1071 = zext i1 %1070 to i8
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1071, i8* %1072, align 1
  %1073 = and i32 %1068, 255
  %1074 = call i32 @llvm.ctpop.i32(i32 %1073)
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = xor i8 %1076, 1
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1077, i8* %1078, align 1
  %1079 = xor i64 1, %1064
  %1080 = trunc i64 %1079 to i32
  %1081 = xor i32 %1080, %1068
  %1082 = lshr i32 %1081, 4
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1084, i8* %1085, align 1
  %1086 = icmp eq i32 %1068, 0
  %1087 = zext i1 %1086 to i8
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1087, i8* %1088, align 1
  %1089 = lshr i32 %1068, 31
  %1090 = trunc i32 %1089 to i8
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1090, i8* %1091, align 1
  %1092 = lshr i32 %1067, 31
  %1093 = xor i32 %1089, %1092
  %1094 = add i32 %1093, %1092
  %1095 = icmp eq i32 %1094, 2
  %1096 = zext i1 %1095 to i8
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1096, i8* %1097, align 1
  store %struct.Memory* %loadMem_400d2a, %struct.Memory** %MEMORY
  %loadMem_400d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 33
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 7
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %EDX.i353 = bitcast %union.anon* %1103 to i32*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 5
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %1106 to i64*
  %1107 = load i32, i32* %EDX.i353
  %1108 = zext i32 %1107 to i64
  %1109 = load i64, i64* %PC.i352
  %1110 = add i64 %1109, 3
  store i64 %1110, i64* %PC.i352
  %1111 = shl i64 %1108, 32
  %1112 = ashr exact i64 %1111, 32
  store i64 %1112, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_400d2d, %struct.Memory** %MEMORY
  %loadMem_400d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 33
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 5
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %1118 to i64*
  %1119 = load i64, i64* %RCX.i351
  %1120 = load i64, i64* %PC.i350
  %1121 = add i64 %1120, 7
  store i64 %1121, i64* %PC.i350
  %1122 = sext i64 %1119 to i128
  %1123 = and i128 %1122, -18446744073709551616
  %1124 = zext i64 %1119 to i128
  %1125 = or i128 %1123, %1124
  %1126 = mul i128 8000, %1125
  %1127 = trunc i128 %1126 to i64
  store i64 %1127, i64* %RCX.i351, align 8
  %1128 = sext i64 %1127 to i128
  %1129 = icmp ne i128 %1128, %1126
  %1130 = zext i1 %1129 to i8
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1130, i8* %1131, align 1
  %1132 = trunc i128 %1126 to i32
  %1133 = and i32 %1132, 255
  %1134 = call i32 @llvm.ctpop.i32(i32 %1133)
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  %1137 = xor i8 %1136, 1
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1137, i8* %1138, align 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1139, align 1
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1140, align 1
  %1141 = lshr i64 %1127, 63
  %1142 = trunc i64 %1141 to i8
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1142, i8* %1143, align 1
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1130, i8* %1144, align 1
  store %struct.Memory* %loadMem_400d30, %struct.Memory** %MEMORY
  %loadMem_400d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 1
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 5
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %1153 to i64*
  %1154 = load i64, i64* %RAX.i348
  %1155 = load i64, i64* %RCX.i349
  %1156 = load i64, i64* %PC.i347
  %1157 = add i64 %1156, 3
  store i64 %1157, i64* %PC.i347
  %1158 = add i64 %1155, %1154
  store i64 %1158, i64* %RAX.i348, align 8
  %1159 = icmp ult i64 %1158, %1154
  %1160 = icmp ult i64 %1158, %1155
  %1161 = or i1 %1159, %1160
  %1162 = zext i1 %1161 to i8
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1162, i8* %1163, align 1
  %1164 = trunc i64 %1158 to i32
  %1165 = and i32 %1164, 255
  %1166 = call i32 @llvm.ctpop.i32(i32 %1165)
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = xor i8 %1168, 1
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1169, i8* %1170, align 1
  %1171 = xor i64 %1155, %1154
  %1172 = xor i64 %1171, %1158
  %1173 = lshr i64 %1172, 4
  %1174 = trunc i64 %1173 to i8
  %1175 = and i8 %1174, 1
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1175, i8* %1176, align 1
  %1177 = icmp eq i64 %1158, 0
  %1178 = zext i1 %1177 to i8
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1178, i8* %1179, align 1
  %1180 = lshr i64 %1158, 63
  %1181 = trunc i64 %1180 to i8
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1181, i8* %1182, align 1
  %1183 = lshr i64 %1154, 63
  %1184 = lshr i64 %1155, 63
  %1185 = xor i64 %1180, %1183
  %1186 = xor i64 %1180, %1184
  %1187 = add i64 %1185, %1186
  %1188 = icmp eq i64 %1187, 2
  %1189 = zext i1 %1188 to i8
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1189, i8* %1190, align 1
  store %struct.Memory* %loadMem_400d37, %struct.Memory** %MEMORY
  %loadMem_400d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 33
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 5
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 15
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %RBP.i346
  %1201 = sub i64 %1200, 60
  %1202 = load i64, i64* %PC.i344
  %1203 = add i64 %1202, 4
  store i64 %1203, i64* %PC.i344
  %1204 = inttoptr i64 %1201 to i32*
  %1205 = load i32, i32* %1204
  %1206 = sext i32 %1205 to i64
  store i64 %1206, i64* %RCX.i345, align 8
  store %struct.Memory* %loadMem_400d3a, %struct.Memory** %MEMORY
  %loadMem_400d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 33
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 1
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 5
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %1215 to i64*
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1217 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1216, i64 0, i64 2
  %YMM2.i343 = bitcast %union.VectorReg* %1217 to %"class.std::bitset"*
  %1218 = bitcast %"class.std::bitset"* %YMM2.i343 to i8*
  %1219 = bitcast %"class.std::bitset"* %YMM2.i343 to i8*
  %1220 = load i64, i64* %RAX.i341
  %1221 = load i64, i64* %RCX.i342
  %1222 = mul i64 %1221, 8
  %1223 = add i64 %1222, %1220
  %1224 = load i64, i64* %PC.i340
  %1225 = add i64 %1224, 5
  store i64 %1225, i64* %PC.i340
  %1226 = bitcast i8* %1219 to double*
  %1227 = load double, double* %1226, align 1
  %1228 = getelementptr inbounds i8, i8* %1219, i64 8
  %1229 = bitcast i8* %1228 to i64*
  %1230 = load i64, i64* %1229, align 1
  %1231 = inttoptr i64 %1223 to double*
  %1232 = load double, double* %1231
  %1233 = fsub double %1227, %1232
  %1234 = bitcast i8* %1218 to double*
  store double %1233, double* %1234, align 1
  %1235 = getelementptr inbounds i8, i8* %1218, i64 8
  %1236 = bitcast i8* %1235 to i64*
  store i64 %1230, i64* %1236, align 1
  store %struct.Memory* %loadMem_400d3e, %struct.Memory** %MEMORY
  %loadMem_400d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1240, i64 0, i64 0
  %YMM0.i338 = bitcast %union.VectorReg* %1241 to %"class.std::bitset"*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1242, i64 0, i64 2
  %XMM2.i339 = bitcast %union.VectorReg* %1243 to %union.vec128_t*
  %1244 = bitcast %"class.std::bitset"* %YMM0.i338 to i8*
  %1245 = bitcast %"class.std::bitset"* %YMM0.i338 to i8*
  %1246 = bitcast %union.vec128_t* %XMM2.i339 to i8*
  %1247 = load i64, i64* %PC.i337
  %1248 = add i64 %1247, 4
  store i64 %1248, i64* %PC.i337
  %1249 = bitcast i8* %1245 to double*
  %1250 = load double, double* %1249, align 1
  %1251 = getelementptr inbounds i8, i8* %1245, i64 8
  %1252 = bitcast i8* %1251 to i64*
  %1253 = load i64, i64* %1252, align 1
  %1254 = bitcast i8* %1246 to double*
  %1255 = load double, double* %1254, align 1
  %1256 = fmul double %1250, %1255
  %1257 = bitcast i8* %1244 to double*
  store double %1256, double* %1257, align 1
  %1258 = getelementptr inbounds i8, i8* %1244, i64 8
  %1259 = bitcast i8* %1258 to i64*
  store i64 %1253, i64* %1259, align 1
  store %struct.Memory* %loadMem_400d43, %struct.Memory** %MEMORY
  %loadMem_400d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 33
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1263, i64 0, i64 1
  %YMM1.i335 = bitcast %union.VectorReg* %1264 to %"class.std::bitset"*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1266 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1265, i64 0, i64 0
  %XMM0.i336 = bitcast %union.VectorReg* %1266 to %union.vec128_t*
  %1267 = bitcast %"class.std::bitset"* %YMM1.i335 to i8*
  %1268 = bitcast %"class.std::bitset"* %YMM1.i335 to i8*
  %1269 = bitcast %union.vec128_t* %XMM0.i336 to i8*
  %1270 = load i64, i64* %PC.i334
  %1271 = add i64 %1270, 4
  store i64 %1271, i64* %PC.i334
  %1272 = bitcast i8* %1268 to double*
  %1273 = load double, double* %1272, align 1
  %1274 = getelementptr inbounds i8, i8* %1268, i64 8
  %1275 = bitcast i8* %1274 to i64*
  %1276 = load i64, i64* %1275, align 1
  %1277 = bitcast i8* %1269 to double*
  %1278 = load double, double* %1277, align 1
  %1279 = fsub double %1273, %1278
  %1280 = bitcast i8* %1267 to double*
  store double %1279, double* %1280, align 1
  %1281 = getelementptr inbounds i8, i8* %1267, i64 8
  %1282 = bitcast i8* %1281 to i64*
  store i64 %1276, i64* %1282, align 1
  store %struct.Memory* %loadMem_400d47, %struct.Memory** %MEMORY
  %loadMem_400d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 1
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 15
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %RBP.i333
  %1293 = sub i64 %1292, 32
  %1294 = load i64, i64* %PC.i331
  %1295 = add i64 %1294, 4
  store i64 %1295, i64* %PC.i331
  %1296 = inttoptr i64 %1293 to i64*
  %1297 = load i64, i64* %1296
  store i64 %1297, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_400d4b, %struct.Memory** %MEMORY
  %loadMem_400d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 33
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1300 to i64*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 5
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 15
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %1306 to i64*
  %1307 = load i64, i64* %RBP.i330
  %1308 = sub i64 %1307, 56
  %1309 = load i64, i64* %PC.i328
  %1310 = add i64 %1309, 4
  store i64 %1310, i64* %PC.i328
  %1311 = inttoptr i64 %1308 to i32*
  %1312 = load i32, i32* %1311
  %1313 = sext i32 %1312 to i64
  store i64 %1313, i64* %RCX.i329, align 8
  store %struct.Memory* %loadMem_400d4f, %struct.Memory** %MEMORY
  %loadMem_400d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 5
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %1319 to i64*
  %1320 = load i64, i64* %RCX.i327
  %1321 = load i64, i64* %PC.i326
  %1322 = add i64 %1321, 7
  store i64 %1322, i64* %PC.i326
  %1323 = sext i64 %1320 to i128
  %1324 = and i128 %1323, -18446744073709551616
  %1325 = zext i64 %1320 to i128
  %1326 = or i128 %1324, %1325
  %1327 = mul i128 8000, %1326
  %1328 = trunc i128 %1327 to i64
  store i64 %1328, i64* %RCX.i327, align 8
  %1329 = sext i64 %1328 to i128
  %1330 = icmp ne i128 %1329, %1327
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1331, i8* %1332, align 1
  %1333 = trunc i128 %1327 to i32
  %1334 = and i32 %1333, 255
  %1335 = call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1338, i8* %1339, align 1
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1340, align 1
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1341, align 1
  %1342 = lshr i64 %1328, 63
  %1343 = trunc i64 %1342 to i8
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1343, i8* %1344, align 1
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1331, i8* %1345, align 1
  store %struct.Memory* %loadMem_400d53, %struct.Memory** %MEMORY
  %loadMem_400d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 1
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 5
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %RAX.i324
  %1356 = load i64, i64* %RCX.i325
  %1357 = load i64, i64* %PC.i323
  %1358 = add i64 %1357, 3
  store i64 %1358, i64* %PC.i323
  %1359 = add i64 %1356, %1355
  store i64 %1359, i64* %RAX.i324, align 8
  %1360 = icmp ult i64 %1359, %1355
  %1361 = icmp ult i64 %1359, %1356
  %1362 = or i1 %1360, %1361
  %1363 = zext i1 %1362 to i8
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1363, i8* %1364, align 1
  %1365 = trunc i64 %1359 to i32
  %1366 = and i32 %1365, 255
  %1367 = call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1370, i8* %1371, align 1
  %1372 = xor i64 %1356, %1355
  %1373 = xor i64 %1372, %1359
  %1374 = lshr i64 %1373, 4
  %1375 = trunc i64 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1376, i8* %1377, align 1
  %1378 = icmp eq i64 %1359, 0
  %1379 = zext i1 %1378 to i8
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1379, i8* %1380, align 1
  %1381 = lshr i64 %1359, 63
  %1382 = trunc i64 %1381 to i8
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1382, i8* %1383, align 1
  %1384 = lshr i64 %1355, 63
  %1385 = lshr i64 %1356, 63
  %1386 = xor i64 %1381, %1384
  %1387 = xor i64 %1381, %1385
  %1388 = add i64 %1386, %1387
  %1389 = icmp eq i64 %1388, 2
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1390, i8* %1391, align 1
  store %struct.Memory* %loadMem_400d5a, %struct.Memory** %MEMORY
  %loadMem_400d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 5
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 15
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RBP.i322
  %1402 = sub i64 %1401, 60
  %1403 = load i64, i64* %PC.i320
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %PC.i320
  %1405 = inttoptr i64 %1402 to i32*
  %1406 = load i32, i32* %1405
  %1407 = sext i32 %1406 to i64
  store i64 %1407, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_400d5d, %struct.Memory** %MEMORY
  %loadMem_400d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 33
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 1
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %1413 to i64*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 5
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1417, i64 0, i64 1
  %XMM1.i319 = bitcast %union.VectorReg* %1418 to %union.vec128_t*
  %1419 = load i64, i64* %RAX.i317
  %1420 = load i64, i64* %RCX.i318
  %1421 = mul i64 %1420, 8
  %1422 = add i64 %1421, %1419
  %1423 = bitcast %union.vec128_t* %XMM1.i319 to i8*
  %1424 = load i64, i64* %PC.i316
  %1425 = add i64 %1424, 5
  store i64 %1425, i64* %PC.i316
  %1426 = bitcast i8* %1423 to double*
  %1427 = load double, double* %1426, align 1
  %1428 = inttoptr i64 %1422 to double*
  store double %1427, double* %1428
  store %struct.Memory* %loadMem_400d61, %struct.Memory** %MEMORY
  %loadMem_400d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 1
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 15
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %1437 to i64*
  %1438 = load i64, i64* %RBP.i315
  %1439 = sub i64 %1438, 60
  %1440 = load i64, i64* %PC.i313
  %1441 = add i64 %1440, 3
  store i64 %1441, i64* %PC.i313
  %1442 = inttoptr i64 %1439 to i32*
  %1443 = load i32, i32* %1442
  %1444 = zext i32 %1443 to i64
  store i64 %1444, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_400d66, %struct.Memory** %MEMORY
  %loadMem_400d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 1
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %1450 to i64*
  %1451 = load i64, i64* %RAX.i312
  %1452 = load i64, i64* %PC.i311
  %1453 = add i64 %1452, 3
  store i64 %1453, i64* %PC.i311
  %1454 = trunc i64 %1451 to i32
  %1455 = add i32 1, %1454
  %1456 = zext i32 %1455 to i64
  store i64 %1456, i64* %RAX.i312, align 8
  %1457 = icmp ult i32 %1455, %1454
  %1458 = icmp ult i32 %1455, 1
  %1459 = or i1 %1457, %1458
  %1460 = zext i1 %1459 to i8
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1460, i8* %1461, align 1
  %1462 = and i32 %1455, 255
  %1463 = call i32 @llvm.ctpop.i32(i32 %1462)
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  %1466 = xor i8 %1465, 1
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1466, i8* %1467, align 1
  %1468 = xor i64 1, %1451
  %1469 = trunc i64 %1468 to i32
  %1470 = xor i32 %1469, %1455
  %1471 = lshr i32 %1470, 4
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1473, i8* %1474, align 1
  %1475 = icmp eq i32 %1455, 0
  %1476 = zext i1 %1475 to i8
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1476, i8* %1477, align 1
  %1478 = lshr i32 %1455, 31
  %1479 = trunc i32 %1478 to i8
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1479, i8* %1480, align 1
  %1481 = lshr i32 %1454, 31
  %1482 = xor i32 %1478, %1481
  %1483 = add i32 %1482, %1478
  %1484 = icmp eq i32 %1483, 2
  %1485 = zext i1 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1485, i8* %1486, align 1
  store %struct.Memory* %loadMem_400d69, %struct.Memory** %MEMORY
  %loadMem_400d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 1
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %EAX.i309 = bitcast %union.anon* %1492 to i32*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 15
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %1495 to i64*
  %1496 = load i64, i64* %RBP.i310
  %1497 = sub i64 %1496, 60
  %1498 = load i32, i32* %EAX.i309
  %1499 = zext i32 %1498 to i64
  %1500 = load i64, i64* %PC.i308
  %1501 = add i64 %1500, 3
  store i64 %1501, i64* %PC.i308
  %1502 = inttoptr i64 %1497 to i32*
  store i32 %1498, i32* %1502
  store %struct.Memory* %loadMem_400d6c, %struct.Memory** %MEMORY
  %loadMem_400d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 33
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1505 to i64*
  %1506 = load i64, i64* %PC.i307
  %1507 = add i64 %1506, -150
  %1508 = load i64, i64* %PC.i307
  %1509 = add i64 %1508, 5
  store i64 %1509, i64* %PC.i307
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1507, i64* %1510, align 8
  store %struct.Memory* %loadMem_400d6f, %struct.Memory** %MEMORY
  br label %block_.L_400cd9

block_.L_400d74:                                  ; preds = %block_.L_400cd9
  %loadMem_400d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1513 to i64*
  %1514 = load i64, i64* %PC.i306
  %1515 = add i64 %1514, 5
  %1516 = load i64, i64* %PC.i306
  %1517 = add i64 %1516, 5
  store i64 %1517, i64* %PC.i306
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1515, i64* %1518, align 8
  store %struct.Memory* %loadMem_400d74, %struct.Memory** %MEMORY
  br label %block_.L_400d79

block_.L_400d79:                                  ; preds = %block_.L_400d74
  %loadMem_400d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 1
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 15
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %1527 to i64*
  %1528 = load i64, i64* %RBP.i305
  %1529 = sub i64 %1528, 56
  %1530 = load i64, i64* %PC.i303
  %1531 = add i64 %1530, 3
  store i64 %1531, i64* %PC.i303
  %1532 = inttoptr i64 %1529 to i32*
  %1533 = load i32, i32* %1532
  %1534 = zext i32 %1533 to i64
  store i64 %1534, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_400d79, %struct.Memory** %MEMORY
  %loadMem_400d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 33
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 1
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %RAX.i302
  %1542 = load i64, i64* %PC.i301
  %1543 = add i64 %1542, 3
  store i64 %1543, i64* %PC.i301
  %1544 = trunc i64 %1541 to i32
  %1545 = add i32 1, %1544
  %1546 = zext i32 %1545 to i64
  store i64 %1546, i64* %RAX.i302, align 8
  %1547 = icmp ult i32 %1545, %1544
  %1548 = icmp ult i32 %1545, 1
  %1549 = or i1 %1547, %1548
  %1550 = zext i1 %1549 to i8
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1550, i8* %1551, align 1
  %1552 = and i32 %1545, 255
  %1553 = call i32 @llvm.ctpop.i32(i32 %1552)
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = xor i8 %1555, 1
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1556, i8* %1557, align 1
  %1558 = xor i64 1, %1541
  %1559 = trunc i64 %1558 to i32
  %1560 = xor i32 %1559, %1545
  %1561 = lshr i32 %1560, 4
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1563, i8* %1564, align 1
  %1565 = icmp eq i32 %1545, 0
  %1566 = zext i1 %1565 to i8
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1566, i8* %1567, align 1
  %1568 = lshr i32 %1545, 31
  %1569 = trunc i32 %1568 to i8
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1569, i8* %1570, align 1
  %1571 = lshr i32 %1544, 31
  %1572 = xor i32 %1568, %1571
  %1573 = add i32 %1572, %1568
  %1574 = icmp eq i32 %1573, 2
  %1575 = zext i1 %1574 to i8
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1575, i8* %1576, align 1
  store %struct.Memory* %loadMem_400d7c, %struct.Memory** %MEMORY
  %loadMem_400d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 33
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 1
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %EAX.i299 = bitcast %union.anon* %1582 to i32*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 15
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %RBP.i300
  %1587 = sub i64 %1586, 56
  %1588 = load i32, i32* %EAX.i299
  %1589 = zext i32 %1588 to i64
  %1590 = load i64, i64* %PC.i298
  %1591 = add i64 %1590, 3
  store i64 %1591, i64* %PC.i298
  %1592 = inttoptr i64 %1587 to i32*
  store i32 %1588, i32* %1592
  store %struct.Memory* %loadMem_400d7f, %struct.Memory** %MEMORY
  %loadMem_400d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 33
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1595 to i64*
  %1596 = load i64, i64* %PC.i297
  %1597 = add i64 %1596, -188
  %1598 = load i64, i64* %PC.i297
  %1599 = add i64 %1598, 5
  store i64 %1599, i64* %PC.i297
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1597, i64* %1600, align 8
  store %struct.Memory* %loadMem_400d82, %struct.Memory** %MEMORY
  br label %block_.L_400cc6

block_.L_400d87:                                  ; preds = %block_.L_400cc6
  %loadMem_400d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 33
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 15
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %1606 to i64*
  %1607 = load i64, i64* %RBP.i296
  %1608 = sub i64 %1607, 56
  %1609 = load i64, i64* %PC.i295
  %1610 = add i64 %1609, 7
  store i64 %1610, i64* %PC.i295
  %1611 = inttoptr i64 %1608 to i32*
  store i32 0, i32* %1611
  store %struct.Memory* %loadMem_400d87, %struct.Memory** %MEMORY
  br label %block_.L_400d8e

block_.L_400d8e:                                  ; preds = %block_.L_400e41, %block_.L_400d87
  %loadMem_400d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 1
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %1617 to i64*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 15
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %1620 to i64*
  %1621 = load i64, i64* %RBP.i294
  %1622 = sub i64 %1621, 56
  %1623 = load i64, i64* %PC.i292
  %1624 = add i64 %1623, 3
  store i64 %1624, i64* %PC.i292
  %1625 = inttoptr i64 %1622 to i32*
  %1626 = load i32, i32* %1625
  %1627 = zext i32 %1626 to i64
  store i64 %1627, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_400d8e, %struct.Memory** %MEMORY
  %loadMem_400d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 1
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %EAX.i290 = bitcast %union.anon* %1633 to i32*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 15
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %1636 to i64*
  %1637 = load i32, i32* %EAX.i290
  %1638 = zext i32 %1637 to i64
  %1639 = load i64, i64* %RBP.i291
  %1640 = sub i64 %1639, 8
  %1641 = load i64, i64* %PC.i289
  %1642 = add i64 %1641, 3
  store i64 %1642, i64* %PC.i289
  %1643 = inttoptr i64 %1640 to i32*
  %1644 = load i32, i32* %1643
  %1645 = sub i32 %1637, %1644
  %1646 = icmp ult i32 %1637, %1644
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
  %1655 = xor i32 %1644, %1637
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
  %1667 = lshr i32 %1637, 31
  %1668 = lshr i32 %1644, 31
  %1669 = xor i32 %1668, %1667
  %1670 = xor i32 %1664, %1667
  %1671 = add i32 %1670, %1669
  %1672 = icmp eq i32 %1671, 2
  %1673 = zext i1 %1672 to i8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1673, i8* %1674, align 1
  store %struct.Memory* %loadMem_400d91, %struct.Memory** %MEMORY
  %loadMem_400d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1677 to i64*
  %1678 = load i64, i64* %PC.i288
  %1679 = add i64 %1678, 187
  %1680 = load i64, i64* %PC.i288
  %1681 = add i64 %1680, 6
  %1682 = load i64, i64* %PC.i288
  %1683 = add i64 %1682, 6
  store i64 %1683, i64* %PC.i288
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1685 = load i8, i8* %1684, align 1
  %1686 = icmp ne i8 %1685, 0
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1688 = load i8, i8* %1687, align 1
  %1689 = icmp ne i8 %1688, 0
  %1690 = xor i1 %1686, %1689
  %1691 = xor i1 %1690, true
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %BRANCH_TAKEN, align 1
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1694 = select i1 %1690, i64 %1681, i64 %1679
  store i64 %1694, i64* %1693, align 8
  store %struct.Memory* %loadMem_400d94, %struct.Memory** %MEMORY
  %loadBr_400d94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d94 = icmp eq i8 %loadBr_400d94, 1
  br i1 %cmpBr_400d94, label %block_.L_400e4f, label %block_400d9a

block_400d9a:                                     ; preds = %block_.L_400d8e
  %loadMem_400d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 33
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1697 to i64*
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 15
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %1700 to i64*
  %1701 = load i64, i64* %RBP.i287
  %1702 = sub i64 %1701, 60
  %1703 = load i64, i64* %PC.i286
  %1704 = add i64 %1703, 7
  store i64 %1704, i64* %PC.i286
  %1705 = inttoptr i64 %1702 to i32*
  store i32 1, i32* %1705
  store %struct.Memory* %loadMem_400d9a, %struct.Memory** %MEMORY
  br label %block_.L_400da1

block_.L_400da1:                                  ; preds = %block_400dad, %block_400d9a
  %loadMem_400da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 1
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 15
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %1714 to i64*
  %1715 = load i64, i64* %RBP.i285
  %1716 = sub i64 %1715, 60
  %1717 = load i64, i64* %PC.i283
  %1718 = add i64 %1717, 3
  store i64 %1718, i64* %PC.i283
  %1719 = inttoptr i64 %1716 to i32*
  %1720 = load i32, i32* %1719
  %1721 = zext i32 %1720 to i64
  store i64 %1721, i64* %RAX.i284, align 8
  store %struct.Memory* %loadMem_400da1, %struct.Memory** %MEMORY
  %loadMem_400da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 1
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %EAX.i281 = bitcast %union.anon* %1727 to i32*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 15
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %1730 to i64*
  %1731 = load i32, i32* %EAX.i281
  %1732 = zext i32 %1731 to i64
  %1733 = load i64, i64* %RBP.i282
  %1734 = sub i64 %1733, 12
  %1735 = load i64, i64* %PC.i280
  %1736 = add i64 %1735, 3
  store i64 %1736, i64* %PC.i280
  %1737 = inttoptr i64 %1734 to i32*
  %1738 = load i32, i32* %1737
  %1739 = sub i32 %1731, %1738
  %1740 = icmp ult i32 %1731, %1738
  %1741 = zext i1 %1740 to i8
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1741, i8* %1742, align 1
  %1743 = and i32 %1739, 255
  %1744 = call i32 @llvm.ctpop.i32(i32 %1743)
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  %1747 = xor i8 %1746, 1
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1747, i8* %1748, align 1
  %1749 = xor i32 %1738, %1731
  %1750 = xor i32 %1749, %1739
  %1751 = lshr i32 %1750, 4
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1753, i8* %1754, align 1
  %1755 = icmp eq i32 %1739, 0
  %1756 = zext i1 %1755 to i8
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1756, i8* %1757, align 1
  %1758 = lshr i32 %1739, 31
  %1759 = trunc i32 %1758 to i8
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1759, i8* %1760, align 1
  %1761 = lshr i32 %1731, 31
  %1762 = lshr i32 %1738, 31
  %1763 = xor i32 %1762, %1761
  %1764 = xor i32 %1758, %1761
  %1765 = add i32 %1764, %1763
  %1766 = icmp eq i32 %1765, 2
  %1767 = zext i1 %1766 to i8
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1767, i8* %1768, align 1
  store %struct.Memory* %loadMem_400da4, %struct.Memory** %MEMORY
  %loadMem_400da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1771 to i64*
  %1772 = load i64, i64* %PC.i279
  %1773 = add i64 %1772, 149
  %1774 = load i64, i64* %PC.i279
  %1775 = add i64 %1774, 6
  %1776 = load i64, i64* %PC.i279
  %1777 = add i64 %1776, 6
  store i64 %1777, i64* %PC.i279
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1779 = load i8, i8* %1778, align 1
  %1780 = icmp ne i8 %1779, 0
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1782 = load i8, i8* %1781, align 1
  %1783 = icmp ne i8 %1782, 0
  %1784 = xor i1 %1780, %1783
  %1785 = xor i1 %1784, true
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %BRANCH_TAKEN, align 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1788 = select i1 %1784, i64 %1775, i64 %1773
  store i64 %1788, i64* %1787, align 8
  store %struct.Memory* %loadMem_400da7, %struct.Memory** %MEMORY
  %loadBr_400da7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400da7 = icmp eq i8 %loadBr_400da7, 1
  br i1 %cmpBr_400da7, label %block_.L_400e3c, label %block_400dad

block_400dad:                                     ; preds = %block_.L_400da1
  %loadMem_400dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1792, i64 0, i64 0
  %YMM0.i278 = bitcast %union.VectorReg* %1793 to %"class.std::bitset"*
  %1794 = bitcast %"class.std::bitset"* %YMM0.i278 to i8*
  %1795 = load i64, i64* %PC.i277
  %1796 = add i64 %1795, 2275
  %1797 = load i64, i64* %PC.i277
  %1798 = add i64 %1797, 8
  store i64 %1798, i64* %PC.i277
  %1799 = inttoptr i64 %1796 to double*
  %1800 = load double, double* %1799
  %1801 = bitcast i8* %1794 to double*
  store double %1800, double* %1801, align 1
  %1802 = getelementptr inbounds i8, i8* %1794, i64 8
  %1803 = bitcast i8* %1802 to double*
  store double 0.000000e+00, double* %1803, align 1
  store %struct.Memory* %loadMem_400dad, %struct.Memory** %MEMORY
  %loadMem_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 33
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 1
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 15
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %1812 to i64*
  %1813 = load i64, i64* %RBP.i276
  %1814 = sub i64 %1813, 24
  %1815 = load i64, i64* %PC.i274
  %1816 = add i64 %1815, 4
  store i64 %1816, i64* %PC.i274
  %1817 = inttoptr i64 %1814 to i64*
  %1818 = load i64, i64* %1817
  store i64 %1818, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_400db5, %struct.Memory** %MEMORY
  %loadMem_400db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 33
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 5
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %1824 to i64*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 15
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %1827 to i64*
  %1828 = load i64, i64* %RBP.i273
  %1829 = sub i64 %1828, 56
  %1830 = load i64, i64* %PC.i271
  %1831 = add i64 %1830, 4
  store i64 %1831, i64* %PC.i271
  %1832 = inttoptr i64 %1829 to i32*
  %1833 = load i32, i32* %1832
  %1834 = sext i32 %1833 to i64
  store i64 %1834, i64* %RCX.i272, align 8
  store %struct.Memory* %loadMem_400db9, %struct.Memory** %MEMORY
  %loadMem_400dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 5
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %1840 to i64*
  %1841 = load i64, i64* %RCX.i270
  %1842 = load i64, i64* %PC.i269
  %1843 = add i64 %1842, 7
  store i64 %1843, i64* %PC.i269
  %1844 = sext i64 %1841 to i128
  %1845 = and i128 %1844, -18446744073709551616
  %1846 = zext i64 %1841 to i128
  %1847 = or i128 %1845, %1846
  %1848 = mul i128 8000, %1847
  %1849 = trunc i128 %1848 to i64
  store i64 %1849, i64* %RCX.i270, align 8
  %1850 = sext i64 %1849 to i128
  %1851 = icmp ne i128 %1850, %1848
  %1852 = zext i1 %1851 to i8
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1852, i8* %1853, align 1
  %1854 = trunc i128 %1848 to i32
  %1855 = and i32 %1854, 255
  %1856 = call i32 @llvm.ctpop.i32(i32 %1855)
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  %1859 = xor i8 %1858, 1
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1859, i8* %1860, align 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1861, align 1
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1862, align 1
  %1863 = lshr i64 %1849, 63
  %1864 = trunc i64 %1863 to i8
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1864, i8* %1865, align 1
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1852, i8* %1866, align 1
  store %struct.Memory* %loadMem_400dbd, %struct.Memory** %MEMORY
  %loadMem_400dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 1
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 5
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %1875 to i64*
  %1876 = load i64, i64* %RAX.i267
  %1877 = load i64, i64* %RCX.i268
  %1878 = load i64, i64* %PC.i266
  %1879 = add i64 %1878, 3
  store i64 %1879, i64* %PC.i266
  %1880 = add i64 %1877, %1876
  store i64 %1880, i64* %RAX.i267, align 8
  %1881 = icmp ult i64 %1880, %1876
  %1882 = icmp ult i64 %1880, %1877
  %1883 = or i1 %1881, %1882
  %1884 = zext i1 %1883 to i8
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1884, i8* %1885, align 1
  %1886 = trunc i64 %1880 to i32
  %1887 = and i32 %1886, 255
  %1888 = call i32 @llvm.ctpop.i32(i32 %1887)
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  %1891 = xor i8 %1890, 1
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1891, i8* %1892, align 1
  %1893 = xor i64 %1877, %1876
  %1894 = xor i64 %1893, %1880
  %1895 = lshr i64 %1894, 4
  %1896 = trunc i64 %1895 to i8
  %1897 = and i8 %1896, 1
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1897, i8* %1898, align 1
  %1899 = icmp eq i64 %1880, 0
  %1900 = zext i1 %1899 to i8
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1900, i8* %1901, align 1
  %1902 = lshr i64 %1880, 63
  %1903 = trunc i64 %1902 to i8
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1903, i8* %1904, align 1
  %1905 = lshr i64 %1876, 63
  %1906 = lshr i64 %1877, 63
  %1907 = xor i64 %1902, %1905
  %1908 = xor i64 %1902, %1906
  %1909 = add i64 %1907, %1908
  %1910 = icmp eq i64 %1909, 2
  %1911 = zext i1 %1910 to i8
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1911, i8* %1912, align 1
  store %struct.Memory* %loadMem_400dc4, %struct.Memory** %MEMORY
  %loadMem_400dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 5
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 15
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %RBP.i265
  %1923 = sub i64 %1922, 60
  %1924 = load i64, i64* %PC.i263
  %1925 = add i64 %1924, 4
  store i64 %1925, i64* %PC.i263
  %1926 = inttoptr i64 %1923 to i32*
  %1927 = load i32, i32* %1926
  %1928 = sext i32 %1927 to i64
  store i64 %1928, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_400dc7, %struct.Memory** %MEMORY
  %loadMem_400dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 33
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 1
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 5
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1939 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1938, i64 0, i64 1
  %YMM1.i262 = bitcast %union.VectorReg* %1939 to %"class.std::bitset"*
  %1940 = bitcast %"class.std::bitset"* %YMM1.i262 to i8*
  %1941 = load i64, i64* %RAX.i260
  %1942 = load i64, i64* %RCX.i261
  %1943 = mul i64 %1942, 8
  %1944 = add i64 %1943, %1941
  %1945 = load i64, i64* %PC.i259
  %1946 = add i64 %1945, 5
  store i64 %1946, i64* %PC.i259
  %1947 = inttoptr i64 %1944 to double*
  %1948 = load double, double* %1947
  %1949 = bitcast i8* %1940 to double*
  store double %1948, double* %1949, align 1
  %1950 = getelementptr inbounds i8, i8* %1940, i64 8
  %1951 = bitcast i8* %1950 to double*
  store double 0.000000e+00, double* %1951, align 1
  store %struct.Memory* %loadMem_400dcb, %struct.Memory** %MEMORY
  %loadMem_400dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 33
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 1
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %1957 to i64*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 15
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1960 to i64*
  %1961 = load i64, i64* %RBP.i258
  %1962 = sub i64 %1961, 40
  %1963 = load i64, i64* %PC.i256
  %1964 = add i64 %1963, 4
  store i64 %1964, i64* %PC.i256
  %1965 = inttoptr i64 %1962 to i64*
  %1966 = load i64, i64* %1965
  store i64 %1966, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_400dd0, %struct.Memory** %MEMORY
  %loadMem_400dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 33
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1969 to i64*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 5
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 15
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %1975 to i64*
  %1976 = load i64, i64* %RBP.i255
  %1977 = sub i64 %1976, 56
  %1978 = load i64, i64* %PC.i253
  %1979 = add i64 %1978, 4
  store i64 %1979, i64* %PC.i253
  %1980 = inttoptr i64 %1977 to i32*
  %1981 = load i32, i32* %1980
  %1982 = sext i32 %1981 to i64
  store i64 %1982, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_400dd4, %struct.Memory** %MEMORY
  %loadMem_400dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 33
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1985 to i64*
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 5
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %1988 to i64*
  %1989 = load i64, i64* %RCX.i252
  %1990 = load i64, i64* %PC.i251
  %1991 = add i64 %1990, 7
  store i64 %1991, i64* %PC.i251
  %1992 = sext i64 %1989 to i128
  %1993 = and i128 %1992, -18446744073709551616
  %1994 = zext i64 %1989 to i128
  %1995 = or i128 %1993, %1994
  %1996 = mul i128 8000, %1995
  %1997 = trunc i128 %1996 to i64
  store i64 %1997, i64* %RCX.i252, align 8
  %1998 = sext i64 %1997 to i128
  %1999 = icmp ne i128 %1998, %1996
  %2000 = zext i1 %1999 to i8
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2000, i8* %2001, align 1
  %2002 = trunc i128 %1996 to i32
  %2003 = and i32 %2002, 255
  %2004 = call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2007, i8* %2008, align 1
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2009, align 1
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2010, align 1
  %2011 = lshr i64 %1997, 63
  %2012 = trunc i64 %2011 to i8
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2012, i8* %2013, align 1
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2000, i8* %2014, align 1
  store %struct.Memory* %loadMem_400dd8, %struct.Memory** %MEMORY
  %loadMem_400ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 1
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 5
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %2023 to i64*
  %2024 = load i64, i64* %RAX.i249
  %2025 = load i64, i64* %RCX.i250
  %2026 = load i64, i64* %PC.i248
  %2027 = add i64 %2026, 3
  store i64 %2027, i64* %PC.i248
  %2028 = add i64 %2025, %2024
  store i64 %2028, i64* %RAX.i249, align 8
  %2029 = icmp ult i64 %2028, %2024
  %2030 = icmp ult i64 %2028, %2025
  %2031 = or i1 %2029, %2030
  %2032 = zext i1 %2031 to i8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2032, i8* %2033, align 1
  %2034 = trunc i64 %2028 to i32
  %2035 = and i32 %2034, 255
  %2036 = call i32 @llvm.ctpop.i32(i32 %2035)
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = xor i8 %2038, 1
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2039, i8* %2040, align 1
  %2041 = xor i64 %2025, %2024
  %2042 = xor i64 %2041, %2028
  %2043 = lshr i64 %2042, 4
  %2044 = trunc i64 %2043 to i8
  %2045 = and i8 %2044, 1
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2045, i8* %2046, align 1
  %2047 = icmp eq i64 %2028, 0
  %2048 = zext i1 %2047 to i8
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2048, i8* %2049, align 1
  %2050 = lshr i64 %2028, 63
  %2051 = trunc i64 %2050 to i8
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2051, i8* %2052, align 1
  %2053 = lshr i64 %2024, 63
  %2054 = lshr i64 %2025, 63
  %2055 = xor i64 %2050, %2053
  %2056 = xor i64 %2050, %2054
  %2057 = add i64 %2055, %2056
  %2058 = icmp eq i64 %2057, 2
  %2059 = zext i1 %2058 to i8
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2059, i8* %2060, align 1
  store %struct.Memory* %loadMem_400ddf, %struct.Memory** %MEMORY
  %loadMem_400de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 5
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 15
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %2069 to i64*
  %2070 = load i64, i64* %RBP.i247
  %2071 = sub i64 %2070, 60
  %2072 = load i64, i64* %PC.i245
  %2073 = add i64 %2072, 4
  store i64 %2073, i64* %PC.i245
  %2074 = inttoptr i64 %2071 to i32*
  %2075 = load i32, i32* %2074
  %2076 = sext i32 %2075 to i64
  store i64 %2076, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_400de2, %struct.Memory** %MEMORY
  %loadMem_400de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 1
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %2082 to i64*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 5
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2086, i64 0, i64 2
  %YMM2.i244 = bitcast %union.VectorReg* %2087 to %"class.std::bitset"*
  %2088 = bitcast %"class.std::bitset"* %YMM2.i244 to i8*
  %2089 = load i64, i64* %RAX.i242
  %2090 = load i64, i64* %RCX.i243
  %2091 = mul i64 %2090, 8
  %2092 = add i64 %2091, %2089
  %2093 = load i64, i64* %PC.i241
  %2094 = add i64 %2093, 5
  store i64 %2094, i64* %PC.i241
  %2095 = inttoptr i64 %2092 to double*
  %2096 = load double, double* %2095
  %2097 = bitcast i8* %2088 to double*
  store double %2096, double* %2097, align 1
  %2098 = getelementptr inbounds i8, i8* %2088, i64 8
  %2099 = bitcast i8* %2098 to double*
  store double 0.000000e+00, double* %2099, align 1
  store %struct.Memory* %loadMem_400de6, %struct.Memory** %MEMORY
  %loadMem_400deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 1
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %2105 to i64*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 15
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %2108 to i64*
  %2109 = load i64, i64* %RBP.i240
  %2110 = sub i64 %2109, 40
  %2111 = load i64, i64* %PC.i238
  %2112 = add i64 %2111, 4
  store i64 %2112, i64* %PC.i238
  %2113 = inttoptr i64 %2110 to i64*
  %2114 = load i64, i64* %2113
  store i64 %2114, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_400deb, %struct.Memory** %MEMORY
  %loadMem_400def = load %struct.Memory*, %struct.Memory** %MEMORY
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 33
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 5
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %2120 to i64*
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 15
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %2123 to i64*
  %2124 = load i64, i64* %RBP.i237
  %2125 = sub i64 %2124, 56
  %2126 = load i64, i64* %PC.i235
  %2127 = add i64 %2126, 4
  store i64 %2127, i64* %PC.i235
  %2128 = inttoptr i64 %2125 to i32*
  %2129 = load i32, i32* %2128
  %2130 = sext i32 %2129 to i64
  store i64 %2130, i64* %RCX.i236, align 8
  store %struct.Memory* %loadMem_400def, %struct.Memory** %MEMORY
  %loadMem_400df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 33
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2133 to i64*
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 5
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %2136 to i64*
  %2137 = load i64, i64* %RCX.i234
  %2138 = load i64, i64* %PC.i233
  %2139 = add i64 %2138, 7
  store i64 %2139, i64* %PC.i233
  %2140 = sext i64 %2137 to i128
  %2141 = and i128 %2140, -18446744073709551616
  %2142 = zext i64 %2137 to i128
  %2143 = or i128 %2141, %2142
  %2144 = mul i128 8000, %2143
  %2145 = trunc i128 %2144 to i64
  store i64 %2145, i64* %RCX.i234, align 8
  %2146 = sext i64 %2145 to i128
  %2147 = icmp ne i128 %2146, %2144
  %2148 = zext i1 %2147 to i8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2148, i8* %2149, align 1
  %2150 = trunc i128 %2144 to i32
  %2151 = and i32 %2150, 255
  %2152 = call i32 @llvm.ctpop.i32(i32 %2151)
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2155, i8* %2156, align 1
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2157, align 1
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2158, align 1
  %2159 = lshr i64 %2145, 63
  %2160 = trunc i64 %2159 to i8
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2160, i8* %2161, align 1
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2148, i8* %2162, align 1
  store %struct.Memory* %loadMem_400df3, %struct.Memory** %MEMORY
  %loadMem_400dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 1
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 5
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %2171 to i64*
  %2172 = load i64, i64* %RAX.i231
  %2173 = load i64, i64* %RCX.i232
  %2174 = load i64, i64* %PC.i230
  %2175 = add i64 %2174, 3
  store i64 %2175, i64* %PC.i230
  %2176 = add i64 %2173, %2172
  store i64 %2176, i64* %RAX.i231, align 8
  %2177 = icmp ult i64 %2176, %2172
  %2178 = icmp ult i64 %2176, %2173
  %2179 = or i1 %2177, %2178
  %2180 = zext i1 %2179 to i8
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2180, i8* %2181, align 1
  %2182 = trunc i64 %2176 to i32
  %2183 = and i32 %2182, 255
  %2184 = call i32 @llvm.ctpop.i32(i32 %2183)
  %2185 = trunc i32 %2184 to i8
  %2186 = and i8 %2185, 1
  %2187 = xor i8 %2186, 1
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2187, i8* %2188, align 1
  %2189 = xor i64 %2173, %2172
  %2190 = xor i64 %2189, %2176
  %2191 = lshr i64 %2190, 4
  %2192 = trunc i64 %2191 to i8
  %2193 = and i8 %2192, 1
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2193, i8* %2194, align 1
  %2195 = icmp eq i64 %2176, 0
  %2196 = zext i1 %2195 to i8
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2196, i8* %2197, align 1
  %2198 = lshr i64 %2176, 63
  %2199 = trunc i64 %2198 to i8
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2199, i8* %2200, align 1
  %2201 = lshr i64 %2172, 63
  %2202 = lshr i64 %2173, 63
  %2203 = xor i64 %2198, %2201
  %2204 = xor i64 %2198, %2202
  %2205 = add i64 %2203, %2204
  %2206 = icmp eq i64 %2205, 2
  %2207 = zext i1 %2206 to i8
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2207, i8* %2208, align 1
  store %struct.Memory* %loadMem_400dfa, %struct.Memory** %MEMORY
  %loadMem_400dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 7
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RDX.i228 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 15
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2217 to i64*
  %2218 = load i64, i64* %RBP.i229
  %2219 = sub i64 %2218, 60
  %2220 = load i64, i64* %PC.i227
  %2221 = add i64 %2220, 3
  store i64 %2221, i64* %PC.i227
  %2222 = inttoptr i64 %2219 to i32*
  %2223 = load i32, i32* %2222
  %2224 = zext i32 %2223 to i64
  store i64 %2224, i64* %RDX.i228, align 8
  store %struct.Memory* %loadMem_400dfd, %struct.Memory** %MEMORY
  %loadMem_400e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 33
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2227 to i64*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 7
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %RDX.i226 = bitcast %union.anon* %2230 to i64*
  %2231 = load i64, i64* %RDX.i226
  %2232 = load i64, i64* %PC.i225
  %2233 = add i64 %2232, 3
  store i64 %2233, i64* %PC.i225
  %2234 = trunc i64 %2231 to i32
  %2235 = sub i32 %2234, 1
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RDX.i226, align 8
  %2237 = icmp ult i32 %2234, 1
  %2238 = zext i1 %2237 to i8
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2238, i8* %2239, align 1
  %2240 = and i32 %2235, 255
  %2241 = call i32 @llvm.ctpop.i32(i32 %2240)
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  %2244 = xor i8 %2243, 1
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2244, i8* %2245, align 1
  %2246 = xor i64 1, %2231
  %2247 = trunc i64 %2246 to i32
  %2248 = xor i32 %2247, %2235
  %2249 = lshr i32 %2248, 4
  %2250 = trunc i32 %2249 to i8
  %2251 = and i8 %2250, 1
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2251, i8* %2252, align 1
  %2253 = icmp eq i32 %2235, 0
  %2254 = zext i1 %2253 to i8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2254, i8* %2255, align 1
  %2256 = lshr i32 %2235, 31
  %2257 = trunc i32 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2257, i8* %2258, align 1
  %2259 = lshr i32 %2234, 31
  %2260 = xor i32 %2256, %2259
  %2261 = add i32 %2260, %2259
  %2262 = icmp eq i32 %2261, 2
  %2263 = zext i1 %2262 to i8
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2263, i8* %2264, align 1
  store %struct.Memory* %loadMem_400e00, %struct.Memory** %MEMORY
  %loadMem_400e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 7
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %EDX.i223 = bitcast %union.anon* %2270 to i32*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 5
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %2273 to i64*
  %2274 = load i32, i32* %EDX.i223
  %2275 = zext i32 %2274 to i64
  %2276 = load i64, i64* %PC.i222
  %2277 = add i64 %2276, 3
  store i64 %2277, i64* %PC.i222
  %2278 = shl i64 %2275, 32
  %2279 = ashr exact i64 %2278, 32
  store i64 %2279, i64* %RCX.i224, align 8
  store %struct.Memory* %loadMem_400e03, %struct.Memory** %MEMORY
  %loadMem_400e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 1
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 5
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2289, i64 0, i64 2
  %YMM2.i221 = bitcast %union.VectorReg* %2290 to %"class.std::bitset"*
  %2291 = bitcast %"class.std::bitset"* %YMM2.i221 to i8*
  %2292 = bitcast %"class.std::bitset"* %YMM2.i221 to i8*
  %2293 = load i64, i64* %RAX.i219
  %2294 = load i64, i64* %RCX.i220
  %2295 = mul i64 %2294, 8
  %2296 = add i64 %2295, %2293
  %2297 = load i64, i64* %PC.i218
  %2298 = add i64 %2297, 5
  store i64 %2298, i64* %PC.i218
  %2299 = bitcast i8* %2292 to double*
  %2300 = load double, double* %2299, align 1
  %2301 = getelementptr inbounds i8, i8* %2292, i64 8
  %2302 = bitcast i8* %2301 to i64*
  %2303 = load i64, i64* %2302, align 1
  %2304 = inttoptr i64 %2296 to double*
  %2305 = load double, double* %2304
  %2306 = fsub double %2300, %2305
  %2307 = bitcast i8* %2291 to double*
  store double %2306, double* %2307, align 1
  %2308 = getelementptr inbounds i8, i8* %2291, i64 8
  %2309 = bitcast i8* %2308 to i64*
  store i64 %2303, i64* %2309, align 1
  store %struct.Memory* %loadMem_400e06, %struct.Memory** %MEMORY
  %loadMem_400e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2314 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2313, i64 0, i64 0
  %YMM0.i216 = bitcast %union.VectorReg* %2314 to %"class.std::bitset"*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2315, i64 0, i64 2
  %XMM2.i217 = bitcast %union.VectorReg* %2316 to %union.vec128_t*
  %2317 = bitcast %"class.std::bitset"* %YMM0.i216 to i8*
  %2318 = bitcast %"class.std::bitset"* %YMM0.i216 to i8*
  %2319 = bitcast %union.vec128_t* %XMM2.i217 to i8*
  %2320 = load i64, i64* %PC.i215
  %2321 = add i64 %2320, 4
  store i64 %2321, i64* %PC.i215
  %2322 = bitcast i8* %2318 to double*
  %2323 = load double, double* %2322, align 1
  %2324 = getelementptr inbounds i8, i8* %2318, i64 8
  %2325 = bitcast i8* %2324 to i64*
  %2326 = load i64, i64* %2325, align 1
  %2327 = bitcast i8* %2319 to double*
  %2328 = load double, double* %2327, align 1
  %2329 = fmul double %2323, %2328
  %2330 = bitcast i8* %2317 to double*
  store double %2329, double* %2330, align 1
  %2331 = getelementptr inbounds i8, i8* %2317, i64 8
  %2332 = bitcast i8* %2331 to i64*
  store i64 %2326, i64* %2332, align 1
  store %struct.Memory* %loadMem_400e0b, %struct.Memory** %MEMORY
  %loadMem_400e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2337 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2336, i64 0, i64 1
  %YMM1.i213 = bitcast %union.VectorReg* %2337 to %"class.std::bitset"*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2338, i64 0, i64 0
  %XMM0.i214 = bitcast %union.VectorReg* %2339 to %union.vec128_t*
  %2340 = bitcast %"class.std::bitset"* %YMM1.i213 to i8*
  %2341 = bitcast %"class.std::bitset"* %YMM1.i213 to i8*
  %2342 = bitcast %union.vec128_t* %XMM0.i214 to i8*
  %2343 = load i64, i64* %PC.i212
  %2344 = add i64 %2343, 4
  store i64 %2344, i64* %PC.i212
  %2345 = bitcast i8* %2341 to double*
  %2346 = load double, double* %2345, align 1
  %2347 = getelementptr inbounds i8, i8* %2341, i64 8
  %2348 = bitcast i8* %2347 to i64*
  %2349 = load i64, i64* %2348, align 1
  %2350 = bitcast i8* %2342 to double*
  %2351 = load double, double* %2350, align 1
  %2352 = fsub double %2346, %2351
  %2353 = bitcast i8* %2340 to double*
  store double %2352, double* %2353, align 1
  %2354 = getelementptr inbounds i8, i8* %2340, i64 8
  %2355 = bitcast i8* %2354 to i64*
  store i64 %2349, i64* %2355, align 1
  store %struct.Memory* %loadMem_400e0f, %struct.Memory** %MEMORY
  %loadMem_400e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 1
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 15
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %RBP.i211
  %2366 = sub i64 %2365, 24
  %2367 = load i64, i64* %PC.i209
  %2368 = add i64 %2367, 4
  store i64 %2368, i64* %PC.i209
  %2369 = inttoptr i64 %2366 to i64*
  %2370 = load i64, i64* %2369
  store i64 %2370, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_400e13, %struct.Memory** %MEMORY
  %loadMem_400e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 33
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2373 to i64*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 5
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 15
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2379 to i64*
  %2380 = load i64, i64* %RBP.i208
  %2381 = sub i64 %2380, 56
  %2382 = load i64, i64* %PC.i206
  %2383 = add i64 %2382, 4
  store i64 %2383, i64* %PC.i206
  %2384 = inttoptr i64 %2381 to i32*
  %2385 = load i32, i32* %2384
  %2386 = sext i32 %2385 to i64
  store i64 %2386, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_400e17, %struct.Memory** %MEMORY
  %loadMem_400e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 5
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %RCX.i205
  %2394 = load i64, i64* %PC.i204
  %2395 = add i64 %2394, 7
  store i64 %2395, i64* %PC.i204
  %2396 = sext i64 %2393 to i128
  %2397 = and i128 %2396, -18446744073709551616
  %2398 = zext i64 %2393 to i128
  %2399 = or i128 %2397, %2398
  %2400 = mul i128 8000, %2399
  %2401 = trunc i128 %2400 to i64
  store i64 %2401, i64* %RCX.i205, align 8
  %2402 = sext i64 %2401 to i128
  %2403 = icmp ne i128 %2402, %2400
  %2404 = zext i1 %2403 to i8
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2404, i8* %2405, align 1
  %2406 = trunc i128 %2400 to i32
  %2407 = and i32 %2406, 255
  %2408 = call i32 @llvm.ctpop.i32(i32 %2407)
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  %2411 = xor i8 %2410, 1
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2411, i8* %2412, align 1
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2413, align 1
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2414, align 1
  %2415 = lshr i64 %2401, 63
  %2416 = trunc i64 %2415 to i8
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2416, i8* %2417, align 1
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2404, i8* %2418, align 1
  store %struct.Memory* %loadMem_400e1b, %struct.Memory** %MEMORY
  %loadMem_400e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 1
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %2424 to i64*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 5
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %2427 to i64*
  %2428 = load i64, i64* %RAX.i202
  %2429 = load i64, i64* %RCX.i203
  %2430 = load i64, i64* %PC.i201
  %2431 = add i64 %2430, 3
  store i64 %2431, i64* %PC.i201
  %2432 = add i64 %2429, %2428
  store i64 %2432, i64* %RAX.i202, align 8
  %2433 = icmp ult i64 %2432, %2428
  %2434 = icmp ult i64 %2432, %2429
  %2435 = or i1 %2433, %2434
  %2436 = zext i1 %2435 to i8
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2436, i8* %2437, align 1
  %2438 = trunc i64 %2432 to i32
  %2439 = and i32 %2438, 255
  %2440 = call i32 @llvm.ctpop.i32(i32 %2439)
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  %2443 = xor i8 %2442, 1
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2443, i8* %2444, align 1
  %2445 = xor i64 %2429, %2428
  %2446 = xor i64 %2445, %2432
  %2447 = lshr i64 %2446, 4
  %2448 = trunc i64 %2447 to i8
  %2449 = and i8 %2448, 1
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2449, i8* %2450, align 1
  %2451 = icmp eq i64 %2432, 0
  %2452 = zext i1 %2451 to i8
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2452, i8* %2453, align 1
  %2454 = lshr i64 %2432, 63
  %2455 = trunc i64 %2454 to i8
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2455, i8* %2456, align 1
  %2457 = lshr i64 %2428, 63
  %2458 = lshr i64 %2429, 63
  %2459 = xor i64 %2454, %2457
  %2460 = xor i64 %2454, %2458
  %2461 = add i64 %2459, %2460
  %2462 = icmp eq i64 %2461, 2
  %2463 = zext i1 %2462 to i8
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2463, i8* %2464, align 1
  store %struct.Memory* %loadMem_400e22, %struct.Memory** %MEMORY
  %loadMem_400e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 33
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2467 to i64*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 5
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 15
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %2473 to i64*
  %2474 = load i64, i64* %RBP.i200
  %2475 = sub i64 %2474, 60
  %2476 = load i64, i64* %PC.i198
  %2477 = add i64 %2476, 4
  store i64 %2477, i64* %PC.i198
  %2478 = inttoptr i64 %2475 to i32*
  %2479 = load i32, i32* %2478
  %2480 = sext i32 %2479 to i64
  store i64 %2480, i64* %RCX.i199, align 8
  store %struct.Memory* %loadMem_400e25, %struct.Memory** %MEMORY
  %loadMem_400e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 1
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 5
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2491 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2490, i64 0, i64 1
  %XMM1.i197 = bitcast %union.VectorReg* %2491 to %union.vec128_t*
  %2492 = load i64, i64* %RAX.i195
  %2493 = load i64, i64* %RCX.i196
  %2494 = mul i64 %2493, 8
  %2495 = add i64 %2494, %2492
  %2496 = bitcast %union.vec128_t* %XMM1.i197 to i8*
  %2497 = load i64, i64* %PC.i194
  %2498 = add i64 %2497, 5
  store i64 %2498, i64* %PC.i194
  %2499 = bitcast i8* %2496 to double*
  %2500 = load double, double* %2499, align 1
  %2501 = inttoptr i64 %2495 to double*
  store double %2500, double* %2501
  store %struct.Memory* %loadMem_400e29, %struct.Memory** %MEMORY
  %loadMem_400e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 33
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 1
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %2507 to i64*
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 15
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %2510 to i64*
  %2511 = load i64, i64* %RBP.i193
  %2512 = sub i64 %2511, 60
  %2513 = load i64, i64* %PC.i191
  %2514 = add i64 %2513, 3
  store i64 %2514, i64* %PC.i191
  %2515 = inttoptr i64 %2512 to i32*
  %2516 = load i32, i32* %2515
  %2517 = zext i32 %2516 to i64
  store i64 %2517, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_400e2e, %struct.Memory** %MEMORY
  %loadMem_400e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 33
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2520 to i64*
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 1
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %2523 to i64*
  %2524 = load i64, i64* %RAX.i190
  %2525 = load i64, i64* %PC.i189
  %2526 = add i64 %2525, 3
  store i64 %2526, i64* %PC.i189
  %2527 = trunc i64 %2524 to i32
  %2528 = add i32 1, %2527
  %2529 = zext i32 %2528 to i64
  store i64 %2529, i64* %RAX.i190, align 8
  %2530 = icmp ult i32 %2528, %2527
  %2531 = icmp ult i32 %2528, 1
  %2532 = or i1 %2530, %2531
  %2533 = zext i1 %2532 to i8
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2533, i8* %2534, align 1
  %2535 = and i32 %2528, 255
  %2536 = call i32 @llvm.ctpop.i32(i32 %2535)
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  %2539 = xor i8 %2538, 1
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2539, i8* %2540, align 1
  %2541 = xor i64 1, %2524
  %2542 = trunc i64 %2541 to i32
  %2543 = xor i32 %2542, %2528
  %2544 = lshr i32 %2543, 4
  %2545 = trunc i32 %2544 to i8
  %2546 = and i8 %2545, 1
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2546, i8* %2547, align 1
  %2548 = icmp eq i32 %2528, 0
  %2549 = zext i1 %2548 to i8
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2549, i8* %2550, align 1
  %2551 = lshr i32 %2528, 31
  %2552 = trunc i32 %2551 to i8
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2552, i8* %2553, align 1
  %2554 = lshr i32 %2527, 31
  %2555 = xor i32 %2551, %2554
  %2556 = add i32 %2555, %2551
  %2557 = icmp eq i32 %2556, 2
  %2558 = zext i1 %2557 to i8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2558, i8* %2559, align 1
  store %struct.Memory* %loadMem_400e31, %struct.Memory** %MEMORY
  %loadMem_400e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 33
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2562 to i64*
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 1
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %EAX.i187 = bitcast %union.anon* %2565 to i32*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 15
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %2568 to i64*
  %2569 = load i64, i64* %RBP.i188
  %2570 = sub i64 %2569, 60
  %2571 = load i32, i32* %EAX.i187
  %2572 = zext i32 %2571 to i64
  %2573 = load i64, i64* %PC.i186
  %2574 = add i64 %2573, 3
  store i64 %2574, i64* %PC.i186
  %2575 = inttoptr i64 %2570 to i32*
  store i32 %2571, i32* %2575
  store %struct.Memory* %loadMem_400e34, %struct.Memory** %MEMORY
  %loadMem_400e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 33
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2578 to i64*
  %2579 = load i64, i64* %PC.i185
  %2580 = add i64 %2579, -150
  %2581 = load i64, i64* %PC.i185
  %2582 = add i64 %2581, 5
  store i64 %2582, i64* %PC.i185
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2580, i64* %2583, align 8
  store %struct.Memory* %loadMem_400e37, %struct.Memory** %MEMORY
  br label %block_.L_400da1

block_.L_400e3c:                                  ; preds = %block_.L_400da1
  %loadMem_400e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 33
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2586 to i64*
  %2587 = load i64, i64* %PC.i184
  %2588 = add i64 %2587, 5
  %2589 = load i64, i64* %PC.i184
  %2590 = add i64 %2589, 5
  store i64 %2590, i64* %PC.i184
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2588, i64* %2591, align 8
  store %struct.Memory* %loadMem_400e3c, %struct.Memory** %MEMORY
  br label %block_.L_400e41

block_.L_400e41:                                  ; preds = %block_.L_400e3c
  %loadMem_400e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 33
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 1
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 15
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %2600 to i64*
  %2601 = load i64, i64* %RBP.i183
  %2602 = sub i64 %2601, 56
  %2603 = load i64, i64* %PC.i181
  %2604 = add i64 %2603, 3
  store i64 %2604, i64* %PC.i181
  %2605 = inttoptr i64 %2602 to i32*
  %2606 = load i32, i32* %2605
  %2607 = zext i32 %2606 to i64
  store i64 %2607, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_400e41, %struct.Memory** %MEMORY
  %loadMem_400e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 1
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %RAX.i180
  %2615 = load i64, i64* %PC.i179
  %2616 = add i64 %2615, 3
  store i64 %2616, i64* %PC.i179
  %2617 = trunc i64 %2614 to i32
  %2618 = add i32 1, %2617
  %2619 = zext i32 %2618 to i64
  store i64 %2619, i64* %RAX.i180, align 8
  %2620 = icmp ult i32 %2618, %2617
  %2621 = icmp ult i32 %2618, 1
  %2622 = or i1 %2620, %2621
  %2623 = zext i1 %2622 to i8
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2623, i8* %2624, align 1
  %2625 = and i32 %2618, 255
  %2626 = call i32 @llvm.ctpop.i32(i32 %2625)
  %2627 = trunc i32 %2626 to i8
  %2628 = and i8 %2627, 1
  %2629 = xor i8 %2628, 1
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2629, i8* %2630, align 1
  %2631 = xor i64 1, %2614
  %2632 = trunc i64 %2631 to i32
  %2633 = xor i32 %2632, %2618
  %2634 = lshr i32 %2633, 4
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2636, i8* %2637, align 1
  %2638 = icmp eq i32 %2618, 0
  %2639 = zext i1 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2639, i8* %2640, align 1
  %2641 = lshr i32 %2618, 31
  %2642 = trunc i32 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2642, i8* %2643, align 1
  %2644 = lshr i32 %2617, 31
  %2645 = xor i32 %2641, %2644
  %2646 = add i32 %2645, %2641
  %2647 = icmp eq i32 %2646, 2
  %2648 = zext i1 %2647 to i8
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2648, i8* %2649, align 1
  store %struct.Memory* %loadMem_400e44, %struct.Memory** %MEMORY
  %loadMem_400e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 33
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2652 to i64*
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 1
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %EAX.i177 = bitcast %union.anon* %2655 to i32*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 15
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %2658 to i64*
  %2659 = load i64, i64* %RBP.i178
  %2660 = sub i64 %2659, 56
  %2661 = load i32, i32* %EAX.i177
  %2662 = zext i32 %2661 to i64
  %2663 = load i64, i64* %PC.i176
  %2664 = add i64 %2663, 3
  store i64 %2664, i64* %PC.i176
  %2665 = inttoptr i64 %2660 to i32*
  store i32 %2661, i32* %2665
  store %struct.Memory* %loadMem_400e47, %struct.Memory** %MEMORY
  %loadMem_400e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2668 to i64*
  %2669 = load i64, i64* %PC.i175
  %2670 = add i64 %2669, -188
  %2671 = load i64, i64* %PC.i175
  %2672 = add i64 %2671, 5
  store i64 %2672, i64* %PC.i175
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2670, i64* %2673, align 8
  store %struct.Memory* %loadMem_400e4a, %struct.Memory** %MEMORY
  br label %block_.L_400d8e

block_.L_400e4f:                                  ; preds = %block_.L_400d8e
  %loadMem_400e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 15
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %RBP.i174
  %2681 = sub i64 %2680, 56
  %2682 = load i64, i64* %PC.i173
  %2683 = add i64 %2682, 7
  store i64 %2683, i64* %PC.i173
  %2684 = inttoptr i64 %2681 to i32*
  store i32 0, i32* %2684
  store %struct.Memory* %loadMem_400e4f, %struct.Memory** %MEMORY
  br label %block_.L_400e56

block_.L_400e56:                                  ; preds = %block_.L_400f4e, %block_.L_400e4f
  %loadMem_400e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 33
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 1
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 15
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2693 to i64*
  %2694 = load i64, i64* %RBP.i172
  %2695 = sub i64 %2694, 56
  %2696 = load i64, i64* %PC.i170
  %2697 = add i64 %2696, 3
  store i64 %2697, i64* %PC.i170
  %2698 = inttoptr i64 %2695 to i32*
  %2699 = load i32, i32* %2698
  %2700 = zext i32 %2699 to i64
  store i64 %2700, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_400e56, %struct.Memory** %MEMORY
  %loadMem_400e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 5
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 15
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %RBP.i169
  %2711 = sub i64 %2710, 8
  %2712 = load i64, i64* %PC.i167
  %2713 = add i64 %2712, 3
  store i64 %2713, i64* %PC.i167
  %2714 = inttoptr i64 %2711 to i32*
  %2715 = load i32, i32* %2714
  %2716 = zext i32 %2715 to i64
  store i64 %2716, i64* %RCX.i168, align 8
  store %struct.Memory* %loadMem_400e59, %struct.Memory** %MEMORY
  %loadMem_400e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 5
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %RCX.i166
  %2724 = load i64, i64* %PC.i165
  %2725 = add i64 %2724, 3
  store i64 %2725, i64* %PC.i165
  %2726 = trunc i64 %2723 to i32
  %2727 = sub i32 %2726, 1
  %2728 = zext i32 %2727 to i64
  store i64 %2728, i64* %RCX.i166, align 8
  %2729 = icmp ult i32 %2726, 1
  %2730 = zext i1 %2729 to i8
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2730, i8* %2731, align 1
  %2732 = and i32 %2727, 255
  %2733 = call i32 @llvm.ctpop.i32(i32 %2732)
  %2734 = trunc i32 %2733 to i8
  %2735 = and i8 %2734, 1
  %2736 = xor i8 %2735, 1
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2736, i8* %2737, align 1
  %2738 = xor i64 1, %2723
  %2739 = trunc i64 %2738 to i32
  %2740 = xor i32 %2739, %2727
  %2741 = lshr i32 %2740, 4
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2743, i8* %2744, align 1
  %2745 = icmp eq i32 %2727, 0
  %2746 = zext i1 %2745 to i8
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2746, i8* %2747, align 1
  %2748 = lshr i32 %2727, 31
  %2749 = trunc i32 %2748 to i8
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2749, i8* %2750, align 1
  %2751 = lshr i32 %2726, 31
  %2752 = xor i32 %2748, %2751
  %2753 = add i32 %2752, %2751
  %2754 = icmp eq i32 %2753, 2
  %2755 = zext i1 %2754 to i8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2755, i8* %2756, align 1
  store %struct.Memory* %loadMem_400e5c, %struct.Memory** %MEMORY
  %loadMem_400e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 33
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2759 to i64*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 1
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %2762 to i32*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 5
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %ECX.i164 = bitcast %union.anon* %2765 to i32*
  %2766 = load i32, i32* %EAX.i163
  %2767 = zext i32 %2766 to i64
  %2768 = load i32, i32* %ECX.i164
  %2769 = zext i32 %2768 to i64
  %2770 = load i64, i64* %PC.i162
  %2771 = add i64 %2770, 2
  store i64 %2771, i64* %PC.i162
  %2772 = sub i32 %2766, %2768
  %2773 = icmp ult i32 %2766, %2768
  %2774 = zext i1 %2773 to i8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2774, i8* %2775, align 1
  %2776 = and i32 %2772, 255
  %2777 = call i32 @llvm.ctpop.i32(i32 %2776)
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  %2780 = xor i8 %2779, 1
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2780, i8* %2781, align 1
  %2782 = xor i64 %2769, %2767
  %2783 = trunc i64 %2782 to i32
  %2784 = xor i32 %2783, %2772
  %2785 = lshr i32 %2784, 4
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2787, i8* %2788, align 1
  %2789 = icmp eq i32 %2772, 0
  %2790 = zext i1 %2789 to i8
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2790, i8* %2791, align 1
  %2792 = lshr i32 %2772, 31
  %2793 = trunc i32 %2792 to i8
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2793, i8* %2794, align 1
  %2795 = lshr i32 %2766, 31
  %2796 = lshr i32 %2768, 31
  %2797 = xor i32 %2796, %2795
  %2798 = xor i32 %2792, %2795
  %2799 = add i32 %2798, %2797
  %2800 = icmp eq i32 %2799, 2
  %2801 = zext i1 %2800 to i8
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2801, i8* %2802, align 1
  store %struct.Memory* %loadMem_400e5f, %struct.Memory** %MEMORY
  %loadMem_400e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 33
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2805 to i64*
  %2806 = load i64, i64* %PC.i161
  %2807 = add i64 %2806, 251
  %2808 = load i64, i64* %PC.i161
  %2809 = add i64 %2808, 6
  %2810 = load i64, i64* %PC.i161
  %2811 = add i64 %2810, 6
  store i64 %2811, i64* %PC.i161
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2813 = load i8, i8* %2812, align 1
  %2814 = icmp ne i8 %2813, 0
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2816 = load i8, i8* %2815, align 1
  %2817 = icmp ne i8 %2816, 0
  %2818 = xor i1 %2814, %2817
  %2819 = xor i1 %2818, true
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %BRANCH_TAKEN, align 1
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2822 = select i1 %2818, i64 %2809, i64 %2807
  store i64 %2822, i64* %2821, align 8
  store %struct.Memory* %loadMem_400e61, %struct.Memory** %MEMORY
  %loadBr_400e61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e61 = icmp eq i8 %loadBr_400e61, 1
  br i1 %cmpBr_400e61, label %block_.L_400f5c, label %block_400e67

block_400e67:                                     ; preds = %block_.L_400e56
  %loadMem_400e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 15
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %2828 to i64*
  %2829 = load i64, i64* %RBP.i160
  %2830 = sub i64 %2829, 60
  %2831 = load i64, i64* %PC.i159
  %2832 = add i64 %2831, 7
  store i64 %2832, i64* %PC.i159
  %2833 = inttoptr i64 %2830 to i32*
  store i32 0, i32* %2833
  store %struct.Memory* %loadMem_400e67, %struct.Memory** %MEMORY
  br label %block_.L_400e6e

block_.L_400e6e:                                  ; preds = %block_400e7f, %block_400e67
  %loadMem_400e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 33
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 1
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %2839 to i64*
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 15
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %2842 to i64*
  %2843 = load i64, i64* %RBP.i158
  %2844 = sub i64 %2843, 60
  %2845 = load i64, i64* %PC.i156
  %2846 = add i64 %2845, 3
  store i64 %2846, i64* %PC.i156
  %2847 = inttoptr i64 %2844 to i32*
  %2848 = load i32, i32* %2847
  %2849 = zext i32 %2848 to i64
  store i64 %2849, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_400e6e, %struct.Memory** %MEMORY
  %loadMem_400e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 33
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 5
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %2855 to i64*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 15
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %2858 to i64*
  %2859 = load i64, i64* %RBP.i155
  %2860 = sub i64 %2859, 12
  %2861 = load i64, i64* %PC.i153
  %2862 = add i64 %2861, 3
  store i64 %2862, i64* %PC.i153
  %2863 = inttoptr i64 %2860 to i32*
  %2864 = load i32, i32* %2863
  %2865 = zext i32 %2864 to i64
  store i64 %2865, i64* %RCX.i154, align 8
  store %struct.Memory* %loadMem_400e71, %struct.Memory** %MEMORY
  %loadMem_400e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 33
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 5
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %RCX.i152
  %2873 = load i64, i64* %PC.i151
  %2874 = add i64 %2873, 3
  store i64 %2874, i64* %PC.i151
  %2875 = trunc i64 %2872 to i32
  %2876 = sub i32 %2875, 1
  %2877 = zext i32 %2876 to i64
  store i64 %2877, i64* %RCX.i152, align 8
  %2878 = icmp ult i32 %2875, 1
  %2879 = zext i1 %2878 to i8
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2879, i8* %2880, align 1
  %2881 = and i32 %2876, 255
  %2882 = call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2885, i8* %2886, align 1
  %2887 = xor i64 1, %2872
  %2888 = trunc i64 %2887 to i32
  %2889 = xor i32 %2888, %2876
  %2890 = lshr i32 %2889, 4
  %2891 = trunc i32 %2890 to i8
  %2892 = and i8 %2891, 1
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2892, i8* %2893, align 1
  %2894 = icmp eq i32 %2876, 0
  %2895 = zext i1 %2894 to i8
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2895, i8* %2896, align 1
  %2897 = lshr i32 %2876, 31
  %2898 = trunc i32 %2897 to i8
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2898, i8* %2899, align 1
  %2900 = lshr i32 %2875, 31
  %2901 = xor i32 %2897, %2900
  %2902 = add i32 %2901, %2900
  %2903 = icmp eq i32 %2902, 2
  %2904 = zext i1 %2903 to i8
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2904, i8* %2905, align 1
  store %struct.Memory* %loadMem_400e74, %struct.Memory** %MEMORY
  %loadMem_400e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 33
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2908 to i64*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 1
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %EAX.i150 = bitcast %union.anon* %2911 to i32*
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 5
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2914 to i32*
  %2915 = load i32, i32* %EAX.i150
  %2916 = zext i32 %2915 to i64
  %2917 = load i32, i32* %ECX.i
  %2918 = zext i32 %2917 to i64
  %2919 = load i64, i64* %PC.i149
  %2920 = add i64 %2919, 2
  store i64 %2920, i64* %PC.i149
  %2921 = sub i32 %2915, %2917
  %2922 = icmp ult i32 %2915, %2917
  %2923 = zext i1 %2922 to i8
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2923, i8* %2924, align 1
  %2925 = and i32 %2921, 255
  %2926 = call i32 @llvm.ctpop.i32(i32 %2925)
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  %2929 = xor i8 %2928, 1
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2929, i8* %2930, align 1
  %2931 = xor i64 %2918, %2916
  %2932 = trunc i64 %2931 to i32
  %2933 = xor i32 %2932, %2921
  %2934 = lshr i32 %2933, 4
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2936, i8* %2937, align 1
  %2938 = icmp eq i32 %2921, 0
  %2939 = zext i1 %2938 to i8
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2939, i8* %2940, align 1
  %2941 = lshr i32 %2921, 31
  %2942 = trunc i32 %2941 to i8
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2942, i8* %2943, align 1
  %2944 = lshr i32 %2915, 31
  %2945 = lshr i32 %2917, 31
  %2946 = xor i32 %2945, %2944
  %2947 = xor i32 %2941, %2944
  %2948 = add i32 %2947, %2946
  %2949 = icmp eq i32 %2948, 2
  %2950 = zext i1 %2949 to i8
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2950, i8* %2951, align 1
  store %struct.Memory* %loadMem_400e77, %struct.Memory** %MEMORY
  %loadMem_400e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2954 to i64*
  %2955 = load i64, i64* %PC.i148
  %2956 = add i64 %2955, 208
  %2957 = load i64, i64* %PC.i148
  %2958 = add i64 %2957, 6
  %2959 = load i64, i64* %PC.i148
  %2960 = add i64 %2959, 6
  store i64 %2960, i64* %PC.i148
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2962 = load i8, i8* %2961, align 1
  %2963 = icmp ne i8 %2962, 0
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2965 = load i8, i8* %2964, align 1
  %2966 = icmp ne i8 %2965, 0
  %2967 = xor i1 %2963, %2966
  %2968 = xor i1 %2967, true
  %2969 = zext i1 %2968 to i8
  store i8 %2969, i8* %BRANCH_TAKEN, align 1
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2971 = select i1 %2967, i64 %2958, i64 %2956
  store i64 %2971, i64* %2970, align 8
  store %struct.Memory* %loadMem_400e79, %struct.Memory** %MEMORY
  %loadBr_400e79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e79 = icmp eq i8 %loadBr_400e79, 1
  br i1 %cmpBr_400e79, label %block_.L_400f49, label %block_400e7f

block_400e7f:                                     ; preds = %block_.L_400e6e
  %loadMem_400e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 33
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2976 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2975, i64 0, i64 0
  %YMM0.i147 = bitcast %union.VectorReg* %2976 to %"class.std::bitset"*
  %2977 = bitcast %"class.std::bitset"* %YMM0.i147 to i8*
  %2978 = load i64, i64* %PC.i146
  %2979 = add i64 %2978, 2057
  %2980 = load i64, i64* %PC.i146
  %2981 = add i64 %2980, 8
  store i64 %2981, i64* %PC.i146
  %2982 = inttoptr i64 %2979 to double*
  %2983 = load double, double* %2982
  %2984 = bitcast i8* %2977 to double*
  store double %2983, double* %2984, align 1
  %2985 = getelementptr inbounds i8, i8* %2977, i64 8
  %2986 = bitcast i8* %2985 to double*
  store double 0.000000e+00, double* %2986, align 1
  store %struct.Memory* %loadMem_400e7f, %struct.Memory** %MEMORY
  %loadMem_400e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 33
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 1
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 15
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %2995 to i64*
  %2996 = load i64, i64* %RBP.i145
  %2997 = sub i64 %2996, 40
  %2998 = load i64, i64* %PC.i143
  %2999 = add i64 %2998, 4
  store i64 %2999, i64* %PC.i143
  %3000 = inttoptr i64 %2997 to i64*
  %3001 = load i64, i64* %3000
  store i64 %3001, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_400e87, %struct.Memory** %MEMORY
  %loadMem_400e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 5
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %3007 to i64*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 15
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %3010 to i64*
  %3011 = load i64, i64* %RBP.i142
  %3012 = sub i64 %3011, 56
  %3013 = load i64, i64* %PC.i140
  %3014 = add i64 %3013, 4
  store i64 %3014, i64* %PC.i140
  %3015 = inttoptr i64 %3012 to i32*
  %3016 = load i32, i32* %3015
  %3017 = sext i32 %3016 to i64
  store i64 %3017, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_400e8b, %struct.Memory** %MEMORY
  %loadMem_400e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 5
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %3023 to i64*
  %3024 = load i64, i64* %RCX.i139
  %3025 = load i64, i64* %PC.i138
  %3026 = add i64 %3025, 7
  store i64 %3026, i64* %PC.i138
  %3027 = sext i64 %3024 to i128
  %3028 = and i128 %3027, -18446744073709551616
  %3029 = zext i64 %3024 to i128
  %3030 = or i128 %3028, %3029
  %3031 = mul i128 8000, %3030
  %3032 = trunc i128 %3031 to i64
  store i64 %3032, i64* %RCX.i139, align 8
  %3033 = sext i64 %3032 to i128
  %3034 = icmp ne i128 %3033, %3031
  %3035 = zext i1 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3035, i8* %3036, align 1
  %3037 = trunc i128 %3031 to i32
  %3038 = and i32 %3037, 255
  %3039 = call i32 @llvm.ctpop.i32(i32 %3038)
  %3040 = trunc i32 %3039 to i8
  %3041 = and i8 %3040, 1
  %3042 = xor i8 %3041, 1
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3042, i8* %3043, align 1
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3044, align 1
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3045, align 1
  %3046 = lshr i64 %3032, 63
  %3047 = trunc i64 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3047, i8* %3048, align 1
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3035, i8* %3049, align 1
  store %struct.Memory* %loadMem_400e8f, %struct.Memory** %MEMORY
  %loadMem_400e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 33
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 1
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %3055 to i64*
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 5
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %3058 to i64*
  %3059 = load i64, i64* %RAX.i136
  %3060 = load i64, i64* %RCX.i137
  %3061 = load i64, i64* %PC.i135
  %3062 = add i64 %3061, 3
  store i64 %3062, i64* %PC.i135
  %3063 = add i64 %3060, %3059
  store i64 %3063, i64* %RAX.i136, align 8
  %3064 = icmp ult i64 %3063, %3059
  %3065 = icmp ult i64 %3063, %3060
  %3066 = or i1 %3064, %3065
  %3067 = zext i1 %3066 to i8
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3067, i8* %3068, align 1
  %3069 = trunc i64 %3063 to i32
  %3070 = and i32 %3069, 255
  %3071 = call i32 @llvm.ctpop.i32(i32 %3070)
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  %3074 = xor i8 %3073, 1
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3074, i8* %3075, align 1
  %3076 = xor i64 %3060, %3059
  %3077 = xor i64 %3076, %3063
  %3078 = lshr i64 %3077, 4
  %3079 = trunc i64 %3078 to i8
  %3080 = and i8 %3079, 1
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3080, i8* %3081, align 1
  %3082 = icmp eq i64 %3063, 0
  %3083 = zext i1 %3082 to i8
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3083, i8* %3084, align 1
  %3085 = lshr i64 %3063, 63
  %3086 = trunc i64 %3085 to i8
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3086, i8* %3087, align 1
  %3088 = lshr i64 %3059, 63
  %3089 = lshr i64 %3060, 63
  %3090 = xor i64 %3085, %3088
  %3091 = xor i64 %3085, %3089
  %3092 = add i64 %3090, %3091
  %3093 = icmp eq i64 %3092, 2
  %3094 = zext i1 %3093 to i8
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3094, i8* %3095, align 1
  store %struct.Memory* %loadMem_400e96, %struct.Memory** %MEMORY
  %loadMem_400e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 5
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 15
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %3104 to i64*
  %3105 = load i64, i64* %RBP.i134
  %3106 = sub i64 %3105, 60
  %3107 = load i64, i64* %PC.i132
  %3108 = add i64 %3107, 4
  store i64 %3108, i64* %PC.i132
  %3109 = inttoptr i64 %3106 to i32*
  %3110 = load i32, i32* %3109
  %3111 = sext i32 %3110 to i64
  store i64 %3111, i64* %RCX.i133, align 8
  store %struct.Memory* %loadMem_400e99, %struct.Memory** %MEMORY
  %loadMem_400e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 33
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 1
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %3117 to i64*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 5
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3121, i64 0, i64 1
  %YMM1.i131 = bitcast %union.VectorReg* %3122 to %"class.std::bitset"*
  %3123 = bitcast %"class.std::bitset"* %YMM1.i131 to i8*
  %3124 = load i64, i64* %RAX.i129
  %3125 = load i64, i64* %RCX.i130
  %3126 = mul i64 %3125, 8
  %3127 = add i64 %3126, %3124
  %3128 = load i64, i64* %PC.i128
  %3129 = add i64 %3128, 5
  store i64 %3129, i64* %PC.i128
  %3130 = inttoptr i64 %3127 to double*
  %3131 = load double, double* %3130
  %3132 = bitcast i8* %3123 to double*
  store double %3131, double* %3132, align 1
  %3133 = getelementptr inbounds i8, i8* %3123, i64 8
  %3134 = bitcast i8* %3133 to double*
  store double 0.000000e+00, double* %3134, align 1
  store %struct.Memory* %loadMem_400e9d, %struct.Memory** %MEMORY
  %loadMem_400ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 33
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %3137 to i64*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 1
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 15
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %3143 to i64*
  %3144 = load i64, i64* %RBP.i127
  %3145 = sub i64 %3144, 24
  %3146 = load i64, i64* %PC.i125
  %3147 = add i64 %3146, 4
  store i64 %3147, i64* %PC.i125
  %3148 = inttoptr i64 %3145 to i64*
  %3149 = load i64, i64* %3148
  store i64 %3149, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_400ea2, %struct.Memory** %MEMORY
  %loadMem_400ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 33
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3152 to i64*
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 5
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 15
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %3158 to i64*
  %3159 = load i64, i64* %RBP.i124
  %3160 = sub i64 %3159, 56
  %3161 = load i64, i64* %PC.i122
  %3162 = add i64 %3161, 4
  store i64 %3162, i64* %PC.i122
  %3163 = inttoptr i64 %3160 to i32*
  %3164 = load i32, i32* %3163
  %3165 = sext i32 %3164 to i64
  store i64 %3165, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_400ea6, %struct.Memory** %MEMORY
  %loadMem_400eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 33
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3168 to i64*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 5
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %3171 to i64*
  %3172 = load i64, i64* %RCX.i121
  %3173 = load i64, i64* %PC.i120
  %3174 = add i64 %3173, 7
  store i64 %3174, i64* %PC.i120
  %3175 = sext i64 %3172 to i128
  %3176 = and i128 %3175, -18446744073709551616
  %3177 = zext i64 %3172 to i128
  %3178 = or i128 %3176, %3177
  %3179 = mul i128 8000, %3178
  %3180 = trunc i128 %3179 to i64
  store i64 %3180, i64* %RCX.i121, align 8
  %3181 = sext i64 %3180 to i128
  %3182 = icmp ne i128 %3181, %3179
  %3183 = zext i1 %3182 to i8
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3183, i8* %3184, align 1
  %3185 = trunc i128 %3179 to i32
  %3186 = and i32 %3185, 255
  %3187 = call i32 @llvm.ctpop.i32(i32 %3186)
  %3188 = trunc i32 %3187 to i8
  %3189 = and i8 %3188, 1
  %3190 = xor i8 %3189, 1
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3190, i8* %3191, align 1
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3192, align 1
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3193, align 1
  %3194 = lshr i64 %3180, 63
  %3195 = trunc i64 %3194 to i8
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3195, i8* %3196, align 1
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3183, i8* %3197, align 1
  store %struct.Memory* %loadMem_400eaa, %struct.Memory** %MEMORY
  %loadMem_400eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 33
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 1
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 5
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %3206 to i64*
  %3207 = load i64, i64* %RAX.i118
  %3208 = load i64, i64* %RCX.i119
  %3209 = load i64, i64* %PC.i117
  %3210 = add i64 %3209, 3
  store i64 %3210, i64* %PC.i117
  %3211 = add i64 %3208, %3207
  store i64 %3211, i64* %RAX.i118, align 8
  %3212 = icmp ult i64 %3211, %3207
  %3213 = icmp ult i64 %3211, %3208
  %3214 = or i1 %3212, %3213
  %3215 = zext i1 %3214 to i8
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3215, i8* %3216, align 1
  %3217 = trunc i64 %3211 to i32
  %3218 = and i32 %3217, 255
  %3219 = call i32 @llvm.ctpop.i32(i32 %3218)
  %3220 = trunc i32 %3219 to i8
  %3221 = and i8 %3220, 1
  %3222 = xor i8 %3221, 1
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3222, i8* %3223, align 1
  %3224 = xor i64 %3208, %3207
  %3225 = xor i64 %3224, %3211
  %3226 = lshr i64 %3225, 4
  %3227 = trunc i64 %3226 to i8
  %3228 = and i8 %3227, 1
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3228, i8* %3229, align 1
  %3230 = icmp eq i64 %3211, 0
  %3231 = zext i1 %3230 to i8
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3231, i8* %3232, align 1
  %3233 = lshr i64 %3211, 63
  %3234 = trunc i64 %3233 to i8
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3234, i8* %3235, align 1
  %3236 = lshr i64 %3207, 63
  %3237 = lshr i64 %3208, 63
  %3238 = xor i64 %3233, %3236
  %3239 = xor i64 %3233, %3237
  %3240 = add i64 %3238, %3239
  %3241 = icmp eq i64 %3240, 2
  %3242 = zext i1 %3241 to i8
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3242, i8* %3243, align 1
  store %struct.Memory* %loadMem_400eb1, %struct.Memory** %MEMORY
  %loadMem_400eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 7
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %RDX.i115 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 15
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %3252 to i64*
  %3253 = load i64, i64* %RBP.i116
  %3254 = sub i64 %3253, 60
  %3255 = load i64, i64* %PC.i114
  %3256 = add i64 %3255, 3
  store i64 %3256, i64* %PC.i114
  %3257 = inttoptr i64 %3254 to i32*
  %3258 = load i32, i32* %3257
  %3259 = zext i32 %3258 to i64
  store i64 %3259, i64* %RDX.i115, align 8
  store %struct.Memory* %loadMem_400eb4, %struct.Memory** %MEMORY
  %loadMem_400eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 7
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %3265 to i64*
  %3266 = load i64, i64* %RDX.i113
  %3267 = load i64, i64* %PC.i112
  %3268 = add i64 %3267, 3
  store i64 %3268, i64* %PC.i112
  %3269 = trunc i64 %3266 to i32
  %3270 = add i32 1, %3269
  %3271 = zext i32 %3270 to i64
  store i64 %3271, i64* %RDX.i113, align 8
  %3272 = icmp ult i32 %3270, %3269
  %3273 = icmp ult i32 %3270, 1
  %3274 = or i1 %3272, %3273
  %3275 = zext i1 %3274 to i8
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3275, i8* %3276, align 1
  %3277 = and i32 %3270, 255
  %3278 = call i32 @llvm.ctpop.i32(i32 %3277)
  %3279 = trunc i32 %3278 to i8
  %3280 = and i8 %3279, 1
  %3281 = xor i8 %3280, 1
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3281, i8* %3282, align 1
  %3283 = xor i64 1, %3266
  %3284 = trunc i64 %3283 to i32
  %3285 = xor i32 %3284, %3270
  %3286 = lshr i32 %3285, 4
  %3287 = trunc i32 %3286 to i8
  %3288 = and i8 %3287, 1
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3288, i8* %3289, align 1
  %3290 = icmp eq i32 %3270, 0
  %3291 = zext i1 %3290 to i8
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3291, i8* %3292, align 1
  %3293 = lshr i32 %3270, 31
  %3294 = trunc i32 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3294, i8* %3295, align 1
  %3296 = lshr i32 %3269, 31
  %3297 = xor i32 %3293, %3296
  %3298 = add i32 %3297, %3293
  %3299 = icmp eq i32 %3298, 2
  %3300 = zext i1 %3299 to i8
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3300, i8* %3301, align 1
  store %struct.Memory* %loadMem_400eb7, %struct.Memory** %MEMORY
  %loadMem_400eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 33
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3304 to i64*
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 7
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %EDX.i110 = bitcast %union.anon* %3307 to i32*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 5
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %3310 to i64*
  %3311 = load i32, i32* %EDX.i110
  %3312 = zext i32 %3311 to i64
  %3313 = load i64, i64* %PC.i109
  %3314 = add i64 %3313, 3
  store i64 %3314, i64* %PC.i109
  %3315 = shl i64 %3312, 32
  %3316 = ashr exact i64 %3315, 32
  store i64 %3316, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_400eba, %struct.Memory** %MEMORY
  %loadMem_400ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 33
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 1
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %3322 to i64*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 5
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3327 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3326, i64 0, i64 2
  %YMM2.i108 = bitcast %union.VectorReg* %3327 to %"class.std::bitset"*
  %3328 = bitcast %"class.std::bitset"* %YMM2.i108 to i8*
  %3329 = load i64, i64* %RAX.i106
  %3330 = load i64, i64* %RCX.i107
  %3331 = mul i64 %3330, 8
  %3332 = add i64 %3331, %3329
  %3333 = load i64, i64* %PC.i105
  %3334 = add i64 %3333, 5
  store i64 %3334, i64* %PC.i105
  %3335 = inttoptr i64 %3332 to double*
  %3336 = load double, double* %3335
  %3337 = bitcast i8* %3328 to double*
  store double %3336, double* %3337, align 1
  %3338 = getelementptr inbounds i8, i8* %3328, i64 8
  %3339 = bitcast i8* %3338 to double*
  store double 0.000000e+00, double* %3339, align 1
  store %struct.Memory* %loadMem_400ebd, %struct.Memory** %MEMORY
  %loadMem_400ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 1
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %3345 to i64*
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 15
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %3348 to i64*
  %3349 = load i64, i64* %RBP.i104
  %3350 = sub i64 %3349, 24
  %3351 = load i64, i64* %PC.i102
  %3352 = add i64 %3351, 4
  store i64 %3352, i64* %PC.i102
  %3353 = inttoptr i64 %3350 to i64*
  %3354 = load i64, i64* %3353
  store i64 %3354, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_400ec2, %struct.Memory** %MEMORY
  %loadMem_400ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 33
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3357 to i64*
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 5
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %3360 to i64*
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 15
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %3363 to i64*
  %3364 = load i64, i64* %RBP.i101
  %3365 = sub i64 %3364, 56
  %3366 = load i64, i64* %PC.i99
  %3367 = add i64 %3366, 4
  store i64 %3367, i64* %PC.i99
  %3368 = inttoptr i64 %3365 to i32*
  %3369 = load i32, i32* %3368
  %3370 = sext i32 %3369 to i64
  store i64 %3370, i64* %RCX.i100, align 8
  store %struct.Memory* %loadMem_400ec6, %struct.Memory** %MEMORY
  %loadMem_400eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3373 to i64*
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 5
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %3376 to i64*
  %3377 = load i64, i64* %RCX.i98
  %3378 = load i64, i64* %PC.i97
  %3379 = add i64 %3378, 7
  store i64 %3379, i64* %PC.i97
  %3380 = sext i64 %3377 to i128
  %3381 = and i128 %3380, -18446744073709551616
  %3382 = zext i64 %3377 to i128
  %3383 = or i128 %3381, %3382
  %3384 = mul i128 8000, %3383
  %3385 = trunc i128 %3384 to i64
  store i64 %3385, i64* %RCX.i98, align 8
  %3386 = sext i64 %3385 to i128
  %3387 = icmp ne i128 %3386, %3384
  %3388 = zext i1 %3387 to i8
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3388, i8* %3389, align 1
  %3390 = trunc i128 %3384 to i32
  %3391 = and i32 %3390, 255
  %3392 = call i32 @llvm.ctpop.i32(i32 %3391)
  %3393 = trunc i32 %3392 to i8
  %3394 = and i8 %3393, 1
  %3395 = xor i8 %3394, 1
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3395, i8* %3396, align 1
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3397, align 1
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3398, align 1
  %3399 = lshr i64 %3385, 63
  %3400 = trunc i64 %3399 to i8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3400, i8* %3401, align 1
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3388, i8* %3402, align 1
  store %struct.Memory* %loadMem_400eca, %struct.Memory** %MEMORY
  %loadMem_400ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 33
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3405 to i64*
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 1
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %3408 to i64*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 5
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %3411 to i64*
  %3412 = load i64, i64* %RAX.i95
  %3413 = load i64, i64* %RCX.i96
  %3414 = load i64, i64* %PC.i94
  %3415 = add i64 %3414, 3
  store i64 %3415, i64* %PC.i94
  %3416 = add i64 %3413, %3412
  store i64 %3416, i64* %RAX.i95, align 8
  %3417 = icmp ult i64 %3416, %3412
  %3418 = icmp ult i64 %3416, %3413
  %3419 = or i1 %3417, %3418
  %3420 = zext i1 %3419 to i8
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3420, i8* %3421, align 1
  %3422 = trunc i64 %3416 to i32
  %3423 = and i32 %3422, 255
  %3424 = call i32 @llvm.ctpop.i32(i32 %3423)
  %3425 = trunc i32 %3424 to i8
  %3426 = and i8 %3425, 1
  %3427 = xor i8 %3426, 1
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3427, i8* %3428, align 1
  %3429 = xor i64 %3413, %3412
  %3430 = xor i64 %3429, %3416
  %3431 = lshr i64 %3430, 4
  %3432 = trunc i64 %3431 to i8
  %3433 = and i8 %3432, 1
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3433, i8* %3434, align 1
  %3435 = icmp eq i64 %3416, 0
  %3436 = zext i1 %3435 to i8
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3436, i8* %3437, align 1
  %3438 = lshr i64 %3416, 63
  %3439 = trunc i64 %3438 to i8
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3439, i8* %3440, align 1
  %3441 = lshr i64 %3412, 63
  %3442 = lshr i64 %3413, 63
  %3443 = xor i64 %3438, %3441
  %3444 = xor i64 %3438, %3442
  %3445 = add i64 %3443, %3444
  %3446 = icmp eq i64 %3445, 2
  %3447 = zext i1 %3446 to i8
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3447, i8* %3448, align 1
  store %struct.Memory* %loadMem_400ed1, %struct.Memory** %MEMORY
  %loadMem_400ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 33
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 5
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %3454 to i64*
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 15
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %3457 to i64*
  %3458 = load i64, i64* %RBP.i93
  %3459 = sub i64 %3458, 60
  %3460 = load i64, i64* %PC.i91
  %3461 = add i64 %3460, 4
  store i64 %3461, i64* %PC.i91
  %3462 = inttoptr i64 %3459 to i32*
  %3463 = load i32, i32* %3462
  %3464 = sext i32 %3463 to i64
  store i64 %3464, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_400ed4, %struct.Memory** %MEMORY
  %loadMem_400ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 33
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 1
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 5
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %3473 to i64*
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3475 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3474, i64 0, i64 2
  %YMM2.i90 = bitcast %union.VectorReg* %3475 to %"class.std::bitset"*
  %3476 = bitcast %"class.std::bitset"* %YMM2.i90 to i8*
  %3477 = bitcast %"class.std::bitset"* %YMM2.i90 to i8*
  %3478 = load i64, i64* %RAX.i88
  %3479 = load i64, i64* %RCX.i89
  %3480 = mul i64 %3479, 8
  %3481 = add i64 %3480, %3478
  %3482 = load i64, i64* %PC.i87
  %3483 = add i64 %3482, 5
  store i64 %3483, i64* %PC.i87
  %3484 = bitcast i8* %3477 to double*
  %3485 = load double, double* %3484, align 1
  %3486 = getelementptr inbounds i8, i8* %3477, i64 8
  %3487 = bitcast i8* %3486 to i64*
  %3488 = load i64, i64* %3487, align 1
  %3489 = inttoptr i64 %3481 to double*
  %3490 = load double, double* %3489
  %3491 = fsub double %3485, %3490
  %3492 = bitcast i8* %3476 to double*
  store double %3491, double* %3492, align 1
  %3493 = getelementptr inbounds i8, i8* %3476, i64 8
  %3494 = bitcast i8* %3493 to i64*
  store i64 %3488, i64* %3494, align 1
  store %struct.Memory* %loadMem_400ed8, %struct.Memory** %MEMORY
  %loadMem_400edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 33
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3497 to i64*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 1
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 15
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %3503 to i64*
  %3504 = load i64, i64* %RBP.i86
  %3505 = sub i64 %3504, 32
  %3506 = load i64, i64* %PC.i84
  %3507 = add i64 %3506, 4
  store i64 %3507, i64* %PC.i84
  %3508 = inttoptr i64 %3505 to i64*
  %3509 = load i64, i64* %3508
  store i64 %3509, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_400edd, %struct.Memory** %MEMORY
  %loadMem_400ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 33
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 7
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RDX.i82 = bitcast %union.anon* %3515 to i64*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 15
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %3518 to i64*
  %3519 = load i64, i64* %RBP.i83
  %3520 = sub i64 %3519, 56
  %3521 = load i64, i64* %PC.i81
  %3522 = add i64 %3521, 3
  store i64 %3522, i64* %PC.i81
  %3523 = inttoptr i64 %3520 to i32*
  %3524 = load i32, i32* %3523
  %3525 = zext i32 %3524 to i64
  store i64 %3525, i64* %RDX.i82, align 8
  store %struct.Memory* %loadMem_400ee1, %struct.Memory** %MEMORY
  %loadMem_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 7
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3531 to i64*
  %3532 = load i64, i64* %RDX.i
  %3533 = load i64, i64* %PC.i80
  %3534 = add i64 %3533, 3
  store i64 %3534, i64* %PC.i80
  %3535 = trunc i64 %3532 to i32
  %3536 = add i32 1, %3535
  %3537 = zext i32 %3536 to i64
  store i64 %3537, i64* %RDX.i, align 8
  %3538 = icmp ult i32 %3536, %3535
  %3539 = icmp ult i32 %3536, 1
  %3540 = or i1 %3538, %3539
  %3541 = zext i1 %3540 to i8
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3541, i8* %3542, align 1
  %3543 = and i32 %3536, 255
  %3544 = call i32 @llvm.ctpop.i32(i32 %3543)
  %3545 = trunc i32 %3544 to i8
  %3546 = and i8 %3545, 1
  %3547 = xor i8 %3546, 1
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3547, i8* %3548, align 1
  %3549 = xor i64 1, %3532
  %3550 = trunc i64 %3549 to i32
  %3551 = xor i32 %3550, %3536
  %3552 = lshr i32 %3551, 4
  %3553 = trunc i32 %3552 to i8
  %3554 = and i8 %3553, 1
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3554, i8* %3555, align 1
  %3556 = icmp eq i32 %3536, 0
  %3557 = zext i1 %3556 to i8
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3557, i8* %3558, align 1
  %3559 = lshr i32 %3536, 31
  %3560 = trunc i32 %3559 to i8
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3560, i8* %3561, align 1
  %3562 = lshr i32 %3535, 31
  %3563 = xor i32 %3559, %3562
  %3564 = add i32 %3563, %3559
  %3565 = icmp eq i32 %3564, 2
  %3566 = zext i1 %3565 to i8
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3566, i8* %3567, align 1
  store %struct.Memory* %loadMem_400ee4, %struct.Memory** %MEMORY
  %loadMem_400ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 7
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3573 to i32*
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 5
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %3576 to i64*
  %3577 = load i32, i32* %EDX.i
  %3578 = zext i32 %3577 to i64
  %3579 = load i64, i64* %PC.i78
  %3580 = add i64 %3579, 3
  store i64 %3580, i64* %PC.i78
  %3581 = shl i64 %3578, 32
  %3582 = ashr exact i64 %3581, 32
  store i64 %3582, i64* %RCX.i79, align 8
  store %struct.Memory* %loadMem_400ee7, %struct.Memory** %MEMORY
  %loadMem_400eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 33
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 5
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %3588 to i64*
  %3589 = load i64, i64* %RCX.i77
  %3590 = load i64, i64* %PC.i76
  %3591 = add i64 %3590, 7
  store i64 %3591, i64* %PC.i76
  %3592 = sext i64 %3589 to i128
  %3593 = and i128 %3592, -18446744073709551616
  %3594 = zext i64 %3589 to i128
  %3595 = or i128 %3593, %3594
  %3596 = mul i128 8000, %3595
  %3597 = trunc i128 %3596 to i64
  store i64 %3597, i64* %RCX.i77, align 8
  %3598 = sext i64 %3597 to i128
  %3599 = icmp ne i128 %3598, %3596
  %3600 = zext i1 %3599 to i8
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3600, i8* %3601, align 1
  %3602 = trunc i128 %3596 to i32
  %3603 = and i32 %3602, 255
  %3604 = call i32 @llvm.ctpop.i32(i32 %3603)
  %3605 = trunc i32 %3604 to i8
  %3606 = and i8 %3605, 1
  %3607 = xor i8 %3606, 1
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3607, i8* %3608, align 1
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3609, align 1
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3610, align 1
  %3611 = lshr i64 %3597, 63
  %3612 = trunc i64 %3611 to i8
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3612, i8* %3613, align 1
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3600, i8* %3614, align 1
  store %struct.Memory* %loadMem_400eea, %struct.Memory** %MEMORY
  %loadMem_400ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 33
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 1
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %3620 to i64*
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 5
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %3623 to i64*
  %3624 = load i64, i64* %RAX.i74
  %3625 = load i64, i64* %RCX.i75
  %3626 = load i64, i64* %PC.i73
  %3627 = add i64 %3626, 3
  store i64 %3627, i64* %PC.i73
  %3628 = add i64 %3625, %3624
  store i64 %3628, i64* %RAX.i74, align 8
  %3629 = icmp ult i64 %3628, %3624
  %3630 = icmp ult i64 %3628, %3625
  %3631 = or i1 %3629, %3630
  %3632 = zext i1 %3631 to i8
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3632, i8* %3633, align 1
  %3634 = trunc i64 %3628 to i32
  %3635 = and i32 %3634, 255
  %3636 = call i32 @llvm.ctpop.i32(i32 %3635)
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  %3639 = xor i8 %3638, 1
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3639, i8* %3640, align 1
  %3641 = xor i64 %3625, %3624
  %3642 = xor i64 %3641, %3628
  %3643 = lshr i64 %3642, 4
  %3644 = trunc i64 %3643 to i8
  %3645 = and i8 %3644, 1
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3645, i8* %3646, align 1
  %3647 = icmp eq i64 %3628, 0
  %3648 = zext i1 %3647 to i8
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3648, i8* %3649, align 1
  %3650 = lshr i64 %3628, 63
  %3651 = trunc i64 %3650 to i8
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3651, i8* %3652, align 1
  %3653 = lshr i64 %3624, 63
  %3654 = lshr i64 %3625, 63
  %3655 = xor i64 %3650, %3653
  %3656 = xor i64 %3650, %3654
  %3657 = add i64 %3655, %3656
  %3658 = icmp eq i64 %3657, 2
  %3659 = zext i1 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3659, i8* %3660, align 1
  store %struct.Memory* %loadMem_400ef1, %struct.Memory** %MEMORY
  %loadMem_400ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 33
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 5
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %3666 to i64*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 15
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %3669 to i64*
  %3670 = load i64, i64* %RBP.i72
  %3671 = sub i64 %3670, 60
  %3672 = load i64, i64* %PC.i70
  %3673 = add i64 %3672, 4
  store i64 %3673, i64* %PC.i70
  %3674 = inttoptr i64 %3671 to i32*
  %3675 = load i32, i32* %3674
  %3676 = sext i32 %3675 to i64
  store i64 %3676, i64* %RCX.i71, align 8
  store %struct.Memory* %loadMem_400ef4, %struct.Memory** %MEMORY
  %loadMem_400ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 33
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3679 to i64*
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 1
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %3682 to i64*
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 5
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %3685 to i64*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3687 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3686, i64 0, i64 2
  %YMM2.i69 = bitcast %union.VectorReg* %3687 to %"class.std::bitset"*
  %3688 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %3689 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %3690 = load i64, i64* %RAX.i67
  %3691 = load i64, i64* %RCX.i68
  %3692 = mul i64 %3691, 8
  %3693 = add i64 %3692, %3690
  %3694 = load i64, i64* %PC.i66
  %3695 = add i64 %3694, 5
  store i64 %3695, i64* %PC.i66
  %3696 = bitcast i8* %3689 to double*
  %3697 = load double, double* %3696, align 1
  %3698 = getelementptr inbounds i8, i8* %3689, i64 8
  %3699 = bitcast i8* %3698 to i64*
  %3700 = load i64, i64* %3699, align 1
  %3701 = inttoptr i64 %3693 to double*
  %3702 = load double, double* %3701
  %3703 = fadd double %3697, %3702
  %3704 = bitcast i8* %3688 to double*
  store double %3703, double* %3704, align 1
  %3705 = getelementptr inbounds i8, i8* %3688, i64 8
  %3706 = bitcast i8* %3705 to i64*
  store i64 %3700, i64* %3706, align 1
  store %struct.Memory* %loadMem_400ef8, %struct.Memory** %MEMORY
  %loadMem_400efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 1
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %3712 to i64*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 15
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3715 to i64*
  %3716 = load i64, i64* %RBP.i65
  %3717 = sub i64 %3716, 32
  %3718 = load i64, i64* %PC.i63
  %3719 = add i64 %3718, 4
  store i64 %3719, i64* %PC.i63
  %3720 = inttoptr i64 %3717 to i64*
  %3721 = load i64, i64* %3720
  store i64 %3721, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_400efd, %struct.Memory** %MEMORY
  %loadMem_400f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 5
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %3727 to i64*
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 15
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %3730 to i64*
  %3731 = load i64, i64* %RBP.i62
  %3732 = sub i64 %3731, 56
  %3733 = load i64, i64* %PC.i60
  %3734 = add i64 %3733, 4
  store i64 %3734, i64* %PC.i60
  %3735 = inttoptr i64 %3732 to i32*
  %3736 = load i32, i32* %3735
  %3737 = sext i32 %3736 to i64
  store i64 %3737, i64* %RCX.i61, align 8
  store %struct.Memory* %loadMem_400f01, %struct.Memory** %MEMORY
  %loadMem_400f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 33
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3740 to i64*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 5
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %3743 to i64*
  %3744 = load i64, i64* %RCX.i59
  %3745 = load i64, i64* %PC.i58
  %3746 = add i64 %3745, 7
  store i64 %3746, i64* %PC.i58
  %3747 = sext i64 %3744 to i128
  %3748 = and i128 %3747, -18446744073709551616
  %3749 = zext i64 %3744 to i128
  %3750 = or i128 %3748, %3749
  %3751 = mul i128 8000, %3750
  %3752 = trunc i128 %3751 to i64
  store i64 %3752, i64* %RCX.i59, align 8
  %3753 = sext i64 %3752 to i128
  %3754 = icmp ne i128 %3753, %3751
  %3755 = zext i1 %3754 to i8
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3755, i8* %3756, align 1
  %3757 = trunc i128 %3751 to i32
  %3758 = and i32 %3757, 255
  %3759 = call i32 @llvm.ctpop.i32(i32 %3758)
  %3760 = trunc i32 %3759 to i8
  %3761 = and i8 %3760, 1
  %3762 = xor i8 %3761, 1
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3762, i8* %3763, align 1
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3764, align 1
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3765, align 1
  %3766 = lshr i64 %3752, 63
  %3767 = trunc i64 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3767, i8* %3768, align 1
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3755, i8* %3769, align 1
  store %struct.Memory* %loadMem_400f05, %struct.Memory** %MEMORY
  %loadMem_400f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 33
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3772 to i64*
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 1
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 5
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %3778 to i64*
  %3779 = load i64, i64* %RAX.i56
  %3780 = load i64, i64* %RCX.i57
  %3781 = load i64, i64* %PC.i55
  %3782 = add i64 %3781, 3
  store i64 %3782, i64* %PC.i55
  %3783 = add i64 %3780, %3779
  store i64 %3783, i64* %RAX.i56, align 8
  %3784 = icmp ult i64 %3783, %3779
  %3785 = icmp ult i64 %3783, %3780
  %3786 = or i1 %3784, %3785
  %3787 = zext i1 %3786 to i8
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3787, i8* %3788, align 1
  %3789 = trunc i64 %3783 to i32
  %3790 = and i32 %3789, 255
  %3791 = call i32 @llvm.ctpop.i32(i32 %3790)
  %3792 = trunc i32 %3791 to i8
  %3793 = and i8 %3792, 1
  %3794 = xor i8 %3793, 1
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3794, i8* %3795, align 1
  %3796 = xor i64 %3780, %3779
  %3797 = xor i64 %3796, %3783
  %3798 = lshr i64 %3797, 4
  %3799 = trunc i64 %3798 to i8
  %3800 = and i8 %3799, 1
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3800, i8* %3801, align 1
  %3802 = icmp eq i64 %3783, 0
  %3803 = zext i1 %3802 to i8
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3803, i8* %3804, align 1
  %3805 = lshr i64 %3783, 63
  %3806 = trunc i64 %3805 to i8
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3806, i8* %3807, align 1
  %3808 = lshr i64 %3779, 63
  %3809 = lshr i64 %3780, 63
  %3810 = xor i64 %3805, %3808
  %3811 = xor i64 %3805, %3809
  %3812 = add i64 %3810, %3811
  %3813 = icmp eq i64 %3812, 2
  %3814 = zext i1 %3813 to i8
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3814, i8* %3815, align 1
  store %struct.Memory* %loadMem_400f0c, %struct.Memory** %MEMORY
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 5
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 15
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %3824 to i64*
  %3825 = load i64, i64* %RBP.i54
  %3826 = sub i64 %3825, 60
  %3827 = load i64, i64* %PC.i52
  %3828 = add i64 %3827, 4
  store i64 %3828, i64* %PC.i52
  %3829 = inttoptr i64 %3826 to i32*
  %3830 = load i32, i32* %3829
  %3831 = sext i32 %3830 to i64
  store i64 %3831, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_400f0f, %struct.Memory** %MEMORY
  %loadMem_400f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 33
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 1
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %3837 to i64*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 5
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3842 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3841, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3842 to %"class.std::bitset"*
  %3843 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3844 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3845 = load i64, i64* %RAX.i50
  %3846 = load i64, i64* %RCX.i51
  %3847 = mul i64 %3846, 8
  %3848 = add i64 %3847, %3845
  %3849 = load i64, i64* %PC.i49
  %3850 = add i64 %3849, 5
  store i64 %3850, i64* %PC.i49
  %3851 = bitcast i8* %3844 to double*
  %3852 = load double, double* %3851, align 1
  %3853 = getelementptr inbounds i8, i8* %3844, i64 8
  %3854 = bitcast i8* %3853 to i64*
  %3855 = load i64, i64* %3854, align 1
  %3856 = inttoptr i64 %3848 to double*
  %3857 = load double, double* %3856
  %3858 = fsub double %3852, %3857
  %3859 = bitcast i8* %3843 to double*
  store double %3858, double* %3859, align 1
  %3860 = getelementptr inbounds i8, i8* %3843, i64 8
  %3861 = bitcast i8* %3860 to i64*
  store i64 %3855, i64* %3861, align 1
  store %struct.Memory* %loadMem_400f13, %struct.Memory** %MEMORY
  %loadMem_400f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 33
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3864 to i64*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3866 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3865, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3866 to %"class.std::bitset"*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3868 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3867, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3868 to %union.vec128_t*
  %3869 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3870 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3871 = bitcast %union.vec128_t* %XMM2.i to i8*
  %3872 = load i64, i64* %PC.i48
  %3873 = add i64 %3872, 4
  store i64 %3873, i64* %PC.i48
  %3874 = bitcast i8* %3870 to double*
  %3875 = load double, double* %3874, align 1
  %3876 = getelementptr inbounds i8, i8* %3870, i64 8
  %3877 = bitcast i8* %3876 to i64*
  %3878 = load i64, i64* %3877, align 1
  %3879 = bitcast i8* %3871 to double*
  %3880 = load double, double* %3879, align 1
  %3881 = fmul double %3875, %3880
  %3882 = bitcast i8* %3869 to double*
  store double %3881, double* %3882, align 1
  %3883 = getelementptr inbounds i8, i8* %3869, i64 8
  %3884 = bitcast i8* %3883 to i64*
  store i64 %3878, i64* %3884, align 1
  store %struct.Memory* %loadMem_400f18, %struct.Memory** %MEMORY
  %loadMem_400f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3886 = getelementptr inbounds %struct.GPR, %struct.GPR* %3885, i32 0, i32 33
  %3887 = getelementptr inbounds %struct.Reg, %struct.Reg* %3886, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3887 to i64*
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3889 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3888, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3889 to %"class.std::bitset"*
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3890, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3891 to %union.vec128_t*
  %3892 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3893 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3894 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3895 = load i64, i64* %PC.i47
  %3896 = add i64 %3895, 4
  store i64 %3896, i64* %PC.i47
  %3897 = bitcast i8* %3893 to double*
  %3898 = load double, double* %3897, align 1
  %3899 = getelementptr inbounds i8, i8* %3893, i64 8
  %3900 = bitcast i8* %3899 to i64*
  %3901 = load i64, i64* %3900, align 1
  %3902 = bitcast i8* %3894 to double*
  %3903 = load double, double* %3902, align 1
  %3904 = fsub double %3898, %3903
  %3905 = bitcast i8* %3892 to double*
  store double %3904, double* %3905, align 1
  %3906 = getelementptr inbounds i8, i8* %3892, i64 8
  %3907 = bitcast i8* %3906 to i64*
  store i64 %3901, i64* %3907, align 1
  store %struct.Memory* %loadMem_400f1c, %struct.Memory** %MEMORY
  %loadMem_400f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 33
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 1
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %3913 to i64*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 15
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3916 to i64*
  %3917 = load i64, i64* %RBP.i46
  %3918 = sub i64 %3917, 40
  %3919 = load i64, i64* %PC.i44
  %3920 = add i64 %3919, 4
  store i64 %3920, i64* %PC.i44
  %3921 = inttoptr i64 %3918 to i64*
  %3922 = load i64, i64* %3921
  store i64 %3922, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_400f20, %struct.Memory** %MEMORY
  %loadMem_400f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 5
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 15
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %3931 to i64*
  %3932 = load i64, i64* %RBP.i43
  %3933 = sub i64 %3932, 56
  %3934 = load i64, i64* %PC.i41
  %3935 = add i64 %3934, 4
  store i64 %3935, i64* %PC.i41
  %3936 = inttoptr i64 %3933 to i32*
  %3937 = load i32, i32* %3936
  %3938 = sext i32 %3937 to i64
  store i64 %3938, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_400f24, %struct.Memory** %MEMORY
  %loadMem_400f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 5
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %3944 to i64*
  %3945 = load i64, i64* %RCX.i40
  %3946 = load i64, i64* %PC.i39
  %3947 = add i64 %3946, 7
  store i64 %3947, i64* %PC.i39
  %3948 = sext i64 %3945 to i128
  %3949 = and i128 %3948, -18446744073709551616
  %3950 = zext i64 %3945 to i128
  %3951 = or i128 %3949, %3950
  %3952 = mul i128 8000, %3951
  %3953 = trunc i128 %3952 to i64
  store i64 %3953, i64* %RCX.i40, align 8
  %3954 = sext i64 %3953 to i128
  %3955 = icmp ne i128 %3954, %3952
  %3956 = zext i1 %3955 to i8
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3956, i8* %3957, align 1
  %3958 = trunc i128 %3952 to i32
  %3959 = and i32 %3958, 255
  %3960 = call i32 @llvm.ctpop.i32(i32 %3959)
  %3961 = trunc i32 %3960 to i8
  %3962 = and i8 %3961, 1
  %3963 = xor i8 %3962, 1
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3963, i8* %3964, align 1
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3965, align 1
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3966, align 1
  %3967 = lshr i64 %3953, 63
  %3968 = trunc i64 %3967 to i8
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3968, i8* %3969, align 1
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3956, i8* %3970, align 1
  store %struct.Memory* %loadMem_400f28, %struct.Memory** %MEMORY
  %loadMem_400f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 33
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3973 to i64*
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 1
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 5
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %3979 to i64*
  %3980 = load i64, i64* %RAX.i37
  %3981 = load i64, i64* %RCX.i38
  %3982 = load i64, i64* %PC.i36
  %3983 = add i64 %3982, 3
  store i64 %3983, i64* %PC.i36
  %3984 = add i64 %3981, %3980
  store i64 %3984, i64* %RAX.i37, align 8
  %3985 = icmp ult i64 %3984, %3980
  %3986 = icmp ult i64 %3984, %3981
  %3987 = or i1 %3985, %3986
  %3988 = zext i1 %3987 to i8
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3988, i8* %3989, align 1
  %3990 = trunc i64 %3984 to i32
  %3991 = and i32 %3990, 255
  %3992 = call i32 @llvm.ctpop.i32(i32 %3991)
  %3993 = trunc i32 %3992 to i8
  %3994 = and i8 %3993, 1
  %3995 = xor i8 %3994, 1
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3995, i8* %3996, align 1
  %3997 = xor i64 %3981, %3980
  %3998 = xor i64 %3997, %3984
  %3999 = lshr i64 %3998, 4
  %4000 = trunc i64 %3999 to i8
  %4001 = and i8 %4000, 1
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4001, i8* %4002, align 1
  %4003 = icmp eq i64 %3984, 0
  %4004 = zext i1 %4003 to i8
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4004, i8* %4005, align 1
  %4006 = lshr i64 %3984, 63
  %4007 = trunc i64 %4006 to i8
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4007, i8* %4008, align 1
  %4009 = lshr i64 %3980, 63
  %4010 = lshr i64 %3981, 63
  %4011 = xor i64 %4006, %4009
  %4012 = xor i64 %4006, %4010
  %4013 = add i64 %4011, %4012
  %4014 = icmp eq i64 %4013, 2
  %4015 = zext i1 %4014 to i8
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4015, i8* %4016, align 1
  store %struct.Memory* %loadMem_400f2f, %struct.Memory** %MEMORY
  %loadMem_400f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 33
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4019 to i64*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 5
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %4022 to i64*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 15
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4025 to i64*
  %4026 = load i64, i64* %RBP.i35
  %4027 = sub i64 %4026, 60
  %4028 = load i64, i64* %PC.i33
  %4029 = add i64 %4028, 4
  store i64 %4029, i64* %PC.i33
  %4030 = inttoptr i64 %4027 to i32*
  %4031 = load i32, i32* %4030
  %4032 = sext i32 %4031 to i64
  store i64 %4032, i64* %RCX.i34, align 8
  store %struct.Memory* %loadMem_400f32, %struct.Memory** %MEMORY
  %loadMem_400f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 33
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4035 to i64*
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 1
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %4038 to i64*
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 5
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4041 to i64*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4043 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4042, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4043 to %union.vec128_t*
  %4044 = load i64, i64* %RAX.i32
  %4045 = load i64, i64* %RCX.i
  %4046 = mul i64 %4045, 8
  %4047 = add i64 %4046, %4044
  %4048 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4049 = load i64, i64* %PC.i31
  %4050 = add i64 %4049, 5
  store i64 %4050, i64* %PC.i31
  %4051 = bitcast i8* %4048 to double*
  %4052 = load double, double* %4051, align 1
  %4053 = inttoptr i64 %4047 to double*
  store double %4052, double* %4053
  store %struct.Memory* %loadMem_400f36, %struct.Memory** %MEMORY
  %loadMem_400f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 33
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 1
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 15
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %4062 to i64*
  %4063 = load i64, i64* %RBP.i30
  %4064 = sub i64 %4063, 60
  %4065 = load i64, i64* %PC.i28
  %4066 = add i64 %4065, 3
  store i64 %4066, i64* %PC.i28
  %4067 = inttoptr i64 %4064 to i32*
  %4068 = load i32, i32* %4067
  %4069 = zext i32 %4068 to i64
  store i64 %4069, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_400f3b, %struct.Memory** %MEMORY
  %loadMem_400f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 33
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 1
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %4075 to i64*
  %4076 = load i64, i64* %RAX.i27
  %4077 = load i64, i64* %PC.i26
  %4078 = add i64 %4077, 3
  store i64 %4078, i64* %PC.i26
  %4079 = trunc i64 %4076 to i32
  %4080 = add i32 1, %4079
  %4081 = zext i32 %4080 to i64
  store i64 %4081, i64* %RAX.i27, align 8
  %4082 = icmp ult i32 %4080, %4079
  %4083 = icmp ult i32 %4080, 1
  %4084 = or i1 %4082, %4083
  %4085 = zext i1 %4084 to i8
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4085, i8* %4086, align 1
  %4087 = and i32 %4080, 255
  %4088 = call i32 @llvm.ctpop.i32(i32 %4087)
  %4089 = trunc i32 %4088 to i8
  %4090 = and i8 %4089, 1
  %4091 = xor i8 %4090, 1
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4091, i8* %4092, align 1
  %4093 = xor i64 1, %4076
  %4094 = trunc i64 %4093 to i32
  %4095 = xor i32 %4094, %4080
  %4096 = lshr i32 %4095, 4
  %4097 = trunc i32 %4096 to i8
  %4098 = and i8 %4097, 1
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4098, i8* %4099, align 1
  %4100 = icmp eq i32 %4080, 0
  %4101 = zext i1 %4100 to i8
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4101, i8* %4102, align 1
  %4103 = lshr i32 %4080, 31
  %4104 = trunc i32 %4103 to i8
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4104, i8* %4105, align 1
  %4106 = lshr i32 %4079, 31
  %4107 = xor i32 %4103, %4106
  %4108 = add i32 %4107, %4103
  %4109 = icmp eq i32 %4108, 2
  %4110 = zext i1 %4109 to i8
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4110, i8* %4111, align 1
  store %struct.Memory* %loadMem_400f3e, %struct.Memory** %MEMORY
  %loadMem_400f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 1
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %4117 to i32*
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 15
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %4120 to i64*
  %4121 = load i64, i64* %RBP.i25
  %4122 = sub i64 %4121, 60
  %4123 = load i32, i32* %EAX.i24
  %4124 = zext i32 %4123 to i64
  %4125 = load i64, i64* %PC.i23
  %4126 = add i64 %4125, 3
  store i64 %4126, i64* %PC.i23
  %4127 = inttoptr i64 %4122 to i32*
  store i32 %4123, i32* %4127
  store %struct.Memory* %loadMem_400f41, %struct.Memory** %MEMORY
  %loadMem_400f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 33
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4130 to i64*
  %4131 = load i64, i64* %PC.i22
  %4132 = add i64 %4131, -214
  %4133 = load i64, i64* %PC.i22
  %4134 = add i64 %4133, 5
  store i64 %4134, i64* %PC.i22
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4132, i64* %4135, align 8
  store %struct.Memory* %loadMem_400f44, %struct.Memory** %MEMORY
  br label %block_.L_400e6e

block_.L_400f49:                                  ; preds = %block_.L_400e6e
  %loadMem_400f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 33
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4138 to i64*
  %4139 = load i64, i64* %PC.i21
  %4140 = add i64 %4139, 5
  %4141 = load i64, i64* %PC.i21
  %4142 = add i64 %4141, 5
  store i64 %4142, i64* %PC.i21
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4140, i64* %4143, align 8
  store %struct.Memory* %loadMem_400f49, %struct.Memory** %MEMORY
  br label %block_.L_400f4e

block_.L_400f4e:                                  ; preds = %block_.L_400f49
  %loadMem_400f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 33
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4146 to i64*
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 1
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 15
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %RBP.i20
  %4154 = sub i64 %4153, 56
  %4155 = load i64, i64* %PC.i18
  %4156 = add i64 %4155, 3
  store i64 %4156, i64* %PC.i18
  %4157 = inttoptr i64 %4154 to i32*
  %4158 = load i32, i32* %4157
  %4159 = zext i32 %4158 to i64
  store i64 %4159, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_400f4e, %struct.Memory** %MEMORY
  %loadMem_400f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 33
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4162 to i64*
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 1
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %4165 to i64*
  %4166 = load i64, i64* %RAX.i17
  %4167 = load i64, i64* %PC.i16
  %4168 = add i64 %4167, 3
  store i64 %4168, i64* %PC.i16
  %4169 = trunc i64 %4166 to i32
  %4170 = add i32 1, %4169
  %4171 = zext i32 %4170 to i64
  store i64 %4171, i64* %RAX.i17, align 8
  %4172 = icmp ult i32 %4170, %4169
  %4173 = icmp ult i32 %4170, 1
  %4174 = or i1 %4172, %4173
  %4175 = zext i1 %4174 to i8
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4175, i8* %4176, align 1
  %4177 = and i32 %4170, 255
  %4178 = call i32 @llvm.ctpop.i32(i32 %4177)
  %4179 = trunc i32 %4178 to i8
  %4180 = and i8 %4179, 1
  %4181 = xor i8 %4180, 1
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4181, i8* %4182, align 1
  %4183 = xor i64 1, %4166
  %4184 = trunc i64 %4183 to i32
  %4185 = xor i32 %4184, %4170
  %4186 = lshr i32 %4185, 4
  %4187 = trunc i32 %4186 to i8
  %4188 = and i8 %4187, 1
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4188, i8* %4189, align 1
  %4190 = icmp eq i32 %4170, 0
  %4191 = zext i1 %4190 to i8
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4191, i8* %4192, align 1
  %4193 = lshr i32 %4170, 31
  %4194 = trunc i32 %4193 to i8
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4194, i8* %4195, align 1
  %4196 = lshr i32 %4169, 31
  %4197 = xor i32 %4193, %4196
  %4198 = add i32 %4197, %4193
  %4199 = icmp eq i32 %4198, 2
  %4200 = zext i1 %4199 to i8
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4200, i8* %4201, align 1
  store %struct.Memory* %loadMem_400f51, %struct.Memory** %MEMORY
  %loadMem_400f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 33
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4204 to i64*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 1
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %4207 to i32*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 15
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %4210 to i64*
  %4211 = load i64, i64* %RBP.i15
  %4212 = sub i64 %4211, 56
  %4213 = load i32, i32* %EAX.i14
  %4214 = zext i32 %4213 to i64
  %4215 = load i64, i64* %PC.i13
  %4216 = add i64 %4215, 3
  store i64 %4216, i64* %PC.i13
  %4217 = inttoptr i64 %4212 to i32*
  store i32 %4213, i32* %4217
  store %struct.Memory* %loadMem_400f54, %struct.Memory** %MEMORY
  %loadMem_400f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 33
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4220 to i64*
  %4221 = load i64, i64* %PC.i12
  %4222 = add i64 %4221, -257
  %4223 = load i64, i64* %PC.i12
  %4224 = add i64 %4223, 5
  store i64 %4224, i64* %PC.i12
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4222, i64* %4225, align 8
  store %struct.Memory* %loadMem_400f57, %struct.Memory** %MEMORY
  br label %block_.L_400e56

block_.L_400f5c:                                  ; preds = %block_.L_400e56
  %loadMem_400f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 33
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4228 to i64*
  %4229 = load i64, i64* %PC.i11
  %4230 = add i64 %4229, 5
  %4231 = load i64, i64* %PC.i11
  %4232 = add i64 %4231, 5
  store i64 %4232, i64* %PC.i11
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4230, i64* %4233, align 8
  store %struct.Memory* %loadMem_400f5c, %struct.Memory** %MEMORY
  br label %block_.L_400f61

block_.L_400f61:                                  ; preds = %block_.L_400f5c
  %loadMem_400f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 33
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4236 to i64*
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 1
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %4239 to i64*
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 15
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %4242 to i64*
  %4243 = load i64, i64* %RBP.i10
  %4244 = sub i64 %4243, 52
  %4245 = load i64, i64* %PC.i8
  %4246 = add i64 %4245, 3
  store i64 %4246, i64* %PC.i8
  %4247 = inttoptr i64 %4244 to i32*
  %4248 = load i32, i32* %4247
  %4249 = zext i32 %4248 to i64
  store i64 %4249, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_400f61, %struct.Memory** %MEMORY
  %loadMem_400f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 33
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4252 to i64*
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 1
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4255 to i64*
  %4256 = load i64, i64* %RAX.i
  %4257 = load i64, i64* %PC.i7
  %4258 = add i64 %4257, 3
  store i64 %4258, i64* %PC.i7
  %4259 = trunc i64 %4256 to i32
  %4260 = add i32 1, %4259
  %4261 = zext i32 %4260 to i64
  store i64 %4261, i64* %RAX.i, align 8
  %4262 = icmp ult i32 %4260, %4259
  %4263 = icmp ult i32 %4260, 1
  %4264 = or i1 %4262, %4263
  %4265 = zext i1 %4264 to i8
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4265, i8* %4266, align 1
  %4267 = and i32 %4260, 255
  %4268 = call i32 @llvm.ctpop.i32(i32 %4267)
  %4269 = trunc i32 %4268 to i8
  %4270 = and i8 %4269, 1
  %4271 = xor i8 %4270, 1
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4271, i8* %4272, align 1
  %4273 = xor i64 1, %4256
  %4274 = trunc i64 %4273 to i32
  %4275 = xor i32 %4274, %4260
  %4276 = lshr i32 %4275, 4
  %4277 = trunc i32 %4276 to i8
  %4278 = and i8 %4277, 1
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4278, i8* %4279, align 1
  %4280 = icmp eq i32 %4260, 0
  %4281 = zext i1 %4280 to i8
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4281, i8* %4282, align 1
  %4283 = lshr i32 %4260, 31
  %4284 = trunc i32 %4283 to i8
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4284, i8* %4285, align 1
  %4286 = lshr i32 %4259, 31
  %4287 = xor i32 %4283, %4286
  %4288 = add i32 %4287, %4283
  %4289 = icmp eq i32 %4288, 2
  %4290 = zext i1 %4289 to i8
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4290, i8* %4291, align 1
  store %struct.Memory* %loadMem_400f64, %struct.Memory** %MEMORY
  %loadMem_400f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 33
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4294 to i64*
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 1
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4297 to i32*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 15
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4300 to i64*
  %4301 = load i64, i64* %RBP.i6
  %4302 = sub i64 %4301, 52
  %4303 = load i32, i32* %EAX.i
  %4304 = zext i32 %4303 to i64
  %4305 = load i64, i64* %PC.i5
  %4306 = add i64 %4305, 3
  store i64 %4306, i64* %PC.i5
  %4307 = inttoptr i64 %4302 to i32*
  store i32 %4303, i32* %4307
  store %struct.Memory* %loadMem_400f67, %struct.Memory** %MEMORY
  %loadMem_400f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 33
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4310 to i64*
  %4311 = load i64, i64* %PC.i4
  %4312 = add i64 %4311, -754
  %4313 = load i64, i64* %PC.i4
  %4314 = add i64 %4313, 5
  store i64 %4314, i64* %PC.i4
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4312, i64* %4315, align 8
  store %struct.Memory* %loadMem_400f6a, %struct.Memory** %MEMORY
  br label %block_.L_400c78

block_.L_400f6f:                                  ; preds = %block_.L_400c78
  %loadMem_400f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 15
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4321 to i64*
  %4322 = load i64, i64* %PC.i2
  %4323 = add i64 %4322, 1
  store i64 %4323, i64* %PC.i2
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4325 = load i64, i64* %4324, align 8
  %4326 = add i64 %4325, 8
  %4327 = inttoptr i64 %4325 to i64*
  %4328 = load i64, i64* %4327
  store i64 %4328, i64* %RBP.i3, align 8
  store i64 %4326, i64* %4324, align 8
  store %struct.Memory* %loadMem_400f6f, %struct.Memory** %MEMORY
  %loadMem_400f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 33
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4331 to i64*
  %4332 = load i64, i64* %PC.i1
  %4333 = add i64 %4332, 1
  store i64 %4333, i64* %PC.i1
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4336 = load i64, i64* %4335, align 8
  %4337 = inttoptr i64 %4336 to i64*
  %4338 = load i64, i64* %4337
  store i64 %4338, i64* %4334, align 8
  %4339 = add i64 %4336, 8
  store i64 %4339, i64* %4335, align 8
  store %struct.Memory* %loadMem_400f70, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400f70
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

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_400f6f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 12
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

define %struct.Memory* @routine_jge_.L_400cbf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
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

define %struct.Memory* @routine_jmpq_.L_400c8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 8
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

define %struct.Memory* @routine_jge_.L_400d87(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400d74(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x9a3__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2475
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x1f40___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 8000, %15
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
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

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm1____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM1 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cd9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400cc6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400e4f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400e3c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x8db__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2275
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400da1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400e41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400f5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400f49(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x801__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2057
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_400e6e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400f4e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400e56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400f61(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400c78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
