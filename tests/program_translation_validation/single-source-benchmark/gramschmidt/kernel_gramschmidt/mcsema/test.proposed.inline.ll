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

declare %struct.Memory* @sub_400630.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_gramschmidt(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400c60 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400c60, %struct.Memory** %MEMORY
  %loadMem_400c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i406 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i406
  %27 = load i64, i64* %PC.i405
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i405
  store i64 %26, i64* %RBP.i407, align 8
  store %struct.Memory* %loadMem_400c61, %struct.Memory** %MEMORY
  %loadMem_400c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i404 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i404
  %36 = load i64, i64* %PC.i403
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i403
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i404, align 8
  %39 = icmp ult i64 %35, 64
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
  %49 = xor i64 64, %35
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
  store %struct.Memory* %loadMem_400c64, %struct.Memory** %MEMORY
  %loadMem_400c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i402
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i401
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i401
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_400c68, %struct.Memory** %MEMORY
  %loadMem_400c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i400
  %93 = sub i64 %92, 8
  %94 = load i32, i32* %ESI.i
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC.i399
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i399
  %98 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %98
  store %struct.Memory* %loadMem_400c6b, %struct.Memory** %MEMORY
  %loadMem_400c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i398
  %109 = sub i64 %108, 16
  %110 = load i64, i64* %RDX.i
  %111 = load i64, i64* %PC.i397
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC.i397
  %113 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %113
  store %struct.Memory* %loadMem_400c6e, %struct.Memory** %MEMORY
  %loadMem_400c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RCX.i395 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i396
  %124 = sub i64 %123, 24
  %125 = load i64, i64* %RCX.i395
  %126 = load i64, i64* %PC.i394
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC.i394
  %128 = inttoptr i64 %124 to i64*
  store i64 %125, i64* %128
  store %struct.Memory* %loadMem_400c72, %struct.Memory** %MEMORY
  %loadMem_400c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 17
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %R8.i = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i393
  %139 = sub i64 %138, 32
  %140 = load i64, i64* %R8.i
  %141 = load i64, i64* %PC.i392
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC.i392
  %143 = inttoptr i64 %139 to i64*
  store i64 %140, i64* %143
  store %struct.Memory* %loadMem_400c76, %struct.Memory** %MEMORY
  %loadMem_400c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 15
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %149 to i64*
  %150 = load i64, i64* %RBP.i391
  %151 = sub i64 %150, 44
  %152 = load i64, i64* %PC.i390
  %153 = add i64 %152, 7
  store i64 %153, i64* %PC.i390
  %154 = inttoptr i64 %151 to i32*
  store i32 0, i32* %154
  store %struct.Memory* %loadMem_400c7a, %struct.Memory** %MEMORY
  br label %block_.L_400c81

block_.L_400c81:                                  ; preds = %block_.L_400eb6, %entry
  %loadMem_400c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 15
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RBP.i389
  %165 = sub i64 %164, 44
  %166 = load i64, i64* %PC.i387
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i387
  %168 = inttoptr i64 %165 to i32*
  %169 = load i32, i32* %168
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX.i388, align 8
  store %struct.Memory* %loadMem_400c81, %struct.Memory** %MEMORY
  %loadMem_400c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %EAX.i385 = bitcast %union.anon* %176 to i32*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 15
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %179 to i64*
  %180 = load i32, i32* %EAX.i385
  %181 = zext i32 %180 to i64
  %182 = load i64, i64* %RBP.i386
  %183 = sub i64 %182, 8
  %184 = load i64, i64* %PC.i384
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC.i384
  %186 = inttoptr i64 %183 to i32*
  %187 = load i32, i32* %186
  %188 = sub i32 %180, %187
  %189 = icmp ult i32 %180, %187
  %190 = zext i1 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %190, i8* %191, align 1
  %192 = and i32 %188, 255
  %193 = call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %196, i8* %197, align 1
  %198 = xor i32 %187, %180
  %199 = xor i32 %198, %188
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %202, i8* %203, align 1
  %204 = icmp eq i32 %188, 0
  %205 = zext i1 %204 to i8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %205, i8* %206, align 1
  %207 = lshr i32 %188, 31
  %208 = trunc i32 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %208, i8* %209, align 1
  %210 = lshr i32 %180, 31
  %211 = lshr i32 %187, 31
  %212 = xor i32 %211, %210
  %213 = xor i32 %207, %210
  %214 = add i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %216, i8* %217, align 1
  store %struct.Memory* %loadMem_400c84, %struct.Memory** %MEMORY
  %loadMem_400c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %PC.i383
  %222 = add i64 %221, 573
  %223 = load i64, i64* %PC.i383
  %224 = add i64 %223, 6
  %225 = load i64, i64* %PC.i383
  %226 = add i64 %225, 6
  store i64 %226, i64* %PC.i383
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %228 = load i8, i8* %227, align 1
  %229 = icmp ne i8 %228, 0
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %231 = load i8, i8* %230, align 1
  %232 = icmp ne i8 %231, 0
  %233 = xor i1 %229, %232
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %BRANCH_TAKEN, align 1
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %237 = select i1 %233, i64 %224, i64 %222
  store i64 %237, i64* %236, align 8
  store %struct.Memory* %loadMem_400c87, %struct.Memory** %MEMORY
  %loadBr_400c87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c87 = icmp eq i8 %loadBr_400c87, 1
  br i1 %cmpBr_400c87, label %block_.L_400ec4, label %block_400c8d

block_400c8d:                                     ; preds = %block_.L_400c81
  %loadMem_400c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %241, i64 0, i64 0
  %YMM0.i381 = bitcast %union.VectorReg* %242 to %"class.std::bitset"*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %243, i64 0, i64 0
  %XMM0.i382 = bitcast %union.VectorReg* %244 to %union.vec128_t*
  %245 = bitcast %"class.std::bitset"* %YMM0.i381 to i8*
  %246 = bitcast %"class.std::bitset"* %YMM0.i381 to i8*
  %247 = bitcast %union.vec128_t* %XMM0.i382 to i8*
  %248 = load i64, i64* %PC.i380
  %249 = add i64 %248, 3
  store i64 %249, i64* %PC.i380
  %250 = bitcast i8* %246 to i64*
  %251 = load i64, i64* %250, align 1
  %252 = getelementptr inbounds i8, i8* %246, i64 8
  %253 = bitcast i8* %252 to i64*
  %254 = load i64, i64* %253, align 1
  %255 = bitcast i8* %247 to i64*
  %256 = load i64, i64* %255, align 1
  %257 = getelementptr inbounds i8, i8* %247, i64 8
  %258 = bitcast i8* %257 to i64*
  %259 = load i64, i64* %258, align 1
  %260 = xor i64 %256, %251
  %261 = xor i64 %259, %254
  %262 = trunc i64 %260 to i32
  %263 = lshr i64 %260, 32
  %264 = trunc i64 %263 to i32
  %265 = bitcast i8* %245 to i32*
  store i32 %262, i32* %265, align 1
  %266 = getelementptr inbounds i8, i8* %245, i64 4
  %267 = bitcast i8* %266 to i32*
  store i32 %264, i32* %267, align 1
  %268 = trunc i64 %261 to i32
  %269 = getelementptr inbounds i8, i8* %245, i64 8
  %270 = bitcast i8* %269 to i32*
  store i32 %268, i32* %270, align 1
  %271 = lshr i64 %261, 32
  %272 = trunc i64 %271 to i32
  %273 = getelementptr inbounds i8, i8* %245, i64 12
  %274 = bitcast i8* %273 to i32*
  store i32 %272, i32* %274, align 1
  store %struct.Memory* %loadMem_400c8d, %struct.Memory** %MEMORY
  %loadMem_400c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 33
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 15
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %282 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %281, i64 0, i64 0
  %XMM0.i379 = bitcast %union.VectorReg* %282 to %union.vec128_t*
  %283 = load i64, i64* %RBP.i378
  %284 = sub i64 %283, 56
  %285 = bitcast %union.vec128_t* %XMM0.i379 to i8*
  %286 = load i64, i64* %PC.i377
  %287 = add i64 %286, 5
  store i64 %287, i64* %PC.i377
  %288 = bitcast i8* %285 to double*
  %289 = load double, double* %288, align 1
  %290 = inttoptr i64 %284 to double*
  store double %289, double* %290
  store %struct.Memory* %loadMem_400c90, %struct.Memory** %MEMORY
  %loadMem_400c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 15
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %296 to i64*
  %297 = load i64, i64* %RBP.i376
  %298 = sub i64 %297, 36
  %299 = load i64, i64* %PC.i375
  %300 = add i64 %299, 7
  store i64 %300, i64* %PC.i375
  %301 = inttoptr i64 %298 to i32*
  store i32 0, i32* %301
  store %struct.Memory* %loadMem_400c95, %struct.Memory** %MEMORY
  br label %block_.L_400c9c

block_.L_400c9c:                                  ; preds = %block_400ca8, %block_400c8d
  %loadMem_400c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 15
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %RBP.i374
  %312 = sub i64 %311, 36
  %313 = load i64, i64* %PC.i372
  %314 = add i64 %313, 3
  store i64 %314, i64* %PC.i372
  %315 = inttoptr i64 %312 to i32*
  %316 = load i32, i32* %315
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RAX.i373, align 8
  store %struct.Memory* %loadMem_400c9c, %struct.Memory** %MEMORY
  %loadMem_400c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %EAX.i370 = bitcast %union.anon* %323 to i32*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 15
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %326 to i64*
  %327 = load i32, i32* %EAX.i370
  %328 = zext i32 %327 to i64
  %329 = load i64, i64* %RBP.i371
  %330 = sub i64 %329, 4
  %331 = load i64, i64* %PC.i369
  %332 = add i64 %331, 3
  store i64 %332, i64* %PC.i369
  %333 = inttoptr i64 %330 to i32*
  %334 = load i32, i32* %333
  %335 = sub i32 %327, %334
  %336 = icmp ult i32 %327, %334
  %337 = zext i1 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %337, i8* %338, align 1
  %339 = and i32 %335, 255
  %340 = call i32 @llvm.ctpop.i32(i32 %339)
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %343, i8* %344, align 1
  %345 = xor i32 %334, %327
  %346 = xor i32 %345, %335
  %347 = lshr i32 %346, 4
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %349, i8* %350, align 1
  %351 = icmp eq i32 %335, 0
  %352 = zext i1 %351 to i8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %352, i8* %353, align 1
  %354 = lshr i32 %335, 31
  %355 = trunc i32 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %355, i8* %356, align 1
  %357 = lshr i32 %327, 31
  %358 = lshr i32 %334, 31
  %359 = xor i32 %358, %357
  %360 = xor i32 %354, %357
  %361 = add i32 %360, %359
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %363, i8* %364, align 1
  store %struct.Memory* %loadMem_400c9f, %struct.Memory** %MEMORY
  %loadMem_400ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 33
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %367 to i64*
  %368 = load i64, i64* %PC.i368
  %369 = add i64 %368, 78
  %370 = load i64, i64* %PC.i368
  %371 = add i64 %370, 6
  %372 = load i64, i64* %PC.i368
  %373 = add i64 %372, 6
  store i64 %373, i64* %PC.i368
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %375 = load i8, i8* %374, align 1
  %376 = icmp ne i8 %375, 0
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %378 = load i8, i8* %377, align 1
  %379 = icmp ne i8 %378, 0
  %380 = xor i1 %376, %379
  %381 = xor i1 %380, true
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %BRANCH_TAKEN, align 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %384 = select i1 %380, i64 %371, i64 %369
  store i64 %384, i64* %383, align 8
  store %struct.Memory* %loadMem_400ca2, %struct.Memory** %MEMORY
  %loadBr_400ca2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ca2 = icmp eq i8 %loadBr_400ca2, 1
  br i1 %cmpBr_400ca2, label %block_.L_400cf0, label %block_400ca8

block_400ca8:                                     ; preds = %block_.L_400c9c
  %loadMem_400ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 33
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 15
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %393 to i64*
  %394 = load i64, i64* %RBP.i367
  %395 = sub i64 %394, 16
  %396 = load i64, i64* %PC.i365
  %397 = add i64 %396, 4
  store i64 %397, i64* %PC.i365
  %398 = inttoptr i64 %395 to i64*
  %399 = load i64, i64* %398
  store i64 %399, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_400ca8, %struct.Memory** %MEMORY
  %loadMem_400cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 15
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %408 to i64*
  %409 = load i64, i64* %RBP.i364
  %410 = sub i64 %409, 36
  %411 = load i64, i64* %PC.i362
  %412 = add i64 %411, 4
  store i64 %412, i64* %PC.i362
  %413 = inttoptr i64 %410 to i32*
  %414 = load i32, i32* %413
  %415 = sext i32 %414 to i64
  store i64 %415, i64* %RCX.i363, align 8
  store %struct.Memory* %loadMem_400cac, %struct.Memory** %MEMORY
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 33
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %418 to i64*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 5
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %RCX.i361
  %423 = load i64, i64* %PC.i360
  %424 = add i64 %423, 4
  store i64 %424, i64* %PC.i360
  %425 = shl i64 %422, 11
  %426 = icmp slt i64 %425, 0
  %427 = shl i64 %425, 1
  store i64 %427, i64* %RCX.i361, align 8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %429 = zext i1 %426 to i8
  store i8 %429, i8* %428, align 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %431 = trunc i64 %427 to i32
  store i8 1, i8* %430, align 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %432, align 1
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %434 = icmp eq i64 %427, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %433, align 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %437 = lshr i64 %427, 63
  %438 = trunc i64 %437 to i8
  store i8 %438, i8* %436, align 1
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %439, align 1
  store %struct.Memory* %loadMem_400cb0, %struct.Memory** %MEMORY
  %loadMem_400cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 5
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RAX.i358
  %450 = load i64, i64* %RCX.i359
  %451 = load i64, i64* %PC.i357
  %452 = add i64 %451, 3
  store i64 %452, i64* %PC.i357
  %453 = add i64 %450, %449
  store i64 %453, i64* %RAX.i358, align 8
  %454 = icmp ult i64 %453, %449
  %455 = icmp ult i64 %453, %450
  %456 = or i1 %454, %455
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %457, i8* %458, align 1
  %459 = trunc i64 %453 to i32
  %460 = and i32 %459, 255
  %461 = call i32 @llvm.ctpop.i32(i32 %460)
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %464, i8* %465, align 1
  %466 = xor i64 %450, %449
  %467 = xor i64 %466, %453
  %468 = lshr i64 %467, 4
  %469 = trunc i64 %468 to i8
  %470 = and i8 %469, 1
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %470, i8* %471, align 1
  %472 = icmp eq i64 %453, 0
  %473 = zext i1 %472 to i8
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %473, i8* %474, align 1
  %475 = lshr i64 %453, 63
  %476 = trunc i64 %475 to i8
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %476, i8* %477, align 1
  %478 = lshr i64 %449, 63
  %479 = lshr i64 %450, 63
  %480 = xor i64 %475, %478
  %481 = xor i64 %475, %479
  %482 = add i64 %480, %481
  %483 = icmp eq i64 %482, 2
  %484 = zext i1 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %484, i8* %485, align 1
  store %struct.Memory* %loadMem_400cb4, %struct.Memory** %MEMORY
  %loadMem_400cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 5
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 15
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %494 to i64*
  %495 = load i64, i64* %RBP.i356
  %496 = sub i64 %495, 44
  %497 = load i64, i64* %PC.i354
  %498 = add i64 %497, 4
  store i64 %498, i64* %PC.i354
  %499 = inttoptr i64 %496 to i32*
  %500 = load i32, i32* %499
  %501 = sext i32 %500 to i64
  store i64 %501, i64* %RCX.i355, align 8
  store %struct.Memory* %loadMem_400cb7, %struct.Memory** %MEMORY
  %loadMem_400cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 33
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 5
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RCX.i352 = bitcast %union.anon* %510 to i64*
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %512 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %511, i64 0, i64 0
  %YMM0.i353 = bitcast %union.VectorReg* %512 to %"class.std::bitset"*
  %513 = bitcast %"class.std::bitset"* %YMM0.i353 to i8*
  %514 = load i64, i64* %RAX.i351
  %515 = load i64, i64* %RCX.i352
  %516 = mul i64 %515, 8
  %517 = add i64 %516, %514
  %518 = load i64, i64* %PC.i350
  %519 = add i64 %518, 5
  store i64 %519, i64* %PC.i350
  %520 = inttoptr i64 %517 to double*
  %521 = load double, double* %520
  %522 = bitcast i8* %513 to double*
  store double %521, double* %522, align 1
  %523 = getelementptr inbounds i8, i8* %513, i64 8
  %524 = bitcast i8* %523 to double*
  store double 0.000000e+00, double* %524, align 1
  store %struct.Memory* %loadMem_400cbb, %struct.Memory** %MEMORY
  %loadMem_400cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 15
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %RBP.i349
  %535 = sub i64 %534, 16
  %536 = load i64, i64* %PC.i347
  %537 = add i64 %536, 4
  store i64 %537, i64* %PC.i347
  %538 = inttoptr i64 %535 to i64*
  %539 = load i64, i64* %538
  store i64 %539, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_400cc0, %struct.Memory** %MEMORY
  %loadMem_400cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 33
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 5
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 15
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %RBP.i346
  %550 = sub i64 %549, 36
  %551 = load i64, i64* %PC.i344
  %552 = add i64 %551, 4
  store i64 %552, i64* %PC.i344
  %553 = inttoptr i64 %550 to i32*
  %554 = load i32, i32* %553
  %555 = sext i32 %554 to i64
  store i64 %555, i64* %RCX.i345, align 8
  store %struct.Memory* %loadMem_400cc4, %struct.Memory** %MEMORY
  %loadMem_400cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 5
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %561 to i64*
  %562 = load i64, i64* %RCX.i343
  %563 = load i64, i64* %PC.i342
  %564 = add i64 %563, 4
  store i64 %564, i64* %PC.i342
  %565 = shl i64 %562, 11
  %566 = icmp slt i64 %565, 0
  %567 = shl i64 %565, 1
  store i64 %567, i64* %RCX.i343, align 8
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %569 = zext i1 %566 to i8
  store i8 %569, i8* %568, align 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %571 = trunc i64 %567 to i32
  store i8 1, i8* %570, align 1
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %572, align 1
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %574 = icmp eq i64 %567, 0
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %573, align 1
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %577 = lshr i64 %567, 63
  %578 = trunc i64 %577 to i8
  store i8 %578, i8* %576, align 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %579, align 1
  store %struct.Memory* %loadMem_400cc8, %struct.Memory** %MEMORY
  %loadMem_400ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 33
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 1
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 5
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %588 to i64*
  %589 = load i64, i64* %RAX.i340
  %590 = load i64, i64* %RCX.i341
  %591 = load i64, i64* %PC.i339
  %592 = add i64 %591, 3
  store i64 %592, i64* %PC.i339
  %593 = add i64 %590, %589
  store i64 %593, i64* %RAX.i340, align 8
  %594 = icmp ult i64 %593, %589
  %595 = icmp ult i64 %593, %590
  %596 = or i1 %594, %595
  %597 = zext i1 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %597, i8* %598, align 1
  %599 = trunc i64 %593 to i32
  %600 = and i32 %599, 255
  %601 = call i32 @llvm.ctpop.i32(i32 %600)
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %604, i8* %605, align 1
  %606 = xor i64 %590, %589
  %607 = xor i64 %606, %593
  %608 = lshr i64 %607, 4
  %609 = trunc i64 %608 to i8
  %610 = and i8 %609, 1
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %610, i8* %611, align 1
  %612 = icmp eq i64 %593, 0
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %613, i8* %614, align 1
  %615 = lshr i64 %593, 63
  %616 = trunc i64 %615 to i8
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %616, i8* %617, align 1
  %618 = lshr i64 %589, 63
  %619 = lshr i64 %590, 63
  %620 = xor i64 %615, %618
  %621 = xor i64 %615, %619
  %622 = add i64 %620, %621
  %623 = icmp eq i64 %622, 2
  %624 = zext i1 %623 to i8
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %624, i8* %625, align 1
  store %struct.Memory* %loadMem_400ccc, %struct.Memory** %MEMORY
  %loadMem_400ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 33
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 5
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 15
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %RBP.i338
  %636 = sub i64 %635, 44
  %637 = load i64, i64* %PC.i336
  %638 = add i64 %637, 4
  store i64 %638, i64* %PC.i336
  %639 = inttoptr i64 %636 to i32*
  %640 = load i32, i32* %639
  %641 = sext i32 %640 to i64
  store i64 %641, i64* %RCX.i337, align 8
  store %struct.Memory* %loadMem_400ccf, %struct.Memory** %MEMORY
  %loadMem_400cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 33
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 1
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 5
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %651, i64 0, i64 0
  %YMM0.i335 = bitcast %union.VectorReg* %652 to %"class.std::bitset"*
  %653 = bitcast %"class.std::bitset"* %YMM0.i335 to i8*
  %654 = bitcast %"class.std::bitset"* %YMM0.i335 to i8*
  %655 = load i64, i64* %RAX.i333
  %656 = load i64, i64* %RCX.i334
  %657 = mul i64 %656, 8
  %658 = add i64 %657, %655
  %659 = load i64, i64* %PC.i332
  %660 = add i64 %659, 5
  store i64 %660, i64* %PC.i332
  %661 = bitcast i8* %654 to double*
  %662 = load double, double* %661, align 1
  %663 = getelementptr inbounds i8, i8* %654, i64 8
  %664 = bitcast i8* %663 to i64*
  %665 = load i64, i64* %664, align 1
  %666 = inttoptr i64 %658 to double*
  %667 = load double, double* %666
  %668 = fmul double %662, %667
  %669 = bitcast i8* %653 to double*
  store double %668, double* %669, align 1
  %670 = getelementptr inbounds i8, i8* %653, i64 8
  %671 = bitcast i8* %670 to i64*
  store i64 %665, i64* %671, align 1
  store %struct.Memory* %loadMem_400cd3, %struct.Memory** %MEMORY
  %loadMem_400cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 15
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %679 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %678, i64 0, i64 0
  %YMM0.i331 = bitcast %union.VectorReg* %679 to %"class.std::bitset"*
  %680 = bitcast %"class.std::bitset"* %YMM0.i331 to i8*
  %681 = bitcast %"class.std::bitset"* %YMM0.i331 to i8*
  %682 = load i64, i64* %RBP.i330
  %683 = sub i64 %682, 56
  %684 = load i64, i64* %PC.i329
  %685 = add i64 %684, 5
  store i64 %685, i64* %PC.i329
  %686 = bitcast i8* %681 to double*
  %687 = load double, double* %686, align 1
  %688 = getelementptr inbounds i8, i8* %681, i64 8
  %689 = bitcast i8* %688 to i64*
  %690 = load i64, i64* %689, align 1
  %691 = inttoptr i64 %683 to double*
  %692 = load double, double* %691
  %693 = fadd double %687, %692
  %694 = bitcast i8* %680 to double*
  store double %693, double* %694, align 1
  %695 = getelementptr inbounds i8, i8* %680, i64 8
  %696 = bitcast i8* %695 to i64*
  store i64 %690, i64* %696, align 1
  store %struct.Memory* %loadMem_400cd8, %struct.Memory** %MEMORY
  %loadMem_400cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 15
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %704 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %703, i64 0, i64 0
  %XMM0.i328 = bitcast %union.VectorReg* %704 to %union.vec128_t*
  %705 = load i64, i64* %RBP.i327
  %706 = sub i64 %705, 56
  %707 = bitcast %union.vec128_t* %XMM0.i328 to i8*
  %708 = load i64, i64* %PC.i326
  %709 = add i64 %708, 5
  store i64 %709, i64* %PC.i326
  %710 = bitcast i8* %707 to double*
  %711 = load double, double* %710, align 1
  %712 = inttoptr i64 %706 to double*
  store double %711, double* %712
  store %struct.Memory* %loadMem_400cdd, %struct.Memory** %MEMORY
  %loadMem_400ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 1
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %721 to i64*
  %722 = load i64, i64* %RBP.i325
  %723 = sub i64 %722, 36
  %724 = load i64, i64* %PC.i323
  %725 = add i64 %724, 3
  store i64 %725, i64* %PC.i323
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_400ce2, %struct.Memory** %MEMORY
  %loadMem_400ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %734 to i64*
  %735 = load i64, i64* %RAX.i322
  %736 = load i64, i64* %PC.i321
  %737 = add i64 %736, 3
  store i64 %737, i64* %PC.i321
  %738 = trunc i64 %735 to i32
  %739 = add i32 1, %738
  %740 = zext i32 %739 to i64
  store i64 %740, i64* %RAX.i322, align 8
  %741 = icmp ult i32 %739, %738
  %742 = icmp ult i32 %739, 1
  %743 = or i1 %741, %742
  %744 = zext i1 %743 to i8
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %744, i8* %745, align 1
  %746 = and i32 %739, 255
  %747 = call i32 @llvm.ctpop.i32(i32 %746)
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = xor i8 %749, 1
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %750, i8* %751, align 1
  %752 = xor i64 1, %735
  %753 = trunc i64 %752 to i32
  %754 = xor i32 %753, %739
  %755 = lshr i32 %754, 4
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %757, i8* %758, align 1
  %759 = icmp eq i32 %739, 0
  %760 = zext i1 %759 to i8
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %760, i8* %761, align 1
  %762 = lshr i32 %739, 31
  %763 = trunc i32 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %763, i8* %764, align 1
  %765 = lshr i32 %738, 31
  %766 = xor i32 %762, %765
  %767 = add i32 %766, %762
  %768 = icmp eq i32 %767, 2
  %769 = zext i1 %768 to i8
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %769, i8* %770, align 1
  store %struct.Memory* %loadMem_400ce5, %struct.Memory** %MEMORY
  %loadMem_400ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 1
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %EAX.i319 = bitcast %union.anon* %776 to i32*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 15
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %779 to i64*
  %780 = load i64, i64* %RBP.i320
  %781 = sub i64 %780, 36
  %782 = load i32, i32* %EAX.i319
  %783 = zext i32 %782 to i64
  %784 = load i64, i64* %PC.i318
  %785 = add i64 %784, 3
  store i64 %785, i64* %PC.i318
  %786 = inttoptr i64 %781 to i32*
  store i32 %782, i32* %786
  store %struct.Memory* %loadMem_400ce8, %struct.Memory** %MEMORY
  %loadMem_400ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 33
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %789 to i64*
  %790 = load i64, i64* %PC.i317
  %791 = add i64 %790, -79
  %792 = load i64, i64* %PC.i317
  %793 = add i64 %792, 5
  store i64 %793, i64* %PC.i317
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %791, i64* %794, align 8
  store %struct.Memory* %loadMem_400ceb, %struct.Memory** %MEMORY
  br label %block_.L_400c9c

block_.L_400cf0:                                  ; preds = %block_.L_400c9c
  %loadMem_400cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 15
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %802 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %801, i64 0, i64 0
  %YMM0.i316 = bitcast %union.VectorReg* %802 to %"class.std::bitset"*
  %803 = bitcast %"class.std::bitset"* %YMM0.i316 to i8*
  %804 = load i64, i64* %RBP.i315
  %805 = sub i64 %804, 56
  %806 = load i64, i64* %PC.i314
  %807 = add i64 %806, 5
  store i64 %807, i64* %PC.i314
  %808 = inttoptr i64 %805 to double*
  %809 = load double, double* %808
  %810 = bitcast i8* %803 to double*
  store double %809, double* %810, align 1
  %811 = getelementptr inbounds i8, i8* %803, i64 8
  %812 = bitcast i8* %811 to double*
  store double 0.000000e+00, double* %812, align 1
  store %struct.Memory* %loadMem_400cf0, %struct.Memory** %MEMORY
  %loadMem1_400cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 33
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %815 to i64*
  %816 = load i64, i64* %PC.i313
  %817 = add i64 %816, -1733
  %818 = load i64, i64* %PC.i313
  %819 = add i64 %818, 5
  %820 = load i64, i64* %PC.i313
  %821 = add i64 %820, 5
  store i64 %821, i64* %PC.i313
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %823 = load i64, i64* %822, align 8
  %824 = add i64 %823, -8
  %825 = inttoptr i64 %824 to i64*
  store i64 %819, i64* %825
  store i64 %824, i64* %822, align 8
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %817, i64* %826, align 8
  store %struct.Memory* %loadMem1_400cf5, %struct.Memory** %MEMORY
  %loadMem2_400cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400cf5 = load i64, i64* %3
  %call2_400cf5 = call %struct.Memory* @sub_400630.sqrt_plt(%struct.State* %0, i64 %loadPC_400cf5, %struct.Memory* %loadMem2_400cf5)
  store %struct.Memory* %call2_400cf5, %struct.Memory** %MEMORY
  %loadMem_400cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 33
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 1
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 15
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %835 to i64*
  %836 = load i64, i64* %RBP.i312
  %837 = sub i64 %836, 24
  %838 = load i64, i64* %PC.i310
  %839 = add i64 %838, 4
  store i64 %839, i64* %PC.i310
  %840 = inttoptr i64 %837 to i64*
  %841 = load i64, i64* %840
  store i64 %841, i64* %RAX.i311, align 8
  store %struct.Memory* %loadMem_400cfa, %struct.Memory** %MEMORY
  %loadMem_400cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 5
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 15
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %850 to i64*
  %851 = load i64, i64* %RBP.i309
  %852 = sub i64 %851, 44
  %853 = load i64, i64* %PC.i307
  %854 = add i64 %853, 4
  store i64 %854, i64* %PC.i307
  %855 = inttoptr i64 %852 to i32*
  %856 = load i32, i32* %855
  %857 = sext i32 %856 to i64
  store i64 %857, i64* %RCX.i308, align 8
  store %struct.Memory* %loadMem_400cfe, %struct.Memory** %MEMORY
  %loadMem_400d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 5
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %RCX.i306
  %865 = load i64, i64* %PC.i305
  %866 = add i64 %865, 4
  store i64 %866, i64* %PC.i305
  %867 = shl i64 %864, 11
  %868 = icmp slt i64 %867, 0
  %869 = shl i64 %867, 1
  store i64 %869, i64* %RCX.i306, align 8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %871 = zext i1 %868 to i8
  store i8 %871, i8* %870, align 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %873 = trunc i64 %869 to i32
  store i8 1, i8* %872, align 1
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %874, align 1
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %876 = icmp eq i64 %869, 0
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %875, align 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %879 = lshr i64 %869, 63
  %880 = trunc i64 %879 to i8
  store i8 %880, i8* %878, align 1
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %881, align 1
  store %struct.Memory* %loadMem_400d02, %struct.Memory** %MEMORY
  %loadMem_400d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 1
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 5
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %890 to i64*
  %891 = load i64, i64* %RAX.i303
  %892 = load i64, i64* %RCX.i304
  %893 = load i64, i64* %PC.i302
  %894 = add i64 %893, 3
  store i64 %894, i64* %PC.i302
  %895 = add i64 %892, %891
  store i64 %895, i64* %RAX.i303, align 8
  %896 = icmp ult i64 %895, %891
  %897 = icmp ult i64 %895, %892
  %898 = or i1 %896, %897
  %899 = zext i1 %898 to i8
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %899, i8* %900, align 1
  %901 = trunc i64 %895 to i32
  %902 = and i32 %901, 255
  %903 = call i32 @llvm.ctpop.i32(i32 %902)
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %906, i8* %907, align 1
  %908 = xor i64 %892, %891
  %909 = xor i64 %908, %895
  %910 = lshr i64 %909, 4
  %911 = trunc i64 %910 to i8
  %912 = and i8 %911, 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %912, i8* %913, align 1
  %914 = icmp eq i64 %895, 0
  %915 = zext i1 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %915, i8* %916, align 1
  %917 = lshr i64 %895, 63
  %918 = trunc i64 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %918, i8* %919, align 1
  %920 = lshr i64 %891, 63
  %921 = lshr i64 %892, 63
  %922 = xor i64 %917, %920
  %923 = xor i64 %917, %921
  %924 = add i64 %922, %923
  %925 = icmp eq i64 %924, 2
  %926 = zext i1 %925 to i8
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %926, i8* %927, align 1
  store %struct.Memory* %loadMem_400d06, %struct.Memory** %MEMORY
  %loadMem_400d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 5
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 15
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %936 to i64*
  %937 = load i64, i64* %RBP.i301
  %938 = sub i64 %937, 44
  %939 = load i64, i64* %PC.i299
  %940 = add i64 %939, 4
  store i64 %940, i64* %PC.i299
  %941 = inttoptr i64 %938 to i32*
  %942 = load i32, i32* %941
  %943 = sext i32 %942 to i64
  store i64 %943, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_400d09, %struct.Memory** %MEMORY
  %loadMem_400d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 33
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %946 to i64*
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 1
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 5
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %954 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %953, i64 0, i64 0
  %XMM0.i298 = bitcast %union.VectorReg* %954 to %union.vec128_t*
  %955 = load i64, i64* %RAX.i296
  %956 = load i64, i64* %RCX.i297
  %957 = mul i64 %956, 8
  %958 = add i64 %957, %955
  %959 = bitcast %union.vec128_t* %XMM0.i298 to i8*
  %960 = load i64, i64* %PC.i295
  %961 = add i64 %960, 5
  store i64 %961, i64* %PC.i295
  %962 = bitcast i8* %959 to double*
  %963 = load double, double* %962, align 1
  %964 = inttoptr i64 %958 to double*
  store double %963, double* %964
  store %struct.Memory* %loadMem_400d0d, %struct.Memory** %MEMORY
  %loadMem_400d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 15
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %970 to i64*
  %971 = load i64, i64* %RBP.i294
  %972 = sub i64 %971, 36
  %973 = load i64, i64* %PC.i293
  %974 = add i64 %973, 7
  store i64 %974, i64* %PC.i293
  %975 = inttoptr i64 %972 to i32*
  store i32 0, i32* %975
  store %struct.Memory* %loadMem_400d12, %struct.Memory** %MEMORY
  br label %block_.L_400d19

block_.L_400d19:                                  ; preds = %block_400d25, %block_.L_400cf0
  %loadMem_400d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 1
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 15
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %984 to i64*
  %985 = load i64, i64* %RBP.i292
  %986 = sub i64 %985, 36
  %987 = load i64, i64* %PC.i290
  %988 = add i64 %987, 3
  store i64 %988, i64* %PC.i290
  %989 = inttoptr i64 %986 to i32*
  %990 = load i32, i32* %989
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_400d19, %struct.Memory** %MEMORY
  %loadMem_400d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 1
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %EAX.i288 = bitcast %union.anon* %997 to i32*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 15
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %1000 to i64*
  %1001 = load i32, i32* %EAX.i288
  %1002 = zext i32 %1001 to i64
  %1003 = load i64, i64* %RBP.i289
  %1004 = sub i64 %1003, 4
  %1005 = load i64, i64* %PC.i287
  %1006 = add i64 %1005, 3
  store i64 %1006, i64* %PC.i287
  %1007 = inttoptr i64 %1004 to i32*
  %1008 = load i32, i32* %1007
  %1009 = sub i32 %1001, %1008
  %1010 = icmp ult i32 %1001, %1008
  %1011 = zext i1 %1010 to i8
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1011, i8* %1012, align 1
  %1013 = and i32 %1009, 255
  %1014 = call i32 @llvm.ctpop.i32(i32 %1013)
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  %1017 = xor i8 %1016, 1
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1017, i8* %1018, align 1
  %1019 = xor i32 %1008, %1001
  %1020 = xor i32 %1019, %1009
  %1021 = lshr i32 %1020, 4
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1023, i8* %1024, align 1
  %1025 = icmp eq i32 %1009, 0
  %1026 = zext i1 %1025 to i8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1026, i8* %1027, align 1
  %1028 = lshr i32 %1009, 31
  %1029 = trunc i32 %1028 to i8
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1029, i8* %1030, align 1
  %1031 = lshr i32 %1001, 31
  %1032 = lshr i32 %1008, 31
  %1033 = xor i32 %1032, %1031
  %1034 = xor i32 %1028, %1031
  %1035 = add i32 %1034, %1033
  %1036 = icmp eq i32 %1035, 2
  %1037 = zext i1 %1036 to i8
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1037, i8* %1038, align 1
  store %struct.Memory* %loadMem_400d1c, %struct.Memory** %MEMORY
  %loadMem_400d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1041 to i64*
  %1042 = load i64, i64* %PC.i286
  %1043 = add i64 %1042, 92
  %1044 = load i64, i64* %PC.i286
  %1045 = add i64 %1044, 6
  %1046 = load i64, i64* %PC.i286
  %1047 = add i64 %1046, 6
  store i64 %1047, i64* %PC.i286
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1049 = load i8, i8* %1048, align 1
  %1050 = icmp ne i8 %1049, 0
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1052 = load i8, i8* %1051, align 1
  %1053 = icmp ne i8 %1052, 0
  %1054 = xor i1 %1050, %1053
  %1055 = xor i1 %1054, true
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %BRANCH_TAKEN, align 1
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1058 = select i1 %1054, i64 %1045, i64 %1043
  store i64 %1058, i64* %1057, align 8
  store %struct.Memory* %loadMem_400d1f, %struct.Memory** %MEMORY
  %loadBr_400d1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d1f = icmp eq i8 %loadBr_400d1f, 1
  br i1 %cmpBr_400d1f, label %block_.L_400d7b, label %block_400d25

block_400d25:                                     ; preds = %block_.L_400d19
  %loadMem_400d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 1
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %1064 to i64*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 15
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %1067 to i64*
  %1068 = load i64, i64* %RBP.i285
  %1069 = sub i64 %1068, 16
  %1070 = load i64, i64* %PC.i283
  %1071 = add i64 %1070, 4
  store i64 %1071, i64* %PC.i283
  %1072 = inttoptr i64 %1069 to i64*
  %1073 = load i64, i64* %1072
  store i64 %1073, i64* %RAX.i284, align 8
  store %struct.Memory* %loadMem_400d25, %struct.Memory** %MEMORY
  %loadMem_400d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 5
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RCX.i281 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 15
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %1082 to i64*
  %1083 = load i64, i64* %RBP.i282
  %1084 = sub i64 %1083, 36
  %1085 = load i64, i64* %PC.i280
  %1086 = add i64 %1085, 4
  store i64 %1086, i64* %PC.i280
  %1087 = inttoptr i64 %1084 to i32*
  %1088 = load i32, i32* %1087
  %1089 = sext i32 %1088 to i64
  store i64 %1089, i64* %RCX.i281, align 8
  store %struct.Memory* %loadMem_400d29, %struct.Memory** %MEMORY
  %loadMem_400d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 33
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 5
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %1095 to i64*
  %1096 = load i64, i64* %RCX.i279
  %1097 = load i64, i64* %PC.i278
  %1098 = add i64 %1097, 4
  store i64 %1098, i64* %PC.i278
  %1099 = shl i64 %1096, 11
  %1100 = icmp slt i64 %1099, 0
  %1101 = shl i64 %1099, 1
  store i64 %1101, i64* %RCX.i279, align 8
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1103 = zext i1 %1100 to i8
  store i8 %1103, i8* %1102, align 1
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1105 = trunc i64 %1101 to i32
  store i8 1, i8* %1104, align 1
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1106, align 1
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1108 = icmp eq i64 %1101, 0
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %1107, align 1
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1111 = lshr i64 %1101, 63
  %1112 = trunc i64 %1111 to i8
  store i8 %1112, i8* %1110, align 1
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1113, align 1
  store %struct.Memory* %loadMem_400d2d, %struct.Memory** %MEMORY
  %loadMem_400d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 33
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 1
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 5
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %1122 to i64*
  %1123 = load i64, i64* %RAX.i276
  %1124 = load i64, i64* %RCX.i277
  %1125 = load i64, i64* %PC.i275
  %1126 = add i64 %1125, 3
  store i64 %1126, i64* %PC.i275
  %1127 = add i64 %1124, %1123
  store i64 %1127, i64* %RAX.i276, align 8
  %1128 = icmp ult i64 %1127, %1123
  %1129 = icmp ult i64 %1127, %1124
  %1130 = or i1 %1128, %1129
  %1131 = zext i1 %1130 to i8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1131, i8* %1132, align 1
  %1133 = trunc i64 %1127 to i32
  %1134 = and i32 %1133, 255
  %1135 = call i32 @llvm.ctpop.i32(i32 %1134)
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  %1138 = xor i8 %1137, 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1138, i8* %1139, align 1
  %1140 = xor i64 %1124, %1123
  %1141 = xor i64 %1140, %1127
  %1142 = lshr i64 %1141, 4
  %1143 = trunc i64 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1144, i8* %1145, align 1
  %1146 = icmp eq i64 %1127, 0
  %1147 = zext i1 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1147, i8* %1148, align 1
  %1149 = lshr i64 %1127, 63
  %1150 = trunc i64 %1149 to i8
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1150, i8* %1151, align 1
  %1152 = lshr i64 %1123, 63
  %1153 = lshr i64 %1124, 63
  %1154 = xor i64 %1149, %1152
  %1155 = xor i64 %1149, %1153
  %1156 = add i64 %1154, %1155
  %1157 = icmp eq i64 %1156, 2
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1158, i8* %1159, align 1
  store %struct.Memory* %loadMem_400d31, %struct.Memory** %MEMORY
  %loadMem_400d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 5
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 15
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %1168 to i64*
  %1169 = load i64, i64* %RBP.i274
  %1170 = sub i64 %1169, 44
  %1171 = load i64, i64* %PC.i272
  %1172 = add i64 %1171, 4
  store i64 %1172, i64* %PC.i272
  %1173 = inttoptr i64 %1170 to i32*
  %1174 = load i32, i32* %1173
  %1175 = sext i32 %1174 to i64
  store i64 %1175, i64* %RCX.i273, align 8
  store %struct.Memory* %loadMem_400d34, %struct.Memory** %MEMORY
  %loadMem_400d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 1
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 5
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1186 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1185, i64 0, i64 0
  %YMM0.i271 = bitcast %union.VectorReg* %1186 to %"class.std::bitset"*
  %1187 = bitcast %"class.std::bitset"* %YMM0.i271 to i8*
  %1188 = load i64, i64* %RAX.i269
  %1189 = load i64, i64* %RCX.i270
  %1190 = mul i64 %1189, 8
  %1191 = add i64 %1190, %1188
  %1192 = load i64, i64* %PC.i268
  %1193 = add i64 %1192, 5
  store i64 %1193, i64* %PC.i268
  %1194 = inttoptr i64 %1191 to double*
  %1195 = load double, double* %1194
  %1196 = bitcast i8* %1187 to double*
  store double %1195, double* %1196, align 1
  %1197 = getelementptr inbounds i8, i8* %1187, i64 8
  %1198 = bitcast i8* %1197 to double*
  store double 0.000000e+00, double* %1198, align 1
  store %struct.Memory* %loadMem_400d38, %struct.Memory** %MEMORY
  %loadMem_400d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 1
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %1204 to i64*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 15
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %1207 to i64*
  %1208 = load i64, i64* %RBP.i267
  %1209 = sub i64 %1208, 24
  %1210 = load i64, i64* %PC.i265
  %1211 = add i64 %1210, 4
  store i64 %1211, i64* %PC.i265
  %1212 = inttoptr i64 %1209 to i64*
  %1213 = load i64, i64* %1212
  store i64 %1213, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_400d3d, %struct.Memory** %MEMORY
  %loadMem_400d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 33
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1216 to i64*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 5
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 15
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %1222 to i64*
  %1223 = load i64, i64* %RBP.i264
  %1224 = sub i64 %1223, 44
  %1225 = load i64, i64* %PC.i262
  %1226 = add i64 %1225, 4
  store i64 %1226, i64* %PC.i262
  %1227 = inttoptr i64 %1224 to i32*
  %1228 = load i32, i32* %1227
  %1229 = sext i32 %1228 to i64
  store i64 %1229, i64* %RCX.i263, align 8
  store %struct.Memory* %loadMem_400d41, %struct.Memory** %MEMORY
  %loadMem_400d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 5
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %1235 to i64*
  %1236 = load i64, i64* %RCX.i261
  %1237 = load i64, i64* %PC.i260
  %1238 = add i64 %1237, 4
  store i64 %1238, i64* %PC.i260
  %1239 = shl i64 %1236, 11
  %1240 = icmp slt i64 %1239, 0
  %1241 = shl i64 %1239, 1
  store i64 %1241, i64* %RCX.i261, align 8
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1243 = zext i1 %1240 to i8
  store i8 %1243, i8* %1242, align 1
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1245 = trunc i64 %1241 to i32
  store i8 1, i8* %1244, align 1
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1246, align 1
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1248 = icmp eq i64 %1241, 0
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %1247, align 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1251 = lshr i64 %1241, 63
  %1252 = trunc i64 %1251 to i8
  store i8 %1252, i8* %1250, align 1
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1253, align 1
  store %struct.Memory* %loadMem_400d45, %struct.Memory** %MEMORY
  %loadMem_400d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 1
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 5
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %RAX.i258
  %1264 = load i64, i64* %RCX.i259
  %1265 = load i64, i64* %PC.i257
  %1266 = add i64 %1265, 3
  store i64 %1266, i64* %PC.i257
  %1267 = add i64 %1264, %1263
  store i64 %1267, i64* %RAX.i258, align 8
  %1268 = icmp ult i64 %1267, %1263
  %1269 = icmp ult i64 %1267, %1264
  %1270 = or i1 %1268, %1269
  %1271 = zext i1 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1271, i8* %1272, align 1
  %1273 = trunc i64 %1267 to i32
  %1274 = and i32 %1273, 255
  %1275 = call i32 @llvm.ctpop.i32(i32 %1274)
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = xor i8 %1277, 1
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1278, i8* %1279, align 1
  %1280 = xor i64 %1264, %1263
  %1281 = xor i64 %1280, %1267
  %1282 = lshr i64 %1281, 4
  %1283 = trunc i64 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1284, i8* %1285, align 1
  %1286 = icmp eq i64 %1267, 0
  %1287 = zext i1 %1286 to i8
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1287, i8* %1288, align 1
  %1289 = lshr i64 %1267, 63
  %1290 = trunc i64 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1290, i8* %1291, align 1
  %1292 = lshr i64 %1263, 63
  %1293 = lshr i64 %1264, 63
  %1294 = xor i64 %1289, %1292
  %1295 = xor i64 %1289, %1293
  %1296 = add i64 %1294, %1295
  %1297 = icmp eq i64 %1296, 2
  %1298 = zext i1 %1297 to i8
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1298, i8* %1299, align 1
  store %struct.Memory* %loadMem_400d49, %struct.Memory** %MEMORY
  %loadMem_400d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 5
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 15
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %1308 to i64*
  %1309 = load i64, i64* %RBP.i256
  %1310 = sub i64 %1309, 44
  %1311 = load i64, i64* %PC.i254
  %1312 = add i64 %1311, 4
  store i64 %1312, i64* %PC.i254
  %1313 = inttoptr i64 %1310 to i32*
  %1314 = load i32, i32* %1313
  %1315 = sext i32 %1314 to i64
  store i64 %1315, i64* %RCX.i255, align 8
  store %struct.Memory* %loadMem_400d4c, %struct.Memory** %MEMORY
  %loadMem_400d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 33
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1318 to i64*
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 1
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %1321 to i64*
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 5
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %1324 to i64*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1326 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1325, i64 0, i64 0
  %YMM0.i253 = bitcast %union.VectorReg* %1326 to %"class.std::bitset"*
  %1327 = bitcast %"class.std::bitset"* %YMM0.i253 to i8*
  %1328 = bitcast %"class.std::bitset"* %YMM0.i253 to i8*
  %1329 = load i64, i64* %RAX.i251
  %1330 = load i64, i64* %RCX.i252
  %1331 = mul i64 %1330, 8
  %1332 = add i64 %1331, %1329
  %1333 = load i64, i64* %PC.i250
  %1334 = add i64 %1333, 5
  store i64 %1334, i64* %PC.i250
  %1335 = bitcast i8* %1328 to double*
  %1336 = load double, double* %1335, align 1
  %1337 = getelementptr inbounds i8, i8* %1328, i64 8
  %1338 = bitcast i8* %1337 to i64*
  %1339 = load i64, i64* %1338, align 1
  %1340 = inttoptr i64 %1332 to double*
  %1341 = load double, double* %1340
  %1342 = fdiv double %1336, %1341
  %1343 = bitcast i8* %1327 to double*
  store double %1342, double* %1343, align 1
  %1344 = getelementptr inbounds i8, i8* %1327, i64 8
  %1345 = bitcast i8* %1344 to i64*
  store i64 %1339, i64* %1345, align 1
  store %struct.Memory* %loadMem_400d50, %struct.Memory** %MEMORY
  %loadMem_400d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 1
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 15
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %RBP.i249
  %1356 = sub i64 %1355, 32
  %1357 = load i64, i64* %PC.i247
  %1358 = add i64 %1357, 4
  store i64 %1358, i64* %PC.i247
  %1359 = inttoptr i64 %1356 to i64*
  %1360 = load i64, i64* %1359
  store i64 %1360, i64* %RAX.i248, align 8
  store %struct.Memory* %loadMem_400d55, %struct.Memory** %MEMORY
  %loadMem_400d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 5
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 15
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %1369 to i64*
  %1370 = load i64, i64* %RBP.i246
  %1371 = sub i64 %1370, 36
  %1372 = load i64, i64* %PC.i244
  %1373 = add i64 %1372, 4
  store i64 %1373, i64* %PC.i244
  %1374 = inttoptr i64 %1371 to i32*
  %1375 = load i32, i32* %1374
  %1376 = sext i32 %1375 to i64
  store i64 %1376, i64* %RCX.i245, align 8
  store %struct.Memory* %loadMem_400d59, %struct.Memory** %MEMORY
  %loadMem_400d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 33
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 5
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %RCX.i243
  %1384 = load i64, i64* %PC.i242
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %PC.i242
  %1386 = shl i64 %1383, 11
  %1387 = icmp slt i64 %1386, 0
  %1388 = shl i64 %1386, 1
  store i64 %1388, i64* %RCX.i243, align 8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1390 = zext i1 %1387 to i8
  store i8 %1390, i8* %1389, align 1
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1392 = trunc i64 %1388 to i32
  store i8 1, i8* %1391, align 1
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1393, align 1
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1395 = icmp eq i64 %1388, 0
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %1394, align 1
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1398 = lshr i64 %1388, 63
  %1399 = trunc i64 %1398 to i8
  store i8 %1399, i8* %1397, align 1
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1400, align 1
  store %struct.Memory* %loadMem_400d5d, %struct.Memory** %MEMORY
  %loadMem_400d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 1
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 5
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %1409 to i64*
  %1410 = load i64, i64* %RAX.i240
  %1411 = load i64, i64* %RCX.i241
  %1412 = load i64, i64* %PC.i239
  %1413 = add i64 %1412, 3
  store i64 %1413, i64* %PC.i239
  %1414 = add i64 %1411, %1410
  store i64 %1414, i64* %RAX.i240, align 8
  %1415 = icmp ult i64 %1414, %1410
  %1416 = icmp ult i64 %1414, %1411
  %1417 = or i1 %1415, %1416
  %1418 = zext i1 %1417 to i8
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1418, i8* %1419, align 1
  %1420 = trunc i64 %1414 to i32
  %1421 = and i32 %1420, 255
  %1422 = call i32 @llvm.ctpop.i32(i32 %1421)
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  %1425 = xor i8 %1424, 1
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1425, i8* %1426, align 1
  %1427 = xor i64 %1411, %1410
  %1428 = xor i64 %1427, %1414
  %1429 = lshr i64 %1428, 4
  %1430 = trunc i64 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1431, i8* %1432, align 1
  %1433 = icmp eq i64 %1414, 0
  %1434 = zext i1 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1434, i8* %1435, align 1
  %1436 = lshr i64 %1414, 63
  %1437 = trunc i64 %1436 to i8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1437, i8* %1438, align 1
  %1439 = lshr i64 %1410, 63
  %1440 = lshr i64 %1411, 63
  %1441 = xor i64 %1436, %1439
  %1442 = xor i64 %1436, %1440
  %1443 = add i64 %1441, %1442
  %1444 = icmp eq i64 %1443, 2
  %1445 = zext i1 %1444 to i8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1445, i8* %1446, align 1
  store %struct.Memory* %loadMem_400d61, %struct.Memory** %MEMORY
  %loadMem_400d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 5
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 15
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %1455 to i64*
  %1456 = load i64, i64* %RBP.i238
  %1457 = sub i64 %1456, 44
  %1458 = load i64, i64* %PC.i236
  %1459 = add i64 %1458, 4
  store i64 %1459, i64* %PC.i236
  %1460 = inttoptr i64 %1457 to i32*
  %1461 = load i32, i32* %1460
  %1462 = sext i32 %1461 to i64
  store i64 %1462, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_400d64, %struct.Memory** %MEMORY
  %loadMem_400d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 33
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1465 to i64*
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 1
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 5
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1472, i64 0, i64 0
  %XMM0.i235 = bitcast %union.VectorReg* %1473 to %union.vec128_t*
  %1474 = load i64, i64* %RAX.i233
  %1475 = load i64, i64* %RCX.i234
  %1476 = mul i64 %1475, 8
  %1477 = add i64 %1476, %1474
  %1478 = bitcast %union.vec128_t* %XMM0.i235 to i8*
  %1479 = load i64, i64* %PC.i232
  %1480 = add i64 %1479, 5
  store i64 %1480, i64* %PC.i232
  %1481 = bitcast i8* %1478 to double*
  %1482 = load double, double* %1481, align 1
  %1483 = inttoptr i64 %1477 to double*
  store double %1482, double* %1483
  store %struct.Memory* %loadMem_400d68, %struct.Memory** %MEMORY
  %loadMem_400d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 1
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 15
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %1492 to i64*
  %1493 = load i64, i64* %RBP.i231
  %1494 = sub i64 %1493, 36
  %1495 = load i64, i64* %PC.i229
  %1496 = add i64 %1495, 3
  store i64 %1496, i64* %PC.i229
  %1497 = inttoptr i64 %1494 to i32*
  %1498 = load i32, i32* %1497
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_400d6d, %struct.Memory** %MEMORY
  %loadMem_400d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 1
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %1505 to i64*
  %1506 = load i64, i64* %RAX.i228
  %1507 = load i64, i64* %PC.i227
  %1508 = add i64 %1507, 3
  store i64 %1508, i64* %PC.i227
  %1509 = trunc i64 %1506 to i32
  %1510 = add i32 1, %1509
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RAX.i228, align 8
  %1512 = icmp ult i32 %1510, %1509
  %1513 = icmp ult i32 %1510, 1
  %1514 = or i1 %1512, %1513
  %1515 = zext i1 %1514 to i8
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1515, i8* %1516, align 1
  %1517 = and i32 %1510, 255
  %1518 = call i32 @llvm.ctpop.i32(i32 %1517)
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1521, i8* %1522, align 1
  %1523 = xor i64 1, %1506
  %1524 = trunc i64 %1523 to i32
  %1525 = xor i32 %1524, %1510
  %1526 = lshr i32 %1525, 4
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1528, i8* %1529, align 1
  %1530 = icmp eq i32 %1510, 0
  %1531 = zext i1 %1530 to i8
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1531, i8* %1532, align 1
  %1533 = lshr i32 %1510, 31
  %1534 = trunc i32 %1533 to i8
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1534, i8* %1535, align 1
  %1536 = lshr i32 %1509, 31
  %1537 = xor i32 %1533, %1536
  %1538 = add i32 %1537, %1533
  %1539 = icmp eq i32 %1538, 2
  %1540 = zext i1 %1539 to i8
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1540, i8* %1541, align 1
  store %struct.Memory* %loadMem_400d70, %struct.Memory** %MEMORY
  %loadMem_400d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 1
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %EAX.i225 = bitcast %union.anon* %1547 to i32*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 15
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %1550 to i64*
  %1551 = load i64, i64* %RBP.i226
  %1552 = sub i64 %1551, 36
  %1553 = load i32, i32* %EAX.i225
  %1554 = zext i32 %1553 to i64
  %1555 = load i64, i64* %PC.i224
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC.i224
  %1557 = inttoptr i64 %1552 to i32*
  store i32 %1553, i32* %1557
  store %struct.Memory* %loadMem_400d73, %struct.Memory** %MEMORY
  %loadMem_400d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %PC.i223
  %1562 = add i64 %1561, -93
  %1563 = load i64, i64* %PC.i223
  %1564 = add i64 %1563, 5
  store i64 %1564, i64* %PC.i223
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1562, i64* %1565, align 8
  store %struct.Memory* %loadMem_400d76, %struct.Memory** %MEMORY
  br label %block_.L_400d19

block_.L_400d7b:                                  ; preds = %block_.L_400d19
  %loadMem_400d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 33
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %1568 to i64*
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 1
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %1571 to i64*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 15
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %1574 to i64*
  %1575 = load i64, i64* %RBP.i222
  %1576 = sub i64 %1575, 44
  %1577 = load i64, i64* %PC.i220
  %1578 = add i64 %1577, 3
  store i64 %1578, i64* %PC.i220
  %1579 = inttoptr i64 %1576 to i32*
  %1580 = load i32, i32* %1579
  %1581 = zext i32 %1580 to i64
  store i64 %1581, i64* %RAX.i221, align 8
  store %struct.Memory* %loadMem_400d7b, %struct.Memory** %MEMORY
  %loadMem_400d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 1
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %1587 to i64*
  %1588 = load i64, i64* %RAX.i219
  %1589 = load i64, i64* %PC.i218
  %1590 = add i64 %1589, 3
  store i64 %1590, i64* %PC.i218
  %1591 = trunc i64 %1588 to i32
  %1592 = add i32 1, %1591
  %1593 = zext i32 %1592 to i64
  store i64 %1593, i64* %RAX.i219, align 8
  %1594 = icmp ult i32 %1592, %1591
  %1595 = icmp ult i32 %1592, 1
  %1596 = or i1 %1594, %1595
  %1597 = zext i1 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1597, i8* %1598, align 1
  %1599 = and i32 %1592, 255
  %1600 = call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1603, i8* %1604, align 1
  %1605 = xor i64 1, %1588
  %1606 = trunc i64 %1605 to i32
  %1607 = xor i32 %1606, %1592
  %1608 = lshr i32 %1607, 4
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1610, i8* %1611, align 1
  %1612 = icmp eq i32 %1592, 0
  %1613 = zext i1 %1612 to i8
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1613, i8* %1614, align 1
  %1615 = lshr i32 %1592, 31
  %1616 = trunc i32 %1615 to i8
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1616, i8* %1617, align 1
  %1618 = lshr i32 %1591, 31
  %1619 = xor i32 %1615, %1618
  %1620 = add i32 %1619, %1615
  %1621 = icmp eq i32 %1620, 2
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1622, i8* %1623, align 1
  store %struct.Memory* %loadMem_400d7e, %struct.Memory** %MEMORY
  %loadMem_400d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 1
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %EAX.i216 = bitcast %union.anon* %1629 to i32*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 15
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %RBP.i217
  %1634 = sub i64 %1633, 40
  %1635 = load i32, i32* %EAX.i216
  %1636 = zext i32 %1635 to i64
  %1637 = load i64, i64* %PC.i215
  %1638 = add i64 %1637, 3
  store i64 %1638, i64* %PC.i215
  %1639 = inttoptr i64 %1634 to i32*
  store i32 %1635, i32* %1639
  store %struct.Memory* %loadMem_400d81, %struct.Memory** %MEMORY
  br label %block_.L_400d84

block_.L_400d84:                                  ; preds = %block_.L_400ea3, %block_.L_400d7b
  %loadMem_400d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 1
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 15
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %1648 to i64*
  %1649 = load i64, i64* %RBP.i214
  %1650 = sub i64 %1649, 40
  %1651 = load i64, i64* %PC.i212
  %1652 = add i64 %1651, 3
  store i64 %1652, i64* %PC.i212
  %1653 = inttoptr i64 %1650 to i32*
  %1654 = load i32, i32* %1653
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_400d84, %struct.Memory** %MEMORY
  %loadMem_400d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 33
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1658 to i64*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 1
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %EAX.i210 = bitcast %union.anon* %1661 to i32*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 15
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %1664 to i64*
  %1665 = load i32, i32* %EAX.i210
  %1666 = zext i32 %1665 to i64
  %1667 = load i64, i64* %RBP.i211
  %1668 = sub i64 %1667, 8
  %1669 = load i64, i64* %PC.i209
  %1670 = add i64 %1669, 3
  store i64 %1670, i64* %PC.i209
  %1671 = inttoptr i64 %1668 to i32*
  %1672 = load i32, i32* %1671
  %1673 = sub i32 %1665, %1672
  %1674 = icmp ult i32 %1665, %1672
  %1675 = zext i1 %1674 to i8
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1675, i8* %1676, align 1
  %1677 = and i32 %1673, 255
  %1678 = call i32 @llvm.ctpop.i32(i32 %1677)
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1681, i8* %1682, align 1
  %1683 = xor i32 %1672, %1665
  %1684 = xor i32 %1683, %1673
  %1685 = lshr i32 %1684, 4
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1687, i8* %1688, align 1
  %1689 = icmp eq i32 %1673, 0
  %1690 = zext i1 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1690, i8* %1691, align 1
  %1692 = lshr i32 %1673, 31
  %1693 = trunc i32 %1692 to i8
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1693, i8* %1694, align 1
  %1695 = lshr i32 %1665, 31
  %1696 = lshr i32 %1672, 31
  %1697 = xor i32 %1696, %1695
  %1698 = xor i32 %1692, %1695
  %1699 = add i32 %1698, %1697
  %1700 = icmp eq i32 %1699, 2
  %1701 = zext i1 %1700 to i8
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1701, i8* %1702, align 1
  store %struct.Memory* %loadMem_400d87, %struct.Memory** %MEMORY
  %loadMem_400d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 33
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1705 to i64*
  %1706 = load i64, i64* %PC.i208
  %1707 = add i64 %1706, 295
  %1708 = load i64, i64* %PC.i208
  %1709 = add i64 %1708, 6
  %1710 = load i64, i64* %PC.i208
  %1711 = add i64 %1710, 6
  store i64 %1711, i64* %PC.i208
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1713 = load i8, i8* %1712, align 1
  %1714 = icmp ne i8 %1713, 0
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1716 = load i8, i8* %1715, align 1
  %1717 = icmp ne i8 %1716, 0
  %1718 = xor i1 %1714, %1717
  %1719 = xor i1 %1718, true
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %BRANCH_TAKEN, align 1
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1722 = select i1 %1718, i64 %1709, i64 %1707
  store i64 %1722, i64* %1721, align 8
  store %struct.Memory* %loadMem_400d8a, %struct.Memory** %MEMORY
  %loadBr_400d8a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d8a = icmp eq i8 %loadBr_400d8a, 1
  br i1 %cmpBr_400d8a, label %block_.L_400eb1, label %block_400d90

block_400d90:                                     ; preds = %block_.L_400d84
  %loadMem_400d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 33
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1726, i64 0, i64 0
  %YMM0.i206 = bitcast %union.VectorReg* %1727 to %"class.std::bitset"*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1728, i64 0, i64 0
  %XMM0.i207 = bitcast %union.VectorReg* %1729 to %union.vec128_t*
  %1730 = bitcast %"class.std::bitset"* %YMM0.i206 to i8*
  %1731 = bitcast %"class.std::bitset"* %YMM0.i206 to i8*
  %1732 = bitcast %union.vec128_t* %XMM0.i207 to i8*
  %1733 = load i64, i64* %PC.i205
  %1734 = add i64 %1733, 3
  store i64 %1734, i64* %PC.i205
  %1735 = bitcast i8* %1731 to i64*
  %1736 = load i64, i64* %1735, align 1
  %1737 = getelementptr inbounds i8, i8* %1731, i64 8
  %1738 = bitcast i8* %1737 to i64*
  %1739 = load i64, i64* %1738, align 1
  %1740 = bitcast i8* %1732 to i64*
  %1741 = load i64, i64* %1740, align 1
  %1742 = getelementptr inbounds i8, i8* %1732, i64 8
  %1743 = bitcast i8* %1742 to i64*
  %1744 = load i64, i64* %1743, align 1
  %1745 = xor i64 %1741, %1736
  %1746 = xor i64 %1744, %1739
  %1747 = trunc i64 %1745 to i32
  %1748 = lshr i64 %1745, 32
  %1749 = trunc i64 %1748 to i32
  %1750 = bitcast i8* %1730 to i32*
  store i32 %1747, i32* %1750, align 1
  %1751 = getelementptr inbounds i8, i8* %1730, i64 4
  %1752 = bitcast i8* %1751 to i32*
  store i32 %1749, i32* %1752, align 1
  %1753 = trunc i64 %1746 to i32
  %1754 = getelementptr inbounds i8, i8* %1730, i64 8
  %1755 = bitcast i8* %1754 to i32*
  store i32 %1753, i32* %1755, align 1
  %1756 = lshr i64 %1746, 32
  %1757 = trunc i64 %1756 to i32
  %1758 = getelementptr inbounds i8, i8* %1730, i64 12
  %1759 = bitcast i8* %1758 to i32*
  store i32 %1757, i32* %1759, align 1
  store %struct.Memory* %loadMem_400d90, %struct.Memory** %MEMORY
  %loadMem_400d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 1
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %1765 to i64*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 15
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %1768 to i64*
  %1769 = load i64, i64* %RBP.i204
  %1770 = sub i64 %1769, 24
  %1771 = load i64, i64* %PC.i202
  %1772 = add i64 %1771, 4
  store i64 %1772, i64* %PC.i202
  %1773 = inttoptr i64 %1770 to i64*
  %1774 = load i64, i64* %1773
  store i64 %1774, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_400d93, %struct.Memory** %MEMORY
  %loadMem_400d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 33
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 5
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 15
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %1783 to i64*
  %1784 = load i64, i64* %RBP.i201
  %1785 = sub i64 %1784, 44
  %1786 = load i64, i64* %PC.i199
  %1787 = add i64 %1786, 4
  store i64 %1787, i64* %PC.i199
  %1788 = inttoptr i64 %1785 to i32*
  %1789 = load i32, i32* %1788
  %1790 = sext i32 %1789 to i64
  store i64 %1790, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_400d97, %struct.Memory** %MEMORY
  %loadMem_400d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 5
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %1796 to i64*
  %1797 = load i64, i64* %RCX.i198
  %1798 = load i64, i64* %PC.i197
  %1799 = add i64 %1798, 4
  store i64 %1799, i64* %PC.i197
  %1800 = shl i64 %1797, 11
  %1801 = icmp slt i64 %1800, 0
  %1802 = shl i64 %1800, 1
  store i64 %1802, i64* %RCX.i198, align 8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1804 = zext i1 %1801 to i8
  store i8 %1804, i8* %1803, align 1
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1806 = trunc i64 %1802 to i32
  store i8 1, i8* %1805, align 1
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1807, align 1
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1809 = icmp eq i64 %1802, 0
  %1810 = zext i1 %1809 to i8
  store i8 %1810, i8* %1808, align 1
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1812 = lshr i64 %1802, 63
  %1813 = trunc i64 %1812 to i8
  store i8 %1813, i8* %1811, align 1
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1814, align 1
  store %struct.Memory* %loadMem_400d9b, %struct.Memory** %MEMORY
  %loadMem_400d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 33
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 1
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %1820 to i64*
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 5
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %1823 to i64*
  %1824 = load i64, i64* %RAX.i195
  %1825 = load i64, i64* %RCX.i196
  %1826 = load i64, i64* %PC.i194
  %1827 = add i64 %1826, 3
  store i64 %1827, i64* %PC.i194
  %1828 = add i64 %1825, %1824
  store i64 %1828, i64* %RAX.i195, align 8
  %1829 = icmp ult i64 %1828, %1824
  %1830 = icmp ult i64 %1828, %1825
  %1831 = or i1 %1829, %1830
  %1832 = zext i1 %1831 to i8
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1832, i8* %1833, align 1
  %1834 = trunc i64 %1828 to i32
  %1835 = and i32 %1834, 255
  %1836 = call i32 @llvm.ctpop.i32(i32 %1835)
  %1837 = trunc i32 %1836 to i8
  %1838 = and i8 %1837, 1
  %1839 = xor i8 %1838, 1
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1839, i8* %1840, align 1
  %1841 = xor i64 %1825, %1824
  %1842 = xor i64 %1841, %1828
  %1843 = lshr i64 %1842, 4
  %1844 = trunc i64 %1843 to i8
  %1845 = and i8 %1844, 1
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1845, i8* %1846, align 1
  %1847 = icmp eq i64 %1828, 0
  %1848 = zext i1 %1847 to i8
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1848, i8* %1849, align 1
  %1850 = lshr i64 %1828, 63
  %1851 = trunc i64 %1850 to i8
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1851, i8* %1852, align 1
  %1853 = lshr i64 %1824, 63
  %1854 = lshr i64 %1825, 63
  %1855 = xor i64 %1850, %1853
  %1856 = xor i64 %1850, %1854
  %1857 = add i64 %1855, %1856
  %1858 = icmp eq i64 %1857, 2
  %1859 = zext i1 %1858 to i8
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1859, i8* %1860, align 1
  store %struct.Memory* %loadMem_400d9f, %struct.Memory** %MEMORY
  %loadMem_400da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 33
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1863 to i64*
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 5
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 15
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %1869 to i64*
  %1870 = load i64, i64* %RBP.i193
  %1871 = sub i64 %1870, 40
  %1872 = load i64, i64* %PC.i191
  %1873 = add i64 %1872, 4
  store i64 %1873, i64* %PC.i191
  %1874 = inttoptr i64 %1871 to i32*
  %1875 = load i32, i32* %1874
  %1876 = sext i32 %1875 to i64
  store i64 %1876, i64* %RCX.i192, align 8
  store %struct.Memory* %loadMem_400da2, %struct.Memory** %MEMORY
  %loadMem_400da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 1
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 5
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1886, i64 0, i64 0
  %XMM0.i190 = bitcast %union.VectorReg* %1887 to %union.vec128_t*
  %1888 = load i64, i64* %RAX.i188
  %1889 = load i64, i64* %RCX.i189
  %1890 = mul i64 %1889, 8
  %1891 = add i64 %1890, %1888
  %1892 = bitcast %union.vec128_t* %XMM0.i190 to i8*
  %1893 = load i64, i64* %PC.i187
  %1894 = add i64 %1893, 5
  store i64 %1894, i64* %PC.i187
  %1895 = bitcast i8* %1892 to double*
  %1896 = load double, double* %1895, align 1
  %1897 = inttoptr i64 %1891 to double*
  store double %1896, double* %1897
  store %struct.Memory* %loadMem_400da6, %struct.Memory** %MEMORY
  %loadMem_400dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 33
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 15
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %1903 to i64*
  %1904 = load i64, i64* %RBP.i186
  %1905 = sub i64 %1904, 36
  %1906 = load i64, i64* %PC.i185
  %1907 = add i64 %1906, 7
  store i64 %1907, i64* %PC.i185
  %1908 = inttoptr i64 %1905 to i32*
  store i32 0, i32* %1908
  store %struct.Memory* %loadMem_400dab, %struct.Memory** %MEMORY
  br label %block_.L_400db2

block_.L_400db2:                                  ; preds = %block_400dbe, %block_400d90
  %loadMem_400db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 33
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 1
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 15
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %1917 to i64*
  %1918 = load i64, i64* %RBP.i184
  %1919 = sub i64 %1918, 36
  %1920 = load i64, i64* %PC.i182
  %1921 = add i64 %1920, 3
  store i64 %1921, i64* %PC.i182
  %1922 = inttoptr i64 %1919 to i32*
  %1923 = load i32, i32* %1922
  %1924 = zext i32 %1923 to i64
  store i64 %1924, i64* %RAX.i183, align 8
  store %struct.Memory* %loadMem_400db2, %struct.Memory** %MEMORY
  %loadMem_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 33
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 1
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %1930 to i32*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 15
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %1933 to i64*
  %1934 = load i32, i32* %EAX.i180
  %1935 = zext i32 %1934 to i64
  %1936 = load i64, i64* %RBP.i181
  %1937 = sub i64 %1936, 4
  %1938 = load i64, i64* %PC.i179
  %1939 = add i64 %1938, 3
  store i64 %1939, i64* %PC.i179
  %1940 = inttoptr i64 %1937 to i32*
  %1941 = load i32, i32* %1940
  %1942 = sub i32 %1934, %1941
  %1943 = icmp ult i32 %1934, %1941
  %1944 = zext i1 %1943 to i8
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1944, i8* %1945, align 1
  %1946 = and i32 %1942, 255
  %1947 = call i32 @llvm.ctpop.i32(i32 %1946)
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = xor i8 %1949, 1
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1950, i8* %1951, align 1
  %1952 = xor i32 %1941, %1934
  %1953 = xor i32 %1952, %1942
  %1954 = lshr i32 %1953, 4
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1956, i8* %1957, align 1
  %1958 = icmp eq i32 %1942, 0
  %1959 = zext i1 %1958 to i8
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1959, i8* %1960, align 1
  %1961 = lshr i32 %1942, 31
  %1962 = trunc i32 %1961 to i8
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1962, i8* %1963, align 1
  %1964 = lshr i32 %1934, 31
  %1965 = lshr i32 %1941, 31
  %1966 = xor i32 %1965, %1964
  %1967 = xor i32 %1961, %1964
  %1968 = add i32 %1967, %1966
  %1969 = icmp eq i32 %1968, 2
  %1970 = zext i1 %1969 to i8
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1970, i8* %1971, align 1
  store %struct.Memory* %loadMem_400db5, %struct.Memory** %MEMORY
  %loadMem_400db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 33
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1974 to i64*
  %1975 = load i64, i64* %PC.i178
  %1976 = add i64 %1975, 97
  %1977 = load i64, i64* %PC.i178
  %1978 = add i64 %1977, 6
  %1979 = load i64, i64* %PC.i178
  %1980 = add i64 %1979, 6
  store i64 %1980, i64* %PC.i178
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1982 = load i8, i8* %1981, align 1
  %1983 = icmp ne i8 %1982, 0
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1985 = load i8, i8* %1984, align 1
  %1986 = icmp ne i8 %1985, 0
  %1987 = xor i1 %1983, %1986
  %1988 = xor i1 %1987, true
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %BRANCH_TAKEN, align 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1991 = select i1 %1987, i64 %1978, i64 %1976
  store i64 %1991, i64* %1990, align 8
  store %struct.Memory* %loadMem_400db8, %struct.Memory** %MEMORY
  %loadBr_400db8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400db8 = icmp eq i8 %loadBr_400db8, 1
  br i1 %cmpBr_400db8, label %block_.L_400e19, label %block_400dbe

block_400dbe:                                     ; preds = %block_.L_400db2
  %loadMem_400dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 33
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 1
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 15
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %2000 to i64*
  %2001 = load i64, i64* %RBP.i177
  %2002 = sub i64 %2001, 32
  %2003 = load i64, i64* %PC.i175
  %2004 = add i64 %2003, 4
  store i64 %2004, i64* %PC.i175
  %2005 = inttoptr i64 %2002 to i64*
  %2006 = load i64, i64* %2005
  store i64 %2006, i64* %RAX.i176, align 8
  store %struct.Memory* %loadMem_400dbe, %struct.Memory** %MEMORY
  %loadMem_400dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 5
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 15
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %2015 to i64*
  %2016 = load i64, i64* %RBP.i174
  %2017 = sub i64 %2016, 36
  %2018 = load i64, i64* %PC.i172
  %2019 = add i64 %2018, 4
  store i64 %2019, i64* %PC.i172
  %2020 = inttoptr i64 %2017 to i32*
  %2021 = load i32, i32* %2020
  %2022 = sext i32 %2021 to i64
  store i64 %2022, i64* %RCX.i173, align 8
  store %struct.Memory* %loadMem_400dc2, %struct.Memory** %MEMORY
  %loadMem_400dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 5
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %2028 to i64*
  %2029 = load i64, i64* %RCX.i171
  %2030 = load i64, i64* %PC.i170
  %2031 = add i64 %2030, 4
  store i64 %2031, i64* %PC.i170
  %2032 = shl i64 %2029, 11
  %2033 = icmp slt i64 %2032, 0
  %2034 = shl i64 %2032, 1
  store i64 %2034, i64* %RCX.i171, align 8
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2036 = zext i1 %2033 to i8
  store i8 %2036, i8* %2035, align 1
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2038 = trunc i64 %2034 to i32
  store i8 1, i8* %2037, align 1
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2039, align 1
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2041 = icmp eq i64 %2034, 0
  %2042 = zext i1 %2041 to i8
  store i8 %2042, i8* %2040, align 1
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2044 = lshr i64 %2034, 63
  %2045 = trunc i64 %2044 to i8
  store i8 %2045, i8* %2043, align 1
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2046, align 1
  store %struct.Memory* %loadMem_400dc6, %struct.Memory** %MEMORY
  %loadMem_400dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 33
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2049 to i64*
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 1
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 5
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %2055 to i64*
  %2056 = load i64, i64* %RAX.i168
  %2057 = load i64, i64* %RCX.i169
  %2058 = load i64, i64* %PC.i167
  %2059 = add i64 %2058, 3
  store i64 %2059, i64* %PC.i167
  %2060 = add i64 %2057, %2056
  store i64 %2060, i64* %RAX.i168, align 8
  %2061 = icmp ult i64 %2060, %2056
  %2062 = icmp ult i64 %2060, %2057
  %2063 = or i1 %2061, %2062
  %2064 = zext i1 %2063 to i8
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2064, i8* %2065, align 1
  %2066 = trunc i64 %2060 to i32
  %2067 = and i32 %2066, 255
  %2068 = call i32 @llvm.ctpop.i32(i32 %2067)
  %2069 = trunc i32 %2068 to i8
  %2070 = and i8 %2069, 1
  %2071 = xor i8 %2070, 1
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2071, i8* %2072, align 1
  %2073 = xor i64 %2057, %2056
  %2074 = xor i64 %2073, %2060
  %2075 = lshr i64 %2074, 4
  %2076 = trunc i64 %2075 to i8
  %2077 = and i8 %2076, 1
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2077, i8* %2078, align 1
  %2079 = icmp eq i64 %2060, 0
  %2080 = zext i1 %2079 to i8
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2080, i8* %2081, align 1
  %2082 = lshr i64 %2060, 63
  %2083 = trunc i64 %2082 to i8
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2083, i8* %2084, align 1
  %2085 = lshr i64 %2056, 63
  %2086 = lshr i64 %2057, 63
  %2087 = xor i64 %2082, %2085
  %2088 = xor i64 %2082, %2086
  %2089 = add i64 %2087, %2088
  %2090 = icmp eq i64 %2089, 2
  %2091 = zext i1 %2090 to i8
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2091, i8* %2092, align 1
  store %struct.Memory* %loadMem_400dca, %struct.Memory** %MEMORY
  %loadMem_400dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 5
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %2098 to i64*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 15
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %2101 to i64*
  %2102 = load i64, i64* %RBP.i166
  %2103 = sub i64 %2102, 44
  %2104 = load i64, i64* %PC.i164
  %2105 = add i64 %2104, 4
  store i64 %2105, i64* %PC.i164
  %2106 = inttoptr i64 %2103 to i32*
  %2107 = load i32, i32* %2106
  %2108 = sext i32 %2107 to i64
  store i64 %2108, i64* %RCX.i165, align 8
  store %struct.Memory* %loadMem_400dcd, %struct.Memory** %MEMORY
  %loadMem_400dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 1
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 5
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2119 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2118, i64 0, i64 0
  %YMM0.i163 = bitcast %union.VectorReg* %2119 to %"class.std::bitset"*
  %2120 = bitcast %"class.std::bitset"* %YMM0.i163 to i8*
  %2121 = load i64, i64* %RAX.i161
  %2122 = load i64, i64* %RCX.i162
  %2123 = mul i64 %2122, 8
  %2124 = add i64 %2123, %2121
  %2125 = load i64, i64* %PC.i160
  %2126 = add i64 %2125, 5
  store i64 %2126, i64* %PC.i160
  %2127 = inttoptr i64 %2124 to double*
  %2128 = load double, double* %2127
  %2129 = bitcast i8* %2120 to double*
  store double %2128, double* %2129, align 1
  %2130 = getelementptr inbounds i8, i8* %2120, i64 8
  %2131 = bitcast i8* %2130 to double*
  store double 0.000000e+00, double* %2131, align 1
  store %struct.Memory* %loadMem_400dd1, %struct.Memory** %MEMORY
  %loadMem_400dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 33
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 1
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 15
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %2140 to i64*
  %2141 = load i64, i64* %RBP.i159
  %2142 = sub i64 %2141, 16
  %2143 = load i64, i64* %PC.i157
  %2144 = add i64 %2143, 4
  store i64 %2144, i64* %PC.i157
  %2145 = inttoptr i64 %2142 to i64*
  %2146 = load i64, i64* %2145
  store i64 %2146, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_400dd6, %struct.Memory** %MEMORY
  %loadMem_400dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 33
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 5
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %2152 to i64*
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 15
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %2155 to i64*
  %2156 = load i64, i64* %RBP.i156
  %2157 = sub i64 %2156, 36
  %2158 = load i64, i64* %PC.i154
  %2159 = add i64 %2158, 4
  store i64 %2159, i64* %PC.i154
  %2160 = inttoptr i64 %2157 to i32*
  %2161 = load i32, i32* %2160
  %2162 = sext i32 %2161 to i64
  store i64 %2162, i64* %RCX.i155, align 8
  store %struct.Memory* %loadMem_400dda, %struct.Memory** %MEMORY
  %loadMem_400dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 5
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %2168 to i64*
  %2169 = load i64, i64* %RCX.i153
  %2170 = load i64, i64* %PC.i152
  %2171 = add i64 %2170, 4
  store i64 %2171, i64* %PC.i152
  %2172 = shl i64 %2169, 11
  %2173 = icmp slt i64 %2172, 0
  %2174 = shl i64 %2172, 1
  store i64 %2174, i64* %RCX.i153, align 8
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2176 = zext i1 %2173 to i8
  store i8 %2176, i8* %2175, align 1
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2178 = trunc i64 %2174 to i32
  store i8 1, i8* %2177, align 1
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2179, align 1
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2181 = icmp eq i64 %2174, 0
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %2180, align 1
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2184 = lshr i64 %2174, 63
  %2185 = trunc i64 %2184 to i8
  store i8 %2185, i8* %2183, align 1
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2186, align 1
  store %struct.Memory* %loadMem_400dde, %struct.Memory** %MEMORY
  %loadMem_400de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 33
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2189 to i64*
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2191 = getelementptr inbounds %struct.GPR, %struct.GPR* %2190, i32 0, i32 1
  %2192 = getelementptr inbounds %struct.Reg, %struct.Reg* %2191, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %2192 to i64*
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 5
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %2195 to i64*
  %2196 = load i64, i64* %RAX.i150
  %2197 = load i64, i64* %RCX.i151
  %2198 = load i64, i64* %PC.i149
  %2199 = add i64 %2198, 3
  store i64 %2199, i64* %PC.i149
  %2200 = add i64 %2197, %2196
  store i64 %2200, i64* %RAX.i150, align 8
  %2201 = icmp ult i64 %2200, %2196
  %2202 = icmp ult i64 %2200, %2197
  %2203 = or i1 %2201, %2202
  %2204 = zext i1 %2203 to i8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2204, i8* %2205, align 1
  %2206 = trunc i64 %2200 to i32
  %2207 = and i32 %2206, 255
  %2208 = call i32 @llvm.ctpop.i32(i32 %2207)
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  %2211 = xor i8 %2210, 1
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2211, i8* %2212, align 1
  %2213 = xor i64 %2197, %2196
  %2214 = xor i64 %2213, %2200
  %2215 = lshr i64 %2214, 4
  %2216 = trunc i64 %2215 to i8
  %2217 = and i8 %2216, 1
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2217, i8* %2218, align 1
  %2219 = icmp eq i64 %2200, 0
  %2220 = zext i1 %2219 to i8
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2220, i8* %2221, align 1
  %2222 = lshr i64 %2200, 63
  %2223 = trunc i64 %2222 to i8
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2223, i8* %2224, align 1
  %2225 = lshr i64 %2196, 63
  %2226 = lshr i64 %2197, 63
  %2227 = xor i64 %2222, %2225
  %2228 = xor i64 %2222, %2226
  %2229 = add i64 %2227, %2228
  %2230 = icmp eq i64 %2229, 2
  %2231 = zext i1 %2230 to i8
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2231, i8* %2232, align 1
  store %struct.Memory* %loadMem_400de2, %struct.Memory** %MEMORY
  %loadMem_400de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 5
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 15
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %2241 to i64*
  %2242 = load i64, i64* %RBP.i148
  %2243 = sub i64 %2242, 40
  %2244 = load i64, i64* %PC.i146
  %2245 = add i64 %2244, 4
  store i64 %2245, i64* %PC.i146
  %2246 = inttoptr i64 %2243 to i32*
  %2247 = load i32, i32* %2246
  %2248 = sext i32 %2247 to i64
  store i64 %2248, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_400de5, %struct.Memory** %MEMORY
  %loadMem_400de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 1
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 5
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2258, i64 0, i64 0
  %YMM0.i145 = bitcast %union.VectorReg* %2259 to %"class.std::bitset"*
  %2260 = bitcast %"class.std::bitset"* %YMM0.i145 to i8*
  %2261 = bitcast %"class.std::bitset"* %YMM0.i145 to i8*
  %2262 = load i64, i64* %RAX.i143
  %2263 = load i64, i64* %RCX.i144
  %2264 = mul i64 %2263, 8
  %2265 = add i64 %2264, %2262
  %2266 = load i64, i64* %PC.i142
  %2267 = add i64 %2266, 5
  store i64 %2267, i64* %PC.i142
  %2268 = bitcast i8* %2261 to double*
  %2269 = load double, double* %2268, align 1
  %2270 = getelementptr inbounds i8, i8* %2261, i64 8
  %2271 = bitcast i8* %2270 to i64*
  %2272 = load i64, i64* %2271, align 1
  %2273 = inttoptr i64 %2265 to double*
  %2274 = load double, double* %2273
  %2275 = fmul double %2269, %2274
  %2276 = bitcast i8* %2260 to double*
  store double %2275, double* %2276, align 1
  %2277 = getelementptr inbounds i8, i8* %2260, i64 8
  %2278 = bitcast i8* %2277 to i64*
  store i64 %2272, i64* %2278, align 1
  store %struct.Memory* %loadMem_400de9, %struct.Memory** %MEMORY
  %loadMem_400dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 33
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 1
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 15
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %2287 to i64*
  %2288 = load i64, i64* %RBP.i141
  %2289 = sub i64 %2288, 24
  %2290 = load i64, i64* %PC.i139
  %2291 = add i64 %2290, 4
  store i64 %2291, i64* %PC.i139
  %2292 = inttoptr i64 %2289 to i64*
  %2293 = load i64, i64* %2292
  store i64 %2293, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_400dee, %struct.Memory** %MEMORY
  %loadMem_400df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 33
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 5
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 15
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %2302 to i64*
  %2303 = load i64, i64* %RBP.i138
  %2304 = sub i64 %2303, 44
  %2305 = load i64, i64* %PC.i136
  %2306 = add i64 %2305, 4
  store i64 %2306, i64* %PC.i136
  %2307 = inttoptr i64 %2304 to i32*
  %2308 = load i32, i32* %2307
  %2309 = sext i32 %2308 to i64
  store i64 %2309, i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_400df2, %struct.Memory** %MEMORY
  %loadMem_400df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 5
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %2315 to i64*
  %2316 = load i64, i64* %RCX.i135
  %2317 = load i64, i64* %PC.i134
  %2318 = add i64 %2317, 4
  store i64 %2318, i64* %PC.i134
  %2319 = shl i64 %2316, 11
  %2320 = icmp slt i64 %2319, 0
  %2321 = shl i64 %2319, 1
  store i64 %2321, i64* %RCX.i135, align 8
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2323 = zext i1 %2320 to i8
  store i8 %2323, i8* %2322, align 1
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2325 = trunc i64 %2321 to i32
  store i8 1, i8* %2324, align 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2326, align 1
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2328 = icmp eq i64 %2321, 0
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %2327, align 1
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2331 = lshr i64 %2321, 63
  %2332 = trunc i64 %2331 to i8
  store i8 %2332, i8* %2330, align 1
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2333, align 1
  store %struct.Memory* %loadMem_400df6, %struct.Memory** %MEMORY
  %loadMem_400dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 33
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 1
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 5
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %2342 to i64*
  %2343 = load i64, i64* %RAX.i132
  %2344 = load i64, i64* %RCX.i133
  %2345 = load i64, i64* %PC.i131
  %2346 = add i64 %2345, 3
  store i64 %2346, i64* %PC.i131
  %2347 = add i64 %2344, %2343
  store i64 %2347, i64* %RAX.i132, align 8
  %2348 = icmp ult i64 %2347, %2343
  %2349 = icmp ult i64 %2347, %2344
  %2350 = or i1 %2348, %2349
  %2351 = zext i1 %2350 to i8
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2351, i8* %2352, align 1
  %2353 = trunc i64 %2347 to i32
  %2354 = and i32 %2353, 255
  %2355 = call i32 @llvm.ctpop.i32(i32 %2354)
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  %2358 = xor i8 %2357, 1
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2358, i8* %2359, align 1
  %2360 = xor i64 %2344, %2343
  %2361 = xor i64 %2360, %2347
  %2362 = lshr i64 %2361, 4
  %2363 = trunc i64 %2362 to i8
  %2364 = and i8 %2363, 1
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2364, i8* %2365, align 1
  %2366 = icmp eq i64 %2347, 0
  %2367 = zext i1 %2366 to i8
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2367, i8* %2368, align 1
  %2369 = lshr i64 %2347, 63
  %2370 = trunc i64 %2369 to i8
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2370, i8* %2371, align 1
  %2372 = lshr i64 %2343, 63
  %2373 = lshr i64 %2344, 63
  %2374 = xor i64 %2369, %2372
  %2375 = xor i64 %2369, %2373
  %2376 = add i64 %2374, %2375
  %2377 = icmp eq i64 %2376, 2
  %2378 = zext i1 %2377 to i8
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2378, i8* %2379, align 1
  store %struct.Memory* %loadMem_400dfa, %struct.Memory** %MEMORY
  %loadMem_400dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 5
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 15
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %2388 to i64*
  %2389 = load i64, i64* %RBP.i130
  %2390 = sub i64 %2389, 40
  %2391 = load i64, i64* %PC.i128
  %2392 = add i64 %2391, 4
  store i64 %2392, i64* %PC.i128
  %2393 = inttoptr i64 %2390 to i32*
  %2394 = load i32, i32* %2393
  %2395 = sext i32 %2394 to i64
  store i64 %2395, i64* %RCX.i129, align 8
  store %struct.Memory* %loadMem_400dfd, %struct.Memory** %MEMORY
  %loadMem_400e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 33
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 1
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %2401 to i64*
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 5
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2406 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2405, i64 0, i64 0
  %YMM0.i127 = bitcast %union.VectorReg* %2406 to %"class.std::bitset"*
  %2407 = bitcast %"class.std::bitset"* %YMM0.i127 to i8*
  %2408 = bitcast %"class.std::bitset"* %YMM0.i127 to i8*
  %2409 = load i64, i64* %RAX.i125
  %2410 = load i64, i64* %RCX.i126
  %2411 = mul i64 %2410, 8
  %2412 = add i64 %2411, %2409
  %2413 = load i64, i64* %PC.i124
  %2414 = add i64 %2413, 5
  store i64 %2414, i64* %PC.i124
  %2415 = bitcast i8* %2408 to double*
  %2416 = load double, double* %2415, align 1
  %2417 = getelementptr inbounds i8, i8* %2408, i64 8
  %2418 = bitcast i8* %2417 to i64*
  %2419 = load i64, i64* %2418, align 1
  %2420 = inttoptr i64 %2412 to double*
  %2421 = load double, double* %2420
  %2422 = fadd double %2416, %2421
  %2423 = bitcast i8* %2407 to double*
  store double %2422, double* %2423, align 1
  %2424 = getelementptr inbounds i8, i8* %2407, i64 8
  %2425 = bitcast i8* %2424 to i64*
  store i64 %2419, i64* %2425, align 1
  store %struct.Memory* %loadMem_400e01, %struct.Memory** %MEMORY
  %loadMem_400e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 33
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 1
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 5
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2436 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2435, i64 0, i64 0
  %XMM0.i123 = bitcast %union.VectorReg* %2436 to %union.vec128_t*
  %2437 = load i64, i64* %RAX.i121
  %2438 = load i64, i64* %RCX.i122
  %2439 = mul i64 %2438, 8
  %2440 = add i64 %2439, %2437
  %2441 = bitcast %union.vec128_t* %XMM0.i123 to i8*
  %2442 = load i64, i64* %PC.i120
  %2443 = add i64 %2442, 5
  store i64 %2443, i64* %PC.i120
  %2444 = bitcast i8* %2441 to double*
  %2445 = load double, double* %2444, align 1
  %2446 = inttoptr i64 %2440 to double*
  store double %2445, double* %2446
  store %struct.Memory* %loadMem_400e06, %struct.Memory** %MEMORY
  %loadMem_400e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 33
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 1
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %2452 to i64*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 15
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %2455 to i64*
  %2456 = load i64, i64* %RBP.i119
  %2457 = sub i64 %2456, 36
  %2458 = load i64, i64* %PC.i117
  %2459 = add i64 %2458, 3
  store i64 %2459, i64* %PC.i117
  %2460 = inttoptr i64 %2457 to i32*
  %2461 = load i32, i32* %2460
  %2462 = zext i32 %2461 to i64
  store i64 %2462, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_400e0b, %struct.Memory** %MEMORY
  %loadMem_400e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 1
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %2468 to i64*
  %2469 = load i64, i64* %RAX.i116
  %2470 = load i64, i64* %PC.i115
  %2471 = add i64 %2470, 3
  store i64 %2471, i64* %PC.i115
  %2472 = trunc i64 %2469 to i32
  %2473 = add i32 1, %2472
  %2474 = zext i32 %2473 to i64
  store i64 %2474, i64* %RAX.i116, align 8
  %2475 = icmp ult i32 %2473, %2472
  %2476 = icmp ult i32 %2473, 1
  %2477 = or i1 %2475, %2476
  %2478 = zext i1 %2477 to i8
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2478, i8* %2479, align 1
  %2480 = and i32 %2473, 255
  %2481 = call i32 @llvm.ctpop.i32(i32 %2480)
  %2482 = trunc i32 %2481 to i8
  %2483 = and i8 %2482, 1
  %2484 = xor i8 %2483, 1
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2484, i8* %2485, align 1
  %2486 = xor i64 1, %2469
  %2487 = trunc i64 %2486 to i32
  %2488 = xor i32 %2487, %2473
  %2489 = lshr i32 %2488, 4
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2491, i8* %2492, align 1
  %2493 = icmp eq i32 %2473, 0
  %2494 = zext i1 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2494, i8* %2495, align 1
  %2496 = lshr i32 %2473, 31
  %2497 = trunc i32 %2496 to i8
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2497, i8* %2498, align 1
  %2499 = lshr i32 %2472, 31
  %2500 = xor i32 %2496, %2499
  %2501 = add i32 %2500, %2496
  %2502 = icmp eq i32 %2501, 2
  %2503 = zext i1 %2502 to i8
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2503, i8* %2504, align 1
  store %struct.Memory* %loadMem_400e0e, %struct.Memory** %MEMORY
  %loadMem_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 33
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2507 to i64*
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 1
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %EAX.i113 = bitcast %union.anon* %2510 to i32*
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 15
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %2513 to i64*
  %2514 = load i64, i64* %RBP.i114
  %2515 = sub i64 %2514, 36
  %2516 = load i32, i32* %EAX.i113
  %2517 = zext i32 %2516 to i64
  %2518 = load i64, i64* %PC.i112
  %2519 = add i64 %2518, 3
  store i64 %2519, i64* %PC.i112
  %2520 = inttoptr i64 %2515 to i32*
  store i32 %2516, i32* %2520
  store %struct.Memory* %loadMem_400e11, %struct.Memory** %MEMORY
  %loadMem_400e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 33
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2523 to i64*
  %2524 = load i64, i64* %PC.i111
  %2525 = add i64 %2524, -98
  %2526 = load i64, i64* %PC.i111
  %2527 = add i64 %2526, 5
  store i64 %2527, i64* %PC.i111
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2525, i64* %2528, align 8
  store %struct.Memory* %loadMem_400e14, %struct.Memory** %MEMORY
  br label %block_.L_400db2

block_.L_400e19:                                  ; preds = %block_.L_400db2
  %loadMem_400e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 33
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RBP.i110
  %2536 = sub i64 %2535, 36
  %2537 = load i64, i64* %PC.i109
  %2538 = add i64 %2537, 7
  store i64 %2538, i64* %PC.i109
  %2539 = inttoptr i64 %2536 to i32*
  store i32 0, i32* %2539
  store %struct.Memory* %loadMem_400e19, %struct.Memory** %MEMORY
  br label %block_.L_400e20

block_.L_400e20:                                  ; preds = %block_400e2c, %block_.L_400e19
  %loadMem_400e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 1
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 15
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %2548 to i64*
  %2549 = load i64, i64* %RBP.i108
  %2550 = sub i64 %2549, 36
  %2551 = load i64, i64* %PC.i106
  %2552 = add i64 %2551, 3
  store i64 %2552, i64* %PC.i106
  %2553 = inttoptr i64 %2550 to i32*
  %2554 = load i32, i32* %2553
  %2555 = zext i32 %2554 to i64
  store i64 %2555, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_400e20, %struct.Memory** %MEMORY
  %loadMem_400e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 1
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %EAX.i104 = bitcast %union.anon* %2561 to i32*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 15
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %2564 to i64*
  %2565 = load i32, i32* %EAX.i104
  %2566 = zext i32 %2565 to i64
  %2567 = load i64, i64* %RBP.i105
  %2568 = sub i64 %2567, 4
  %2569 = load i64, i64* %PC.i103
  %2570 = add i64 %2569, 3
  store i64 %2570, i64* %PC.i103
  %2571 = inttoptr i64 %2568 to i32*
  %2572 = load i32, i32* %2571
  %2573 = sub i32 %2565, %2572
  %2574 = icmp ult i32 %2565, %2572
  %2575 = zext i1 %2574 to i8
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2575, i8* %2576, align 1
  %2577 = and i32 %2573, 255
  %2578 = call i32 @llvm.ctpop.i32(i32 %2577)
  %2579 = trunc i32 %2578 to i8
  %2580 = and i8 %2579, 1
  %2581 = xor i8 %2580, 1
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2581, i8* %2582, align 1
  %2583 = xor i32 %2572, %2565
  %2584 = xor i32 %2583, %2573
  %2585 = lshr i32 %2584, 4
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2587, i8* %2588, align 1
  %2589 = icmp eq i32 %2573, 0
  %2590 = zext i1 %2589 to i8
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2590, i8* %2591, align 1
  %2592 = lshr i32 %2573, 31
  %2593 = trunc i32 %2592 to i8
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2593, i8* %2594, align 1
  %2595 = lshr i32 %2565, 31
  %2596 = lshr i32 %2572, 31
  %2597 = xor i32 %2596, %2595
  %2598 = xor i32 %2592, %2595
  %2599 = add i32 %2598, %2597
  %2600 = icmp eq i32 %2599, 2
  %2601 = zext i1 %2600 to i8
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2601, i8* %2602, align 1
  store %struct.Memory* %loadMem_400e23, %struct.Memory** %MEMORY
  %loadMem_400e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2605 to i64*
  %2606 = load i64, i64* %PC.i102
  %2607 = add i64 %2606, 120
  %2608 = load i64, i64* %PC.i102
  %2609 = add i64 %2608, 6
  %2610 = load i64, i64* %PC.i102
  %2611 = add i64 %2610, 6
  store i64 %2611, i64* %PC.i102
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2613 = load i8, i8* %2612, align 1
  %2614 = icmp ne i8 %2613, 0
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2616 = load i8, i8* %2615, align 1
  %2617 = icmp ne i8 %2616, 0
  %2618 = xor i1 %2614, %2617
  %2619 = xor i1 %2618, true
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %BRANCH_TAKEN, align 1
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2622 = select i1 %2618, i64 %2609, i64 %2607
  store i64 %2622, i64* %2621, align 8
  store %struct.Memory* %loadMem_400e26, %struct.Memory** %MEMORY
  %loadBr_400e26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e26 = icmp eq i8 %loadBr_400e26, 1
  br i1 %cmpBr_400e26, label %block_.L_400e9e, label %block_400e2c

block_400e2c:                                     ; preds = %block_.L_400e20
  %loadMem_400e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 1
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 15
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %2631 to i64*
  %2632 = load i64, i64* %RBP.i101
  %2633 = sub i64 %2632, 16
  %2634 = load i64, i64* %PC.i99
  %2635 = add i64 %2634, 4
  store i64 %2635, i64* %PC.i99
  %2636 = inttoptr i64 %2633 to i64*
  %2637 = load i64, i64* %2636
  store i64 %2637, i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_400e2c, %struct.Memory** %MEMORY
  %loadMem_400e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 33
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 5
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 15
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %2646 to i64*
  %2647 = load i64, i64* %RBP.i98
  %2648 = sub i64 %2647, 36
  %2649 = load i64, i64* %PC.i96
  %2650 = add i64 %2649, 4
  store i64 %2650, i64* %PC.i96
  %2651 = inttoptr i64 %2648 to i32*
  %2652 = load i32, i32* %2651
  %2653 = sext i32 %2652 to i64
  store i64 %2653, i64* %RCX.i97, align 8
  store %struct.Memory* %loadMem_400e30, %struct.Memory** %MEMORY
  %loadMem_400e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 5
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %2659 to i64*
  %2660 = load i64, i64* %RCX.i95
  %2661 = load i64, i64* %PC.i94
  %2662 = add i64 %2661, 4
  store i64 %2662, i64* %PC.i94
  %2663 = shl i64 %2660, 11
  %2664 = icmp slt i64 %2663, 0
  %2665 = shl i64 %2663, 1
  store i64 %2665, i64* %RCX.i95, align 8
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2667 = zext i1 %2664 to i8
  store i8 %2667, i8* %2666, align 1
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2669 = trunc i64 %2665 to i32
  store i8 1, i8* %2668, align 1
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2670, align 1
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2672 = icmp eq i64 %2665, 0
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %2671, align 1
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2675 = lshr i64 %2665, 63
  %2676 = trunc i64 %2675 to i8
  store i8 %2676, i8* %2674, align 1
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2677, align 1
  store %struct.Memory* %loadMem_400e34, %struct.Memory** %MEMORY
  %loadMem_400e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 1
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 5
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %RAX.i92
  %2688 = load i64, i64* %RCX.i93
  %2689 = load i64, i64* %PC.i91
  %2690 = add i64 %2689, 3
  store i64 %2690, i64* %PC.i91
  %2691 = add i64 %2688, %2687
  store i64 %2691, i64* %RAX.i92, align 8
  %2692 = icmp ult i64 %2691, %2687
  %2693 = icmp ult i64 %2691, %2688
  %2694 = or i1 %2692, %2693
  %2695 = zext i1 %2694 to i8
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2695, i8* %2696, align 1
  %2697 = trunc i64 %2691 to i32
  %2698 = and i32 %2697, 255
  %2699 = call i32 @llvm.ctpop.i32(i32 %2698)
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  %2702 = xor i8 %2701, 1
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2702, i8* %2703, align 1
  %2704 = xor i64 %2688, %2687
  %2705 = xor i64 %2704, %2691
  %2706 = lshr i64 %2705, 4
  %2707 = trunc i64 %2706 to i8
  %2708 = and i8 %2707, 1
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2708, i8* %2709, align 1
  %2710 = icmp eq i64 %2691, 0
  %2711 = zext i1 %2710 to i8
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2711, i8* %2712, align 1
  %2713 = lshr i64 %2691, 63
  %2714 = trunc i64 %2713 to i8
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2714, i8* %2715, align 1
  %2716 = lshr i64 %2687, 63
  %2717 = lshr i64 %2688, 63
  %2718 = xor i64 %2713, %2716
  %2719 = xor i64 %2713, %2717
  %2720 = add i64 %2718, %2719
  %2721 = icmp eq i64 %2720, 2
  %2722 = zext i1 %2721 to i8
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2722, i8* %2723, align 1
  store %struct.Memory* %loadMem_400e38, %struct.Memory** %MEMORY
  %loadMem_400e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 5
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 15
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %RBP.i90
  %2734 = sub i64 %2733, 40
  %2735 = load i64, i64* %PC.i88
  %2736 = add i64 %2735, 4
  store i64 %2736, i64* %PC.i88
  %2737 = inttoptr i64 %2734 to i32*
  %2738 = load i32, i32* %2737
  %2739 = sext i32 %2738 to i64
  store i64 %2739, i64* %RCX.i89, align 8
  store %struct.Memory* %loadMem_400e3b, %struct.Memory** %MEMORY
  %loadMem_400e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 33
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 1
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %2745 to i64*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 5
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2749, i64 0, i64 0
  %YMM0.i87 = bitcast %union.VectorReg* %2750 to %"class.std::bitset"*
  %2751 = bitcast %"class.std::bitset"* %YMM0.i87 to i8*
  %2752 = load i64, i64* %RAX.i85
  %2753 = load i64, i64* %RCX.i86
  %2754 = mul i64 %2753, 8
  %2755 = add i64 %2754, %2752
  %2756 = load i64, i64* %PC.i84
  %2757 = add i64 %2756, 5
  store i64 %2757, i64* %PC.i84
  %2758 = inttoptr i64 %2755 to double*
  %2759 = load double, double* %2758
  %2760 = bitcast i8* %2751 to double*
  store double %2759, double* %2760, align 1
  %2761 = getelementptr inbounds i8, i8* %2751, i64 8
  %2762 = bitcast i8* %2761 to double*
  store double 0.000000e+00, double* %2762, align 1
  store %struct.Memory* %loadMem_400e3f, %struct.Memory** %MEMORY
  %loadMem_400e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 33
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2765 to i64*
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 1
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 15
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %2771 to i64*
  %2772 = load i64, i64* %RBP.i83
  %2773 = sub i64 %2772, 32
  %2774 = load i64, i64* %PC.i81
  %2775 = add i64 %2774, 4
  store i64 %2775, i64* %PC.i81
  %2776 = inttoptr i64 %2773 to i64*
  %2777 = load i64, i64* %2776
  store i64 %2777, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_400e44, %struct.Memory** %MEMORY
  %loadMem_400e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 33
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2780 to i64*
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 5
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 15
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %2786 to i64*
  %2787 = load i64, i64* %RBP.i80
  %2788 = sub i64 %2787, 36
  %2789 = load i64, i64* %PC.i78
  %2790 = add i64 %2789, 4
  store i64 %2790, i64* %PC.i78
  %2791 = inttoptr i64 %2788 to i32*
  %2792 = load i32, i32* %2791
  %2793 = sext i32 %2792 to i64
  store i64 %2793, i64* %RCX.i79, align 8
  store %struct.Memory* %loadMem_400e48, %struct.Memory** %MEMORY
  %loadMem_400e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 5
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %2799 to i64*
  %2800 = load i64, i64* %RCX.i77
  %2801 = load i64, i64* %PC.i76
  %2802 = add i64 %2801, 4
  store i64 %2802, i64* %PC.i76
  %2803 = shl i64 %2800, 11
  %2804 = icmp slt i64 %2803, 0
  %2805 = shl i64 %2803, 1
  store i64 %2805, i64* %RCX.i77, align 8
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2807 = zext i1 %2804 to i8
  store i8 %2807, i8* %2806, align 1
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2809 = trunc i64 %2805 to i32
  store i8 1, i8* %2808, align 1
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2810, align 1
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2812 = icmp eq i64 %2805, 0
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %2811, align 1
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2815 = lshr i64 %2805, 63
  %2816 = trunc i64 %2815 to i8
  store i8 %2816, i8* %2814, align 1
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2817, align 1
  store %struct.Memory* %loadMem_400e4c, %struct.Memory** %MEMORY
  %loadMem_400e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 33
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 1
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 5
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %RAX.i74
  %2828 = load i64, i64* %RCX.i75
  %2829 = load i64, i64* %PC.i73
  %2830 = add i64 %2829, 3
  store i64 %2830, i64* %PC.i73
  %2831 = add i64 %2828, %2827
  store i64 %2831, i64* %RAX.i74, align 8
  %2832 = icmp ult i64 %2831, %2827
  %2833 = icmp ult i64 %2831, %2828
  %2834 = or i1 %2832, %2833
  %2835 = zext i1 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2835, i8* %2836, align 1
  %2837 = trunc i64 %2831 to i32
  %2838 = and i32 %2837, 255
  %2839 = call i32 @llvm.ctpop.i32(i32 %2838)
  %2840 = trunc i32 %2839 to i8
  %2841 = and i8 %2840, 1
  %2842 = xor i8 %2841, 1
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2842, i8* %2843, align 1
  %2844 = xor i64 %2828, %2827
  %2845 = xor i64 %2844, %2831
  %2846 = lshr i64 %2845, 4
  %2847 = trunc i64 %2846 to i8
  %2848 = and i8 %2847, 1
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2848, i8* %2849, align 1
  %2850 = icmp eq i64 %2831, 0
  %2851 = zext i1 %2850 to i8
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2851, i8* %2852, align 1
  %2853 = lshr i64 %2831, 63
  %2854 = trunc i64 %2853 to i8
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2854, i8* %2855, align 1
  %2856 = lshr i64 %2827, 63
  %2857 = lshr i64 %2828, 63
  %2858 = xor i64 %2853, %2856
  %2859 = xor i64 %2853, %2857
  %2860 = add i64 %2858, %2859
  %2861 = icmp eq i64 %2860, 2
  %2862 = zext i1 %2861 to i8
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2862, i8* %2863, align 1
  store %struct.Memory* %loadMem_400e50, %struct.Memory** %MEMORY
  %loadMem_400e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 5
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 15
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %RBP.i72
  %2874 = sub i64 %2873, 44
  %2875 = load i64, i64* %PC.i70
  %2876 = add i64 %2875, 4
  store i64 %2876, i64* %PC.i70
  %2877 = inttoptr i64 %2874 to i32*
  %2878 = load i32, i32* %2877
  %2879 = sext i32 %2878 to i64
  store i64 %2879, i64* %RCX.i71, align 8
  store %struct.Memory* %loadMem_400e53, %struct.Memory** %MEMORY
  %loadMem_400e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 33
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 1
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 5
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2890 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2889, i64 0, i64 1
  %YMM1.i69 = bitcast %union.VectorReg* %2890 to %"class.std::bitset"*
  %2891 = bitcast %"class.std::bitset"* %YMM1.i69 to i8*
  %2892 = load i64, i64* %RAX.i67
  %2893 = load i64, i64* %RCX.i68
  %2894 = mul i64 %2893, 8
  %2895 = add i64 %2894, %2892
  %2896 = load i64, i64* %PC.i66
  %2897 = add i64 %2896, 5
  store i64 %2897, i64* %PC.i66
  %2898 = inttoptr i64 %2895 to double*
  %2899 = load double, double* %2898
  %2900 = bitcast i8* %2891 to double*
  store double %2899, double* %2900, align 1
  %2901 = getelementptr inbounds i8, i8* %2891, i64 8
  %2902 = bitcast i8* %2901 to double*
  store double 0.000000e+00, double* %2902, align 1
  store %struct.Memory* %loadMem_400e57, %struct.Memory** %MEMORY
  %loadMem_400e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 1
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %2908 to i64*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 15
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %2911 to i64*
  %2912 = load i64, i64* %RBP.i65
  %2913 = sub i64 %2912, 24
  %2914 = load i64, i64* %PC.i63
  %2915 = add i64 %2914, 4
  store i64 %2915, i64* %PC.i63
  %2916 = inttoptr i64 %2913 to i64*
  %2917 = load i64, i64* %2916
  store i64 %2917, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_400e5c, %struct.Memory** %MEMORY
  %loadMem_400e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 5
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %2923 to i64*
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 15
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %2926 to i64*
  %2927 = load i64, i64* %RBP.i62
  %2928 = sub i64 %2927, 44
  %2929 = load i64, i64* %PC.i60
  %2930 = add i64 %2929, 4
  store i64 %2930, i64* %PC.i60
  %2931 = inttoptr i64 %2928 to i32*
  %2932 = load i32, i32* %2931
  %2933 = sext i32 %2932 to i64
  store i64 %2933, i64* %RCX.i61, align 8
  store %struct.Memory* %loadMem_400e60, %struct.Memory** %MEMORY
  %loadMem_400e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 33
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2936 to i64*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 5
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %2939 to i64*
  %2940 = load i64, i64* %RCX.i59
  %2941 = load i64, i64* %PC.i58
  %2942 = add i64 %2941, 4
  store i64 %2942, i64* %PC.i58
  %2943 = shl i64 %2940, 11
  %2944 = icmp slt i64 %2943, 0
  %2945 = shl i64 %2943, 1
  store i64 %2945, i64* %RCX.i59, align 8
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2947 = zext i1 %2944 to i8
  store i8 %2947, i8* %2946, align 1
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2949 = trunc i64 %2945 to i32
  store i8 1, i8* %2948, align 1
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2950, align 1
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2952 = icmp eq i64 %2945, 0
  %2953 = zext i1 %2952 to i8
  store i8 %2953, i8* %2951, align 1
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2955 = lshr i64 %2945, 63
  %2956 = trunc i64 %2955 to i8
  store i8 %2956, i8* %2954, align 1
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2957, align 1
  store %struct.Memory* %loadMem_400e64, %struct.Memory** %MEMORY
  %loadMem_400e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 33
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 1
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %2963 to i64*
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 5
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %2966 to i64*
  %2967 = load i64, i64* %RAX.i56
  %2968 = load i64, i64* %RCX.i57
  %2969 = load i64, i64* %PC.i55
  %2970 = add i64 %2969, 3
  store i64 %2970, i64* %PC.i55
  %2971 = add i64 %2968, %2967
  store i64 %2971, i64* %RAX.i56, align 8
  %2972 = icmp ult i64 %2971, %2967
  %2973 = icmp ult i64 %2971, %2968
  %2974 = or i1 %2972, %2973
  %2975 = zext i1 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2975, i8* %2976, align 1
  %2977 = trunc i64 %2971 to i32
  %2978 = and i32 %2977, 255
  %2979 = call i32 @llvm.ctpop.i32(i32 %2978)
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  %2982 = xor i8 %2981, 1
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2982, i8* %2983, align 1
  %2984 = xor i64 %2968, %2967
  %2985 = xor i64 %2984, %2971
  %2986 = lshr i64 %2985, 4
  %2987 = trunc i64 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2988, i8* %2989, align 1
  %2990 = icmp eq i64 %2971, 0
  %2991 = zext i1 %2990 to i8
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2991, i8* %2992, align 1
  %2993 = lshr i64 %2971, 63
  %2994 = trunc i64 %2993 to i8
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2994, i8* %2995, align 1
  %2996 = lshr i64 %2967, 63
  %2997 = lshr i64 %2968, 63
  %2998 = xor i64 %2993, %2996
  %2999 = xor i64 %2993, %2997
  %3000 = add i64 %2998, %2999
  %3001 = icmp eq i64 %3000, 2
  %3002 = zext i1 %3001 to i8
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3002, i8* %3003, align 1
  store %struct.Memory* %loadMem_400e68, %struct.Memory** %MEMORY
  %loadMem_400e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 5
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 15
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %3012 to i64*
  %3013 = load i64, i64* %RBP.i54
  %3014 = sub i64 %3013, 40
  %3015 = load i64, i64* %PC.i52
  %3016 = add i64 %3015, 4
  store i64 %3016, i64* %PC.i52
  %3017 = inttoptr i64 %3014 to i32*
  %3018 = load i32, i32* %3017
  %3019 = sext i32 %3018 to i64
  store i64 %3019, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_400e6b, %struct.Memory** %MEMORY
  %loadMem_400e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 1
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 5
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3030 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3029, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3030 to %"class.std::bitset"*
  %3031 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3032 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3033 = load i64, i64* %RAX.i50
  %3034 = load i64, i64* %RCX.i51
  %3035 = mul i64 %3034, 8
  %3036 = add i64 %3035, %3033
  %3037 = load i64, i64* %PC.i49
  %3038 = add i64 %3037, 5
  store i64 %3038, i64* %PC.i49
  %3039 = bitcast i8* %3032 to double*
  %3040 = load double, double* %3039, align 1
  %3041 = getelementptr inbounds i8, i8* %3032, i64 8
  %3042 = bitcast i8* %3041 to i64*
  %3043 = load i64, i64* %3042, align 1
  %3044 = inttoptr i64 %3036 to double*
  %3045 = load double, double* %3044
  %3046 = fmul double %3040, %3045
  %3047 = bitcast i8* %3031 to double*
  store double %3046, double* %3047, align 1
  %3048 = getelementptr inbounds i8, i8* %3031, i64 8
  %3049 = bitcast i8* %3048 to i64*
  store i64 %3043, i64* %3049, align 1
  store %struct.Memory* %loadMem_400e6f, %struct.Memory** %MEMORY
  %loadMem_400e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 33
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3054 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3053, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3054 to %"class.std::bitset"*
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3056 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3055, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3056 to %union.vec128_t*
  %3057 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3058 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3059 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3060 = load i64, i64* %PC.i48
  %3061 = add i64 %3060, 4
  store i64 %3061, i64* %PC.i48
  %3062 = bitcast i8* %3058 to double*
  %3063 = load double, double* %3062, align 1
  %3064 = getelementptr inbounds i8, i8* %3058, i64 8
  %3065 = bitcast i8* %3064 to i64*
  %3066 = load i64, i64* %3065, align 1
  %3067 = bitcast i8* %3059 to double*
  %3068 = load double, double* %3067, align 1
  %3069 = fsub double %3063, %3068
  %3070 = bitcast i8* %3057 to double*
  store double %3069, double* %3070, align 1
  %3071 = getelementptr inbounds i8, i8* %3057, i64 8
  %3072 = bitcast i8* %3071 to i64*
  store i64 %3066, i64* %3072, align 1
  store %struct.Memory* %loadMem_400e74, %struct.Memory** %MEMORY
  %loadMem_400e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 33
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 1
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %3078 to i64*
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 15
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %3081 to i64*
  %3082 = load i64, i64* %RBP.i47
  %3083 = sub i64 %3082, 16
  %3084 = load i64, i64* %PC.i45
  %3085 = add i64 %3084, 4
  store i64 %3085, i64* %PC.i45
  %3086 = inttoptr i64 %3083 to i64*
  %3087 = load i64, i64* %3086
  store i64 %3087, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_400e78, %struct.Memory** %MEMORY
  %loadMem_400e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 5
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 15
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %3096 to i64*
  %3097 = load i64, i64* %RBP.i44
  %3098 = sub i64 %3097, 36
  %3099 = load i64, i64* %PC.i42
  %3100 = add i64 %3099, 4
  store i64 %3100, i64* %PC.i42
  %3101 = inttoptr i64 %3098 to i32*
  %3102 = load i32, i32* %3101
  %3103 = sext i32 %3102 to i64
  store i64 %3103, i64* %RCX.i43, align 8
  store %struct.Memory* %loadMem_400e7c, %struct.Memory** %MEMORY
  %loadMem_400e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 33
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 5
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %3109 to i64*
  %3110 = load i64, i64* %RCX.i41
  %3111 = load i64, i64* %PC.i40
  %3112 = add i64 %3111, 4
  store i64 %3112, i64* %PC.i40
  %3113 = shl i64 %3110, 11
  %3114 = icmp slt i64 %3113, 0
  %3115 = shl i64 %3113, 1
  store i64 %3115, i64* %RCX.i41, align 8
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3117 = zext i1 %3114 to i8
  store i8 %3117, i8* %3116, align 1
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3119 = trunc i64 %3115 to i32
  store i8 1, i8* %3118, align 1
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3120, align 1
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3122 = icmp eq i64 %3115, 0
  %3123 = zext i1 %3122 to i8
  store i8 %3123, i8* %3121, align 1
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3125 = lshr i64 %3115, 63
  %3126 = trunc i64 %3125 to i8
  store i8 %3126, i8* %3124, align 1
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3127, align 1
  store %struct.Memory* %loadMem_400e80, %struct.Memory** %MEMORY
  %loadMem_400e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 33
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3130 to i64*
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 1
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %3133 to i64*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 5
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %3136 to i64*
  %3137 = load i64, i64* %RAX.i38
  %3138 = load i64, i64* %RCX.i39
  %3139 = load i64, i64* %PC.i37
  %3140 = add i64 %3139, 3
  store i64 %3140, i64* %PC.i37
  %3141 = add i64 %3138, %3137
  store i64 %3141, i64* %RAX.i38, align 8
  %3142 = icmp ult i64 %3141, %3137
  %3143 = icmp ult i64 %3141, %3138
  %3144 = or i1 %3142, %3143
  %3145 = zext i1 %3144 to i8
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3145, i8* %3146, align 1
  %3147 = trunc i64 %3141 to i32
  %3148 = and i32 %3147, 255
  %3149 = call i32 @llvm.ctpop.i32(i32 %3148)
  %3150 = trunc i32 %3149 to i8
  %3151 = and i8 %3150, 1
  %3152 = xor i8 %3151, 1
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3152, i8* %3153, align 1
  %3154 = xor i64 %3138, %3137
  %3155 = xor i64 %3154, %3141
  %3156 = lshr i64 %3155, 4
  %3157 = trunc i64 %3156 to i8
  %3158 = and i8 %3157, 1
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3158, i8* %3159, align 1
  %3160 = icmp eq i64 %3141, 0
  %3161 = zext i1 %3160 to i8
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3161, i8* %3162, align 1
  %3163 = lshr i64 %3141, 63
  %3164 = trunc i64 %3163 to i8
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3164, i8* %3165, align 1
  %3166 = lshr i64 %3137, 63
  %3167 = lshr i64 %3138, 63
  %3168 = xor i64 %3163, %3166
  %3169 = xor i64 %3163, %3167
  %3170 = add i64 %3168, %3169
  %3171 = icmp eq i64 %3170, 2
  %3172 = zext i1 %3171 to i8
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3172, i8* %3173, align 1
  store %struct.Memory* %loadMem_400e84, %struct.Memory** %MEMORY
  %loadMem_400e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 5
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 15
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %RBP.i36
  %3184 = sub i64 %3183, 40
  %3185 = load i64, i64* %PC.i34
  %3186 = add i64 %3185, 4
  store i64 %3186, i64* %PC.i34
  %3187 = inttoptr i64 %3184 to i32*
  %3188 = load i32, i32* %3187
  %3189 = sext i32 %3188 to i64
  store i64 %3189, i64* %RCX.i35, align 8
  store %struct.Memory* %loadMem_400e87, %struct.Memory** %MEMORY
  %loadMem_400e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 1
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 5
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3199, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3200 to %union.vec128_t*
  %3201 = load i64, i64* %RAX.i33
  %3202 = load i64, i64* %RCX.i
  %3203 = mul i64 %3202, 8
  %3204 = add i64 %3203, %3201
  %3205 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3206 = load i64, i64* %PC.i32
  %3207 = add i64 %3206, 5
  store i64 %3207, i64* %PC.i32
  %3208 = bitcast i8* %3205 to double*
  %3209 = load double, double* %3208, align 1
  %3210 = inttoptr i64 %3204 to double*
  store double %3209, double* %3210
  store %struct.Memory* %loadMem_400e8b, %struct.Memory** %MEMORY
  %loadMem_400e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 33
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 1
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 15
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %3219 to i64*
  %3220 = load i64, i64* %RBP.i31
  %3221 = sub i64 %3220, 36
  %3222 = load i64, i64* %PC.i29
  %3223 = add i64 %3222, 3
  store i64 %3223, i64* %PC.i29
  %3224 = inttoptr i64 %3221 to i32*
  %3225 = load i32, i32* %3224
  %3226 = zext i32 %3225 to i64
  store i64 %3226, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_400e90, %struct.Memory** %MEMORY
  %loadMem_400e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 33
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 1
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %3232 to i64*
  %3233 = load i64, i64* %RAX.i28
  %3234 = load i64, i64* %PC.i27
  %3235 = add i64 %3234, 3
  store i64 %3235, i64* %PC.i27
  %3236 = trunc i64 %3233 to i32
  %3237 = add i32 1, %3236
  %3238 = zext i32 %3237 to i64
  store i64 %3238, i64* %RAX.i28, align 8
  %3239 = icmp ult i32 %3237, %3236
  %3240 = icmp ult i32 %3237, 1
  %3241 = or i1 %3239, %3240
  %3242 = zext i1 %3241 to i8
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3242, i8* %3243, align 1
  %3244 = and i32 %3237, 255
  %3245 = call i32 @llvm.ctpop.i32(i32 %3244)
  %3246 = trunc i32 %3245 to i8
  %3247 = and i8 %3246, 1
  %3248 = xor i8 %3247, 1
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3248, i8* %3249, align 1
  %3250 = xor i64 1, %3233
  %3251 = trunc i64 %3250 to i32
  %3252 = xor i32 %3251, %3237
  %3253 = lshr i32 %3252, 4
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3255, i8* %3256, align 1
  %3257 = icmp eq i32 %3237, 0
  %3258 = zext i1 %3257 to i8
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3258, i8* %3259, align 1
  %3260 = lshr i32 %3237, 31
  %3261 = trunc i32 %3260 to i8
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3261, i8* %3262, align 1
  %3263 = lshr i32 %3236, 31
  %3264 = xor i32 %3260, %3263
  %3265 = add i32 %3264, %3260
  %3266 = icmp eq i32 %3265, 2
  %3267 = zext i1 %3266 to i8
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3267, i8* %3268, align 1
  store %struct.Memory* %loadMem_400e93, %struct.Memory** %MEMORY
  %loadMem_400e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 33
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3271 to i64*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 1
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %3274 to i32*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 15
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %3277 to i64*
  %3278 = load i64, i64* %RBP.i26
  %3279 = sub i64 %3278, 36
  %3280 = load i32, i32* %EAX.i25
  %3281 = zext i32 %3280 to i64
  %3282 = load i64, i64* %PC.i24
  %3283 = add i64 %3282, 3
  store i64 %3283, i64* %PC.i24
  %3284 = inttoptr i64 %3279 to i32*
  store i32 %3280, i32* %3284
  store %struct.Memory* %loadMem_400e96, %struct.Memory** %MEMORY
  %loadMem_400e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3287 to i64*
  %3288 = load i64, i64* %PC.i23
  %3289 = add i64 %3288, -121
  %3290 = load i64, i64* %PC.i23
  %3291 = add i64 %3290, 5
  store i64 %3291, i64* %PC.i23
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3289, i64* %3292, align 8
  store %struct.Memory* %loadMem_400e99, %struct.Memory** %MEMORY
  br label %block_.L_400e20

block_.L_400e9e:                                  ; preds = %block_.L_400e20
  %loadMem_400e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 33
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3295 to i64*
  %3296 = load i64, i64* %PC.i22
  %3297 = add i64 %3296, 5
  %3298 = load i64, i64* %PC.i22
  %3299 = add i64 %3298, 5
  store i64 %3299, i64* %PC.i22
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3297, i64* %3300, align 8
  store %struct.Memory* %loadMem_400e9e, %struct.Memory** %MEMORY
  br label %block_.L_400ea3

block_.L_400ea3:                                  ; preds = %block_.L_400e9e
  %loadMem_400ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 33
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3303 to i64*
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 1
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 15
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %3309 to i64*
  %3310 = load i64, i64* %RBP.i21
  %3311 = sub i64 %3310, 40
  %3312 = load i64, i64* %PC.i19
  %3313 = add i64 %3312, 3
  store i64 %3313, i64* %PC.i19
  %3314 = inttoptr i64 %3311 to i32*
  %3315 = load i32, i32* %3314
  %3316 = zext i32 %3315 to i64
  store i64 %3316, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_400ea3, %struct.Memory** %MEMORY
  %loadMem_400ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 33
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 1
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %3322 to i64*
  %3323 = load i64, i64* %RAX.i18
  %3324 = load i64, i64* %PC.i17
  %3325 = add i64 %3324, 3
  store i64 %3325, i64* %PC.i17
  %3326 = trunc i64 %3323 to i32
  %3327 = add i32 1, %3326
  %3328 = zext i32 %3327 to i64
  store i64 %3328, i64* %RAX.i18, align 8
  %3329 = icmp ult i32 %3327, %3326
  %3330 = icmp ult i32 %3327, 1
  %3331 = or i1 %3329, %3330
  %3332 = zext i1 %3331 to i8
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3332, i8* %3333, align 1
  %3334 = and i32 %3327, 255
  %3335 = call i32 @llvm.ctpop.i32(i32 %3334)
  %3336 = trunc i32 %3335 to i8
  %3337 = and i8 %3336, 1
  %3338 = xor i8 %3337, 1
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3338, i8* %3339, align 1
  %3340 = xor i64 1, %3323
  %3341 = trunc i64 %3340 to i32
  %3342 = xor i32 %3341, %3327
  %3343 = lshr i32 %3342, 4
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3345, i8* %3346, align 1
  %3347 = icmp eq i32 %3327, 0
  %3348 = zext i1 %3347 to i8
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3348, i8* %3349, align 1
  %3350 = lshr i32 %3327, 31
  %3351 = trunc i32 %3350 to i8
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3351, i8* %3352, align 1
  %3353 = lshr i32 %3326, 31
  %3354 = xor i32 %3350, %3353
  %3355 = add i32 %3354, %3350
  %3356 = icmp eq i32 %3355, 2
  %3357 = zext i1 %3356 to i8
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3357, i8* %3358, align 1
  store %struct.Memory* %loadMem_400ea6, %struct.Memory** %MEMORY
  %loadMem_400ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 33
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3361 to i64*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 1
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %3364 to i32*
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 15
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3367 to i64*
  %3368 = load i64, i64* %RBP.i16
  %3369 = sub i64 %3368, 40
  %3370 = load i32, i32* %EAX.i15
  %3371 = zext i32 %3370 to i64
  %3372 = load i64, i64* %PC.i14
  %3373 = add i64 %3372, 3
  store i64 %3373, i64* %PC.i14
  %3374 = inttoptr i64 %3369 to i32*
  store i32 %3370, i32* %3374
  store %struct.Memory* %loadMem_400ea9, %struct.Memory** %MEMORY
  %loadMem_400eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 33
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %PC.i13
  %3379 = add i64 %3378, -296
  %3380 = load i64, i64* %PC.i13
  %3381 = add i64 %3380, 5
  store i64 %3381, i64* %PC.i13
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3379, i64* %3382, align 8
  store %struct.Memory* %loadMem_400eac, %struct.Memory** %MEMORY
  br label %block_.L_400d84

block_.L_400eb1:                                  ; preds = %block_.L_400d84
  %loadMem_400eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 33
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3385 to i64*
  %3386 = load i64, i64* %PC.i12
  %3387 = add i64 %3386, 5
  %3388 = load i64, i64* %PC.i12
  %3389 = add i64 %3388, 5
  store i64 %3389, i64* %PC.i12
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3387, i64* %3390, align 8
  store %struct.Memory* %loadMem_400eb1, %struct.Memory** %MEMORY
  br label %block_.L_400eb6

block_.L_400eb6:                                  ; preds = %block_.L_400eb1
  %loadMem_400eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 33
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3393 to i64*
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 1
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %3396 to i64*
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 15
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3399 to i64*
  %3400 = load i64, i64* %RBP.i11
  %3401 = sub i64 %3400, 44
  %3402 = load i64, i64* %PC.i9
  %3403 = add i64 %3402, 3
  store i64 %3403, i64* %PC.i9
  %3404 = inttoptr i64 %3401 to i32*
  %3405 = load i32, i32* %3404
  %3406 = zext i32 %3405 to i64
  store i64 %3406, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_400eb6, %struct.Memory** %MEMORY
  %loadMem_400eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 33
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3409 to i64*
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 1
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3412 to i64*
  %3413 = load i64, i64* %RAX.i
  %3414 = load i64, i64* %PC.i8
  %3415 = add i64 %3414, 3
  store i64 %3415, i64* %PC.i8
  %3416 = trunc i64 %3413 to i32
  %3417 = add i32 1, %3416
  %3418 = zext i32 %3417 to i64
  store i64 %3418, i64* %RAX.i, align 8
  %3419 = icmp ult i32 %3417, %3416
  %3420 = icmp ult i32 %3417, 1
  %3421 = or i1 %3419, %3420
  %3422 = zext i1 %3421 to i8
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3422, i8* %3423, align 1
  %3424 = and i32 %3417, 255
  %3425 = call i32 @llvm.ctpop.i32(i32 %3424)
  %3426 = trunc i32 %3425 to i8
  %3427 = and i8 %3426, 1
  %3428 = xor i8 %3427, 1
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3428, i8* %3429, align 1
  %3430 = xor i64 1, %3413
  %3431 = trunc i64 %3430 to i32
  %3432 = xor i32 %3431, %3417
  %3433 = lshr i32 %3432, 4
  %3434 = trunc i32 %3433 to i8
  %3435 = and i8 %3434, 1
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3435, i8* %3436, align 1
  %3437 = icmp eq i32 %3417, 0
  %3438 = zext i1 %3437 to i8
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3438, i8* %3439, align 1
  %3440 = lshr i32 %3417, 31
  %3441 = trunc i32 %3440 to i8
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3441, i8* %3442, align 1
  %3443 = lshr i32 %3416, 31
  %3444 = xor i32 %3440, %3443
  %3445 = add i32 %3444, %3440
  %3446 = icmp eq i32 %3445, 2
  %3447 = zext i1 %3446 to i8
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3447, i8* %3448, align 1
  store %struct.Memory* %loadMem_400eb9, %struct.Memory** %MEMORY
  %loadMem_400ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 33
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 1
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3454 to i32*
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 15
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3457 to i64*
  %3458 = load i64, i64* %RBP.i7
  %3459 = sub i64 %3458, 44
  %3460 = load i32, i32* %EAX.i
  %3461 = zext i32 %3460 to i64
  %3462 = load i64, i64* %PC.i6
  %3463 = add i64 %3462, 3
  store i64 %3463, i64* %PC.i6
  %3464 = inttoptr i64 %3459 to i32*
  store i32 %3460, i32* %3464
  store %struct.Memory* %loadMem_400ebc, %struct.Memory** %MEMORY
  %loadMem_400ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 33
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3467 to i64*
  %3468 = load i64, i64* %PC.i5
  %3469 = add i64 %3468, -574
  %3470 = load i64, i64* %PC.i5
  %3471 = add i64 %3470, 5
  store i64 %3471, i64* %PC.i5
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3469, i64* %3472, align 8
  store %struct.Memory* %loadMem_400ebf, %struct.Memory** %MEMORY
  br label %block_.L_400c81

block_.L_400ec4:                                  ; preds = %block_.L_400c81
  %loadMem_400ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 33
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3475 to i64*
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 13
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3478 to i64*
  %3479 = load i64, i64* %RSP.i
  %3480 = load i64, i64* %PC.i4
  %3481 = add i64 %3480, 4
  store i64 %3481, i64* %PC.i4
  %3482 = add i64 64, %3479
  store i64 %3482, i64* %RSP.i, align 8
  %3483 = icmp ult i64 %3482, %3479
  %3484 = icmp ult i64 %3482, 64
  %3485 = or i1 %3483, %3484
  %3486 = zext i1 %3485 to i8
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3486, i8* %3487, align 1
  %3488 = trunc i64 %3482 to i32
  %3489 = and i32 %3488, 255
  %3490 = call i32 @llvm.ctpop.i32(i32 %3489)
  %3491 = trunc i32 %3490 to i8
  %3492 = and i8 %3491, 1
  %3493 = xor i8 %3492, 1
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3493, i8* %3494, align 1
  %3495 = xor i64 64, %3479
  %3496 = xor i64 %3495, %3482
  %3497 = lshr i64 %3496, 4
  %3498 = trunc i64 %3497 to i8
  %3499 = and i8 %3498, 1
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3499, i8* %3500, align 1
  %3501 = icmp eq i64 %3482, 0
  %3502 = zext i1 %3501 to i8
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3502, i8* %3503, align 1
  %3504 = lshr i64 %3482, 63
  %3505 = trunc i64 %3504 to i8
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3505, i8* %3506, align 1
  %3507 = lshr i64 %3479, 63
  %3508 = xor i64 %3504, %3507
  %3509 = add i64 %3508, %3504
  %3510 = icmp eq i64 %3509, 2
  %3511 = zext i1 %3510 to i8
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3511, i8* %3512, align 1
  store %struct.Memory* %loadMem_400ec4, %struct.Memory** %MEMORY
  %loadMem_400ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 33
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3515 to i64*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 15
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3518 to i64*
  %3519 = load i64, i64* %PC.i2
  %3520 = add i64 %3519, 1
  store i64 %3520, i64* %PC.i2
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3522 = load i64, i64* %3521, align 8
  %3523 = add i64 %3522, 8
  %3524 = inttoptr i64 %3522 to i64*
  %3525 = load i64, i64* %3524
  store i64 %3525, i64* %RBP.i3, align 8
  store i64 %3523, i64* %3521, align 8
  store %struct.Memory* %loadMem_400ec8, %struct.Memory** %MEMORY
  %loadMem_400ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3528 to i64*
  %3529 = load i64, i64* %PC.i1
  %3530 = add i64 %3529, 1
  store i64 %3530, i64* %PC.i1
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3533 = load i64, i64* %3532, align 8
  %3534 = inttoptr i64 %3533 to i64*
  %3535 = load i64, i64* %3534
  store i64 %3535, i64* %3531, align 8
  %3536 = add i64 %3533, 8
  store i64 %3536, i64* %3532, align 8
  store %struct.Memory* %loadMem_400ec9, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400ec9
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 64
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 64
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
  %23 = xor i64 64, %9
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

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_jge_.L_400ec4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400cf0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0xc___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 11
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

define %struct.Memory* @routine_addsd_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_jmpq_.L_400c9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400d7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %29 = fdiv double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
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

define %struct.Memory* @routine_jmpq_.L_400d19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400eb1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400e19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_400db2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400e9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_400e20(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400ea3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d84(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400eb6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400c81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 64
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
  %25 = xor i64 64, %9
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

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
