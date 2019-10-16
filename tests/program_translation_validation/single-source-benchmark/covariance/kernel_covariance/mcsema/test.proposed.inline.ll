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
define %struct.Memory* @kernel_covariance(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400b40 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400b40, %struct.Memory** %MEMORY
  %loadMem_400b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i358
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i358
  store i64 %26, i64* %RBP.i359, align 8
  store %struct.Memory* %loadMem_400b41, %struct.Memory** %MEMORY
  %loadMem_400b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i357
  %39 = sub i64 %38, 4
  %40 = load i32, i32* %EDI.i
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i356
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i356
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  store %struct.Memory* %loadMem_400b44, %struct.Memory** %MEMORY
  %loadMem_400b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %50 to i32*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i355
  %55 = sub i64 %54, 8
  %56 = load i32, i32* %ESI.i
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC.i354
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC.i354
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  store %struct.Memory* %loadMem_400b47, %struct.Memory** %MEMORY
  %loadMem_400b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 33
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %63 to i64*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %65 = getelementptr inbounds %struct.GPR, %struct.GPR* %64, i32 0, i32 15
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %65, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %66 to i64*
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %68 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %67, i64 0, i64 0
  %XMM0.i353 = bitcast %union.VectorReg* %68 to %union.vec128_t*
  %69 = load i64, i64* %RBP.i352
  %70 = sub i64 %69, 16
  %71 = bitcast %union.vec128_t* %XMM0.i353 to i8*
  %72 = load i64, i64* %PC.i351
  %73 = add i64 %72, 5
  store i64 %73, i64* %PC.i351
  %74 = bitcast i8* %71 to double*
  %75 = load double, double* %74, align 1
  %76 = inttoptr i64 %70 to double*
  store double %75, double* %76
  store %struct.Memory* %loadMem_400b4a, %struct.Memory** %MEMORY
  %loadMem_400b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %78 = getelementptr inbounds %struct.GPR, %struct.GPR* %77, i32 0, i32 33
  %79 = getelementptr inbounds %struct.Reg, %struct.Reg* %78, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %79 to i64*
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 15
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %85 to i64*
  %86 = load i64, i64* %RBP.i350
  %87 = sub i64 %86, 24
  %88 = load i64, i64* %RDX.i
  %89 = load i64, i64* %PC.i349
  %90 = add i64 %89, 4
  store i64 %90, i64* %PC.i349
  %91 = inttoptr i64 %87 to i64*
  store i64 %88, i64* %91
  store %struct.Memory* %loadMem_400b4f, %struct.Memory** %MEMORY
  %loadMem_400b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 33
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %94 to i64*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 15
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %100 to i64*
  %101 = load i64, i64* %RBP.i348
  %102 = sub i64 %101, 32
  %103 = load i64, i64* %RCX.i347
  %104 = load i64, i64* %PC.i346
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC.i346
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106
  store %struct.Memory* %loadMem_400b53, %struct.Memory** %MEMORY
  %loadMem_400b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 15
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 17
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %R8.i = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i345
  %117 = sub i64 %116, 40
  %118 = load i64, i64* %R8.i
  %119 = load i64, i64* %PC.i344
  %120 = add i64 %119, 4
  store i64 %120, i64* %PC.i344
  %121 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %121
  store %struct.Memory* %loadMem_400b57, %struct.Memory** %MEMORY
  %loadMem_400b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %RBP.i343
  %129 = sub i64 %128, 48
  %130 = load i64, i64* %PC.i342
  %131 = add i64 %130, 7
  store i64 %131, i64* %PC.i342
  %132 = inttoptr i64 %129 to i32*
  store i32 0, i32* %132
  store %struct.Memory* %loadMem_400b5b, %struct.Memory** %MEMORY
  br label %block_.L_400b62

block_.L_400b62:                                  ; preds = %block_.L_400bcc, %entry
  %loadMem_400b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 33
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 15
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %141 to i64*
  %142 = load i64, i64* %RBP.i341
  %143 = sub i64 %142, 48
  %144 = load i64, i64* %PC.i339
  %145 = add i64 %144, 3
  store i64 %145, i64* %PC.i339
  %146 = inttoptr i64 %143 to i32*
  %147 = load i32, i32* %146
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RAX.i340, align 8
  store %struct.Memory* %loadMem_400b62, %struct.Memory** %MEMORY
  %loadMem_400b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %EAX.i337 = bitcast %union.anon* %154 to i32*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 15
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %157 to i64*
  %158 = load i32, i32* %EAX.i337
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* %RBP.i338
  %161 = sub i64 %160, 4
  %162 = load i64, i64* %PC.i336
  %163 = add i64 %162, 3
  store i64 %163, i64* %PC.i336
  %164 = inttoptr i64 %161 to i32*
  %165 = load i32, i32* %164
  %166 = sub i32 %158, %165
  %167 = icmp ult i32 %158, %165
  %168 = zext i1 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %168, i8* %169, align 1
  %170 = and i32 %166, 255
  %171 = call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %174, i8* %175, align 1
  %176 = xor i32 %165, %158
  %177 = xor i32 %176, %166
  %178 = lshr i32 %177, 4
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %180, i8* %181, align 1
  %182 = icmp eq i32 %166, 0
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %183, i8* %184, align 1
  %185 = lshr i32 %166, 31
  %186 = trunc i32 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %186, i8* %187, align 1
  %188 = lshr i32 %158, 31
  %189 = lshr i32 %165, 31
  %190 = xor i32 %189, %188
  %191 = xor i32 %185, %188
  %192 = add i32 %191, %190
  %193 = icmp eq i32 %192, 2
  %194 = zext i1 %193 to i8
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %194, i8* %195, align 1
  store %struct.Memory* %loadMem_400b65, %struct.Memory** %MEMORY
  %loadMem_400b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %198 to i64*
  %199 = load i64, i64* %PC.i335
  %200 = add i64 %199, 141
  %201 = load i64, i64* %PC.i335
  %202 = add i64 %201, 6
  %203 = load i64, i64* %PC.i335
  %204 = add i64 %203, 6
  store i64 %204, i64* %PC.i335
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %206 = load i8, i8* %205, align 1
  %207 = icmp ne i8 %206, 0
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %209 = load i8, i8* %208, align 1
  %210 = icmp ne i8 %209, 0
  %211 = xor i1 %207, %210
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %BRANCH_TAKEN, align 1
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %215 = select i1 %211, i64 %202, i64 %200
  store i64 %215, i64* %214, align 8
  store %struct.Memory* %loadMem_400b68, %struct.Memory** %MEMORY
  %loadBr_400b68 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b68 = icmp eq i8 %loadBr_400b68, 1
  br i1 %cmpBr_400b68, label %block_.L_400bf5, label %block_400b6e

block_400b6e:                                     ; preds = %block_.L_400b62
  %loadMem_400b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 33
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %220 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %219, i64 0, i64 0
  %YMM0.i333 = bitcast %union.VectorReg* %220 to %"class.std::bitset"*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %221, i64 0, i64 0
  %XMM0.i334 = bitcast %union.VectorReg* %222 to %union.vec128_t*
  %223 = bitcast %"class.std::bitset"* %YMM0.i333 to i8*
  %224 = bitcast %"class.std::bitset"* %YMM0.i333 to i8*
  %225 = bitcast %union.vec128_t* %XMM0.i334 to i8*
  %226 = load i64, i64* %PC.i332
  %227 = add i64 %226, 3
  store i64 %227, i64* %PC.i332
  %228 = bitcast i8* %224 to i64*
  %229 = load i64, i64* %228, align 1
  %230 = getelementptr inbounds i8, i8* %224, i64 8
  %231 = bitcast i8* %230 to i64*
  %232 = load i64, i64* %231, align 1
  %233 = bitcast i8* %225 to i64*
  %234 = load i64, i64* %233, align 1
  %235 = getelementptr inbounds i8, i8* %225, i64 8
  %236 = bitcast i8* %235 to i64*
  %237 = load i64, i64* %236, align 1
  %238 = xor i64 %234, %229
  %239 = xor i64 %237, %232
  %240 = trunc i64 %238 to i32
  %241 = lshr i64 %238, 32
  %242 = trunc i64 %241 to i32
  %243 = bitcast i8* %223 to i32*
  store i32 %240, i32* %243, align 1
  %244 = getelementptr inbounds i8, i8* %223, i64 4
  %245 = bitcast i8* %244 to i32*
  store i32 %242, i32* %245, align 1
  %246 = trunc i64 %239 to i32
  %247 = getelementptr inbounds i8, i8* %223, i64 8
  %248 = bitcast i8* %247 to i32*
  store i32 %246, i32* %248, align 1
  %249 = lshr i64 %239, 32
  %250 = trunc i64 %249 to i32
  %251 = getelementptr inbounds i8, i8* %223, i64 12
  %252 = bitcast i8* %251 to i32*
  store i32 %250, i32* %252, align 1
  store %struct.Memory* %loadMem_400b6e, %struct.Memory** %MEMORY
  %loadMem_400b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 15
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %RBP.i331
  %263 = sub i64 %262, 40
  %264 = load i64, i64* %PC.i329
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC.i329
  %266 = inttoptr i64 %263 to i64*
  %267 = load i64, i64* %266
  store i64 %267, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_400b71, %struct.Memory** %MEMORY
  %loadMem_400b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 15
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %RBP.i328
  %278 = sub i64 %277, 48
  %279 = load i64, i64* %PC.i326
  %280 = add i64 %279, 4
  store i64 %280, i64* %PC.i326
  %281 = inttoptr i64 %278 to i32*
  %282 = load i32, i32* %281
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %RCX.i327, align 8
  store %struct.Memory* %loadMem_400b75, %struct.Memory** %MEMORY
  %loadMem_400b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %294 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %293, i64 0, i64 0
  %XMM0.i325 = bitcast %union.VectorReg* %294 to %union.vec128_t*
  %295 = load i64, i64* %RAX.i323
  %296 = load i64, i64* %RCX.i324
  %297 = mul i64 %296, 8
  %298 = add i64 %297, %295
  %299 = bitcast %union.vec128_t* %XMM0.i325 to i8*
  %300 = load i64, i64* %PC.i322
  %301 = add i64 %300, 5
  store i64 %301, i64* %PC.i322
  %302 = bitcast i8* %299 to double*
  %303 = load double, double* %302, align 1
  %304 = inttoptr i64 %298 to double*
  store double %303, double* %304
  store %struct.Memory* %loadMem_400b79, %struct.Memory** %MEMORY
  %loadMem_400b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 15
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %RBP.i321
  %312 = sub i64 %311, 44
  %313 = load i64, i64* %PC.i320
  %314 = add i64 %313, 7
  store i64 %314, i64* %PC.i320
  %315 = inttoptr i64 %312 to i32*
  store i32 0, i32* %315
  store %struct.Memory* %loadMem_400b7e, %struct.Memory** %MEMORY
  br label %block_.L_400b85

block_.L_400b85:                                  ; preds = %block_400b91, %block_400b6e
  %loadMem_400b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 15
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %RBP.i319
  %326 = sub i64 %325, 44
  %327 = load i64, i64* %PC.i317
  %328 = add i64 %327, 3
  store i64 %328, i64* %PC.i317
  %329 = inttoptr i64 %326 to i32*
  %330 = load i32, i32* %329
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_400b85, %struct.Memory** %MEMORY
  %loadMem_400b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %EAX.i315 = bitcast %union.anon* %337 to i32*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 15
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %340 to i64*
  %341 = load i32, i32* %EAX.i315
  %342 = zext i32 %341 to i64
  %343 = load i64, i64* %RBP.i316
  %344 = sub i64 %343, 8
  %345 = load i64, i64* %PC.i314
  %346 = add i64 %345, 3
  store i64 %346, i64* %PC.i314
  %347 = inttoptr i64 %344 to i32*
  %348 = load i32, i32* %347
  %349 = sub i32 %341, %348
  %350 = icmp ult i32 %341, %348
  %351 = zext i1 %350 to i8
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %351, i8* %352, align 1
  %353 = and i32 %349, 255
  %354 = call i32 @llvm.ctpop.i32(i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %357, i8* %358, align 1
  %359 = xor i32 %348, %341
  %360 = xor i32 %359, %349
  %361 = lshr i32 %360, 4
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %363, i8* %364, align 1
  %365 = icmp eq i32 %349, 0
  %366 = zext i1 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %366, i8* %367, align 1
  %368 = lshr i32 %349, 31
  %369 = trunc i32 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %369, i8* %370, align 1
  %371 = lshr i32 %341, 31
  %372 = lshr i32 %348, 31
  %373 = xor i32 %372, %371
  %374 = xor i32 %368, %371
  %375 = add i32 %374, %373
  %376 = icmp eq i32 %375, 2
  %377 = zext i1 %376 to i8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %377, i8* %378, align 1
  store %struct.Memory* %loadMem_400b88, %struct.Memory** %MEMORY
  %loadMem_400b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 33
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %381 to i64*
  %382 = load i64, i64* %PC.i313
  %383 = add i64 %382, 65
  %384 = load i64, i64* %PC.i313
  %385 = add i64 %384, 6
  %386 = load i64, i64* %PC.i313
  %387 = add i64 %386, 6
  store i64 %387, i64* %PC.i313
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %389 = load i8, i8* %388, align 1
  %390 = icmp ne i8 %389, 0
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %392 = load i8, i8* %391, align 1
  %393 = icmp ne i8 %392, 0
  %394 = xor i1 %390, %393
  %395 = xor i1 %394, true
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %BRANCH_TAKEN, align 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %398 = select i1 %394, i64 %385, i64 %383
  store i64 %398, i64* %397, align 8
  store %struct.Memory* %loadMem_400b8b, %struct.Memory** %MEMORY
  %loadBr_400b8b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b8b = icmp eq i8 %loadBr_400b8b, 1
  br i1 %cmpBr_400b8b, label %block_.L_400bcc, label %block_400b91

block_400b91:                                     ; preds = %block_.L_400b85
  %loadMem_400b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 15
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %407 to i64*
  %408 = load i64, i64* %RBP.i312
  %409 = sub i64 %408, 24
  %410 = load i64, i64* %PC.i310
  %411 = add i64 %410, 4
  store i64 %411, i64* %PC.i310
  %412 = inttoptr i64 %409 to i64*
  %413 = load i64, i64* %412
  store i64 %413, i64* %RAX.i311, align 8
  store %struct.Memory* %loadMem_400b91, %struct.Memory** %MEMORY
  %loadMem_400b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 33
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %416 to i64*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 5
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 15
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %422 to i64*
  %423 = load i64, i64* %RBP.i309
  %424 = sub i64 %423, 44
  %425 = load i64, i64* %PC.i307
  %426 = add i64 %425, 4
  store i64 %426, i64* %PC.i307
  %427 = inttoptr i64 %424 to i32*
  %428 = load i32, i32* %427
  %429 = sext i32 %428 to i64
  store i64 %429, i64* %RCX.i308, align 8
  store %struct.Memory* %loadMem_400b95, %struct.Memory** %MEMORY
  %loadMem_400b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %432 to i64*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 5
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %435 to i64*
  %436 = load i64, i64* %RCX.i306
  %437 = load i64, i64* %PC.i305
  %438 = add i64 %437, 7
  store i64 %438, i64* %PC.i305
  %439 = sext i64 %436 to i128
  %440 = and i128 %439, -18446744073709551616
  %441 = zext i64 %436 to i128
  %442 = or i128 %440, %441
  %443 = mul i128 8000, %442
  %444 = trunc i128 %443 to i64
  store i64 %444, i64* %RCX.i306, align 8
  %445 = sext i64 %444 to i128
  %446 = icmp ne i128 %445, %443
  %447 = zext i1 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %447, i8* %448, align 1
  %449 = trunc i128 %443 to i32
  %450 = and i32 %449, 255
  %451 = call i32 @llvm.ctpop.i32(i32 %450)
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %454, i8* %455, align 1
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %456, align 1
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %457, align 1
  %458 = lshr i64 %444, 63
  %459 = trunc i64 %458 to i8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %459, i8* %460, align 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %447, i8* %461, align 1
  store %struct.Memory* %loadMem_400b99, %struct.Memory** %MEMORY
  %loadMem_400ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 33
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 5
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %470 to i64*
  %471 = load i64, i64* %RAX.i303
  %472 = load i64, i64* %RCX.i304
  %473 = load i64, i64* %PC.i302
  %474 = add i64 %473, 3
  store i64 %474, i64* %PC.i302
  %475 = add i64 %472, %471
  store i64 %475, i64* %RAX.i303, align 8
  %476 = icmp ult i64 %475, %471
  %477 = icmp ult i64 %475, %472
  %478 = or i1 %476, %477
  %479 = zext i1 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %479, i8* %480, align 1
  %481 = trunc i64 %475 to i32
  %482 = and i32 %481, 255
  %483 = call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %486, i8* %487, align 1
  %488 = xor i64 %472, %471
  %489 = xor i64 %488, %475
  %490 = lshr i64 %489, 4
  %491 = trunc i64 %490 to i8
  %492 = and i8 %491, 1
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %492, i8* %493, align 1
  %494 = icmp eq i64 %475, 0
  %495 = zext i1 %494 to i8
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %495, i8* %496, align 1
  %497 = lshr i64 %475, 63
  %498 = trunc i64 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %498, i8* %499, align 1
  %500 = lshr i64 %471, 63
  %501 = lshr i64 %472, 63
  %502 = xor i64 %497, %500
  %503 = xor i64 %497, %501
  %504 = add i64 %502, %503
  %505 = icmp eq i64 %504, 2
  %506 = zext i1 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %506, i8* %507, align 1
  store %struct.Memory* %loadMem_400ba0, %struct.Memory** %MEMORY
  %loadMem_400ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 33
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %510 to i64*
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 5
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 15
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %516 to i64*
  %517 = load i64, i64* %RBP.i301
  %518 = sub i64 %517, 48
  %519 = load i64, i64* %PC.i299
  %520 = add i64 %519, 4
  store i64 %520, i64* %PC.i299
  %521 = inttoptr i64 %518 to i32*
  %522 = load i32, i32* %521
  %523 = sext i32 %522 to i64
  store i64 %523, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_400ba3, %struct.Memory** %MEMORY
  %loadMem_400ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 1
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 5
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %534 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %533, i64 0, i64 0
  %YMM0.i298 = bitcast %union.VectorReg* %534 to %"class.std::bitset"*
  %535 = bitcast %"class.std::bitset"* %YMM0.i298 to i8*
  %536 = load i64, i64* %RAX.i296
  %537 = load i64, i64* %RCX.i297
  %538 = mul i64 %537, 8
  %539 = add i64 %538, %536
  %540 = load i64, i64* %PC.i295
  %541 = add i64 %540, 5
  store i64 %541, i64* %PC.i295
  %542 = inttoptr i64 %539 to double*
  %543 = load double, double* %542
  %544 = bitcast i8* %535 to double*
  store double %543, double* %544, align 1
  %545 = getelementptr inbounds i8, i8* %535, i64 8
  %546 = bitcast i8* %545 to double*
  store double 0.000000e+00, double* %546, align 1
  store %struct.Memory* %loadMem_400ba7, %struct.Memory** %MEMORY
  %loadMem_400bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 33
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 15
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %555 to i64*
  %556 = load i64, i64* %RBP.i294
  %557 = sub i64 %556, 40
  %558 = load i64, i64* %PC.i292
  %559 = add i64 %558, 4
  store i64 %559, i64* %PC.i292
  %560 = inttoptr i64 %557 to i64*
  %561 = load i64, i64* %560
  store i64 %561, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_400bac, %struct.Memory** %MEMORY
  %loadMem_400bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 33
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 5
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 15
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %570 to i64*
  %571 = load i64, i64* %RBP.i291
  %572 = sub i64 %571, 48
  %573 = load i64, i64* %PC.i289
  %574 = add i64 %573, 4
  store i64 %574, i64* %PC.i289
  %575 = inttoptr i64 %572 to i32*
  %576 = load i32, i32* %575
  %577 = sext i32 %576 to i64
  store i64 %577, i64* %RCX.i290, align 8
  store %struct.Memory* %loadMem_400bb0, %struct.Memory** %MEMORY
  %loadMem_400bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 5
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %588 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %587, i64 0, i64 0
  %YMM0.i288 = bitcast %union.VectorReg* %588 to %"class.std::bitset"*
  %589 = bitcast %"class.std::bitset"* %YMM0.i288 to i8*
  %590 = bitcast %"class.std::bitset"* %YMM0.i288 to i8*
  %591 = load i64, i64* %RAX.i286
  %592 = load i64, i64* %RCX.i287
  %593 = mul i64 %592, 8
  %594 = add i64 %593, %591
  %595 = load i64, i64* %PC.i285
  %596 = add i64 %595, 5
  store i64 %596, i64* %PC.i285
  %597 = bitcast i8* %590 to double*
  %598 = load double, double* %597, align 1
  %599 = getelementptr inbounds i8, i8* %590, i64 8
  %600 = bitcast i8* %599 to i64*
  %601 = load i64, i64* %600, align 1
  %602 = inttoptr i64 %594 to double*
  %603 = load double, double* %602
  %604 = fadd double %598, %603
  %605 = bitcast i8* %589 to double*
  store double %604, double* %605, align 1
  %606 = getelementptr inbounds i8, i8* %589, i64 8
  %607 = bitcast i8* %606 to i64*
  store i64 %601, i64* %607, align 1
  store %struct.Memory* %loadMem_400bb4, %struct.Memory** %MEMORY
  %loadMem_400bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 1
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 5
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %618 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %617, i64 0, i64 0
  %XMM0.i284 = bitcast %union.VectorReg* %618 to %union.vec128_t*
  %619 = load i64, i64* %RAX.i282
  %620 = load i64, i64* %RCX.i283
  %621 = mul i64 %620, 8
  %622 = add i64 %621, %619
  %623 = bitcast %union.vec128_t* %XMM0.i284 to i8*
  %624 = load i64, i64* %PC.i281
  %625 = add i64 %624, 5
  store i64 %625, i64* %PC.i281
  %626 = bitcast i8* %623 to double*
  %627 = load double, double* %626, align 1
  %628 = inttoptr i64 %622 to double*
  store double %627, double* %628
  store %struct.Memory* %loadMem_400bb9, %struct.Memory** %MEMORY
  %loadMem_400bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 1
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 15
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RBP.i280
  %639 = sub i64 %638, 44
  %640 = load i64, i64* %PC.i278
  %641 = add i64 %640, 3
  store i64 %641, i64* %PC.i278
  %642 = inttoptr i64 %639 to i32*
  %643 = load i32, i32* %642
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_400bbe, %struct.Memory** %MEMORY
  %loadMem_400bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 1
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %650 to i64*
  %651 = load i64, i64* %RAX.i277
  %652 = load i64, i64* %PC.i276
  %653 = add i64 %652, 3
  store i64 %653, i64* %PC.i276
  %654 = trunc i64 %651 to i32
  %655 = add i32 1, %654
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RAX.i277, align 8
  %657 = icmp ult i32 %655, %654
  %658 = icmp ult i32 %655, 1
  %659 = or i1 %657, %658
  %660 = zext i1 %659 to i8
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %660, i8* %661, align 1
  %662 = and i32 %655, 255
  %663 = call i32 @llvm.ctpop.i32(i32 %662)
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %666, i8* %667, align 1
  %668 = xor i64 1, %651
  %669 = trunc i64 %668 to i32
  %670 = xor i32 %669, %655
  %671 = lshr i32 %670, 4
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %673, i8* %674, align 1
  %675 = icmp eq i32 %655, 0
  %676 = zext i1 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %676, i8* %677, align 1
  %678 = lshr i32 %655, 31
  %679 = trunc i32 %678 to i8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %679, i8* %680, align 1
  %681 = lshr i32 %654, 31
  %682 = xor i32 %678, %681
  %683 = add i32 %682, %678
  %684 = icmp eq i32 %683, 2
  %685 = zext i1 %684 to i8
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %685, i8* %686, align 1
  store %struct.Memory* %loadMem_400bc1, %struct.Memory** %MEMORY
  %loadMem_400bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %EAX.i274 = bitcast %union.anon* %692 to i32*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 15
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %RBP.i275
  %697 = sub i64 %696, 44
  %698 = load i32, i32* %EAX.i274
  %699 = zext i32 %698 to i64
  %700 = load i64, i64* %PC.i273
  %701 = add i64 %700, 3
  store i64 %701, i64* %PC.i273
  %702 = inttoptr i64 %697 to i32*
  store i32 %698, i32* %702
  store %struct.Memory* %loadMem_400bc4, %struct.Memory** %MEMORY
  %loadMem_400bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %PC.i272
  %707 = add i64 %706, -66
  %708 = load i64, i64* %PC.i272
  %709 = add i64 %708, 5
  store i64 %709, i64* %PC.i272
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %707, i64* %710, align 8
  store %struct.Memory* %loadMem_400bc7, %struct.Memory** %MEMORY
  br label %block_.L_400b85

block_.L_400bcc:                                  ; preds = %block_.L_400b85
  %loadMem_400bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 15
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %718 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %717, i64 0, i64 0
  %YMM0.i271 = bitcast %union.VectorReg* %718 to %"class.std::bitset"*
  %719 = bitcast %"class.std::bitset"* %YMM0.i271 to i8*
  %720 = load i64, i64* %RBP.i270
  %721 = sub i64 %720, 16
  %722 = load i64, i64* %PC.i269
  %723 = add i64 %722, 5
  store i64 %723, i64* %PC.i269
  %724 = inttoptr i64 %721 to double*
  %725 = load double, double* %724
  %726 = bitcast i8* %719 to double*
  store double %725, double* %726, align 1
  %727 = getelementptr inbounds i8, i8* %719, i64 8
  %728 = bitcast i8* %727 to double*
  store double 0.000000e+00, double* %728, align 1
  store %struct.Memory* %loadMem_400bcc, %struct.Memory** %MEMORY
  %loadMem_400bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 15
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %737 to i64*
  %738 = load i64, i64* %RBP.i268
  %739 = sub i64 %738, 40
  %740 = load i64, i64* %PC.i266
  %741 = add i64 %740, 4
  store i64 %741, i64* %PC.i266
  %742 = inttoptr i64 %739 to i64*
  %743 = load i64, i64* %742
  store i64 %743, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_400bd1, %struct.Memory** %MEMORY
  %loadMem_400bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 5
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 15
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %752 to i64*
  %753 = load i64, i64* %RBP.i265
  %754 = sub i64 %753, 48
  %755 = load i64, i64* %PC.i263
  %756 = add i64 %755, 4
  store i64 %756, i64* %PC.i263
  %757 = inttoptr i64 %754 to i32*
  %758 = load i32, i32* %757
  %759 = sext i32 %758 to i64
  store i64 %759, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_400bd5, %struct.Memory** %MEMORY
  %loadMem_400bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 33
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 1
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %765 to i64*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 5
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %769, i64 0, i64 1
  %YMM1.i262 = bitcast %union.VectorReg* %770 to %"class.std::bitset"*
  %771 = bitcast %"class.std::bitset"* %YMM1.i262 to i8*
  %772 = load i64, i64* %RAX.i260
  %773 = load i64, i64* %RCX.i261
  %774 = mul i64 %773, 8
  %775 = add i64 %774, %772
  %776 = load i64, i64* %PC.i259
  %777 = add i64 %776, 5
  store i64 %777, i64* %PC.i259
  %778 = inttoptr i64 %775 to double*
  %779 = load double, double* %778
  %780 = bitcast i8* %771 to double*
  store double %779, double* %780, align 1
  %781 = getelementptr inbounds i8, i8* %771, i64 8
  %782 = bitcast i8* %781 to double*
  store double 0.000000e+00, double* %782, align 1
  store %struct.Memory* %loadMem_400bd9, %struct.Memory** %MEMORY
  %loadMem_400bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %787 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %786, i64 0, i64 1
  %YMM1.i257 = bitcast %union.VectorReg* %787 to %"class.std::bitset"*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %789 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %788, i64 0, i64 0
  %XMM0.i258 = bitcast %union.VectorReg* %789 to %union.vec128_t*
  %790 = bitcast %"class.std::bitset"* %YMM1.i257 to i8*
  %791 = bitcast %"class.std::bitset"* %YMM1.i257 to i8*
  %792 = bitcast %union.vec128_t* %XMM0.i258 to i8*
  %793 = load i64, i64* %PC.i256
  %794 = add i64 %793, 4
  store i64 %794, i64* %PC.i256
  %795 = bitcast i8* %791 to double*
  %796 = load double, double* %795, align 1
  %797 = getelementptr inbounds i8, i8* %791, i64 8
  %798 = bitcast i8* %797 to i64*
  %799 = load i64, i64* %798, align 1
  %800 = bitcast i8* %792 to double*
  %801 = load double, double* %800, align 1
  %802 = fdiv double %796, %801
  %803 = bitcast i8* %790 to double*
  store double %802, double* %803, align 1
  %804 = getelementptr inbounds i8, i8* %790, i64 8
  %805 = bitcast i8* %804 to i64*
  store i64 %799, i64* %805, align 1
  store %struct.Memory* %loadMem_400bde, %struct.Memory** %MEMORY
  %loadMem_400be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 33
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %808 to i64*
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 1
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %811 to i64*
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 5
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %816 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %815, i64 0, i64 1
  %XMM1.i255 = bitcast %union.VectorReg* %816 to %union.vec128_t*
  %817 = load i64, i64* %RAX.i253
  %818 = load i64, i64* %RCX.i254
  %819 = mul i64 %818, 8
  %820 = add i64 %819, %817
  %821 = bitcast %union.vec128_t* %XMM1.i255 to i8*
  %822 = load i64, i64* %PC.i252
  %823 = add i64 %822, 5
  store i64 %823, i64* %PC.i252
  %824 = bitcast i8* %821 to double*
  %825 = load double, double* %824, align 1
  %826 = inttoptr i64 %820 to double*
  store double %825, double* %826
  store %struct.Memory* %loadMem_400be2, %struct.Memory** %MEMORY
  %loadMem_400be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 33
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 1
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 15
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %835 to i64*
  %836 = load i64, i64* %RBP.i251
  %837 = sub i64 %836, 48
  %838 = load i64, i64* %PC.i249
  %839 = add i64 %838, 3
  store i64 %839, i64* %PC.i249
  %840 = inttoptr i64 %837 to i32*
  %841 = load i32, i32* %840
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_400be7, %struct.Memory** %MEMORY
  %loadMem_400bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 33
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %845 to i64*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 1
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %848 to i64*
  %849 = load i64, i64* %RAX.i248
  %850 = load i64, i64* %PC.i247
  %851 = add i64 %850, 3
  store i64 %851, i64* %PC.i247
  %852 = trunc i64 %849 to i32
  %853 = add i32 1, %852
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RAX.i248, align 8
  %855 = icmp ult i32 %853, %852
  %856 = icmp ult i32 %853, 1
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %858, i8* %859, align 1
  %860 = and i32 %853, 255
  %861 = call i32 @llvm.ctpop.i32(i32 %860)
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %864, i8* %865, align 1
  %866 = xor i64 1, %849
  %867 = trunc i64 %866 to i32
  %868 = xor i32 %867, %853
  %869 = lshr i32 %868, 4
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %871, i8* %872, align 1
  %873 = icmp eq i32 %853, 0
  %874 = zext i1 %873 to i8
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %874, i8* %875, align 1
  %876 = lshr i32 %853, 31
  %877 = trunc i32 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %877, i8* %878, align 1
  %879 = lshr i32 %852, 31
  %880 = xor i32 %876, %879
  %881 = add i32 %880, %876
  %882 = icmp eq i32 %881, 2
  %883 = zext i1 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %883, i8* %884, align 1
  store %struct.Memory* %loadMem_400bea, %struct.Memory** %MEMORY
  %loadMem_400bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 1
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %EAX.i245 = bitcast %union.anon* %890 to i32*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 15
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %893 to i64*
  %894 = load i64, i64* %RBP.i246
  %895 = sub i64 %894, 48
  %896 = load i32, i32* %EAX.i245
  %897 = zext i32 %896 to i64
  %898 = load i64, i64* %PC.i244
  %899 = add i64 %898, 3
  store i64 %899, i64* %PC.i244
  %900 = inttoptr i64 %895 to i32*
  store i32 %896, i32* %900
  store %struct.Memory* %loadMem_400bed, %struct.Memory** %MEMORY
  %loadMem_400bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %PC.i243
  %905 = add i64 %904, -142
  %906 = load i64, i64* %PC.i243
  %907 = add i64 %906, 5
  store i64 %907, i64* %PC.i243
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %905, i64* %908, align 8
  store %struct.Memory* %loadMem_400bf0, %struct.Memory** %MEMORY
  br label %block_.L_400b62

block_.L_400bf5:                                  ; preds = %block_.L_400b62
  %loadMem_400bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 33
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %911 to i64*
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 15
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %914 to i64*
  %915 = load i64, i64* %RBP.i242
  %916 = sub i64 %915, 44
  %917 = load i64, i64* %PC.i241
  %918 = add i64 %917, 7
  store i64 %918, i64* %PC.i241
  %919 = inttoptr i64 %916 to i32*
  store i32 0, i32* %919
  store %struct.Memory* %loadMem_400bf5, %struct.Memory** %MEMORY
  br label %block_.L_400bfc

block_.L_400bfc:                                  ; preds = %block_.L_400c5f, %block_.L_400bf5
  %loadMem_400bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 1
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 15
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %RBP.i240
  %930 = sub i64 %929, 44
  %931 = load i64, i64* %PC.i238
  %932 = add i64 %931, 3
  store i64 %932, i64* %PC.i238
  %933 = inttoptr i64 %930 to i32*
  %934 = load i32, i32* %933
  %935 = zext i32 %934 to i64
  store i64 %935, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_400bfc, %struct.Memory** %MEMORY
  %loadMem_400bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 1
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %EAX.i236 = bitcast %union.anon* %941 to i32*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 15
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %944 to i64*
  %945 = load i32, i32* %EAX.i236
  %946 = zext i32 %945 to i64
  %947 = load i64, i64* %RBP.i237
  %948 = sub i64 %947, 8
  %949 = load i64, i64* %PC.i235
  %950 = add i64 %949, 3
  store i64 %950, i64* %PC.i235
  %951 = inttoptr i64 %948 to i32*
  %952 = load i32, i32* %951
  %953 = sub i32 %945, %952
  %954 = icmp ult i32 %945, %952
  %955 = zext i1 %954 to i8
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %955, i8* %956, align 1
  %957 = and i32 %953, 255
  %958 = call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %961, i8* %962, align 1
  %963 = xor i32 %952, %945
  %964 = xor i32 %963, %953
  %965 = lshr i32 %964, 4
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %967, i8* %968, align 1
  %969 = icmp eq i32 %953, 0
  %970 = zext i1 %969 to i8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %970, i8* %971, align 1
  %972 = lshr i32 %953, 31
  %973 = trunc i32 %972 to i8
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %973, i8* %974, align 1
  %975 = lshr i32 %945, 31
  %976 = lshr i32 %952, 31
  %977 = xor i32 %976, %975
  %978 = xor i32 %972, %975
  %979 = add i32 %978, %977
  %980 = icmp eq i32 %979, 2
  %981 = zext i1 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %981, i8* %982, align 1
  store %struct.Memory* %loadMem_400bff, %struct.Memory** %MEMORY
  %loadMem_400c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %985 to i64*
  %986 = load i64, i64* %PC.i234
  %987 = add i64 %986, 107
  %988 = load i64, i64* %PC.i234
  %989 = add i64 %988, 6
  %990 = load i64, i64* %PC.i234
  %991 = add i64 %990, 6
  store i64 %991, i64* %PC.i234
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %993 = load i8, i8* %992, align 1
  %994 = icmp ne i8 %993, 0
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %996 = load i8, i8* %995, align 1
  %997 = icmp ne i8 %996, 0
  %998 = xor i1 %994, %997
  %999 = xor i1 %998, true
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %BRANCH_TAKEN, align 1
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1002 = select i1 %998, i64 %989, i64 %987
  store i64 %1002, i64* %1001, align 8
  store %struct.Memory* %loadMem_400c02, %struct.Memory** %MEMORY
  %loadBr_400c02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c02 = icmp eq i8 %loadBr_400c02, 1
  br i1 %cmpBr_400c02, label %block_.L_400c6d, label %block_400c08

block_400c08:                                     ; preds = %block_.L_400bfc
  %loadMem_400c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 15
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %RBP.i233
  %1010 = sub i64 %1009, 48
  %1011 = load i64, i64* %PC.i232
  %1012 = add i64 %1011, 7
  store i64 %1012, i64* %PC.i232
  %1013 = inttoptr i64 %1010 to i32*
  store i32 0, i32* %1013
  store %struct.Memory* %loadMem_400c08, %struct.Memory** %MEMORY
  br label %block_.L_400c0f

block_.L_400c0f:                                  ; preds = %block_400c1b, %block_400c08
  %loadMem_400c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 33
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1016 to i64*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 1
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 15
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %1022 to i64*
  %1023 = load i64, i64* %RBP.i231
  %1024 = sub i64 %1023, 48
  %1025 = load i64, i64* %PC.i229
  %1026 = add i64 %1025, 3
  store i64 %1026, i64* %PC.i229
  %1027 = inttoptr i64 %1024 to i32*
  %1028 = load i32, i32* %1027
  %1029 = zext i32 %1028 to i64
  store i64 %1029, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_400c0f, %struct.Memory** %MEMORY
  %loadMem_400c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 33
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 1
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %EAX.i227 = bitcast %union.anon* %1035 to i32*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 15
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %1038 to i64*
  %1039 = load i32, i32* %EAX.i227
  %1040 = zext i32 %1039 to i64
  %1041 = load i64, i64* %RBP.i228
  %1042 = sub i64 %1041, 4
  %1043 = load i64, i64* %PC.i226
  %1044 = add i64 %1043, 3
  store i64 %1044, i64* %PC.i226
  %1045 = inttoptr i64 %1042 to i32*
  %1046 = load i32, i32* %1045
  %1047 = sub i32 %1039, %1046
  %1048 = icmp ult i32 %1039, %1046
  %1049 = zext i1 %1048 to i8
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1049, i8* %1050, align 1
  %1051 = and i32 %1047, 255
  %1052 = call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1055, i8* %1056, align 1
  %1057 = xor i32 %1046, %1039
  %1058 = xor i32 %1057, %1047
  %1059 = lshr i32 %1058, 4
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1061, i8* %1062, align 1
  %1063 = icmp eq i32 %1047, 0
  %1064 = zext i1 %1063 to i8
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1064, i8* %1065, align 1
  %1066 = lshr i32 %1047, 31
  %1067 = trunc i32 %1066 to i8
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1067, i8* %1068, align 1
  %1069 = lshr i32 %1039, 31
  %1070 = lshr i32 %1046, 31
  %1071 = xor i32 %1070, %1069
  %1072 = xor i32 %1066, %1069
  %1073 = add i32 %1072, %1071
  %1074 = icmp eq i32 %1073, 2
  %1075 = zext i1 %1074 to i8
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1075, i8* %1076, align 1
  store %struct.Memory* %loadMem_400c12, %struct.Memory** %MEMORY
  %loadMem_400c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 33
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1079 to i64*
  %1080 = load i64, i64* %PC.i225
  %1081 = add i64 %1080, 69
  %1082 = load i64, i64* %PC.i225
  %1083 = add i64 %1082, 6
  %1084 = load i64, i64* %PC.i225
  %1085 = add i64 %1084, 6
  store i64 %1085, i64* %PC.i225
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1087 = load i8, i8* %1086, align 1
  %1088 = icmp ne i8 %1087, 0
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1090 = load i8, i8* %1089, align 1
  %1091 = icmp ne i8 %1090, 0
  %1092 = xor i1 %1088, %1091
  %1093 = xor i1 %1092, true
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %BRANCH_TAKEN, align 1
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1096 = select i1 %1092, i64 %1083, i64 %1081
  store i64 %1096, i64* %1095, align 8
  store %struct.Memory* %loadMem_400c15, %struct.Memory** %MEMORY
  %loadBr_400c15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c15 = icmp eq i8 %loadBr_400c15, 1
  br i1 %cmpBr_400c15, label %block_.L_400c5a, label %block_400c1b

block_400c1b:                                     ; preds = %block_.L_400c0f
  %loadMem_400c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 33
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 1
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 15
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %RBP.i224
  %1107 = sub i64 %1106, 40
  %1108 = load i64, i64* %PC.i222
  %1109 = add i64 %1108, 4
  store i64 %1109, i64* %PC.i222
  %1110 = inttoptr i64 %1107 to i64*
  %1111 = load i64, i64* %1110
  store i64 %1111, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_400c1b, %struct.Memory** %MEMORY
  %loadMem_400c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 5
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %1117 to i64*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 15
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %1120 to i64*
  %1121 = load i64, i64* %RBP.i221
  %1122 = sub i64 %1121, 48
  %1123 = load i64, i64* %PC.i219
  %1124 = add i64 %1123, 4
  store i64 %1124, i64* %PC.i219
  %1125 = inttoptr i64 %1122 to i32*
  %1126 = load i32, i32* %1125
  %1127 = sext i32 %1126 to i64
  store i64 %1127, i64* %RCX.i220, align 8
  store %struct.Memory* %loadMem_400c1f, %struct.Memory** %MEMORY
  %loadMem_400c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 33
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 1
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 5
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1137, i64 0, i64 0
  %YMM0.i218 = bitcast %union.VectorReg* %1138 to %"class.std::bitset"*
  %1139 = bitcast %"class.std::bitset"* %YMM0.i218 to i8*
  %1140 = load i64, i64* %RAX.i216
  %1141 = load i64, i64* %RCX.i217
  %1142 = mul i64 %1141, 8
  %1143 = add i64 %1142, %1140
  %1144 = load i64, i64* %PC.i215
  %1145 = add i64 %1144, 5
  store i64 %1145, i64* %PC.i215
  %1146 = inttoptr i64 %1143 to double*
  %1147 = load double, double* %1146
  %1148 = bitcast i8* %1139 to double*
  store double %1147, double* %1148, align 1
  %1149 = getelementptr inbounds i8, i8* %1139, i64 8
  %1150 = bitcast i8* %1149 to double*
  store double 0.000000e+00, double* %1150, align 1
  store %struct.Memory* %loadMem_400c23, %struct.Memory** %MEMORY
  %loadMem_400c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 1
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 15
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %RBP.i214
  %1161 = sub i64 %1160, 24
  %1162 = load i64, i64* %PC.i212
  %1163 = add i64 %1162, 4
  store i64 %1163, i64* %PC.i212
  %1164 = inttoptr i64 %1161 to i64*
  %1165 = load i64, i64* %1164
  store i64 %1165, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_400c28, %struct.Memory** %MEMORY
  %loadMem_400c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 5
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RCX.i210 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 15
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %RBP.i211
  %1176 = sub i64 %1175, 44
  %1177 = load i64, i64* %PC.i209
  %1178 = add i64 %1177, 4
  store i64 %1178, i64* %PC.i209
  %1179 = inttoptr i64 %1176 to i32*
  %1180 = load i32, i32* %1179
  %1181 = sext i32 %1180 to i64
  store i64 %1181, i64* %RCX.i210, align 8
  store %struct.Memory* %loadMem_400c2c, %struct.Memory** %MEMORY
  %loadMem_400c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 33
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 5
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %1187 to i64*
  %1188 = load i64, i64* %RCX.i208
  %1189 = load i64, i64* %PC.i207
  %1190 = add i64 %1189, 7
  store i64 %1190, i64* %PC.i207
  %1191 = sext i64 %1188 to i128
  %1192 = and i128 %1191, -18446744073709551616
  %1193 = zext i64 %1188 to i128
  %1194 = or i128 %1192, %1193
  %1195 = mul i128 8000, %1194
  %1196 = trunc i128 %1195 to i64
  store i64 %1196, i64* %RCX.i208, align 8
  %1197 = sext i64 %1196 to i128
  %1198 = icmp ne i128 %1197, %1195
  %1199 = zext i1 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1199, i8* %1200, align 1
  %1201 = trunc i128 %1195 to i32
  %1202 = and i32 %1201, 255
  %1203 = call i32 @llvm.ctpop.i32(i32 %1202)
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1206, i8* %1207, align 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1208, align 1
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1209, align 1
  %1210 = lshr i64 %1196, 63
  %1211 = trunc i64 %1210 to i8
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1211, i8* %1212, align 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1199, i8* %1213, align 1
  store %struct.Memory* %loadMem_400c30, %struct.Memory** %MEMORY
  %loadMem_400c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 33
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1216 to i64*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 1
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 5
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %1222 to i64*
  %1223 = load i64, i64* %RAX.i205
  %1224 = load i64, i64* %RCX.i206
  %1225 = load i64, i64* %PC.i204
  %1226 = add i64 %1225, 3
  store i64 %1226, i64* %PC.i204
  %1227 = add i64 %1224, %1223
  store i64 %1227, i64* %RAX.i205, align 8
  %1228 = icmp ult i64 %1227, %1223
  %1229 = icmp ult i64 %1227, %1224
  %1230 = or i1 %1228, %1229
  %1231 = zext i1 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1231, i8* %1232, align 1
  %1233 = trunc i64 %1227 to i32
  %1234 = and i32 %1233, 255
  %1235 = call i32 @llvm.ctpop.i32(i32 %1234)
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1238, i8* %1239, align 1
  %1240 = xor i64 %1224, %1223
  %1241 = xor i64 %1240, %1227
  %1242 = lshr i64 %1241, 4
  %1243 = trunc i64 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1244, i8* %1245, align 1
  %1246 = icmp eq i64 %1227, 0
  %1247 = zext i1 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1247, i8* %1248, align 1
  %1249 = lshr i64 %1227, 63
  %1250 = trunc i64 %1249 to i8
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1250, i8* %1251, align 1
  %1252 = lshr i64 %1223, 63
  %1253 = lshr i64 %1224, 63
  %1254 = xor i64 %1249, %1252
  %1255 = xor i64 %1249, %1253
  %1256 = add i64 %1254, %1255
  %1257 = icmp eq i64 %1256, 2
  %1258 = zext i1 %1257 to i8
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1258, i8* %1259, align 1
  store %struct.Memory* %loadMem_400c37, %struct.Memory** %MEMORY
  %loadMem_400c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 33
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 5
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 15
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %1268 to i64*
  %1269 = load i64, i64* %RBP.i203
  %1270 = sub i64 %1269, 48
  %1271 = load i64, i64* %PC.i201
  %1272 = add i64 %1271, 4
  store i64 %1272, i64* %PC.i201
  %1273 = inttoptr i64 %1270 to i32*
  %1274 = load i32, i32* %1273
  %1275 = sext i32 %1274 to i64
  store i64 %1275, i64* %RCX.i202, align 8
  store %struct.Memory* %loadMem_400c3a, %struct.Memory** %MEMORY
  %loadMem_400c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 33
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 1
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 5
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1286 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1285, i64 0, i64 1
  %YMM1.i200 = bitcast %union.VectorReg* %1286 to %"class.std::bitset"*
  %1287 = bitcast %"class.std::bitset"* %YMM1.i200 to i8*
  %1288 = load i64, i64* %RAX.i198
  %1289 = load i64, i64* %RCX.i199
  %1290 = mul i64 %1289, 8
  %1291 = add i64 %1290, %1288
  %1292 = load i64, i64* %PC.i197
  %1293 = add i64 %1292, 5
  store i64 %1293, i64* %PC.i197
  %1294 = inttoptr i64 %1291 to double*
  %1295 = load double, double* %1294
  %1296 = bitcast i8* %1287 to double*
  store double %1295, double* %1296, align 1
  %1297 = getelementptr inbounds i8, i8* %1287, i64 8
  %1298 = bitcast i8* %1297 to double*
  store double 0.000000e+00, double* %1298, align 1
  store %struct.Memory* %loadMem_400c3e, %struct.Memory** %MEMORY
  %loadMem_400c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1302, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1303 to %"class.std::bitset"*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1304, i64 0, i64 0
  %XMM0.i196 = bitcast %union.VectorReg* %1305 to %union.vec128_t*
  %1306 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1307 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1308 = bitcast %union.vec128_t* %XMM0.i196 to i8*
  %1309 = load i64, i64* %PC.i195
  %1310 = add i64 %1309, 4
  store i64 %1310, i64* %PC.i195
  %1311 = bitcast i8* %1307 to double*
  %1312 = load double, double* %1311, align 1
  %1313 = getelementptr inbounds i8, i8* %1307, i64 8
  %1314 = bitcast i8* %1313 to i64*
  %1315 = load i64, i64* %1314, align 1
  %1316 = bitcast i8* %1308 to double*
  %1317 = load double, double* %1316, align 1
  %1318 = fsub double %1312, %1317
  %1319 = bitcast i8* %1306 to double*
  store double %1318, double* %1319, align 1
  %1320 = getelementptr inbounds i8, i8* %1306, i64 8
  %1321 = bitcast i8* %1320 to i64*
  store i64 %1315, i64* %1321, align 1
  store %struct.Memory* %loadMem_400c43, %struct.Memory** %MEMORY
  %loadMem_400c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 33
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %1324 to i64*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 1
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 5
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1332 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1331, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1332 to %union.vec128_t*
  %1333 = load i64, i64* %RAX.i193
  %1334 = load i64, i64* %RCX.i194
  %1335 = mul i64 %1334, 8
  %1336 = add i64 %1335, %1333
  %1337 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1338 = load i64, i64* %PC.i192
  %1339 = add i64 %1338, 5
  store i64 %1339, i64* %PC.i192
  %1340 = bitcast i8* %1337 to double*
  %1341 = load double, double* %1340, align 1
  %1342 = inttoptr i64 %1336 to double*
  store double %1341, double* %1342
  store %struct.Memory* %loadMem_400c47, %struct.Memory** %MEMORY
  %loadMem_400c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 1
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 15
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %1351 to i64*
  %1352 = load i64, i64* %RBP.i191
  %1353 = sub i64 %1352, 48
  %1354 = load i64, i64* %PC.i189
  %1355 = add i64 %1354, 3
  store i64 %1355, i64* %PC.i189
  %1356 = inttoptr i64 %1353 to i32*
  %1357 = load i32, i32* %1356
  %1358 = zext i32 %1357 to i64
  store i64 %1358, i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_400c4c, %struct.Memory** %MEMORY
  %loadMem_400c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 1
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %1364 to i64*
  %1365 = load i64, i64* %RAX.i188
  %1366 = load i64, i64* %PC.i187
  %1367 = add i64 %1366, 3
  store i64 %1367, i64* %PC.i187
  %1368 = trunc i64 %1365 to i32
  %1369 = add i32 1, %1368
  %1370 = zext i32 %1369 to i64
  store i64 %1370, i64* %RAX.i188, align 8
  %1371 = icmp ult i32 %1369, %1368
  %1372 = icmp ult i32 %1369, 1
  %1373 = or i1 %1371, %1372
  %1374 = zext i1 %1373 to i8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1374, i8* %1375, align 1
  %1376 = and i32 %1369, 255
  %1377 = call i32 @llvm.ctpop.i32(i32 %1376)
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1380, i8* %1381, align 1
  %1382 = xor i64 1, %1365
  %1383 = trunc i64 %1382 to i32
  %1384 = xor i32 %1383, %1369
  %1385 = lshr i32 %1384, 4
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1387, i8* %1388, align 1
  %1389 = icmp eq i32 %1369, 0
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1390, i8* %1391, align 1
  %1392 = lshr i32 %1369, 31
  %1393 = trunc i32 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1393, i8* %1394, align 1
  %1395 = lshr i32 %1368, 31
  %1396 = xor i32 %1392, %1395
  %1397 = add i32 %1396, %1392
  %1398 = icmp eq i32 %1397, 2
  %1399 = zext i1 %1398 to i8
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1399, i8* %1400, align 1
  store %struct.Memory* %loadMem_400c4f, %struct.Memory** %MEMORY
  %loadMem_400c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 1
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %EAX.i185 = bitcast %union.anon* %1406 to i32*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 15
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %1409 to i64*
  %1410 = load i64, i64* %RBP.i186
  %1411 = sub i64 %1410, 48
  %1412 = load i32, i32* %EAX.i185
  %1413 = zext i32 %1412 to i64
  %1414 = load i64, i64* %PC.i184
  %1415 = add i64 %1414, 3
  store i64 %1415, i64* %PC.i184
  %1416 = inttoptr i64 %1411 to i32*
  store i32 %1412, i32* %1416
  store %struct.Memory* %loadMem_400c52, %struct.Memory** %MEMORY
  %loadMem_400c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 33
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1419 to i64*
  %1420 = load i64, i64* %PC.i183
  %1421 = add i64 %1420, -70
  %1422 = load i64, i64* %PC.i183
  %1423 = add i64 %1422, 5
  store i64 %1423, i64* %PC.i183
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1421, i64* %1424, align 8
  store %struct.Memory* %loadMem_400c55, %struct.Memory** %MEMORY
  br label %block_.L_400c0f

block_.L_400c5a:                                  ; preds = %block_.L_400c0f
  %loadMem_400c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 33
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1427 to i64*
  %1428 = load i64, i64* %PC.i182
  %1429 = add i64 %1428, 5
  %1430 = load i64, i64* %PC.i182
  %1431 = add i64 %1430, 5
  store i64 %1431, i64* %PC.i182
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1429, i64* %1432, align 8
  store %struct.Memory* %loadMem_400c5a, %struct.Memory** %MEMORY
  br label %block_.L_400c5f

block_.L_400c5f:                                  ; preds = %block_.L_400c5a
  %loadMem_400c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 1
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 15
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %1441 to i64*
  %1442 = load i64, i64* %RBP.i181
  %1443 = sub i64 %1442, 44
  %1444 = load i64, i64* %PC.i179
  %1445 = add i64 %1444, 3
  store i64 %1445, i64* %PC.i179
  %1446 = inttoptr i64 %1443 to i32*
  %1447 = load i32, i32* %1446
  %1448 = zext i32 %1447 to i64
  store i64 %1448, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_400c5f, %struct.Memory** %MEMORY
  %loadMem_400c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 1
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %RAX.i178
  %1456 = load i64, i64* %PC.i177
  %1457 = add i64 %1456, 3
  store i64 %1457, i64* %PC.i177
  %1458 = trunc i64 %1455 to i32
  %1459 = add i32 1, %1458
  %1460 = zext i32 %1459 to i64
  store i64 %1460, i64* %RAX.i178, align 8
  %1461 = icmp ult i32 %1459, %1458
  %1462 = icmp ult i32 %1459, 1
  %1463 = or i1 %1461, %1462
  %1464 = zext i1 %1463 to i8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1464, i8* %1465, align 1
  %1466 = and i32 %1459, 255
  %1467 = call i32 @llvm.ctpop.i32(i32 %1466)
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = xor i8 %1469, 1
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1470, i8* %1471, align 1
  %1472 = xor i64 1, %1455
  %1473 = trunc i64 %1472 to i32
  %1474 = xor i32 %1473, %1459
  %1475 = lshr i32 %1474, 4
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1477, i8* %1478, align 1
  %1479 = icmp eq i32 %1459, 0
  %1480 = zext i1 %1479 to i8
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1480, i8* %1481, align 1
  %1482 = lshr i32 %1459, 31
  %1483 = trunc i32 %1482 to i8
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1483, i8* %1484, align 1
  %1485 = lshr i32 %1458, 31
  %1486 = xor i32 %1482, %1485
  %1487 = add i32 %1486, %1482
  %1488 = icmp eq i32 %1487, 2
  %1489 = zext i1 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1489, i8* %1490, align 1
  store %struct.Memory* %loadMem_400c62, %struct.Memory** %MEMORY
  %loadMem_400c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 1
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %EAX.i175 = bitcast %union.anon* %1496 to i32*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 15
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %RBP.i176
  %1501 = sub i64 %1500, 44
  %1502 = load i32, i32* %EAX.i175
  %1503 = zext i32 %1502 to i64
  %1504 = load i64, i64* %PC.i174
  %1505 = add i64 %1504, 3
  store i64 %1505, i64* %PC.i174
  %1506 = inttoptr i64 %1501 to i32*
  store i32 %1502, i32* %1506
  store %struct.Memory* %loadMem_400c65, %struct.Memory** %MEMORY
  %loadMem_400c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1509 to i64*
  %1510 = load i64, i64* %PC.i173
  %1511 = add i64 %1510, -108
  %1512 = load i64, i64* %PC.i173
  %1513 = add i64 %1512, 5
  store i64 %1513, i64* %PC.i173
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1511, i64* %1514, align 8
  store %struct.Memory* %loadMem_400c68, %struct.Memory** %MEMORY
  br label %block_.L_400bfc

block_.L_400c6d:                                  ; preds = %block_.L_400bfc
  %loadMem_400c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 33
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1517 to i64*
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 15
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %1520 to i64*
  %1521 = load i64, i64* %RBP.i172
  %1522 = sub i64 %1521, 52
  %1523 = load i64, i64* %PC.i171
  %1524 = add i64 %1523, 7
  store i64 %1524, i64* %PC.i171
  %1525 = inttoptr i64 %1522 to i32*
  store i32 0, i32* %1525
  store %struct.Memory* %loadMem_400c6d, %struct.Memory** %MEMORY
  br label %block_.L_400c74

block_.L_400c74:                                  ; preds = %block_.L_400d70, %block_.L_400c6d
  %loadMem_400c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 1
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %RBP.i170
  %1536 = sub i64 %1535, 52
  %1537 = load i64, i64* %PC.i168
  %1538 = add i64 %1537, 3
  store i64 %1538, i64* %PC.i168
  %1539 = inttoptr i64 %1536 to i32*
  %1540 = load i32, i32* %1539
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RAX.i169, align 8
  store %struct.Memory* %loadMem_400c74, %struct.Memory** %MEMORY
  %loadMem_400c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 1
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %1547 to i32*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 15
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %1550 to i64*
  %1551 = load i32, i32* %EAX.i166
  %1552 = zext i32 %1551 to i64
  %1553 = load i64, i64* %RBP.i167
  %1554 = sub i64 %1553, 4
  %1555 = load i64, i64* %PC.i165
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC.i165
  %1557 = inttoptr i64 %1554 to i32*
  %1558 = load i32, i32* %1557
  %1559 = sub i32 %1551, %1558
  %1560 = icmp ult i32 %1551, %1558
  %1561 = zext i1 %1560 to i8
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1561, i8* %1562, align 1
  %1563 = and i32 %1559, 255
  %1564 = call i32 @llvm.ctpop.i32(i32 %1563)
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  %1567 = xor i8 %1566, 1
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1567, i8* %1568, align 1
  %1569 = xor i32 %1558, %1551
  %1570 = xor i32 %1569, %1559
  %1571 = lshr i32 %1570, 4
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1573, i8* %1574, align 1
  %1575 = icmp eq i32 %1559, 0
  %1576 = zext i1 %1575 to i8
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1576, i8* %1577, align 1
  %1578 = lshr i32 %1559, 31
  %1579 = trunc i32 %1578 to i8
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1579, i8* %1580, align 1
  %1581 = lshr i32 %1551, 31
  %1582 = lshr i32 %1558, 31
  %1583 = xor i32 %1582, %1581
  %1584 = xor i32 %1578, %1581
  %1585 = add i32 %1584, %1583
  %1586 = icmp eq i32 %1585, 2
  %1587 = zext i1 %1586 to i8
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1587, i8* %1588, align 1
  store %struct.Memory* %loadMem_400c77, %struct.Memory** %MEMORY
  %loadMem_400c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 33
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1591 to i64*
  %1592 = load i64, i64* %PC.i164
  %1593 = add i64 %1592, 260
  %1594 = load i64, i64* %PC.i164
  %1595 = add i64 %1594, 6
  %1596 = load i64, i64* %PC.i164
  %1597 = add i64 %1596, 6
  store i64 %1597, i64* %PC.i164
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1599 = load i8, i8* %1598, align 1
  %1600 = icmp ne i8 %1599, 0
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1602 = load i8, i8* %1601, align 1
  %1603 = icmp ne i8 %1602, 0
  %1604 = xor i1 %1600, %1603
  %1605 = xor i1 %1604, true
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %BRANCH_TAKEN, align 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1608 = select i1 %1604, i64 %1595, i64 %1593
  store i64 %1608, i64* %1607, align 8
  store %struct.Memory* %loadMem_400c7a, %struct.Memory** %MEMORY
  %loadBr_400c7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c7a = icmp eq i8 %loadBr_400c7a, 1
  br i1 %cmpBr_400c7a, label %block_.L_400d7e, label %block_400c80

block_400c80:                                     ; preds = %block_.L_400c74
  %loadMem_400c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 33
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 1
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 15
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %1617 to i64*
  %1618 = load i64, i64* %RBP.i163
  %1619 = sub i64 %1618, 52
  %1620 = load i64, i64* %PC.i161
  %1621 = add i64 %1620, 3
  store i64 %1621, i64* %PC.i161
  %1622 = inttoptr i64 %1619 to i32*
  %1623 = load i32, i32* %1622
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_400c80, %struct.Memory** %MEMORY
  %loadMem_400c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 1
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %1630 to i32*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 15
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %RBP.i160
  %1635 = sub i64 %1634, 56
  %1636 = load i32, i32* %EAX.i159
  %1637 = zext i32 %1636 to i64
  %1638 = load i64, i64* %PC.i158
  %1639 = add i64 %1638, 3
  store i64 %1639, i64* %PC.i158
  %1640 = inttoptr i64 %1635 to i32*
  store i32 %1636, i32* %1640
  store %struct.Memory* %loadMem_400c83, %struct.Memory** %MEMORY
  br label %block_.L_400c86

block_.L_400c86:                                  ; preds = %block_.L_400d27, %block_400c80
  %loadMem_400c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 33
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 1
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %1646 to i64*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 15
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %1649 to i64*
  %1650 = load i64, i64* %RBP.i157
  %1651 = sub i64 %1650, 56
  %1652 = load i64, i64* %PC.i155
  %1653 = add i64 %1652, 3
  store i64 %1653, i64* %PC.i155
  %1654 = inttoptr i64 %1651 to i32*
  %1655 = load i32, i32* %1654
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_400c86, %struct.Memory** %MEMORY
  %loadMem_400c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 1
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %1662 to i32*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 15
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %1665 to i64*
  %1666 = load i32, i32* %EAX.i153
  %1667 = zext i32 %1666 to i64
  %1668 = load i64, i64* %RBP.i154
  %1669 = sub i64 %1668, 4
  %1670 = load i64, i64* %PC.i152
  %1671 = add i64 %1670, 3
  store i64 %1671, i64* %PC.i152
  %1672 = inttoptr i64 %1669 to i32*
  %1673 = load i32, i32* %1672
  %1674 = sub i32 %1666, %1673
  %1675 = icmp ult i32 %1666, %1673
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1676, i8* %1677, align 1
  %1678 = and i32 %1674, 255
  %1679 = call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1682, i8* %1683, align 1
  %1684 = xor i32 %1673, %1666
  %1685 = xor i32 %1684, %1674
  %1686 = lshr i32 %1685, 4
  %1687 = trunc i32 %1686 to i8
  %1688 = and i8 %1687, 1
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1688, i8* %1689, align 1
  %1690 = icmp eq i32 %1674, 0
  %1691 = zext i1 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1691, i8* %1692, align 1
  %1693 = lshr i32 %1674, 31
  %1694 = trunc i32 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1694, i8* %1695, align 1
  %1696 = lshr i32 %1666, 31
  %1697 = lshr i32 %1673, 31
  %1698 = xor i32 %1697, %1696
  %1699 = xor i32 %1693, %1696
  %1700 = add i32 %1699, %1698
  %1701 = icmp eq i32 %1700, 2
  %1702 = zext i1 %1701 to i8
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1702, i8* %1703, align 1
  store %struct.Memory* %loadMem_400c89, %struct.Memory** %MEMORY
  %loadMem_400c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1706 to i64*
  %1707 = load i64, i64* %PC.i151
  %1708 = add i64 %1707, 223
  %1709 = load i64, i64* %PC.i151
  %1710 = add i64 %1709, 6
  %1711 = load i64, i64* %PC.i151
  %1712 = add i64 %1711, 6
  store i64 %1712, i64* %PC.i151
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1714 = load i8, i8* %1713, align 1
  %1715 = icmp ne i8 %1714, 0
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1717 = load i8, i8* %1716, align 1
  %1718 = icmp ne i8 %1717, 0
  %1719 = xor i1 %1715, %1718
  %1720 = xor i1 %1719, true
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %BRANCH_TAKEN, align 1
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1723 = select i1 %1719, i64 %1710, i64 %1708
  store i64 %1723, i64* %1722, align 8
  store %struct.Memory* %loadMem_400c8c, %struct.Memory** %MEMORY
  %loadBr_400c8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c8c = icmp eq i8 %loadBr_400c8c, 1
  br i1 %cmpBr_400c8c, label %block_.L_400d6b, label %block_400c92

block_400c92:                                     ; preds = %block_.L_400c86
  %loadMem_400c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1728 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1727, i64 0, i64 0
  %YMM0.i149 = bitcast %union.VectorReg* %1728 to %"class.std::bitset"*
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1730 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1729, i64 0, i64 0
  %XMM0.i150 = bitcast %union.VectorReg* %1730 to %union.vec128_t*
  %1731 = bitcast %"class.std::bitset"* %YMM0.i149 to i8*
  %1732 = bitcast %"class.std::bitset"* %YMM0.i149 to i8*
  %1733 = bitcast %union.vec128_t* %XMM0.i150 to i8*
  %1734 = load i64, i64* %PC.i148
  %1735 = add i64 %1734, 3
  store i64 %1735, i64* %PC.i148
  %1736 = bitcast i8* %1732 to i64*
  %1737 = load i64, i64* %1736, align 1
  %1738 = getelementptr inbounds i8, i8* %1732, i64 8
  %1739 = bitcast i8* %1738 to i64*
  %1740 = load i64, i64* %1739, align 1
  %1741 = bitcast i8* %1733 to i64*
  %1742 = load i64, i64* %1741, align 1
  %1743 = getelementptr inbounds i8, i8* %1733, i64 8
  %1744 = bitcast i8* %1743 to i64*
  %1745 = load i64, i64* %1744, align 1
  %1746 = xor i64 %1742, %1737
  %1747 = xor i64 %1745, %1740
  %1748 = trunc i64 %1746 to i32
  %1749 = lshr i64 %1746, 32
  %1750 = trunc i64 %1749 to i32
  %1751 = bitcast i8* %1731 to i32*
  store i32 %1748, i32* %1751, align 1
  %1752 = getelementptr inbounds i8, i8* %1731, i64 4
  %1753 = bitcast i8* %1752 to i32*
  store i32 %1750, i32* %1753, align 1
  %1754 = trunc i64 %1747 to i32
  %1755 = getelementptr inbounds i8, i8* %1731, i64 8
  %1756 = bitcast i8* %1755 to i32*
  store i32 %1754, i32* %1756, align 1
  %1757 = lshr i64 %1747, 32
  %1758 = trunc i64 %1757 to i32
  %1759 = getelementptr inbounds i8, i8* %1731, i64 12
  %1760 = bitcast i8* %1759 to i32*
  store i32 %1758, i32* %1760, align 1
  store %struct.Memory* %loadMem_400c92, %struct.Memory** %MEMORY
  %loadMem_400c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 33
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 1
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 15
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %1769 to i64*
  %1770 = load i64, i64* %RBP.i147
  %1771 = sub i64 %1770, 32
  %1772 = load i64, i64* %PC.i145
  %1773 = add i64 %1772, 4
  store i64 %1773, i64* %PC.i145
  %1774 = inttoptr i64 %1771 to i64*
  %1775 = load i64, i64* %1774
  store i64 %1775, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_400c95, %struct.Memory** %MEMORY
  %loadMem_400c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 33
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 5
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 15
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %1784 to i64*
  %1785 = load i64, i64* %RBP.i144
  %1786 = sub i64 %1785, 52
  %1787 = load i64, i64* %PC.i142
  %1788 = add i64 %1787, 4
  store i64 %1788, i64* %PC.i142
  %1789 = inttoptr i64 %1786 to i32*
  %1790 = load i32, i32* %1789
  %1791 = sext i32 %1790 to i64
  store i64 %1791, i64* %RCX.i143, align 8
  store %struct.Memory* %loadMem_400c99, %struct.Memory** %MEMORY
  %loadMem_400c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 33
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 5
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %1797 to i64*
  %1798 = load i64, i64* %RCX.i141
  %1799 = load i64, i64* %PC.i140
  %1800 = add i64 %1799, 7
  store i64 %1800, i64* %PC.i140
  %1801 = sext i64 %1798 to i128
  %1802 = and i128 %1801, -18446744073709551616
  %1803 = zext i64 %1798 to i128
  %1804 = or i128 %1802, %1803
  %1805 = mul i128 8000, %1804
  %1806 = trunc i128 %1805 to i64
  store i64 %1806, i64* %RCX.i141, align 8
  %1807 = sext i64 %1806 to i128
  %1808 = icmp ne i128 %1807, %1805
  %1809 = zext i1 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1809, i8* %1810, align 1
  %1811 = trunc i128 %1805 to i32
  %1812 = and i32 %1811, 255
  %1813 = call i32 @llvm.ctpop.i32(i32 %1812)
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  %1816 = xor i8 %1815, 1
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1816, i8* %1817, align 1
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1818, align 1
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1819, align 1
  %1820 = lshr i64 %1806, 63
  %1821 = trunc i64 %1820 to i8
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1821, i8* %1822, align 1
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1809, i8* %1823, align 1
  store %struct.Memory* %loadMem_400c9d, %struct.Memory** %MEMORY
  %loadMem_400ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 33
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 1
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 5
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %RAX.i138
  %1834 = load i64, i64* %RCX.i139
  %1835 = load i64, i64* %PC.i137
  %1836 = add i64 %1835, 3
  store i64 %1836, i64* %PC.i137
  %1837 = add i64 %1834, %1833
  store i64 %1837, i64* %RAX.i138, align 8
  %1838 = icmp ult i64 %1837, %1833
  %1839 = icmp ult i64 %1837, %1834
  %1840 = or i1 %1838, %1839
  %1841 = zext i1 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1841, i8* %1842, align 1
  %1843 = trunc i64 %1837 to i32
  %1844 = and i32 %1843, 255
  %1845 = call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1848, i8* %1849, align 1
  %1850 = xor i64 %1834, %1833
  %1851 = xor i64 %1850, %1837
  %1852 = lshr i64 %1851, 4
  %1853 = trunc i64 %1852 to i8
  %1854 = and i8 %1853, 1
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1854, i8* %1855, align 1
  %1856 = icmp eq i64 %1837, 0
  %1857 = zext i1 %1856 to i8
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1857, i8* %1858, align 1
  %1859 = lshr i64 %1837, 63
  %1860 = trunc i64 %1859 to i8
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1860, i8* %1861, align 1
  %1862 = lshr i64 %1833, 63
  %1863 = lshr i64 %1834, 63
  %1864 = xor i64 %1859, %1862
  %1865 = xor i64 %1859, %1863
  %1866 = add i64 %1864, %1865
  %1867 = icmp eq i64 %1866, 2
  %1868 = zext i1 %1867 to i8
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1868, i8* %1869, align 1
  store %struct.Memory* %loadMem_400ca4, %struct.Memory** %MEMORY
  %loadMem_400ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 33
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 5
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %1875 to i64*
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 15
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %1878 to i64*
  %1879 = load i64, i64* %RBP.i136
  %1880 = sub i64 %1879, 56
  %1881 = load i64, i64* %PC.i134
  %1882 = add i64 %1881, 4
  store i64 %1882, i64* %PC.i134
  %1883 = inttoptr i64 %1880 to i32*
  %1884 = load i32, i32* %1883
  %1885 = sext i32 %1884 to i64
  store i64 %1885, i64* %RCX.i135, align 8
  store %struct.Memory* %loadMem_400ca7, %struct.Memory** %MEMORY
  %loadMem_400cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 1
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 5
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1896 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1895, i64 0, i64 0
  %XMM0.i133 = bitcast %union.VectorReg* %1896 to %union.vec128_t*
  %1897 = load i64, i64* %RAX.i131
  %1898 = load i64, i64* %RCX.i132
  %1899 = mul i64 %1898, 8
  %1900 = add i64 %1899, %1897
  %1901 = bitcast %union.vec128_t* %XMM0.i133 to i8*
  %1902 = load i64, i64* %PC.i130
  %1903 = add i64 %1902, 5
  store i64 %1903, i64* %PC.i130
  %1904 = bitcast i8* %1901 to double*
  %1905 = load double, double* %1904, align 1
  %1906 = inttoptr i64 %1900 to double*
  store double %1905, double* %1906
  store %struct.Memory* %loadMem_400cab, %struct.Memory** %MEMORY
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 15
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %1912 to i64*
  %1913 = load i64, i64* %RBP.i129
  %1914 = sub i64 %1913, 44
  %1915 = load i64, i64* %PC.i128
  %1916 = add i64 %1915, 7
  store i64 %1916, i64* %PC.i128
  %1917 = inttoptr i64 %1914 to i32*
  store i32 0, i32* %1917
  store %struct.Memory* %loadMem_400cb0, %struct.Memory** %MEMORY
  br label %block_.L_400cb7

block_.L_400cb7:                                  ; preds = %block_400cc3, %block_400c92
  %loadMem_400cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 1
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 15
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RBP.i127
  %1928 = sub i64 %1927, 44
  %1929 = load i64, i64* %PC.i125
  %1930 = add i64 %1929, 3
  store i64 %1930, i64* %PC.i125
  %1931 = inttoptr i64 %1928 to i32*
  %1932 = load i32, i32* %1931
  %1933 = zext i32 %1932 to i64
  store i64 %1933, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_400cb7, %struct.Memory** %MEMORY
  %loadMem_400cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 1
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %1939 to i32*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 15
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %1942 to i64*
  %1943 = load i32, i32* %EAX.i123
  %1944 = zext i32 %1943 to i64
  %1945 = load i64, i64* %RBP.i124
  %1946 = sub i64 %1945, 8
  %1947 = load i64, i64* %PC.i122
  %1948 = add i64 %1947, 3
  store i64 %1948, i64* %PC.i122
  %1949 = inttoptr i64 %1946 to i32*
  %1950 = load i32, i32* %1949
  %1951 = sub i32 %1943, %1950
  %1952 = icmp ult i32 %1943, %1950
  %1953 = zext i1 %1952 to i8
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1953, i8* %1954, align 1
  %1955 = and i32 %1951, 255
  %1956 = call i32 @llvm.ctpop.i32(i32 %1955)
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  %1959 = xor i8 %1958, 1
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1959, i8* %1960, align 1
  %1961 = xor i32 %1950, %1943
  %1962 = xor i32 %1961, %1951
  %1963 = lshr i32 %1962, 4
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1965, i8* %1966, align 1
  %1967 = icmp eq i32 %1951, 0
  %1968 = zext i1 %1967 to i8
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1968, i8* %1969, align 1
  %1970 = lshr i32 %1951, 31
  %1971 = trunc i32 %1970 to i8
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1971, i8* %1972, align 1
  %1973 = lshr i32 %1943, 31
  %1974 = lshr i32 %1950, 31
  %1975 = xor i32 %1974, %1973
  %1976 = xor i32 %1970, %1973
  %1977 = add i32 %1976, %1975
  %1978 = icmp eq i32 %1977, 2
  %1979 = zext i1 %1978 to i8
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1979, i8* %1980, align 1
  store %struct.Memory* %loadMem_400cba, %struct.Memory** %MEMORY
  %loadMem_400cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 33
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %PC.i121
  %1985 = add i64 %1984, 106
  %1986 = load i64, i64* %PC.i121
  %1987 = add i64 %1986, 6
  %1988 = load i64, i64* %PC.i121
  %1989 = add i64 %1988, 6
  store i64 %1989, i64* %PC.i121
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1991 = load i8, i8* %1990, align 1
  %1992 = icmp ne i8 %1991, 0
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1994 = load i8, i8* %1993, align 1
  %1995 = icmp ne i8 %1994, 0
  %1996 = xor i1 %1992, %1995
  %1997 = xor i1 %1996, true
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %BRANCH_TAKEN, align 1
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2000 = select i1 %1996, i64 %1987, i64 %1985
  store i64 %2000, i64* %1999, align 8
  store %struct.Memory* %loadMem_400cbd, %struct.Memory** %MEMORY
  %loadBr_400cbd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cbd = icmp eq i8 %loadBr_400cbd, 1
  br i1 %cmpBr_400cbd, label %block_.L_400d27, label %block_400cc3

block_400cc3:                                     ; preds = %block_.L_400cb7
  %loadMem_400cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 1
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 15
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %2009 to i64*
  %2010 = load i64, i64* %RBP.i120
  %2011 = sub i64 %2010, 24
  %2012 = load i64, i64* %PC.i118
  %2013 = add i64 %2012, 4
  store i64 %2013, i64* %PC.i118
  %2014 = inttoptr i64 %2011 to i64*
  %2015 = load i64, i64* %2014
  store i64 %2015, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_400cc3, %struct.Memory** %MEMORY
  %loadMem_400cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 33
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 5
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 15
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %2024 to i64*
  %2025 = load i64, i64* %RBP.i117
  %2026 = sub i64 %2025, 44
  %2027 = load i64, i64* %PC.i115
  %2028 = add i64 %2027, 4
  store i64 %2028, i64* %PC.i115
  %2029 = inttoptr i64 %2026 to i32*
  %2030 = load i32, i32* %2029
  %2031 = sext i32 %2030 to i64
  store i64 %2031, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_400cc7, %struct.Memory** %MEMORY
  %loadMem_400ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 5
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %2037 to i64*
  %2038 = load i64, i64* %RCX.i114
  %2039 = load i64, i64* %PC.i113
  %2040 = add i64 %2039, 7
  store i64 %2040, i64* %PC.i113
  %2041 = sext i64 %2038 to i128
  %2042 = and i128 %2041, -18446744073709551616
  %2043 = zext i64 %2038 to i128
  %2044 = or i128 %2042, %2043
  %2045 = mul i128 8000, %2044
  %2046 = trunc i128 %2045 to i64
  store i64 %2046, i64* %RCX.i114, align 8
  %2047 = sext i64 %2046 to i128
  %2048 = icmp ne i128 %2047, %2045
  %2049 = zext i1 %2048 to i8
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2049, i8* %2050, align 1
  %2051 = trunc i128 %2045 to i32
  %2052 = and i32 %2051, 255
  %2053 = call i32 @llvm.ctpop.i32(i32 %2052)
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  %2056 = xor i8 %2055, 1
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2056, i8* %2057, align 1
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2058, align 1
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2059, align 1
  %2060 = lshr i64 %2046, 63
  %2061 = trunc i64 %2060 to i8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2061, i8* %2062, align 1
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2049, i8* %2063, align 1
  store %struct.Memory* %loadMem_400ccb, %struct.Memory** %MEMORY
  %loadMem_400cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 1
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 5
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %2072 to i64*
  %2073 = load i64, i64* %RAX.i111
  %2074 = load i64, i64* %RCX.i112
  %2075 = load i64, i64* %PC.i110
  %2076 = add i64 %2075, 3
  store i64 %2076, i64* %PC.i110
  %2077 = add i64 %2074, %2073
  store i64 %2077, i64* %RAX.i111, align 8
  %2078 = icmp ult i64 %2077, %2073
  %2079 = icmp ult i64 %2077, %2074
  %2080 = or i1 %2078, %2079
  %2081 = zext i1 %2080 to i8
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2081, i8* %2082, align 1
  %2083 = trunc i64 %2077 to i32
  %2084 = and i32 %2083, 255
  %2085 = call i32 @llvm.ctpop.i32(i32 %2084)
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  %2088 = xor i8 %2087, 1
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2088, i8* %2089, align 1
  %2090 = xor i64 %2074, %2073
  %2091 = xor i64 %2090, %2077
  %2092 = lshr i64 %2091, 4
  %2093 = trunc i64 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2094, i8* %2095, align 1
  %2096 = icmp eq i64 %2077, 0
  %2097 = zext i1 %2096 to i8
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2097, i8* %2098, align 1
  %2099 = lshr i64 %2077, 63
  %2100 = trunc i64 %2099 to i8
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2100, i8* %2101, align 1
  %2102 = lshr i64 %2073, 63
  %2103 = lshr i64 %2074, 63
  %2104 = xor i64 %2099, %2102
  %2105 = xor i64 %2099, %2103
  %2106 = add i64 %2104, %2105
  %2107 = icmp eq i64 %2106, 2
  %2108 = zext i1 %2107 to i8
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2108, i8* %2109, align 1
  store %struct.Memory* %loadMem_400cd2, %struct.Memory** %MEMORY
  %loadMem_400cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 5
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 15
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %RBP.i109
  %2120 = sub i64 %2119, 52
  %2121 = load i64, i64* %PC.i107
  %2122 = add i64 %2121, 4
  store i64 %2122, i64* %PC.i107
  %2123 = inttoptr i64 %2120 to i32*
  %2124 = load i32, i32* %2123
  %2125 = sext i32 %2124 to i64
  store i64 %2125, i64* %RCX.i108, align 8
  store %struct.Memory* %loadMem_400cd5, %struct.Memory** %MEMORY
  %loadMem_400cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 1
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 5
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2136 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2135, i64 0, i64 0
  %YMM0.i106 = bitcast %union.VectorReg* %2136 to %"class.std::bitset"*
  %2137 = bitcast %"class.std::bitset"* %YMM0.i106 to i8*
  %2138 = load i64, i64* %RAX.i104
  %2139 = load i64, i64* %RCX.i105
  %2140 = mul i64 %2139, 8
  %2141 = add i64 %2140, %2138
  %2142 = load i64, i64* %PC.i103
  %2143 = add i64 %2142, 5
  store i64 %2143, i64* %PC.i103
  %2144 = inttoptr i64 %2141 to double*
  %2145 = load double, double* %2144
  %2146 = bitcast i8* %2137 to double*
  store double %2145, double* %2146, align 1
  %2147 = getelementptr inbounds i8, i8* %2137, i64 8
  %2148 = bitcast i8* %2147 to double*
  store double 0.000000e+00, double* %2148, align 1
  store %struct.Memory* %loadMem_400cd9, %struct.Memory** %MEMORY
  %loadMem_400cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 1
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %2154 to i64*
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 15
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %2157 to i64*
  %2158 = load i64, i64* %RBP.i102
  %2159 = sub i64 %2158, 24
  %2160 = load i64, i64* %PC.i100
  %2161 = add i64 %2160, 4
  store i64 %2161, i64* %PC.i100
  %2162 = inttoptr i64 %2159 to i64*
  %2163 = load i64, i64* %2162
  store i64 %2163, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_400cde, %struct.Memory** %MEMORY
  %loadMem_400ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 5
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 15
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %2172 to i64*
  %2173 = load i64, i64* %RBP.i99
  %2174 = sub i64 %2173, 44
  %2175 = load i64, i64* %PC.i97
  %2176 = add i64 %2175, 4
  store i64 %2176, i64* %PC.i97
  %2177 = inttoptr i64 %2174 to i32*
  %2178 = load i32, i32* %2177
  %2179 = sext i32 %2178 to i64
  store i64 %2179, i64* %RCX.i98, align 8
  store %struct.Memory* %loadMem_400ce2, %struct.Memory** %MEMORY
  %loadMem_400ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 5
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %RCX.i96
  %2187 = load i64, i64* %PC.i95
  %2188 = add i64 %2187, 7
  store i64 %2188, i64* %PC.i95
  %2189 = sext i64 %2186 to i128
  %2190 = and i128 %2189, -18446744073709551616
  %2191 = zext i64 %2186 to i128
  %2192 = or i128 %2190, %2191
  %2193 = mul i128 8000, %2192
  %2194 = trunc i128 %2193 to i64
  store i64 %2194, i64* %RCX.i96, align 8
  %2195 = sext i64 %2194 to i128
  %2196 = icmp ne i128 %2195, %2193
  %2197 = zext i1 %2196 to i8
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2197, i8* %2198, align 1
  %2199 = trunc i128 %2193 to i32
  %2200 = and i32 %2199, 255
  %2201 = call i32 @llvm.ctpop.i32(i32 %2200)
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  %2204 = xor i8 %2203, 1
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2204, i8* %2205, align 1
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2206, align 1
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2207, align 1
  %2208 = lshr i64 %2194, 63
  %2209 = trunc i64 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2209, i8* %2210, align 1
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2197, i8* %2211, align 1
  store %struct.Memory* %loadMem_400ce6, %struct.Memory** %MEMORY
  %loadMem_400ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 1
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 5
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %2220 to i64*
  %2221 = load i64, i64* %RAX.i93
  %2222 = load i64, i64* %RCX.i94
  %2223 = load i64, i64* %PC.i92
  %2224 = add i64 %2223, 3
  store i64 %2224, i64* %PC.i92
  %2225 = add i64 %2222, %2221
  store i64 %2225, i64* %RAX.i93, align 8
  %2226 = icmp ult i64 %2225, %2221
  %2227 = icmp ult i64 %2225, %2222
  %2228 = or i1 %2226, %2227
  %2229 = zext i1 %2228 to i8
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2229, i8* %2230, align 1
  %2231 = trunc i64 %2225 to i32
  %2232 = and i32 %2231, 255
  %2233 = call i32 @llvm.ctpop.i32(i32 %2232)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2236, i8* %2237, align 1
  %2238 = xor i64 %2222, %2221
  %2239 = xor i64 %2238, %2225
  %2240 = lshr i64 %2239, 4
  %2241 = trunc i64 %2240 to i8
  %2242 = and i8 %2241, 1
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2242, i8* %2243, align 1
  %2244 = icmp eq i64 %2225, 0
  %2245 = zext i1 %2244 to i8
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2245, i8* %2246, align 1
  %2247 = lshr i64 %2225, 63
  %2248 = trunc i64 %2247 to i8
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2248, i8* %2249, align 1
  %2250 = lshr i64 %2221, 63
  %2251 = lshr i64 %2222, 63
  %2252 = xor i64 %2247, %2250
  %2253 = xor i64 %2247, %2251
  %2254 = add i64 %2252, %2253
  %2255 = icmp eq i64 %2254, 2
  %2256 = zext i1 %2255 to i8
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2256, i8* %2257, align 1
  store %struct.Memory* %loadMem_400ced, %struct.Memory** %MEMORY
  %loadMem_400cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 33
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 5
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %2263 to i64*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 15
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %2266 to i64*
  %2267 = load i64, i64* %RBP.i91
  %2268 = sub i64 %2267, 56
  %2269 = load i64, i64* %PC.i89
  %2270 = add i64 %2269, 4
  store i64 %2270, i64* %PC.i89
  %2271 = inttoptr i64 %2268 to i32*
  %2272 = load i32, i32* %2271
  %2273 = sext i32 %2272 to i64
  store i64 %2273, i64* %RCX.i90, align 8
  store %struct.Memory* %loadMem_400cf0, %struct.Memory** %MEMORY
  %loadMem_400cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 33
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 1
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 5
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2283, i64 0, i64 0
  %YMM0.i88 = bitcast %union.VectorReg* %2284 to %"class.std::bitset"*
  %2285 = bitcast %"class.std::bitset"* %YMM0.i88 to i8*
  %2286 = bitcast %"class.std::bitset"* %YMM0.i88 to i8*
  %2287 = load i64, i64* %RAX.i86
  %2288 = load i64, i64* %RCX.i87
  %2289 = mul i64 %2288, 8
  %2290 = add i64 %2289, %2287
  %2291 = load i64, i64* %PC.i85
  %2292 = add i64 %2291, 5
  store i64 %2292, i64* %PC.i85
  %2293 = bitcast i8* %2286 to double*
  %2294 = load double, double* %2293, align 1
  %2295 = getelementptr inbounds i8, i8* %2286, i64 8
  %2296 = bitcast i8* %2295 to i64*
  %2297 = load i64, i64* %2296, align 1
  %2298 = inttoptr i64 %2290 to double*
  %2299 = load double, double* %2298
  %2300 = fmul double %2294, %2299
  %2301 = bitcast i8* %2285 to double*
  store double %2300, double* %2301, align 1
  %2302 = getelementptr inbounds i8, i8* %2285, i64 8
  %2303 = bitcast i8* %2302 to i64*
  store i64 %2297, i64* %2303, align 1
  store %struct.Memory* %loadMem_400cf4, %struct.Memory** %MEMORY
  %loadMem_400cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 33
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 1
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %2309 to i64*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 15
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %RBP.i84
  %2314 = sub i64 %2313, 32
  %2315 = load i64, i64* %PC.i82
  %2316 = add i64 %2315, 4
  store i64 %2316, i64* %PC.i82
  %2317 = inttoptr i64 %2314 to i64*
  %2318 = load i64, i64* %2317
  store i64 %2318, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_400cf9, %struct.Memory** %MEMORY
  %loadMem_400cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 33
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 5
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %2324 to i64*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 15
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %2327 to i64*
  %2328 = load i64, i64* %RBP.i81
  %2329 = sub i64 %2328, 52
  %2330 = load i64, i64* %PC.i79
  %2331 = add i64 %2330, 4
  store i64 %2331, i64* %PC.i79
  %2332 = inttoptr i64 %2329 to i32*
  %2333 = load i32, i32* %2332
  %2334 = sext i32 %2333 to i64
  store i64 %2334, i64* %RCX.i80, align 8
  store %struct.Memory* %loadMem_400cfd, %struct.Memory** %MEMORY
  %loadMem_400d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 5
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %RCX.i78
  %2342 = load i64, i64* %PC.i77
  %2343 = add i64 %2342, 7
  store i64 %2343, i64* %PC.i77
  %2344 = sext i64 %2341 to i128
  %2345 = and i128 %2344, -18446744073709551616
  %2346 = zext i64 %2341 to i128
  %2347 = or i128 %2345, %2346
  %2348 = mul i128 8000, %2347
  %2349 = trunc i128 %2348 to i64
  store i64 %2349, i64* %RCX.i78, align 8
  %2350 = sext i64 %2349 to i128
  %2351 = icmp ne i128 %2350, %2348
  %2352 = zext i1 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2352, i8* %2353, align 1
  %2354 = trunc i128 %2348 to i32
  %2355 = and i32 %2354, 255
  %2356 = call i32 @llvm.ctpop.i32(i32 %2355)
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  %2359 = xor i8 %2358, 1
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2359, i8* %2360, align 1
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2361, align 1
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2362, align 1
  %2363 = lshr i64 %2349, 63
  %2364 = trunc i64 %2363 to i8
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2364, i8* %2365, align 1
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2352, i8* %2366, align 1
  store %struct.Memory* %loadMem_400d01, %struct.Memory** %MEMORY
  %loadMem_400d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 33
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 1
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %2372 to i64*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 5
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %2375 to i64*
  %2376 = load i64, i64* %RAX.i75
  %2377 = load i64, i64* %RCX.i76
  %2378 = load i64, i64* %PC.i74
  %2379 = add i64 %2378, 3
  store i64 %2379, i64* %PC.i74
  %2380 = add i64 %2377, %2376
  store i64 %2380, i64* %RAX.i75, align 8
  %2381 = icmp ult i64 %2380, %2376
  %2382 = icmp ult i64 %2380, %2377
  %2383 = or i1 %2381, %2382
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2384, i8* %2385, align 1
  %2386 = trunc i64 %2380 to i32
  %2387 = and i32 %2386, 255
  %2388 = call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2391, i8* %2392, align 1
  %2393 = xor i64 %2377, %2376
  %2394 = xor i64 %2393, %2380
  %2395 = lshr i64 %2394, 4
  %2396 = trunc i64 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2397, i8* %2398, align 1
  %2399 = icmp eq i64 %2380, 0
  %2400 = zext i1 %2399 to i8
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2400, i8* %2401, align 1
  %2402 = lshr i64 %2380, 63
  %2403 = trunc i64 %2402 to i8
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2403, i8* %2404, align 1
  %2405 = lshr i64 %2376, 63
  %2406 = lshr i64 %2377, 63
  %2407 = xor i64 %2402, %2405
  %2408 = xor i64 %2402, %2406
  %2409 = add i64 %2407, %2408
  %2410 = icmp eq i64 %2409, 2
  %2411 = zext i1 %2410 to i8
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2411, i8* %2412, align 1
  store %struct.Memory* %loadMem_400d08, %struct.Memory** %MEMORY
  %loadMem_400d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 33
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2415 to i64*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 5
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 15
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %2421 to i64*
  %2422 = load i64, i64* %RBP.i73
  %2423 = sub i64 %2422, 56
  %2424 = load i64, i64* %PC.i71
  %2425 = add i64 %2424, 4
  store i64 %2425, i64* %PC.i71
  %2426 = inttoptr i64 %2423 to i32*
  %2427 = load i32, i32* %2426
  %2428 = sext i32 %2427 to i64
  store i64 %2428, i64* %RCX.i72, align 8
  store %struct.Memory* %loadMem_400d0b, %struct.Memory** %MEMORY
  %loadMem_400d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 1
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 5
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2438, i64 0, i64 0
  %YMM0.i70 = bitcast %union.VectorReg* %2439 to %"class.std::bitset"*
  %2440 = bitcast %"class.std::bitset"* %YMM0.i70 to i8*
  %2441 = bitcast %"class.std::bitset"* %YMM0.i70 to i8*
  %2442 = load i64, i64* %RAX.i68
  %2443 = load i64, i64* %RCX.i69
  %2444 = mul i64 %2443, 8
  %2445 = add i64 %2444, %2442
  %2446 = load i64, i64* %PC.i67
  %2447 = add i64 %2446, 5
  store i64 %2447, i64* %PC.i67
  %2448 = bitcast i8* %2441 to double*
  %2449 = load double, double* %2448, align 1
  %2450 = getelementptr inbounds i8, i8* %2441, i64 8
  %2451 = bitcast i8* %2450 to i64*
  %2452 = load i64, i64* %2451, align 1
  %2453 = inttoptr i64 %2445 to double*
  %2454 = load double, double* %2453
  %2455 = fadd double %2449, %2454
  %2456 = bitcast i8* %2440 to double*
  store double %2455, double* %2456, align 1
  %2457 = getelementptr inbounds i8, i8* %2440, i64 8
  %2458 = bitcast i8* %2457 to i64*
  store i64 %2452, i64* %2458, align 1
  store %struct.Memory* %loadMem_400d0f, %struct.Memory** %MEMORY
  %loadMem_400d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 1
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 5
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %2467 to i64*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2469 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2468, i64 0, i64 0
  %XMM0.i66 = bitcast %union.VectorReg* %2469 to %union.vec128_t*
  %2470 = load i64, i64* %RAX.i64
  %2471 = load i64, i64* %RCX.i65
  %2472 = mul i64 %2471, 8
  %2473 = add i64 %2472, %2470
  %2474 = bitcast %union.vec128_t* %XMM0.i66 to i8*
  %2475 = load i64, i64* %PC.i63
  %2476 = add i64 %2475, 5
  store i64 %2476, i64* %PC.i63
  %2477 = bitcast i8* %2474 to double*
  %2478 = load double, double* %2477, align 1
  %2479 = inttoptr i64 %2473 to double*
  store double %2478, double* %2479
  store %struct.Memory* %loadMem_400d14, %struct.Memory** %MEMORY
  %loadMem_400d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 1
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 15
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %2488 to i64*
  %2489 = load i64, i64* %RBP.i62
  %2490 = sub i64 %2489, 44
  %2491 = load i64, i64* %PC.i60
  %2492 = add i64 %2491, 3
  store i64 %2492, i64* %PC.i60
  %2493 = inttoptr i64 %2490 to i32*
  %2494 = load i32, i32* %2493
  %2495 = zext i32 %2494 to i64
  store i64 %2495, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_400d19, %struct.Memory** %MEMORY
  %loadMem_400d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 1
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %2501 to i64*
  %2502 = load i64, i64* %RAX.i59
  %2503 = load i64, i64* %PC.i58
  %2504 = add i64 %2503, 3
  store i64 %2504, i64* %PC.i58
  %2505 = trunc i64 %2502 to i32
  %2506 = add i32 1, %2505
  %2507 = zext i32 %2506 to i64
  store i64 %2507, i64* %RAX.i59, align 8
  %2508 = icmp ult i32 %2506, %2505
  %2509 = icmp ult i32 %2506, 1
  %2510 = or i1 %2508, %2509
  %2511 = zext i1 %2510 to i8
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2511, i8* %2512, align 1
  %2513 = and i32 %2506, 255
  %2514 = call i32 @llvm.ctpop.i32(i32 %2513)
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  %2517 = xor i8 %2516, 1
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2517, i8* %2518, align 1
  %2519 = xor i64 1, %2502
  %2520 = trunc i64 %2519 to i32
  %2521 = xor i32 %2520, %2506
  %2522 = lshr i32 %2521, 4
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2524, i8* %2525, align 1
  %2526 = icmp eq i32 %2506, 0
  %2527 = zext i1 %2526 to i8
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2527, i8* %2528, align 1
  %2529 = lshr i32 %2506, 31
  %2530 = trunc i32 %2529 to i8
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2530, i8* %2531, align 1
  %2532 = lshr i32 %2505, 31
  %2533 = xor i32 %2529, %2532
  %2534 = add i32 %2533, %2529
  %2535 = icmp eq i32 %2534, 2
  %2536 = zext i1 %2535 to i8
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2536, i8* %2537, align 1
  store %struct.Memory* %loadMem_400d1c, %struct.Memory** %MEMORY
  %loadMem_400d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 33
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2540 to i64*
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 1
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %EAX.i56 = bitcast %union.anon* %2543 to i32*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 15
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %2546 to i64*
  %2547 = load i64, i64* %RBP.i57
  %2548 = sub i64 %2547, 44
  %2549 = load i32, i32* %EAX.i56
  %2550 = zext i32 %2549 to i64
  %2551 = load i64, i64* %PC.i55
  %2552 = add i64 %2551, 3
  store i64 %2552, i64* %PC.i55
  %2553 = inttoptr i64 %2548 to i32*
  store i32 %2549, i32* %2553
  store %struct.Memory* %loadMem_400d1f, %struct.Memory** %MEMORY
  %loadMem_400d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 33
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2556 to i64*
  %2557 = load i64, i64* %PC.i54
  %2558 = add i64 %2557, -107
  %2559 = load i64, i64* %PC.i54
  %2560 = add i64 %2559, 5
  store i64 %2560, i64* %PC.i54
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2558, i64* %2561, align 8
  store %struct.Memory* %loadMem_400d22, %struct.Memory** %MEMORY
  br label %block_.L_400cb7

block_.L_400d27:                                  ; preds = %block_.L_400cb7
  %loadMem_400d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 1
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 15
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %2570 to i64*
  %2571 = load i64, i64* %RBP.i53
  %2572 = sub i64 %2571, 32
  %2573 = load i64, i64* %PC.i51
  %2574 = add i64 %2573, 4
  store i64 %2574, i64* %PC.i51
  %2575 = inttoptr i64 %2572 to i64*
  %2576 = load i64, i64* %2575
  store i64 %2576, i64* %RAX.i52, align 8
  store %struct.Memory* %loadMem_400d27, %struct.Memory** %MEMORY
  %loadMem_400d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 5
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 15
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %2585 to i64*
  %2586 = load i64, i64* %RBP.i50
  %2587 = sub i64 %2586, 52
  %2588 = load i64, i64* %PC.i48
  %2589 = add i64 %2588, 4
  store i64 %2589, i64* %PC.i48
  %2590 = inttoptr i64 %2587 to i32*
  %2591 = load i32, i32* %2590
  %2592 = sext i32 %2591 to i64
  store i64 %2592, i64* %RCX.i49, align 8
  store %struct.Memory* %loadMem_400d2b, %struct.Memory** %MEMORY
  %loadMem_400d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 33
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2595 to i64*
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 5
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %2598 to i64*
  %2599 = load i64, i64* %RCX.i47
  %2600 = load i64, i64* %PC.i46
  %2601 = add i64 %2600, 7
  store i64 %2601, i64* %PC.i46
  %2602 = sext i64 %2599 to i128
  %2603 = and i128 %2602, -18446744073709551616
  %2604 = zext i64 %2599 to i128
  %2605 = or i128 %2603, %2604
  %2606 = mul i128 8000, %2605
  %2607 = trunc i128 %2606 to i64
  store i64 %2607, i64* %RCX.i47, align 8
  %2608 = sext i64 %2607 to i128
  %2609 = icmp ne i128 %2608, %2606
  %2610 = zext i1 %2609 to i8
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2610, i8* %2611, align 1
  %2612 = trunc i128 %2606 to i32
  %2613 = and i32 %2612, 255
  %2614 = call i32 @llvm.ctpop.i32(i32 %2613)
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  %2617 = xor i8 %2616, 1
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2617, i8* %2618, align 1
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2619, align 1
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2620, align 1
  %2621 = lshr i64 %2607, 63
  %2622 = trunc i64 %2621 to i8
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2622, i8* %2623, align 1
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2610, i8* %2624, align 1
  store %struct.Memory* %loadMem_400d2f, %struct.Memory** %MEMORY
  %loadMem_400d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 1
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 5
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %2633 to i64*
  %2634 = load i64, i64* %RAX.i44
  %2635 = load i64, i64* %RCX.i45
  %2636 = load i64, i64* %PC.i43
  %2637 = add i64 %2636, 3
  store i64 %2637, i64* %PC.i43
  %2638 = add i64 %2635, %2634
  store i64 %2638, i64* %RAX.i44, align 8
  %2639 = icmp ult i64 %2638, %2634
  %2640 = icmp ult i64 %2638, %2635
  %2641 = or i1 %2639, %2640
  %2642 = zext i1 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2642, i8* %2643, align 1
  %2644 = trunc i64 %2638 to i32
  %2645 = and i32 %2644, 255
  %2646 = call i32 @llvm.ctpop.i32(i32 %2645)
  %2647 = trunc i32 %2646 to i8
  %2648 = and i8 %2647, 1
  %2649 = xor i8 %2648, 1
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2649, i8* %2650, align 1
  %2651 = xor i64 %2635, %2634
  %2652 = xor i64 %2651, %2638
  %2653 = lshr i64 %2652, 4
  %2654 = trunc i64 %2653 to i8
  %2655 = and i8 %2654, 1
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2655, i8* %2656, align 1
  %2657 = icmp eq i64 %2638, 0
  %2658 = zext i1 %2657 to i8
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2658, i8* %2659, align 1
  %2660 = lshr i64 %2638, 63
  %2661 = trunc i64 %2660 to i8
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2661, i8* %2662, align 1
  %2663 = lshr i64 %2634, 63
  %2664 = lshr i64 %2635, 63
  %2665 = xor i64 %2660, %2663
  %2666 = xor i64 %2660, %2664
  %2667 = add i64 %2665, %2666
  %2668 = icmp eq i64 %2667, 2
  %2669 = zext i1 %2668 to i8
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2669, i8* %2670, align 1
  store %struct.Memory* %loadMem_400d36, %struct.Memory** %MEMORY
  %loadMem_400d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 5
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 15
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %RBP.i42
  %2681 = sub i64 %2680, 56
  %2682 = load i64, i64* %PC.i40
  %2683 = add i64 %2682, 4
  store i64 %2683, i64* %PC.i40
  %2684 = inttoptr i64 %2681 to i32*
  %2685 = load i32, i32* %2684
  %2686 = sext i32 %2685 to i64
  store i64 %2686, i64* %RCX.i41, align 8
  store %struct.Memory* %loadMem_400d39, %struct.Memory** %MEMORY
  %loadMem_400d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 33
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2689 to i64*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 1
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 5
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2697 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2696, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2697 to %"class.std::bitset"*
  %2698 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2699 = load i64, i64* %RAX.i38
  %2700 = load i64, i64* %RCX.i39
  %2701 = mul i64 %2700, 8
  %2702 = add i64 %2701, %2699
  %2703 = load i64, i64* %PC.i37
  %2704 = add i64 %2703, 5
  store i64 %2704, i64* %PC.i37
  %2705 = inttoptr i64 %2702 to double*
  %2706 = load double, double* %2705
  %2707 = bitcast i8* %2698 to double*
  store double %2706, double* %2707, align 1
  %2708 = getelementptr inbounds i8, i8* %2698, i64 8
  %2709 = bitcast i8* %2708 to double*
  store double 0.000000e+00, double* %2709, align 1
  store %struct.Memory* %loadMem_400d3d, %struct.Memory** %MEMORY
  %loadMem_400d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 33
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2712 to i64*
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 1
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 15
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %2718 to i64*
  %2719 = load i64, i64* %RBP.i36
  %2720 = sub i64 %2719, 32
  %2721 = load i64, i64* %PC.i34
  %2722 = add i64 %2721, 4
  store i64 %2722, i64* %PC.i34
  %2723 = inttoptr i64 %2720 to i64*
  %2724 = load i64, i64* %2723
  store i64 %2724, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_400d42, %struct.Memory** %MEMORY
  %loadMem_400d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 33
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 5
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %RCX.i32 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 15
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %2733 to i64*
  %2734 = load i64, i64* %RBP.i33
  %2735 = sub i64 %2734, 56
  %2736 = load i64, i64* %PC.i31
  %2737 = add i64 %2736, 4
  store i64 %2737, i64* %PC.i31
  %2738 = inttoptr i64 %2735 to i32*
  %2739 = load i32, i32* %2738
  %2740 = sext i32 %2739 to i64
  store i64 %2740, i64* %RCX.i32, align 8
  store %struct.Memory* %loadMem_400d46, %struct.Memory** %MEMORY
  %loadMem_400d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 33
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2743 to i64*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 5
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %2746 to i64*
  %2747 = load i64, i64* %RCX.i30
  %2748 = load i64, i64* %PC.i29
  %2749 = add i64 %2748, 7
  store i64 %2749, i64* %PC.i29
  %2750 = sext i64 %2747 to i128
  %2751 = and i128 %2750, -18446744073709551616
  %2752 = zext i64 %2747 to i128
  %2753 = or i128 %2751, %2752
  %2754 = mul i128 8000, %2753
  %2755 = trunc i128 %2754 to i64
  store i64 %2755, i64* %RCX.i30, align 8
  %2756 = sext i64 %2755 to i128
  %2757 = icmp ne i128 %2756, %2754
  %2758 = zext i1 %2757 to i8
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2758, i8* %2759, align 1
  %2760 = trunc i128 %2754 to i32
  %2761 = and i32 %2760, 255
  %2762 = call i32 @llvm.ctpop.i32(i32 %2761)
  %2763 = trunc i32 %2762 to i8
  %2764 = and i8 %2763, 1
  %2765 = xor i8 %2764, 1
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2765, i8* %2766, align 1
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2767, align 1
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2768, align 1
  %2769 = lshr i64 %2755, 63
  %2770 = trunc i64 %2769 to i8
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2770, i8* %2771, align 1
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2758, i8* %2772, align 1
  store %struct.Memory* %loadMem_400d4a, %struct.Memory** %MEMORY
  %loadMem_400d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 33
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 1
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %2778 to i64*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 5
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %RCX.i28 = bitcast %union.anon* %2781 to i64*
  %2782 = load i64, i64* %RAX.i27
  %2783 = load i64, i64* %RCX.i28
  %2784 = load i64, i64* %PC.i26
  %2785 = add i64 %2784, 3
  store i64 %2785, i64* %PC.i26
  %2786 = add i64 %2783, %2782
  store i64 %2786, i64* %RAX.i27, align 8
  %2787 = icmp ult i64 %2786, %2782
  %2788 = icmp ult i64 %2786, %2783
  %2789 = or i1 %2787, %2788
  %2790 = zext i1 %2789 to i8
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2790, i8* %2791, align 1
  %2792 = trunc i64 %2786 to i32
  %2793 = and i32 %2792, 255
  %2794 = call i32 @llvm.ctpop.i32(i32 %2793)
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2797, i8* %2798, align 1
  %2799 = xor i64 %2783, %2782
  %2800 = xor i64 %2799, %2786
  %2801 = lshr i64 %2800, 4
  %2802 = trunc i64 %2801 to i8
  %2803 = and i8 %2802, 1
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2803, i8* %2804, align 1
  %2805 = icmp eq i64 %2786, 0
  %2806 = zext i1 %2805 to i8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2806, i8* %2807, align 1
  %2808 = lshr i64 %2786, 63
  %2809 = trunc i64 %2808 to i8
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2809, i8* %2810, align 1
  %2811 = lshr i64 %2782, 63
  %2812 = lshr i64 %2783, 63
  %2813 = xor i64 %2808, %2811
  %2814 = xor i64 %2808, %2812
  %2815 = add i64 %2813, %2814
  %2816 = icmp eq i64 %2815, 2
  %2817 = zext i1 %2816 to i8
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2817, i8* %2818, align 1
  store %struct.Memory* %loadMem_400d51, %struct.Memory** %MEMORY
  %loadMem_400d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 33
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 5
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %RCX.i24 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 15
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %2827 to i64*
  %2828 = load i64, i64* %RBP.i25
  %2829 = sub i64 %2828, 52
  %2830 = load i64, i64* %PC.i23
  %2831 = add i64 %2830, 4
  store i64 %2831, i64* %PC.i23
  %2832 = inttoptr i64 %2829 to i32*
  %2833 = load i32, i32* %2832
  %2834 = sext i32 %2833 to i64
  store i64 %2834, i64* %RCX.i24, align 8
  store %struct.Memory* %loadMem_400d54, %struct.Memory** %MEMORY
  %loadMem_400d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 33
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2837 to i64*
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 1
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 5
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2845 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2844, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2845 to %union.vec128_t*
  %2846 = load i64, i64* %RAX.i22
  %2847 = load i64, i64* %RCX.i
  %2848 = mul i64 %2847, 8
  %2849 = add i64 %2848, %2846
  %2850 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2851 = load i64, i64* %PC.i21
  %2852 = add i64 %2851, 5
  store i64 %2852, i64* %PC.i21
  %2853 = bitcast i8* %2850 to double*
  %2854 = load double, double* %2853, align 1
  %2855 = inttoptr i64 %2849 to double*
  store double %2854, double* %2855
  store %struct.Memory* %loadMem_400d58, %struct.Memory** %MEMORY
  %loadMem_400d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 1
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %2861 to i64*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 15
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %2864 to i64*
  %2865 = load i64, i64* %RBP.i20
  %2866 = sub i64 %2865, 56
  %2867 = load i64, i64* %PC.i18
  %2868 = add i64 %2867, 3
  store i64 %2868, i64* %PC.i18
  %2869 = inttoptr i64 %2866 to i32*
  %2870 = load i32, i32* %2869
  %2871 = zext i32 %2870 to i64
  store i64 %2871, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_400d5d, %struct.Memory** %MEMORY
  %loadMem_400d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 33
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 1
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %2877 to i64*
  %2878 = load i64, i64* %RAX.i17
  %2879 = load i64, i64* %PC.i16
  %2880 = add i64 %2879, 3
  store i64 %2880, i64* %PC.i16
  %2881 = trunc i64 %2878 to i32
  %2882 = add i32 1, %2881
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RAX.i17, align 8
  %2884 = icmp ult i32 %2882, %2881
  %2885 = icmp ult i32 %2882, 1
  %2886 = or i1 %2884, %2885
  %2887 = zext i1 %2886 to i8
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2887, i8* %2888, align 1
  %2889 = and i32 %2882, 255
  %2890 = call i32 @llvm.ctpop.i32(i32 %2889)
  %2891 = trunc i32 %2890 to i8
  %2892 = and i8 %2891, 1
  %2893 = xor i8 %2892, 1
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2893, i8* %2894, align 1
  %2895 = xor i64 1, %2878
  %2896 = trunc i64 %2895 to i32
  %2897 = xor i32 %2896, %2882
  %2898 = lshr i32 %2897, 4
  %2899 = trunc i32 %2898 to i8
  %2900 = and i8 %2899, 1
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2900, i8* %2901, align 1
  %2902 = icmp eq i32 %2882, 0
  %2903 = zext i1 %2902 to i8
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2903, i8* %2904, align 1
  %2905 = lshr i32 %2882, 31
  %2906 = trunc i32 %2905 to i8
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2906, i8* %2907, align 1
  %2908 = lshr i32 %2881, 31
  %2909 = xor i32 %2905, %2908
  %2910 = add i32 %2909, %2905
  %2911 = icmp eq i32 %2910, 2
  %2912 = zext i1 %2911 to i8
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2912, i8* %2913, align 1
  store %struct.Memory* %loadMem_400d60, %struct.Memory** %MEMORY
  %loadMem_400d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 33
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 1
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %2919 to i32*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 15
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %2922 to i64*
  %2923 = load i64, i64* %RBP.i15
  %2924 = sub i64 %2923, 56
  %2925 = load i32, i32* %EAX.i14
  %2926 = zext i32 %2925 to i64
  %2927 = load i64, i64* %PC.i13
  %2928 = add i64 %2927, 3
  store i64 %2928, i64* %PC.i13
  %2929 = inttoptr i64 %2924 to i32*
  store i32 %2925, i32* %2929
  store %struct.Memory* %loadMem_400d63, %struct.Memory** %MEMORY
  %loadMem_400d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2932 to i64*
  %2933 = load i64, i64* %PC.i12
  %2934 = add i64 %2933, -224
  %2935 = load i64, i64* %PC.i12
  %2936 = add i64 %2935, 5
  store i64 %2936, i64* %PC.i12
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2934, i64* %2937, align 8
  store %struct.Memory* %loadMem_400d66, %struct.Memory** %MEMORY
  br label %block_.L_400c86

block_.L_400d6b:                                  ; preds = %block_.L_400c86
  %loadMem_400d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %2940 to i64*
  %2941 = load i64, i64* %PC.i11
  %2942 = add i64 %2941, 5
  %2943 = load i64, i64* %PC.i11
  %2944 = add i64 %2943, 5
  store i64 %2944, i64* %PC.i11
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2942, i64* %2945, align 8
  store %struct.Memory* %loadMem_400d6b, %struct.Memory** %MEMORY
  br label %block_.L_400d70

block_.L_400d70:                                  ; preds = %block_.L_400d6b
  %loadMem_400d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 1
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 15
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %2954 to i64*
  %2955 = load i64, i64* %RBP.i10
  %2956 = sub i64 %2955, 52
  %2957 = load i64, i64* %PC.i8
  %2958 = add i64 %2957, 3
  store i64 %2958, i64* %PC.i8
  %2959 = inttoptr i64 %2956 to i32*
  %2960 = load i32, i32* %2959
  %2961 = zext i32 %2960 to i64
  store i64 %2961, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_400d70, %struct.Memory** %MEMORY
  %loadMem_400d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 1
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2967 to i64*
  %2968 = load i64, i64* %RAX.i
  %2969 = load i64, i64* %PC.i7
  %2970 = add i64 %2969, 3
  store i64 %2970, i64* %PC.i7
  %2971 = trunc i64 %2968 to i32
  %2972 = add i32 1, %2971
  %2973 = zext i32 %2972 to i64
  store i64 %2973, i64* %RAX.i, align 8
  %2974 = icmp ult i32 %2972, %2971
  %2975 = icmp ult i32 %2972, 1
  %2976 = or i1 %2974, %2975
  %2977 = zext i1 %2976 to i8
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2977, i8* %2978, align 1
  %2979 = and i32 %2972, 255
  %2980 = call i32 @llvm.ctpop.i32(i32 %2979)
  %2981 = trunc i32 %2980 to i8
  %2982 = and i8 %2981, 1
  %2983 = xor i8 %2982, 1
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2983, i8* %2984, align 1
  %2985 = xor i64 1, %2968
  %2986 = trunc i64 %2985 to i32
  %2987 = xor i32 %2986, %2972
  %2988 = lshr i32 %2987, 4
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2990, i8* %2991, align 1
  %2992 = icmp eq i32 %2972, 0
  %2993 = zext i1 %2992 to i8
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2993, i8* %2994, align 1
  %2995 = lshr i32 %2972, 31
  %2996 = trunc i32 %2995 to i8
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2996, i8* %2997, align 1
  %2998 = lshr i32 %2971, 31
  %2999 = xor i32 %2995, %2998
  %3000 = add i32 %2999, %2995
  %3001 = icmp eq i32 %3000, 2
  %3002 = zext i1 %3001 to i8
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3002, i8* %3003, align 1
  store %struct.Memory* %loadMem_400d73, %struct.Memory** %MEMORY
  %loadMem_400d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 1
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3009 to i32*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 15
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3012 to i64*
  %3013 = load i64, i64* %RBP.i6
  %3014 = sub i64 %3013, 52
  %3015 = load i32, i32* %EAX.i
  %3016 = zext i32 %3015 to i64
  %3017 = load i64, i64* %PC.i5
  %3018 = add i64 %3017, 3
  store i64 %3018, i64* %PC.i5
  %3019 = inttoptr i64 %3014 to i32*
  store i32 %3015, i32* %3019
  store %struct.Memory* %loadMem_400d76, %struct.Memory** %MEMORY
  %loadMem_400d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3022 to i64*
  %3023 = load i64, i64* %PC.i4
  %3024 = add i64 %3023, -261
  %3025 = load i64, i64* %PC.i4
  %3026 = add i64 %3025, 5
  store i64 %3026, i64* %PC.i4
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3024, i64* %3027, align 8
  store %struct.Memory* %loadMem_400d79, %struct.Memory** %MEMORY
  br label %block_.L_400c74

block_.L_400d7e:                                  ; preds = %block_.L_400c74
  %loadMem_400d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 33
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 15
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3033 to i64*
  %3034 = load i64, i64* %PC.i2
  %3035 = add i64 %3034, 1
  store i64 %3035, i64* %PC.i2
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3037 = load i64, i64* %3036, align 8
  %3038 = add i64 %3037, 8
  %3039 = inttoptr i64 %3037 to i64*
  %3040 = load i64, i64* %3039
  store i64 %3040, i64* %RBP.i3, align 8
  store i64 %3038, i64* %3036, align 8
  store %struct.Memory* %loadMem_400d7e, %struct.Memory** %MEMORY
  %loadMem_400d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3043 to i64*
  %3044 = load i64, i64* %PC.i1
  %3045 = add i64 %3044, 1
  store i64 %3045, i64* %PC.i1
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3048 = load i64, i64* %3047, align 8
  %3049 = inttoptr i64 %3048 to i64*
  %3050 = load i64, i64* %3049
  store i64 %3050, i64* %3046, align 8
  %3051 = add i64 %3048, 8
  store i64 %3051, i64* %3047, align 8
  store %struct.Memory* %loadMem_400d7f, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400d7f
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 16
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

define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_jge_.L_400bf5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_400bcc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_400b85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
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

define %struct.Memory* @routine_jmpq_.L_400b62(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400c6d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400c5a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_400c0f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400c5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400bfc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400d7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400d6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400d27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fmul double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400c86(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400c74(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
