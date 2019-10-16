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

declare %struct.Memory* @sub_402870.daxpy(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4029e0.ddot(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @dgesl(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_401c30 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_401c30, %struct.Memory** %MEMORY
  %loadMem_401c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i615 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i615
  %27 = load i64, i64* %PC.i614
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i614
  store i64 %26, i64* %RBP.i616, align 8
  store %struct.Memory* %loadMem_401c31, %struct.Memory** %MEMORY
  %loadMem_401c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i613 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i613
  %36 = load i64, i64* %PC.i612
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i612
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i613, align 8
  %39 = icmp ult i64 %35, 96
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
  %49 = xor i64 96, %35
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
  store %struct.Memory* %loadMem_401c34, %struct.Memory** %MEMORY
  %loadMem_401c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i610 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i611
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i610
  %79 = load i64, i64* %PC.i609
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i609
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_401c38, %struct.Memory** %MEMORY
  %loadMem_401c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i608
  %92 = sub i64 %91, 12
  %93 = load i32, i32* %ESI.i
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC.i607
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i607
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  store %struct.Memory* %loadMem_401c3c, %struct.Memory** %MEMORY
  %loadMem_401c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %EDX.i605 = bitcast %union.anon* %103 to i32*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i606
  %108 = sub i64 %107, 16
  %109 = load i32, i32* %EDX.i605
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC.i604
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i604
  %113 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %113
  store %struct.Memory* %loadMem_401c3f, %struct.Memory** %MEMORY
  %loadMem_401c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RCX.i602 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i603
  %124 = sub i64 %123, 24
  %125 = load i64, i64* %RCX.i602
  %126 = load i64, i64* %PC.i601
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC.i601
  %128 = inttoptr i64 %124 to i64*
  store i64 %125, i64* %128
  store %struct.Memory* %loadMem_401c42, %struct.Memory** %MEMORY
  %loadMem_401c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 17
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %R8.i600 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i599
  %139 = sub i64 %138, 32
  %140 = load i64, i64* %R8.i600
  %141 = load i64, i64* %PC.i598
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC.i598
  %143 = inttoptr i64 %139 to i64*
  store i64 %140, i64* %143
  store %struct.Memory* %loadMem_401c46, %struct.Memory** %MEMORY
  %loadMem_401c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 19
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %149 to i32*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i597
  %154 = sub i64 %153, 36
  %155 = load i32, i32* %R9D.i
  %156 = zext i32 %155 to i64
  %157 = load i64, i64* %PC.i596
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC.i596
  %159 = inttoptr i64 %154 to i32*
  store i32 %155, i32* %159
  store %struct.Memory* %loadMem_401c4a, %struct.Memory** %MEMORY
  %loadMem_401c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 33
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %162 to i64*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %RDX.i594 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 15
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %168 to i64*
  %169 = load i64, i64* %RBP.i595
  %170 = sub i64 %169, 16
  %171 = load i64, i64* %PC.i593
  %172 = add i64 %171, 3
  store i64 %172, i64* %PC.i593
  %173 = inttoptr i64 %170 to i32*
  %174 = load i32, i32* %173
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RDX.i594, align 8
  store %struct.Memory* %loadMem_401c4e, %struct.Memory** %MEMORY
  %loadMem_401c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 33
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %178 to i64*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %RDX.i592 = bitcast %union.anon* %181 to i64*
  %182 = load i64, i64* %RDX.i592
  %183 = load i64, i64* %PC.i591
  %184 = add i64 %183, 3
  store i64 %184, i64* %PC.i591
  %185 = trunc i64 %182 to i32
  %186 = sub i32 %185, 1
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RDX.i592, align 8
  %188 = icmp ult i32 %185, 1
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %189, i8* %190, align 1
  %191 = and i32 %186, 255
  %192 = call i32 @llvm.ctpop.i32(i32 %191)
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %195, i8* %196, align 1
  %197 = xor i64 1, %182
  %198 = trunc i64 %197 to i32
  %199 = xor i32 %198, %186
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %202, i8* %203, align 1
  %204 = icmp eq i32 %186, 0
  %205 = zext i1 %204 to i8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %205, i8* %206, align 1
  %207 = lshr i32 %186, 31
  %208 = trunc i32 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %208, i8* %209, align 1
  %210 = lshr i32 %185, 31
  %211 = xor i32 %207, %210
  %212 = add i32 %211, %210
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %214, i8* %215, align 1
  store %struct.Memory* %loadMem_401c51, %struct.Memory** %MEMORY
  %loadMem_401c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 33
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 7
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %EDX.i589 = bitcast %union.anon* %221 to i32*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 15
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %224 to i64*
  %225 = load i64, i64* %RBP.i590
  %226 = sub i64 %225, 56
  %227 = load i32, i32* %EDX.i589
  %228 = zext i32 %227 to i64
  %229 = load i64, i64* %PC.i588
  %230 = add i64 %229, 3
  store i64 %230, i64* %PC.i588
  %231 = inttoptr i64 %226 to i32*
  store i32 %227, i32* %231
  store %struct.Memory* %loadMem_401c54, %struct.Memory** %MEMORY
  %loadMem_401c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 15
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %237 to i64*
  %238 = load i64, i64* %RBP.i587
  %239 = sub i64 %238, 36
  %240 = load i64, i64* %PC.i586
  %241 = add i64 %240, 4
  store i64 %241, i64* %PC.i586
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %244, align 1
  %245 = and i32 %243, 255
  %246 = call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %249, i8* %250, align 1
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %251, align 1
  %252 = icmp eq i32 %243, 0
  %253 = zext i1 %252 to i8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %253, i8* %254, align 1
  %255 = lshr i32 %243, 31
  %256 = trunc i32 %255 to i8
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %256, i8* %257, align 1
  %258 = lshr i32 %243, 31
  %259 = xor i32 %255, %258
  %260 = add i32 %259, %258
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %262, i8* %263, align 1
  store %struct.Memory* %loadMem_401c57, %struct.Memory** %MEMORY
  %loadMem_401c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 33
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %PC.i585
  %268 = add i64 %267, 413
  %269 = load i64, i64* %PC.i585
  %270 = add i64 %269, 6
  %271 = load i64, i64* %PC.i585
  %272 = add i64 %271, 6
  store i64 %272, i64* %PC.i585
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %274 = load i8, i8* %273, align 1
  %275 = icmp eq i8 %274, 0
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %BRANCH_TAKEN, align 1
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %278 = select i1 %275, i64 %268, i64 %270
  store i64 %278, i64* %277, align 8
  store %struct.Memory* %loadMem_401c5b, %struct.Memory** %MEMORY
  %loadBr_401c5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401c5b = icmp eq i8 %loadBr_401c5b, 1
  br i1 %cmpBr_401c5b, label %block_.L_401df8, label %block_401c61

block_401c61:                                     ; preds = %entry
  %loadMem_401c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 33
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 15
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %284 to i64*
  %285 = load i64, i64* %RBP.i584
  %286 = sub i64 %285, 56
  %287 = load i64, i64* %PC.i583
  %288 = add i64 %287, 4
  store i64 %288, i64* %PC.i583
  %289 = inttoptr i64 %286 to i32*
  %290 = load i32, i32* %289
  %291 = sub i32 %290, 1
  %292 = icmp ult i32 %290, 1
  %293 = zext i1 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %293, i8* %294, align 1
  %295 = and i32 %291, 255
  %296 = call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %299, i8* %300, align 1
  %301 = xor i32 %290, 1
  %302 = xor i32 %301, %291
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %305, i8* %306, align 1
  %307 = icmp eq i32 %291, 0
  %308 = zext i1 %307 to i8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %308, i8* %309, align 1
  %310 = lshr i32 %291, 31
  %311 = trunc i32 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %311, i8* %312, align 1
  %313 = lshr i32 %290, 31
  %314 = xor i32 %310, %313
  %315 = add i32 %314, %313
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %317, i8* %318, align 1
  store %struct.Memory* %loadMem_401c61, %struct.Memory** %MEMORY
  %loadMem_401c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %PC.i582
  %323 = add i64 %322, 220
  %324 = load i64, i64* %PC.i582
  %325 = add i64 %324, 6
  %326 = load i64, i64* %PC.i582
  %327 = add i64 %326, 6
  store i64 %327, i64* %PC.i582
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %329 = load i8, i8* %328, align 1
  %330 = icmp ne i8 %329, 0
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %332 = load i8, i8* %331, align 1
  %333 = icmp ne i8 %332, 0
  %334 = xor i1 %330, %333
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %BRANCH_TAKEN, align 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %337 = select i1 %334, i64 %323, i64 %325
  store i64 %337, i64* %336, align 8
  store %struct.Memory* %loadMem_401c65, %struct.Memory** %MEMORY
  %loadBr_401c65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401c65 = icmp eq i8 %loadBr_401c65, 1
  br i1 %cmpBr_401c65, label %block_.L_401d41, label %block_401c6b

block_401c6b:                                     ; preds = %block_401c61
  %loadMem_401c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 33
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 15
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %343 to i64*
  %344 = load i64, i64* %RBP.i581
  %345 = sub i64 %344, 44
  %346 = load i64, i64* %PC.i580
  %347 = add i64 %346, 7
  store i64 %347, i64* %PC.i580
  %348 = inttoptr i64 %345 to i32*
  store i32 0, i32* %348
  store %struct.Memory* %loadMem_401c6b, %struct.Memory** %MEMORY
  br label %block_.L_401c72

block_.L_401c72:                                  ; preds = %block_.L_401cd6, %block_401c6b
  %loadMem_401c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 15
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %357 to i64*
  %358 = load i64, i64* %RBP.i579
  %359 = sub i64 %358, 44
  %360 = load i64, i64* %PC.i577
  %361 = add i64 %360, 3
  store i64 %361, i64* %PC.i577
  %362 = inttoptr i64 %359 to i32*
  %363 = load i32, i32* %362
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_401c72, %struct.Memory** %MEMORY
  %loadMem_401c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 33
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %EAX.i575 = bitcast %union.anon* %370 to i32*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 15
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %373 to i64*
  %374 = load i32, i32* %EAX.i575
  %375 = zext i32 %374 to i64
  %376 = load i64, i64* %RBP.i576
  %377 = sub i64 %376, 56
  %378 = load i64, i64* %PC.i574
  %379 = add i64 %378, 3
  store i64 %379, i64* %PC.i574
  %380 = inttoptr i64 %377 to i32*
  %381 = load i32, i32* %380
  %382 = sub i32 %374, %381
  %383 = icmp ult i32 %374, %381
  %384 = zext i1 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %384, i8* %385, align 1
  %386 = and i32 %382, 255
  %387 = call i32 @llvm.ctpop.i32(i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %390, i8* %391, align 1
  %392 = xor i32 %381, %374
  %393 = xor i32 %392, %382
  %394 = lshr i32 %393, 4
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %396, i8* %397, align 1
  %398 = icmp eq i32 %382, 0
  %399 = zext i1 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %399, i8* %400, align 1
  %401 = lshr i32 %382, 31
  %402 = trunc i32 %401 to i8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %402, i8* %403, align 1
  %404 = lshr i32 %374, 31
  %405 = lshr i32 %381, 31
  %406 = xor i32 %405, %404
  %407 = xor i32 %401, %404
  %408 = add i32 %407, %406
  %409 = icmp eq i32 %408, 2
  %410 = zext i1 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %410, i8* %411, align 1
  store %struct.Memory* %loadMem_401c75, %struct.Memory** %MEMORY
  %loadMem_401c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 33
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %PC.i573
  %416 = add i64 %415, 196
  %417 = load i64, i64* %PC.i573
  %418 = add i64 %417, 6
  %419 = load i64, i64* %PC.i573
  %420 = add i64 %419, 6
  store i64 %420, i64* %PC.i573
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %422 = load i8, i8* %421, align 1
  %423 = icmp ne i8 %422, 0
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %425 = load i8, i8* %424, align 1
  %426 = icmp ne i8 %425, 0
  %427 = xor i1 %423, %426
  %428 = xor i1 %427, true
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %BRANCH_TAKEN, align 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %431 = select i1 %427, i64 %418, i64 %416
  store i64 %431, i64* %430, align 8
  store %struct.Memory* %loadMem_401c78, %struct.Memory** %MEMORY
  %loadBr_401c78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401c78 = icmp eq i8 %loadBr_401c78, 1
  br i1 %cmpBr_401c78, label %block_.L_401d3c, label %block_401c7e

block_401c7e:                                     ; preds = %block_.L_401c72
  %loadMem_401c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 33
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %437 to i64*
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 15
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %440 to i64*
  %441 = load i64, i64* %RBP.i572
  %442 = sub i64 %441, 24
  %443 = load i64, i64* %PC.i570
  %444 = add i64 %443, 4
  store i64 %444, i64* %PC.i570
  %445 = inttoptr i64 %442 to i64*
  %446 = load i64, i64* %445
  store i64 %446, i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_401c7e, %struct.Memory** %MEMORY
  %loadMem_401c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 33
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %449 to i64*
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 5
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 15
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %455 to i64*
  %456 = load i64, i64* %RBP.i569
  %457 = sub i64 %456, 44
  %458 = load i64, i64* %PC.i567
  %459 = add i64 %458, 4
  store i64 %459, i64* %PC.i567
  %460 = inttoptr i64 %457 to i32*
  %461 = load i32, i32* %460
  %462 = sext i32 %461 to i64
  store i64 %462, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_401c82, %struct.Memory** %MEMORY
  %loadMem_401c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 5
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RCX.i565 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 7
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RDX.i566 = bitcast %union.anon* %474 to i64*
  %475 = load i64, i64* %RAX.i564
  %476 = load i64, i64* %RCX.i565
  %477 = mul i64 %476, 4
  %478 = add i64 %477, %475
  %479 = load i64, i64* %PC.i563
  %480 = add i64 %479, 3
  store i64 %480, i64* %PC.i563
  %481 = inttoptr i64 %478 to i32*
  %482 = load i32, i32* %481
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RDX.i566, align 8
  store %struct.Memory* %loadMem_401c86, %struct.Memory** %MEMORY
  %loadMem_401c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 33
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %486 to i64*
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 7
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %EDX.i561 = bitcast %union.anon* %489 to i32*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 15
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %492 to i64*
  %493 = load i64, i64* %RBP.i562
  %494 = sub i64 %493, 52
  %495 = load i32, i32* %EDX.i561
  %496 = zext i32 %495 to i64
  %497 = load i64, i64* %PC.i560
  %498 = add i64 %497, 3
  store i64 %498, i64* %PC.i560
  %499 = inttoptr i64 %494 to i32*
  store i32 %495, i32* %499
  store %struct.Memory* %loadMem_401c89, %struct.Memory** %MEMORY
  %loadMem_401c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 15
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %RBP.i559
  %510 = sub i64 %509, 32
  %511 = load i64, i64* %PC.i557
  %512 = add i64 %511, 4
  store i64 %512, i64* %PC.i557
  %513 = inttoptr i64 %510 to i64*
  %514 = load i64, i64* %513
  store i64 %514, i64* %RAX.i558, align 8
  store %struct.Memory* %loadMem_401c8c, %struct.Memory** %MEMORY
  %loadMem_401c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 5
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RCX.i555 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 15
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %RBP.i556
  %525 = sub i64 %524, 52
  %526 = load i64, i64* %PC.i554
  %527 = add i64 %526, 4
  store i64 %527, i64* %PC.i554
  %528 = inttoptr i64 %525 to i32*
  %529 = load i32, i32* %528
  %530 = sext i32 %529 to i64
  store i64 %530, i64* %RCX.i555, align 8
  store %struct.Memory* %loadMem_401c90, %struct.Memory** %MEMORY
  %loadMem_401c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %536 to i64*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 5
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %541 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %540, i64 0, i64 0
  %YMM0.i553 = bitcast %union.VectorReg* %541 to %"class.std::bitset"*
  %542 = bitcast %"class.std::bitset"* %YMM0.i553 to i8*
  %543 = load i64, i64* %RAX.i551
  %544 = load i64, i64* %RCX.i552
  %545 = mul i64 %544, 4
  %546 = add i64 %545, %543
  %547 = load i64, i64* %PC.i550
  %548 = add i64 %547, 5
  store i64 %548, i64* %PC.i550
  %549 = inttoptr i64 %546 to float*
  %550 = load float, float* %549
  %551 = bitcast i8* %542 to float*
  store float %550, float* %551, align 1
  %552 = getelementptr inbounds i8, i8* %542, i64 4
  %553 = bitcast i8* %552 to float*
  store float 0.000000e+00, float* %553, align 1
  %554 = getelementptr inbounds i8, i8* %542, i64 8
  %555 = bitcast i8* %554 to float*
  store float 0.000000e+00, float* %555, align 1
  %556 = getelementptr inbounds i8, i8* %542, i64 12
  %557 = bitcast i8* %556 to float*
  store float 0.000000e+00, float* %557, align 1
  store %struct.Memory* %loadMem_401c94, %struct.Memory** %MEMORY
  %loadMem_401c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 15
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %565 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %564, i64 0, i64 0
  %XMM0.i549 = bitcast %union.VectorReg* %565 to %union.vec128_t*
  %566 = load i64, i64* %RBP.i548
  %567 = sub i64 %566, 40
  %568 = bitcast %union.vec128_t* %XMM0.i549 to i8*
  %569 = load i64, i64* %PC.i547
  %570 = add i64 %569, 5
  store i64 %570, i64* %PC.i547
  %571 = bitcast i8* %568 to <2 x float>*
  %572 = load <2 x float>, <2 x float>* %571, align 1
  %573 = extractelement <2 x float> %572, i32 0
  %574 = inttoptr i64 %567 to float*
  store float %573, float* %574
  store %struct.Memory* %loadMem_401c99, %struct.Memory** %MEMORY
  %loadMem_401c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 33
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 7
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 15
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %583 to i64*
  %584 = load i64, i64* %RBP.i546
  %585 = sub i64 %584, 52
  %586 = load i64, i64* %PC.i544
  %587 = add i64 %586, 3
  store i64 %587, i64* %PC.i544
  %588 = inttoptr i64 %585 to i32*
  %589 = load i32, i32* %588
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RDX.i545, align 8
  store %struct.Memory* %loadMem_401c9e, %struct.Memory** %MEMORY
  %loadMem_401ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 7
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %EDX.i542 = bitcast %union.anon* %596 to i32*
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 15
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %599 to i64*
  %600 = load i32, i32* %EDX.i542
  %601 = zext i32 %600 to i64
  %602 = load i64, i64* %RBP.i543
  %603 = sub i64 %602, 44
  %604 = load i64, i64* %PC.i541
  %605 = add i64 %604, 3
  store i64 %605, i64* %PC.i541
  %606 = inttoptr i64 %603 to i32*
  %607 = load i32, i32* %606
  %608 = sub i32 %600, %607
  %609 = icmp ult i32 %600, %607
  %610 = zext i1 %609 to i8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %610, i8* %611, align 1
  %612 = and i32 %608, 255
  %613 = call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %616, i8* %617, align 1
  %618 = xor i32 %607, %600
  %619 = xor i32 %618, %608
  %620 = lshr i32 %619, 4
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %622, i8* %623, align 1
  %624 = icmp eq i32 %608, 0
  %625 = zext i1 %624 to i8
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %625, i8* %626, align 1
  %627 = lshr i32 %608, 31
  %628 = trunc i32 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %628, i8* %629, align 1
  %630 = lshr i32 %600, 31
  %631 = lshr i32 %607, 31
  %632 = xor i32 %631, %630
  %633 = xor i32 %627, %630
  %634 = add i32 %633, %632
  %635 = icmp eq i32 %634, 2
  %636 = zext i1 %635 to i8
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %636, i8* %637, align 1
  store %struct.Memory* %loadMem_401ca1, %struct.Memory** %MEMORY
  %loadMem_401ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 33
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %640 to i64*
  %641 = load i64, i64* %PC.i540
  %642 = add i64 %641, 50
  %643 = load i64, i64* %PC.i540
  %644 = add i64 %643, 6
  %645 = load i64, i64* %PC.i540
  %646 = add i64 %645, 6
  store i64 %646, i64* %PC.i540
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %648 = load i8, i8* %647, align 1
  store i8 %648, i8* %BRANCH_TAKEN, align 1
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %650 = icmp ne i8 %648, 0
  %651 = select i1 %650, i64 %642, i64 %644
  store i64 %651, i64* %649, align 8
  store %struct.Memory* %loadMem_401ca4, %struct.Memory** %MEMORY
  %loadBr_401ca4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401ca4 = icmp eq i8 %loadBr_401ca4, 1
  br i1 %cmpBr_401ca4, label %block_.L_401cd6, label %block_401caa

block_401caa:                                     ; preds = %block_401c7e
  %loadMem_401caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 15
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %660 to i64*
  %661 = load i64, i64* %RBP.i539
  %662 = sub i64 %661, 32
  %663 = load i64, i64* %PC.i537
  %664 = add i64 %663, 4
  store i64 %664, i64* %PC.i537
  %665 = inttoptr i64 %662 to i64*
  %666 = load i64, i64* %665
  store i64 %666, i64* %RAX.i538, align 8
  store %struct.Memory* %loadMem_401caa, %struct.Memory** %MEMORY
  %loadMem_401cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 5
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 15
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %RBP.i536
  %677 = sub i64 %676, 44
  %678 = load i64, i64* %PC.i534
  %679 = add i64 %678, 4
  store i64 %679, i64* %PC.i534
  %680 = inttoptr i64 %677 to i32*
  %681 = load i32, i32* %680
  %682 = sext i32 %681 to i64
  store i64 %682, i64* %RCX.i535, align 8
  store %struct.Memory* %loadMem_401cae, %struct.Memory** %MEMORY
  %loadMem_401cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 1
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 5
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %693 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %692, i64 0, i64 0
  %YMM0.i533 = bitcast %union.VectorReg* %693 to %"class.std::bitset"*
  %694 = bitcast %"class.std::bitset"* %YMM0.i533 to i8*
  %695 = load i64, i64* %RAX.i531
  %696 = load i64, i64* %RCX.i532
  %697 = mul i64 %696, 4
  %698 = add i64 %697, %695
  %699 = load i64, i64* %PC.i530
  %700 = add i64 %699, 5
  store i64 %700, i64* %PC.i530
  %701 = inttoptr i64 %698 to float*
  %702 = load float, float* %701
  %703 = bitcast i8* %694 to float*
  store float %702, float* %703, align 1
  %704 = getelementptr inbounds i8, i8* %694, i64 4
  %705 = bitcast i8* %704 to float*
  store float 0.000000e+00, float* %705, align 1
  %706 = getelementptr inbounds i8, i8* %694, i64 8
  %707 = bitcast i8* %706 to float*
  store float 0.000000e+00, float* %707, align 1
  %708 = getelementptr inbounds i8, i8* %694, i64 12
  %709 = bitcast i8* %708 to float*
  store float 0.000000e+00, float* %709, align 1
  store %struct.Memory* %loadMem_401cb2, %struct.Memory** %MEMORY
  %loadMem_401cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 1
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 15
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %718 to i64*
  %719 = load i64, i64* %RBP.i529
  %720 = sub i64 %719, 32
  %721 = load i64, i64* %PC.i527
  %722 = add i64 %721, 4
  store i64 %722, i64* %PC.i527
  %723 = inttoptr i64 %720 to i64*
  %724 = load i64, i64* %723
  store i64 %724, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_401cb7, %struct.Memory** %MEMORY
  %loadMem_401cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 33
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 5
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 15
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %733 to i64*
  %734 = load i64, i64* %RBP.i526
  %735 = sub i64 %734, 52
  %736 = load i64, i64* %PC.i524
  %737 = add i64 %736, 4
  store i64 %737, i64* %PC.i524
  %738 = inttoptr i64 %735 to i32*
  %739 = load i32, i32* %738
  %740 = sext i32 %739 to i64
  store i64 %740, i64* %RCX.i525, align 8
  store %struct.Memory* %loadMem_401cbb, %struct.Memory** %MEMORY
  %loadMem_401cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 1
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 5
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %751 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %750, i64 0, i64 0
  %XMM0.i523 = bitcast %union.VectorReg* %751 to %union.vec128_t*
  %752 = load i64, i64* %RAX.i521
  %753 = load i64, i64* %RCX.i522
  %754 = mul i64 %753, 4
  %755 = add i64 %754, %752
  %756 = bitcast %union.vec128_t* %XMM0.i523 to i8*
  %757 = load i64, i64* %PC.i520
  %758 = add i64 %757, 5
  store i64 %758, i64* %PC.i520
  %759 = bitcast i8* %756 to <2 x float>*
  %760 = load <2 x float>, <2 x float>* %759, align 1
  %761 = extractelement <2 x float> %760, i32 0
  %762 = inttoptr i64 %755 to float*
  store float %761, float* %762
  store %struct.Memory* %loadMem_401cbf, %struct.Memory** %MEMORY
  %loadMem_401cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %765 to i64*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 15
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %769, i64 0, i64 0
  %YMM0.i519 = bitcast %union.VectorReg* %770 to %"class.std::bitset"*
  %771 = bitcast %"class.std::bitset"* %YMM0.i519 to i8*
  %772 = load i64, i64* %RBP.i518
  %773 = sub i64 %772, 40
  %774 = load i64, i64* %PC.i517
  %775 = add i64 %774, 5
  store i64 %775, i64* %PC.i517
  %776 = inttoptr i64 %773 to float*
  %777 = load float, float* %776
  %778 = bitcast i8* %771 to float*
  store float %777, float* %778, align 1
  %779 = getelementptr inbounds i8, i8* %771, i64 4
  %780 = bitcast i8* %779 to float*
  store float 0.000000e+00, float* %780, align 1
  %781 = getelementptr inbounds i8, i8* %771, i64 8
  %782 = bitcast i8* %781 to float*
  store float 0.000000e+00, float* %782, align 1
  %783 = getelementptr inbounds i8, i8* %771, i64 12
  %784 = bitcast i8* %783 to float*
  store float 0.000000e+00, float* %784, align 1
  store %struct.Memory* %loadMem_401cc4, %struct.Memory** %MEMORY
  %loadMem_401cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 1
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 15
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %RBP.i516
  %795 = sub i64 %794, 32
  %796 = load i64, i64* %PC.i514
  %797 = add i64 %796, 4
  store i64 %797, i64* %PC.i514
  %798 = inttoptr i64 %795 to i64*
  %799 = load i64, i64* %798
  store i64 %799, i64* %RAX.i515, align 8
  store %struct.Memory* %loadMem_401cc9, %struct.Memory** %MEMORY
  %loadMem_401ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 5
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 15
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %RBP.i513
  %810 = sub i64 %809, 44
  %811 = load i64, i64* %PC.i511
  %812 = add i64 %811, 4
  store i64 %812, i64* %PC.i511
  %813 = inttoptr i64 %810 to i32*
  %814 = load i32, i32* %813
  %815 = sext i32 %814 to i64
  store i64 %815, i64* %RCX.i512, align 8
  store %struct.Memory* %loadMem_401ccd, %struct.Memory** %MEMORY
  %loadMem_401cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 1
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 5
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %826 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %825, i64 0, i64 0
  %XMM0.i510 = bitcast %union.VectorReg* %826 to %union.vec128_t*
  %827 = load i64, i64* %RAX.i508
  %828 = load i64, i64* %RCX.i509
  %829 = mul i64 %828, 4
  %830 = add i64 %829, %827
  %831 = bitcast %union.vec128_t* %XMM0.i510 to i8*
  %832 = load i64, i64* %PC.i507
  %833 = add i64 %832, 5
  store i64 %833, i64* %PC.i507
  %834 = bitcast i8* %831 to <2 x float>*
  %835 = load <2 x float>, <2 x float>* %834, align 1
  %836 = extractelement <2 x float> %835, i32 0
  %837 = inttoptr i64 %830 to float*
  store float %836, float* %837
  store %struct.Memory* %loadMem_401cd1, %struct.Memory** %MEMORY
  br label %block_.L_401cd6

block_.L_401cd6:                                  ; preds = %block_401caa, %block_401c7e
  %loadMem_401cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 33
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 1
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RAX.i506 = bitcast %union.anon* %843 to i64*
  %844 = load i64, i64* %PC.i505
  %845 = add i64 %844, 5
  store i64 %845, i64* %PC.i505
  store i64 1, i64* %RAX.i506, align 8
  store %struct.Memory* %loadMem_401cd6, %struct.Memory** %MEMORY
  %loadMem_401cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 5
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 15
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %854 to i64*
  %855 = load i64, i64* %RBP.i504
  %856 = sub i64 %855, 16
  %857 = load i64, i64* %PC.i502
  %858 = add i64 %857, 3
  store i64 %858, i64* %PC.i502
  %859 = inttoptr i64 %856 to i32*
  %860 = load i32, i32* %859
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RCX.i503, align 8
  store %struct.Memory* %loadMem_401cdb, %struct.Memory** %MEMORY
  %loadMem_401cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 33
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 7
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %RDX.i500 = bitcast %union.anon* %867 to i64*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 15
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %870 to i64*
  %871 = load i64, i64* %RBP.i501
  %872 = sub i64 %871, 44
  %873 = load i64, i64* %PC.i499
  %874 = add i64 %873, 3
  store i64 %874, i64* %PC.i499
  %875 = inttoptr i64 %872 to i32*
  %876 = load i32, i32* %875
  %877 = zext i32 %876 to i64
  store i64 %877, i64* %RDX.i500, align 8
  store %struct.Memory* %loadMem_401cde, %struct.Memory** %MEMORY
  %loadMem_401ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 7
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RDX.i498 = bitcast %union.anon* %883 to i64*
  %884 = load i64, i64* %RDX.i498
  %885 = load i64, i64* %PC.i497
  %886 = add i64 %885, 3
  store i64 %886, i64* %PC.i497
  %887 = trunc i64 %884 to i32
  %888 = add i32 1, %887
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RDX.i498, align 8
  %890 = icmp ult i32 %888, %887
  %891 = icmp ult i32 %888, 1
  %892 = or i1 %890, %891
  %893 = zext i1 %892 to i8
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %893, i8* %894, align 1
  %895 = and i32 %888, 255
  %896 = call i32 @llvm.ctpop.i32(i32 %895)
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = xor i8 %898, 1
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %899, i8* %900, align 1
  %901 = xor i64 1, %884
  %902 = trunc i64 %901 to i32
  %903 = xor i32 %902, %888
  %904 = lshr i32 %903, 4
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %906, i8* %907, align 1
  %908 = icmp eq i32 %888, 0
  %909 = zext i1 %908 to i8
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %909, i8* %910, align 1
  %911 = lshr i32 %888, 31
  %912 = trunc i32 %911 to i8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %912, i8* %913, align 1
  %914 = lshr i32 %887, 31
  %915 = xor i32 %911, %914
  %916 = add i32 %915, %911
  %917 = icmp eq i32 %916, 2
  %918 = zext i1 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %918, i8* %919, align 1
  store %struct.Memory* %loadMem_401ce1, %struct.Memory** %MEMORY
  %loadMem_401ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 7
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %EDX.i495 = bitcast %union.anon* %925 to i32*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 5
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %RCX.i496
  %930 = load i32, i32* %EDX.i495
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %PC.i494
  %933 = add i64 %932, 2
  store i64 %933, i64* %PC.i494
  %934 = trunc i64 %929 to i32
  %935 = sub i32 %934, %930
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RCX.i496, align 8
  %937 = icmp ult i32 %934, %930
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %938, i8* %939, align 1
  %940 = and i32 %935, 255
  %941 = call i32 @llvm.ctpop.i32(i32 %940)
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = xor i8 %943, 1
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %944, i8* %945, align 1
  %946 = xor i64 %931, %929
  %947 = trunc i64 %946 to i32
  %948 = xor i32 %947, %935
  %949 = lshr i32 %948, 4
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %951, i8* %952, align 1
  %953 = icmp eq i32 %935, 0
  %954 = zext i1 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %954, i8* %955, align 1
  %956 = lshr i32 %935, 31
  %957 = trunc i32 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %957, i8* %958, align 1
  %959 = lshr i32 %934, 31
  %960 = lshr i32 %930, 31
  %961 = xor i32 %960, %959
  %962 = xor i32 %956, %959
  %963 = add i32 %962, %961
  %964 = icmp eq i32 %963, 2
  %965 = zext i1 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %965, i8* %966, align 1
  store %struct.Memory* %loadMem_401ce4, %struct.Memory** %MEMORY
  %loadMem_401ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 15
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %974 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %973, i64 0, i64 0
  %YMM0.i493 = bitcast %union.VectorReg* %974 to %"class.std::bitset"*
  %975 = bitcast %"class.std::bitset"* %YMM0.i493 to i8*
  %976 = load i64, i64* %RBP.i492
  %977 = sub i64 %976, 40
  %978 = load i64, i64* %PC.i491
  %979 = add i64 %978, 5
  store i64 %979, i64* %PC.i491
  %980 = inttoptr i64 %977 to float*
  %981 = load float, float* %980
  %982 = bitcast i8* %975 to float*
  store float %981, float* %982, align 1
  %983 = getelementptr inbounds i8, i8* %975, i64 4
  %984 = bitcast i8* %983 to float*
  store float 0.000000e+00, float* %984, align 1
  %985 = getelementptr inbounds i8, i8* %975, i64 8
  %986 = bitcast i8* %985 to float*
  store float 0.000000e+00, float* %986, align 1
  %987 = getelementptr inbounds i8, i8* %975, i64 12
  %988 = bitcast i8* %987 to float*
  store float 0.000000e+00, float* %988, align 1
  store %struct.Memory* %loadMem_401ce6, %struct.Memory** %MEMORY
  %loadMem_401ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 33
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 9
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RSI.i489 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 15
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %RBP.i490
  %999 = sub i64 %998, 8
  %1000 = load i64, i64* %PC.i488
  %1001 = add i64 %1000, 4
  store i64 %1001, i64* %PC.i488
  %1002 = inttoptr i64 %999 to i64*
  %1003 = load i64, i64* %1002
  store i64 %1003, i64* %RSI.i489, align 8
  store %struct.Memory* %loadMem_401ceb, %struct.Memory** %MEMORY
  %loadMem_401cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 7
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RDX.i486 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 15
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %RBP.i487
  %1014 = sub i64 %1013, 12
  %1015 = load i64, i64* %PC.i485
  %1016 = add i64 %1015, 3
  store i64 %1016, i64* %PC.i485
  %1017 = inttoptr i64 %1014 to i32*
  %1018 = load i32, i32* %1017
  %1019 = zext i32 %1018 to i64
  store i64 %1019, i64* %RDX.i486, align 8
  store %struct.Memory* %loadMem_401cef, %struct.Memory** %MEMORY
  %loadMem_401cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 7
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %RDX.i483 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 15
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %1028 to i64*
  %1029 = load i64, i64* %RDX.i483
  %1030 = load i64, i64* %RBP.i484
  %1031 = sub i64 %1030, 44
  %1032 = load i64, i64* %PC.i482
  %1033 = add i64 %1032, 4
  store i64 %1033, i64* %PC.i482
  %1034 = inttoptr i64 %1031 to i32*
  %1035 = load i32, i32* %1034
  %1036 = shl i64 %1029, 32
  %1037 = ashr exact i64 %1036, 32
  %1038 = sext i32 %1035 to i64
  %1039 = mul i64 %1038, %1037
  %1040 = trunc i64 %1039 to i32
  %1041 = and i64 %1039, 4294967295
  store i64 %1041, i64* %RDX.i483, align 8
  %1042 = shl i64 %1039, 32
  %1043 = ashr exact i64 %1042, 32
  %1044 = icmp ne i64 %1043, %1039
  %1045 = zext i1 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1045, i8* %1046, align 1
  %1047 = and i32 %1040, 255
  %1048 = call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1051, i8* %1052, align 1
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1053, align 1
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1054, align 1
  %1055 = lshr i32 %1040, 31
  %1056 = trunc i32 %1055 to i8
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1056, i8* %1057, align 1
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1045, i8* %1058, align 1
  store %struct.Memory* %loadMem_401cf2, %struct.Memory** %MEMORY
  %loadMem_401cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 7
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RDX.i480 = bitcast %union.anon* %1064 to i64*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 15
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %1067 to i64*
  %1068 = load i64, i64* %RDX.i480
  %1069 = load i64, i64* %RBP.i481
  %1070 = sub i64 %1069, 44
  %1071 = load i64, i64* %PC.i479
  %1072 = add i64 %1071, 3
  store i64 %1072, i64* %PC.i479
  %1073 = trunc i64 %1068 to i32
  %1074 = inttoptr i64 %1070 to i32*
  %1075 = load i32, i32* %1074
  %1076 = add i32 %1075, %1073
  %1077 = zext i32 %1076 to i64
  store i64 %1077, i64* %RDX.i480, align 8
  %1078 = icmp ult i32 %1076, %1073
  %1079 = icmp ult i32 %1076, %1075
  %1080 = or i1 %1078, %1079
  %1081 = zext i1 %1080 to i8
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1081, i8* %1082, align 1
  %1083 = and i32 %1076, 255
  %1084 = call i32 @llvm.ctpop.i32(i32 %1083)
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = xor i8 %1086, 1
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1087, i8* %1088, align 1
  %1089 = xor i32 %1075, %1073
  %1090 = xor i32 %1089, %1076
  %1091 = lshr i32 %1090, 4
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1093, i8* %1094, align 1
  %1095 = icmp eq i32 %1076, 0
  %1096 = zext i1 %1095 to i8
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1096, i8* %1097, align 1
  %1098 = lshr i32 %1076, 31
  %1099 = trunc i32 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1099, i8* %1100, align 1
  %1101 = lshr i32 %1073, 31
  %1102 = lshr i32 %1075, 31
  %1103 = xor i32 %1098, %1101
  %1104 = xor i32 %1098, %1102
  %1105 = add i32 %1103, %1104
  %1106 = icmp eq i32 %1105, 2
  %1107 = zext i1 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1107, i8* %1108, align 1
  store %struct.Memory* %loadMem_401cf6, %struct.Memory** %MEMORY
  %loadMem_401cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 33
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %1111 to i64*
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 7
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %RDX.i478 = bitcast %union.anon* %1114 to i64*
  %1115 = load i64, i64* %RDX.i478
  %1116 = load i64, i64* %PC.i477
  %1117 = add i64 %1116, 3
  store i64 %1117, i64* %PC.i477
  %1118 = trunc i64 %1115 to i32
  %1119 = add i32 1, %1118
  %1120 = zext i32 %1119 to i64
  store i64 %1120, i64* %RDX.i478, align 8
  %1121 = icmp ult i32 %1119, %1118
  %1122 = icmp ult i32 %1119, 1
  %1123 = or i1 %1121, %1122
  %1124 = zext i1 %1123 to i8
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1124, i8* %1125, align 1
  %1126 = and i32 %1119, 255
  %1127 = call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1130, i8* %1131, align 1
  %1132 = xor i64 1, %1115
  %1133 = trunc i64 %1132 to i32
  %1134 = xor i32 %1133, %1119
  %1135 = lshr i32 %1134, 4
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1137, i8* %1138, align 1
  %1139 = icmp eq i32 %1119, 0
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1140, i8* %1141, align 1
  %1142 = lshr i32 %1119, 31
  %1143 = trunc i32 %1142 to i8
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1143, i8* %1144, align 1
  %1145 = lshr i32 %1118, 31
  %1146 = xor i32 %1142, %1145
  %1147 = add i32 %1146, %1142
  %1148 = icmp eq i32 %1147, 2
  %1149 = zext i1 %1148 to i8
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1149, i8* %1150, align 1
  store %struct.Memory* %loadMem_401cf9, %struct.Memory** %MEMORY
  %loadMem_401cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 7
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %EDX.i475 = bitcast %union.anon* %1156 to i32*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 11
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RDI.i476 = bitcast %union.anon* %1159 to i64*
  %1160 = load i32, i32* %EDX.i475
  %1161 = zext i32 %1160 to i64
  %1162 = load i64, i64* %PC.i474
  %1163 = add i64 %1162, 3
  store i64 %1163, i64* %PC.i474
  %1164 = shl i64 %1161, 32
  %1165 = ashr exact i64 %1164, 32
  store i64 %1165, i64* %RDI.i476, align 8
  store %struct.Memory* %loadMem_401cfc, %struct.Memory** %MEMORY
  %loadMem_401cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 11
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RDI.i473 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RDI.i473
  %1173 = load i64, i64* %PC.i472
  %1174 = add i64 %1173, 4
  store i64 %1174, i64* %PC.i472
  %1175 = shl i64 %1172, 1
  %1176 = icmp slt i64 %1175, 0
  %1177 = shl i64 %1175, 1
  store i64 %1177, i64* %RDI.i473, align 8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1179 = zext i1 %1176 to i8
  store i8 %1179, i8* %1178, align 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1181 = trunc i64 %1177 to i32
  %1182 = and i32 %1181, 254
  %1183 = call i32 @llvm.ctpop.i32(i32 %1182)
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  store i8 %1186, i8* %1180, align 1
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1187, align 1
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1189 = icmp eq i64 %1177, 0
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %1188, align 1
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1192 = lshr i64 %1177, 63
  %1193 = trunc i64 %1192 to i8
  store i8 %1193, i8* %1191, align 1
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1194, align 1
  store %struct.Memory* %loadMem_401cff, %struct.Memory** %MEMORY
  %loadMem_401d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 33
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1197 to i64*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 9
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %RSI.i470 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 11
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RDI.i471 = bitcast %union.anon* %1203 to i64*
  %1204 = load i64, i64* %RSI.i470
  %1205 = load i64, i64* %RDI.i471
  %1206 = load i64, i64* %PC.i469
  %1207 = add i64 %1206, 3
  store i64 %1207, i64* %PC.i469
  %1208 = add i64 %1205, %1204
  store i64 %1208, i64* %RSI.i470, align 8
  %1209 = icmp ult i64 %1208, %1204
  %1210 = icmp ult i64 %1208, %1205
  %1211 = or i1 %1209, %1210
  %1212 = zext i1 %1211 to i8
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1212, i8* %1213, align 1
  %1214 = trunc i64 %1208 to i32
  %1215 = and i32 %1214, 255
  %1216 = call i32 @llvm.ctpop.i32(i32 %1215)
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1219, i8* %1220, align 1
  %1221 = xor i64 %1205, %1204
  %1222 = xor i64 %1221, %1208
  %1223 = lshr i64 %1222, 4
  %1224 = trunc i64 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1225, i8* %1226, align 1
  %1227 = icmp eq i64 %1208, 0
  %1228 = zext i1 %1227 to i8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1228, i8* %1229, align 1
  %1230 = lshr i64 %1208, 63
  %1231 = trunc i64 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1231, i8* %1232, align 1
  %1233 = lshr i64 %1204, 63
  %1234 = lshr i64 %1205, 63
  %1235 = xor i64 %1230, %1233
  %1236 = xor i64 %1230, %1234
  %1237 = add i64 %1235, %1236
  %1238 = icmp eq i64 %1237, 2
  %1239 = zext i1 %1238 to i8
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1239, i8* %1240, align 1
  store %struct.Memory* %loadMem_401d03, %struct.Memory** %MEMORY
  %loadMem_401d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 33
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 11
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %RDI.i467 = bitcast %union.anon* %1246 to i64*
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 15
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %1249 to i64*
  %1250 = load i64, i64* %RBP.i468
  %1251 = sub i64 %1250, 32
  %1252 = load i64, i64* %PC.i466
  %1253 = add i64 %1252, 4
  store i64 %1253, i64* %PC.i466
  %1254 = inttoptr i64 %1251 to i64*
  %1255 = load i64, i64* %1254
  store i64 %1255, i64* %RDI.i467, align 8
  store %struct.Memory* %loadMem_401d06, %struct.Memory** %MEMORY
  %loadMem_401d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 7
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 15
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %1264 to i64*
  %1265 = load i64, i64* %RBP.i465
  %1266 = sub i64 %1265, 44
  %1267 = load i64, i64* %PC.i463
  %1268 = add i64 %1267, 3
  store i64 %1268, i64* %PC.i463
  %1269 = inttoptr i64 %1266 to i32*
  %1270 = load i32, i32* %1269
  %1271 = zext i32 %1270 to i64
  store i64 %1271, i64* %RDX.i464, align 8
  store %struct.Memory* %loadMem_401d0a, %struct.Memory** %MEMORY
  %loadMem_401d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 7
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %RDX.i462 = bitcast %union.anon* %1277 to i64*
  %1278 = load i64, i64* %RDX.i462
  %1279 = load i64, i64* %PC.i461
  %1280 = add i64 %1279, 3
  store i64 %1280, i64* %PC.i461
  %1281 = trunc i64 %1278 to i32
  %1282 = add i32 1, %1281
  %1283 = zext i32 %1282 to i64
  store i64 %1283, i64* %RDX.i462, align 8
  %1284 = icmp ult i32 %1282, %1281
  %1285 = icmp ult i32 %1282, 1
  %1286 = or i1 %1284, %1285
  %1287 = zext i1 %1286 to i8
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1287, i8* %1288, align 1
  %1289 = and i32 %1282, 255
  %1290 = call i32 @llvm.ctpop.i32(i32 %1289)
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  %1293 = xor i8 %1292, 1
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1293, i8* %1294, align 1
  %1295 = xor i64 1, %1278
  %1296 = trunc i64 %1295 to i32
  %1297 = xor i32 %1296, %1282
  %1298 = lshr i32 %1297, 4
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1300, i8* %1301, align 1
  %1302 = icmp eq i32 %1282, 0
  %1303 = zext i1 %1302 to i8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1303, i8* %1304, align 1
  %1305 = lshr i32 %1282, 31
  %1306 = trunc i32 %1305 to i8
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1306, i8* %1307, align 1
  %1308 = lshr i32 %1281, 31
  %1309 = xor i32 %1305, %1308
  %1310 = add i32 %1309, %1305
  %1311 = icmp eq i32 %1310, 2
  %1312 = zext i1 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1312, i8* %1313, align 1
  store %struct.Memory* %loadMem_401d0d, %struct.Memory** %MEMORY
  %loadMem_401d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 7
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %EDX.i459 = bitcast %union.anon* %1319 to i32*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 17
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %R8.i460 = bitcast %union.anon* %1322 to i64*
  %1323 = load i32, i32* %EDX.i459
  %1324 = zext i32 %1323 to i64
  %1325 = load i64, i64* %PC.i458
  %1326 = add i64 %1325, 3
  store i64 %1326, i64* %PC.i458
  %1327 = shl i64 %1324, 32
  %1328 = ashr exact i64 %1327, 32
  store i64 %1328, i64* %R8.i460, align 8
  store %struct.Memory* %loadMem_401d10, %struct.Memory** %MEMORY
  %loadMem_401d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 17
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %R8.i457 = bitcast %union.anon* %1334 to i64*
  %1335 = load i64, i64* %R8.i457
  %1336 = load i64, i64* %PC.i456
  %1337 = add i64 %1336, 4
  store i64 %1337, i64* %PC.i456
  %1338 = shl i64 %1335, 1
  %1339 = icmp slt i64 %1338, 0
  %1340 = shl i64 %1338, 1
  store i64 %1340, i64* %R8.i457, align 8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1342 = zext i1 %1339 to i8
  store i8 %1342, i8* %1341, align 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1344 = trunc i64 %1340 to i32
  %1345 = and i32 %1344, 254
  %1346 = call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  store i8 %1349, i8* %1343, align 1
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1350, align 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1352 = icmp eq i64 %1340, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %1351, align 1
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1355 = lshr i64 %1340, 63
  %1356 = trunc i64 %1355 to i8
  store i8 %1356, i8* %1354, align 1
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1357, align 1
  store %struct.Memory* %loadMem_401d13, %struct.Memory** %MEMORY
  %loadMem_401d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 33
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1360 to i64*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 11
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %RDI.i454 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 17
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %R8.i455 = bitcast %union.anon* %1366 to i64*
  %1367 = load i64, i64* %RDI.i454
  %1368 = load i64, i64* %R8.i455
  %1369 = load i64, i64* %PC.i453
  %1370 = add i64 %1369, 3
  store i64 %1370, i64* %PC.i453
  %1371 = add i64 %1368, %1367
  store i64 %1371, i64* %RDI.i454, align 8
  %1372 = icmp ult i64 %1371, %1367
  %1373 = icmp ult i64 %1371, %1368
  %1374 = or i1 %1372, %1373
  %1375 = zext i1 %1374 to i8
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1375, i8* %1376, align 1
  %1377 = trunc i64 %1371 to i32
  %1378 = and i32 %1377, 255
  %1379 = call i32 @llvm.ctpop.i32(i32 %1378)
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = xor i8 %1381, 1
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1382, i8* %1383, align 1
  %1384 = xor i64 %1368, %1367
  %1385 = xor i64 %1384, %1371
  %1386 = lshr i64 %1385, 4
  %1387 = trunc i64 %1386 to i8
  %1388 = and i8 %1387, 1
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1388, i8* %1389, align 1
  %1390 = icmp eq i64 %1371, 0
  %1391 = zext i1 %1390 to i8
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1391, i8* %1392, align 1
  %1393 = lshr i64 %1371, 63
  %1394 = trunc i64 %1393 to i8
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1394, i8* %1395, align 1
  %1396 = lshr i64 %1367, 63
  %1397 = lshr i64 %1368, 63
  %1398 = xor i64 %1393, %1396
  %1399 = xor i64 %1393, %1397
  %1400 = add i64 %1398, %1399
  %1401 = icmp eq i64 %1400, 2
  %1402 = zext i1 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1402, i8* %1403, align 1
  store %struct.Memory* %loadMem_401d17, %struct.Memory** %MEMORY
  %loadMem_401d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 11
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RDI.i451 = bitcast %union.anon* %1409 to i64*
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 15
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %1412 to i64*
  %1413 = load i64, i64* %RBP.i452
  %1414 = sub i64 %1413, 64
  %1415 = load i64, i64* %RDI.i451
  %1416 = load i64, i64* %PC.i450
  %1417 = add i64 %1416, 4
  store i64 %1417, i64* %PC.i450
  %1418 = inttoptr i64 %1414 to i64*
  store i64 %1415, i64* %1418
  store %struct.Memory* %loadMem_401d1a, %struct.Memory** %MEMORY
  %loadMem_401d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1421 to i64*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 5
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %ECX.i448 = bitcast %union.anon* %1424 to i32*
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 11
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %RDI.i449 = bitcast %union.anon* %1427 to i64*
  %1428 = load i32, i32* %ECX.i448
  %1429 = zext i32 %1428 to i64
  %1430 = load i64, i64* %PC.i447
  %1431 = add i64 %1430, 2
  store i64 %1431, i64* %PC.i447
  %1432 = and i64 %1429, 4294967295
  store i64 %1432, i64* %RDI.i449, align 8
  store %struct.Memory* %loadMem_401d1e, %struct.Memory** %MEMORY
  %loadMem_401d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 1
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %EAX.i445 = bitcast %union.anon* %1438 to i32*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 7
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %1441 to i64*
  %1442 = load i32, i32* %EAX.i445
  %1443 = zext i32 %1442 to i64
  %1444 = load i64, i64* %PC.i444
  %1445 = add i64 %1444, 2
  store i64 %1445, i64* %PC.i444
  %1446 = and i64 %1443, 4294967295
  store i64 %1446, i64* %RDX.i446, align 8
  store %struct.Memory* %loadMem_401d20, %struct.Memory** %MEMORY
  %loadMem_401d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 5
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RCX.i442 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 15
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %1455 to i64*
  %1456 = load i64, i64* %RBP.i443
  %1457 = sub i64 %1456, 64
  %1458 = load i64, i64* %PC.i441
  %1459 = add i64 %1458, 4
  store i64 %1459, i64* %PC.i441
  %1460 = inttoptr i64 %1457 to i64*
  %1461 = load i64, i64* %1460
  store i64 %1461, i64* %RCX.i442, align 8
  store %struct.Memory* %loadMem_401d22, %struct.Memory** %MEMORY
  %loadMem_401d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 33
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 1
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %EAX.i439 = bitcast %union.anon* %1467 to i32*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 17
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %R8D.i440 = bitcast %union.anon* %1470 to i32*
  %1471 = bitcast i32* %R8D.i440 to i64*
  %1472 = load i32, i32* %EAX.i439
  %1473 = zext i32 %1472 to i64
  %1474 = load i64, i64* %PC.i438
  %1475 = add i64 %1474, 3
  store i64 %1475, i64* %PC.i438
  %1476 = and i64 %1473, 4294967295
  store i64 %1476, i64* %1471, align 8
  store %struct.Memory* %loadMem_401d26, %struct.Memory** %MEMORY
  %loadMem1_401d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 33
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %PC.i437
  %1481 = add i64 %1480, 2887
  %1482 = load i64, i64* %PC.i437
  %1483 = add i64 %1482, 5
  %1484 = load i64, i64* %PC.i437
  %1485 = add i64 %1484, 5
  store i64 %1485, i64* %PC.i437
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1487 = load i64, i64* %1486, align 8
  %1488 = add i64 %1487, -8
  %1489 = inttoptr i64 %1488 to i64*
  store i64 %1483, i64* %1489
  store i64 %1488, i64* %1486, align 8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1481, i64* %1490, align 8
  store %struct.Memory* %loadMem1_401d29, %struct.Memory** %MEMORY
  %loadMem2_401d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401d29 = load i64, i64* %3
  %call2_401d29 = call %struct.Memory* @sub_402870.daxpy(%struct.State* %0, i64 %loadPC_401d29, %struct.Memory* %loadMem2_401d29)
  store %struct.Memory* %call2_401d29, %struct.Memory** %MEMORY
  %loadMem_401d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 1
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 15
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %RBP.i436
  %1501 = sub i64 %1500, 44
  %1502 = load i64, i64* %PC.i434
  %1503 = add i64 %1502, 3
  store i64 %1503, i64* %PC.i434
  %1504 = inttoptr i64 %1501 to i32*
  %1505 = load i32, i32* %1504
  %1506 = zext i32 %1505 to i64
  store i64 %1506, i64* %RAX.i435, align 8
  store %struct.Memory* %loadMem_401d2e, %struct.Memory** %MEMORY
  %loadMem_401d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 1
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %1512 to i64*
  %1513 = load i64, i64* %RAX.i433
  %1514 = load i64, i64* %PC.i432
  %1515 = add i64 %1514, 3
  store i64 %1515, i64* %PC.i432
  %1516 = trunc i64 %1513 to i32
  %1517 = add i32 1, %1516
  %1518 = zext i32 %1517 to i64
  store i64 %1518, i64* %RAX.i433, align 8
  %1519 = icmp ult i32 %1517, %1516
  %1520 = icmp ult i32 %1517, 1
  %1521 = or i1 %1519, %1520
  %1522 = zext i1 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1522, i8* %1523, align 1
  %1524 = and i32 %1517, 255
  %1525 = call i32 @llvm.ctpop.i32(i32 %1524)
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = xor i8 %1527, 1
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1528, i8* %1529, align 1
  %1530 = xor i64 1, %1513
  %1531 = trunc i64 %1530 to i32
  %1532 = xor i32 %1531, %1517
  %1533 = lshr i32 %1532, 4
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1535, i8* %1536, align 1
  %1537 = icmp eq i32 %1517, 0
  %1538 = zext i1 %1537 to i8
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1538, i8* %1539, align 1
  %1540 = lshr i32 %1517, 31
  %1541 = trunc i32 %1540 to i8
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1541, i8* %1542, align 1
  %1543 = lshr i32 %1516, 31
  %1544 = xor i32 %1540, %1543
  %1545 = add i32 %1544, %1540
  %1546 = icmp eq i32 %1545, 2
  %1547 = zext i1 %1546 to i8
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1547, i8* %1548, align 1
  store %struct.Memory* %loadMem_401d31, %struct.Memory** %MEMORY
  %loadMem_401d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 33
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1551 to i64*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 1
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %EAX.i430 = bitcast %union.anon* %1554 to i32*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 15
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %1557 to i64*
  %1558 = load i64, i64* %RBP.i431
  %1559 = sub i64 %1558, 44
  %1560 = load i32, i32* %EAX.i430
  %1561 = zext i32 %1560 to i64
  %1562 = load i64, i64* %PC.i429
  %1563 = add i64 %1562, 3
  store i64 %1563, i64* %PC.i429
  %1564 = inttoptr i64 %1559 to i32*
  store i32 %1560, i32* %1564
  store %struct.Memory* %loadMem_401d34, %struct.Memory** %MEMORY
  %loadMem_401d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 33
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %1567 to i64*
  %1568 = load i64, i64* %PC.i428
  %1569 = add i64 %1568, -197
  %1570 = load i64, i64* %PC.i428
  %1571 = add i64 %1570, 5
  store i64 %1571, i64* %PC.i428
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1569, i64* %1572, align 8
  store %struct.Memory* %loadMem_401d37, %struct.Memory** %MEMORY
  br label %block_.L_401c72

block_.L_401d3c:                                  ; preds = %block_.L_401c72
  %loadMem_401d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1575 to i64*
  %1576 = load i64, i64* %PC.i427
  %1577 = add i64 %1576, 5
  %1578 = load i64, i64* %PC.i427
  %1579 = add i64 %1578, 5
  store i64 %1579, i64* %PC.i427
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1577, i64* %1580, align 8
  store %struct.Memory* %loadMem_401d3c, %struct.Memory** %MEMORY
  br label %block_.L_401d41

block_.L_401d41:                                  ; preds = %block_.L_401d3c, %block_401c61
  %loadMem_401d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 33
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1583 to i64*
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 15
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %RBP.i426
  %1588 = sub i64 %1587, 48
  %1589 = load i64, i64* %PC.i425
  %1590 = add i64 %1589, 7
  store i64 %1590, i64* %PC.i425
  %1591 = inttoptr i64 %1588 to i32*
  store i32 0, i32* %1591
  store %struct.Memory* %loadMem_401d41, %struct.Memory** %MEMORY
  br label %block_.L_401d48

block_.L_401d48:                                  ; preds = %block_401d54, %block_.L_401d41
  %loadMem_401d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 1
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 15
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %1600 to i64*
  %1601 = load i64, i64* %RBP.i424
  %1602 = sub i64 %1601, 48
  %1603 = load i64, i64* %PC.i422
  %1604 = add i64 %1603, 3
  store i64 %1604, i64* %PC.i422
  %1605 = inttoptr i64 %1602 to i32*
  %1606 = load i32, i32* %1605
  %1607 = zext i32 %1606 to i64
  store i64 %1607, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_401d48, %struct.Memory** %MEMORY
  %loadMem_401d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 1
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %EAX.i420 = bitcast %union.anon* %1613 to i32*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 15
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %1616 to i64*
  %1617 = load i32, i32* %EAX.i420
  %1618 = zext i32 %1617 to i64
  %1619 = load i64, i64* %RBP.i421
  %1620 = sub i64 %1619, 16
  %1621 = load i64, i64* %PC.i419
  %1622 = add i64 %1621, 3
  store i64 %1622, i64* %PC.i419
  %1623 = inttoptr i64 %1620 to i32*
  %1624 = load i32, i32* %1623
  %1625 = sub i32 %1617, %1624
  %1626 = icmp ult i32 %1617, %1624
  %1627 = zext i1 %1626 to i8
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1627, i8* %1628, align 1
  %1629 = and i32 %1625, 255
  %1630 = call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1633, i8* %1634, align 1
  %1635 = xor i32 %1624, %1617
  %1636 = xor i32 %1635, %1625
  %1637 = lshr i32 %1636, 4
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1639, i8* %1640, align 1
  %1641 = icmp eq i32 %1625, 0
  %1642 = zext i1 %1641 to i8
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1642, i8* %1643, align 1
  %1644 = lshr i32 %1625, 31
  %1645 = trunc i32 %1644 to i8
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1645, i8* %1646, align 1
  %1647 = lshr i32 %1617, 31
  %1648 = lshr i32 %1624, 31
  %1649 = xor i32 %1648, %1647
  %1650 = xor i32 %1644, %1647
  %1651 = add i32 %1650, %1649
  %1652 = icmp eq i32 %1651, 2
  %1653 = zext i1 %1652 to i8
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1653, i8* %1654, align 1
  store %struct.Memory* %loadMem_401d4b, %struct.Memory** %MEMORY
  %loadMem_401d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 33
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %PC.i418
  %1659 = add i64 %1658, 165
  %1660 = load i64, i64* %PC.i418
  %1661 = add i64 %1660, 6
  %1662 = load i64, i64* %PC.i418
  %1663 = add i64 %1662, 6
  store i64 %1663, i64* %PC.i418
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1665 = load i8, i8* %1664, align 1
  %1666 = icmp ne i8 %1665, 0
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1668 = load i8, i8* %1667, align 1
  %1669 = icmp ne i8 %1668, 0
  %1670 = xor i1 %1666, %1669
  %1671 = xor i1 %1670, true
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %BRANCH_TAKEN, align 1
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1674 = select i1 %1670, i64 %1661, i64 %1659
  store i64 %1674, i64* %1673, align 8
  store %struct.Memory* %loadMem_401d4e, %struct.Memory** %MEMORY
  %loadBr_401d4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401d4e = icmp eq i8 %loadBr_401d4e, 1
  br i1 %cmpBr_401d4e, label %block_.L_401df3, label %block_401d54

block_401d54:                                     ; preds = %block_.L_401d48
  %loadMem_401d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 1
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %1680 to i64*
  %1681 = load i64, i64* %PC.i416
  %1682 = add i64 %1681, 5
  store i64 %1682, i64* %PC.i416
  store i64 1, i64* %RAX.i417, align 8
  store %struct.Memory* %loadMem_401d54, %struct.Memory** %MEMORY
  %loadMem_401d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 33
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 5
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 15
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %1691 to i64*
  %1692 = load i64, i64* %RBP.i415
  %1693 = sub i64 %1692, 16
  %1694 = load i64, i64* %PC.i413
  %1695 = add i64 %1694, 3
  store i64 %1695, i64* %PC.i413
  %1696 = inttoptr i64 %1693 to i32*
  %1697 = load i32, i32* %1696
  %1698 = zext i32 %1697 to i64
  store i64 %1698, i64* %RCX.i414, align 8
  store %struct.Memory* %loadMem_401d59, %struct.Memory** %MEMORY
  %loadMem_401d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 33
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 7
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RDX.i411 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 15
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %1707 to i64*
  %1708 = load i64, i64* %RBP.i412
  %1709 = sub i64 %1708, 48
  %1710 = load i64, i64* %PC.i410
  %1711 = add i64 %1710, 3
  store i64 %1711, i64* %PC.i410
  %1712 = inttoptr i64 %1709 to i32*
  %1713 = load i32, i32* %1712
  %1714 = zext i32 %1713 to i64
  store i64 %1714, i64* %RDX.i411, align 8
  store %struct.Memory* %loadMem_401d5c, %struct.Memory** %MEMORY
  %loadMem_401d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 33
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 7
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RDX.i409 = bitcast %union.anon* %1720 to i64*
  %1721 = load i64, i64* %RDX.i409
  %1722 = load i64, i64* %PC.i408
  %1723 = add i64 %1722, 3
  store i64 %1723, i64* %PC.i408
  %1724 = trunc i64 %1721 to i32
  %1725 = add i32 1, %1724
  %1726 = zext i32 %1725 to i64
  store i64 %1726, i64* %RDX.i409, align 8
  %1727 = icmp ult i32 %1725, %1724
  %1728 = icmp ult i32 %1725, 1
  %1729 = or i1 %1727, %1728
  %1730 = zext i1 %1729 to i8
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1730, i8* %1731, align 1
  %1732 = and i32 %1725, 255
  %1733 = call i32 @llvm.ctpop.i32(i32 %1732)
  %1734 = trunc i32 %1733 to i8
  %1735 = and i8 %1734, 1
  %1736 = xor i8 %1735, 1
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1736, i8* %1737, align 1
  %1738 = xor i64 1, %1721
  %1739 = trunc i64 %1738 to i32
  %1740 = xor i32 %1739, %1725
  %1741 = lshr i32 %1740, 4
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1743, i8* %1744, align 1
  %1745 = icmp eq i32 %1725, 0
  %1746 = zext i1 %1745 to i8
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1746, i8* %1747, align 1
  %1748 = lshr i32 %1725, 31
  %1749 = trunc i32 %1748 to i8
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1749, i8* %1750, align 1
  %1751 = lshr i32 %1724, 31
  %1752 = xor i32 %1748, %1751
  %1753 = add i32 %1752, %1748
  %1754 = icmp eq i32 %1753, 2
  %1755 = zext i1 %1754 to i8
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1755, i8* %1756, align 1
  store %struct.Memory* %loadMem_401d5f, %struct.Memory** %MEMORY
  %loadMem_401d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 33
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 7
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %EDX.i406 = bitcast %union.anon* %1762 to i32*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 5
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %1765 to i64*
  %1766 = load i64, i64* %RCX.i407
  %1767 = load i32, i32* %EDX.i406
  %1768 = zext i32 %1767 to i64
  %1769 = load i64, i64* %PC.i405
  %1770 = add i64 %1769, 2
  store i64 %1770, i64* %PC.i405
  %1771 = trunc i64 %1766 to i32
  %1772 = sub i32 %1771, %1767
  %1773 = zext i32 %1772 to i64
  store i64 %1773, i64* %RCX.i407, align 8
  %1774 = icmp ult i32 %1771, %1767
  %1775 = zext i1 %1774 to i8
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1775, i8* %1776, align 1
  %1777 = and i32 %1772, 255
  %1778 = call i32 @llvm.ctpop.i32(i32 %1777)
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  %1781 = xor i8 %1780, 1
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1781, i8* %1782, align 1
  %1783 = xor i64 %1768, %1766
  %1784 = trunc i64 %1783 to i32
  %1785 = xor i32 %1784, %1772
  %1786 = lshr i32 %1785, 4
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1788, i8* %1789, align 1
  %1790 = icmp eq i32 %1772, 0
  %1791 = zext i1 %1790 to i8
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1791, i8* %1792, align 1
  %1793 = lshr i32 %1772, 31
  %1794 = trunc i32 %1793 to i8
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1794, i8* %1795, align 1
  %1796 = lshr i32 %1771, 31
  %1797 = lshr i32 %1767, 31
  %1798 = xor i32 %1797, %1796
  %1799 = xor i32 %1793, %1796
  %1800 = add i32 %1799, %1798
  %1801 = icmp eq i32 %1800, 2
  %1802 = zext i1 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1802, i8* %1803, align 1
  store %struct.Memory* %loadMem_401d62, %struct.Memory** %MEMORY
  %loadMem_401d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 33
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 5
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %ECX.i403 = bitcast %union.anon* %1809 to i32*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 15
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %1812 to i64*
  %1813 = load i64, i64* %RBP.i404
  %1814 = sub i64 %1813, 44
  %1815 = load i32, i32* %ECX.i403
  %1816 = zext i32 %1815 to i64
  %1817 = load i64, i64* %PC.i402
  %1818 = add i64 %1817, 3
  store i64 %1818, i64* %PC.i402
  %1819 = inttoptr i64 %1814 to i32*
  store i32 %1815, i32* %1819
  store %struct.Memory* %loadMem_401d64, %struct.Memory** %MEMORY
  %loadMem_401d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 9
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RSI.i400 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 15
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %1828 to i64*
  %1829 = load i64, i64* %RBP.i401
  %1830 = sub i64 %1829, 32
  %1831 = load i64, i64* %PC.i399
  %1832 = add i64 %1831, 4
  store i64 %1832, i64* %PC.i399
  %1833 = inttoptr i64 %1830 to i64*
  %1834 = load i64, i64* %1833
  store i64 %1834, i64* %RSI.i400, align 8
  store %struct.Memory* %loadMem_401d67, %struct.Memory** %MEMORY
  %loadMem_401d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 11
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RDI.i397 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 15
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %RBP.i398
  %1845 = sub i64 %1844, 44
  %1846 = load i64, i64* %PC.i396
  %1847 = add i64 %1846, 4
  store i64 %1847, i64* %PC.i396
  %1848 = inttoptr i64 %1845 to i32*
  %1849 = load i32, i32* %1848
  %1850 = sext i32 %1849 to i64
  store i64 %1850, i64* %RDI.i397, align 8
  store %struct.Memory* %loadMem_401d6b, %struct.Memory** %MEMORY
  %loadMem_401d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 9
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RSI.i393 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 11
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RDI.i394 = bitcast %union.anon* %1859 to i64*
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1861 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1860, i64 0, i64 0
  %YMM0.i395 = bitcast %union.VectorReg* %1861 to %"class.std::bitset"*
  %1862 = bitcast %"class.std::bitset"* %YMM0.i395 to i8*
  %1863 = load i64, i64* %RSI.i393
  %1864 = load i64, i64* %RDI.i394
  %1865 = mul i64 %1864, 4
  %1866 = add i64 %1865, %1863
  %1867 = load i64, i64* %PC.i392
  %1868 = add i64 %1867, 5
  store i64 %1868, i64* %PC.i392
  %1869 = inttoptr i64 %1866 to float*
  %1870 = load float, float* %1869
  %1871 = bitcast i8* %1862 to float*
  store float %1870, float* %1871, align 1
  %1872 = getelementptr inbounds i8, i8* %1862, i64 4
  %1873 = bitcast i8* %1872 to float*
  store float 0.000000e+00, float* %1873, align 1
  %1874 = getelementptr inbounds i8, i8* %1862, i64 8
  %1875 = bitcast i8* %1874 to float*
  store float 0.000000e+00, float* %1875, align 1
  %1876 = getelementptr inbounds i8, i8* %1862, i64 12
  %1877 = bitcast i8* %1876 to float*
  store float 0.000000e+00, float* %1877, align 1
  store %struct.Memory* %loadMem_401d6f, %struct.Memory** %MEMORY
  %loadMem_401d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 33
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 9
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %RSI.i390 = bitcast %union.anon* %1883 to i64*
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 15
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %1886 to i64*
  %1887 = load i64, i64* %RBP.i391
  %1888 = sub i64 %1887, 8
  %1889 = load i64, i64* %PC.i389
  %1890 = add i64 %1889, 4
  store i64 %1890, i64* %PC.i389
  %1891 = inttoptr i64 %1888 to i64*
  %1892 = load i64, i64* %1891
  store i64 %1892, i64* %RSI.i390, align 8
  store %struct.Memory* %loadMem_401d74, %struct.Memory** %MEMORY
  %loadMem_401d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 5
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 15
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %1901 to i64*
  %1902 = load i64, i64* %RBP.i388
  %1903 = sub i64 %1902, 12
  %1904 = load i64, i64* %PC.i386
  %1905 = add i64 %1904, 3
  store i64 %1905, i64* %PC.i386
  %1906 = inttoptr i64 %1903 to i32*
  %1907 = load i32, i32* %1906
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RCX.i387, align 8
  store %struct.Memory* %loadMem_401d78, %struct.Memory** %MEMORY
  %loadMem_401d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 33
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 5
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 15
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %1917 to i64*
  %1918 = load i64, i64* %RCX.i384
  %1919 = load i64, i64* %RBP.i385
  %1920 = sub i64 %1919, 44
  %1921 = load i64, i64* %PC.i383
  %1922 = add i64 %1921, 4
  store i64 %1922, i64* %PC.i383
  %1923 = inttoptr i64 %1920 to i32*
  %1924 = load i32, i32* %1923
  %1925 = shl i64 %1918, 32
  %1926 = ashr exact i64 %1925, 32
  %1927 = sext i32 %1924 to i64
  %1928 = mul i64 %1927, %1926
  %1929 = trunc i64 %1928 to i32
  %1930 = and i64 %1928, 4294967295
  store i64 %1930, i64* %RCX.i384, align 8
  %1931 = shl i64 %1928, 32
  %1932 = ashr exact i64 %1931, 32
  %1933 = icmp ne i64 %1932, %1928
  %1934 = zext i1 %1933 to i8
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1934, i8* %1935, align 1
  %1936 = and i32 %1929, 255
  %1937 = call i32 @llvm.ctpop.i32(i32 %1936)
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1940, i8* %1941, align 1
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1942, align 1
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1943, align 1
  %1944 = lshr i32 %1929, 31
  %1945 = trunc i32 %1944 to i8
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1945, i8* %1946, align 1
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1934, i8* %1947, align 1
  store %struct.Memory* %loadMem_401d7b, %struct.Memory** %MEMORY
  %loadMem_401d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 33
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 5
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %1953 to i64*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 15
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %1956 to i64*
  %1957 = load i64, i64* %RCX.i381
  %1958 = load i64, i64* %RBP.i382
  %1959 = sub i64 %1958, 44
  %1960 = load i64, i64* %PC.i380
  %1961 = add i64 %1960, 3
  store i64 %1961, i64* %PC.i380
  %1962 = trunc i64 %1957 to i32
  %1963 = inttoptr i64 %1959 to i32*
  %1964 = load i32, i32* %1963
  %1965 = add i32 %1964, %1962
  %1966 = zext i32 %1965 to i64
  store i64 %1966, i64* %RCX.i381, align 8
  %1967 = icmp ult i32 %1965, %1962
  %1968 = icmp ult i32 %1965, %1964
  %1969 = or i1 %1967, %1968
  %1970 = zext i1 %1969 to i8
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1970, i8* %1971, align 1
  %1972 = and i32 %1965, 255
  %1973 = call i32 @llvm.ctpop.i32(i32 %1972)
  %1974 = trunc i32 %1973 to i8
  %1975 = and i8 %1974, 1
  %1976 = xor i8 %1975, 1
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1976, i8* %1977, align 1
  %1978 = xor i32 %1964, %1962
  %1979 = xor i32 %1978, %1965
  %1980 = lshr i32 %1979, 4
  %1981 = trunc i32 %1980 to i8
  %1982 = and i8 %1981, 1
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1982, i8* %1983, align 1
  %1984 = icmp eq i32 %1965, 0
  %1985 = zext i1 %1984 to i8
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1985, i8* %1986, align 1
  %1987 = lshr i32 %1965, 31
  %1988 = trunc i32 %1987 to i8
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1988, i8* %1989, align 1
  %1990 = lshr i32 %1962, 31
  %1991 = lshr i32 %1964, 31
  %1992 = xor i32 %1987, %1990
  %1993 = xor i32 %1987, %1991
  %1994 = add i32 %1992, %1993
  %1995 = icmp eq i32 %1994, 2
  %1996 = zext i1 %1995 to i8
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1996, i8* %1997, align 1
  store %struct.Memory* %loadMem_401d7f, %struct.Memory** %MEMORY
  %loadMem_401d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 33
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 5
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %ECX.i378 = bitcast %union.anon* %2003 to i32*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 11
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RDI.i379 = bitcast %union.anon* %2006 to i64*
  %2007 = load i32, i32* %ECX.i378
  %2008 = zext i32 %2007 to i64
  %2009 = load i64, i64* %PC.i377
  %2010 = add i64 %2009, 3
  store i64 %2010, i64* %PC.i377
  %2011 = shl i64 %2008, 32
  %2012 = ashr exact i64 %2011, 32
  store i64 %2012, i64* %RDI.i379, align 8
  store %struct.Memory* %loadMem_401d82, %struct.Memory** %MEMORY
  %loadMem_401d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 33
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2015 to i64*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 9
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %RSI.i374 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 11
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %RDI.i375 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2023 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2022, i64 0, i64 0
  %YMM0.i376 = bitcast %union.VectorReg* %2023 to %"class.std::bitset"*
  %2024 = bitcast %"class.std::bitset"* %YMM0.i376 to i8*
  %2025 = bitcast %"class.std::bitset"* %YMM0.i376 to i8*
  %2026 = load i64, i64* %RSI.i374
  %2027 = load i64, i64* %RDI.i375
  %2028 = mul i64 %2027, 4
  %2029 = add i64 %2028, %2026
  %2030 = load i64, i64* %PC.i373
  %2031 = add i64 %2030, 5
  store i64 %2031, i64* %PC.i373
  %2032 = bitcast i8* %2025 to <2 x float>*
  %2033 = load <2 x float>, <2 x float>* %2032, align 1
  %2034 = getelementptr inbounds i8, i8* %2025, i64 8
  %2035 = bitcast i8* %2034 to <2 x i32>*
  %2036 = load <2 x i32>, <2 x i32>* %2035, align 1
  %2037 = inttoptr i64 %2029 to float*
  %2038 = load float, float* %2037
  %2039 = extractelement <2 x float> %2033, i32 0
  %2040 = fdiv float %2039, %2038
  %2041 = bitcast i8* %2024 to float*
  store float %2040, float* %2041, align 1
  %2042 = bitcast <2 x float> %2033 to <2 x i32>
  %2043 = extractelement <2 x i32> %2042, i32 1
  %2044 = getelementptr inbounds i8, i8* %2024, i64 4
  %2045 = bitcast i8* %2044 to i32*
  store i32 %2043, i32* %2045, align 1
  %2046 = extractelement <2 x i32> %2036, i32 0
  %2047 = getelementptr inbounds i8, i8* %2024, i64 8
  %2048 = bitcast i8* %2047 to i32*
  store i32 %2046, i32* %2048, align 1
  %2049 = extractelement <2 x i32> %2036, i32 1
  %2050 = getelementptr inbounds i8, i8* %2024, i64 12
  %2051 = bitcast i8* %2050 to i32*
  store i32 %2049, i32* %2051, align 1
  store %struct.Memory* %loadMem_401d85, %struct.Memory** %MEMORY
  %loadMem_401d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 33
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %2054 to i64*
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 9
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %RSI.i371 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 15
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %2060 to i64*
  %2061 = load i64, i64* %RBP.i372
  %2062 = sub i64 %2061, 32
  %2063 = load i64, i64* %PC.i370
  %2064 = add i64 %2063, 4
  store i64 %2064, i64* %PC.i370
  %2065 = inttoptr i64 %2062 to i64*
  %2066 = load i64, i64* %2065
  store i64 %2066, i64* %RSI.i371, align 8
  store %struct.Memory* %loadMem_401d8a, %struct.Memory** %MEMORY
  %loadMem_401d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 11
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RDI.i368 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 15
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %2075 to i64*
  %2076 = load i64, i64* %RBP.i369
  %2077 = sub i64 %2076, 44
  %2078 = load i64, i64* %PC.i367
  %2079 = add i64 %2078, 4
  store i64 %2079, i64* %PC.i367
  %2080 = inttoptr i64 %2077 to i32*
  %2081 = load i32, i32* %2080
  %2082 = sext i32 %2081 to i64
  store i64 %2082, i64* %RDI.i368, align 8
  store %struct.Memory* %loadMem_401d8e, %struct.Memory** %MEMORY
  %loadMem_401d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 9
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RSI.i364 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 11
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %RDI.i365 = bitcast %union.anon* %2091 to i64*
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2093 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2092, i64 0, i64 0
  %XMM0.i366 = bitcast %union.VectorReg* %2093 to %union.vec128_t*
  %2094 = load i64, i64* %RSI.i364
  %2095 = load i64, i64* %RDI.i365
  %2096 = mul i64 %2095, 4
  %2097 = add i64 %2096, %2094
  %2098 = bitcast %union.vec128_t* %XMM0.i366 to i8*
  %2099 = load i64, i64* %PC.i363
  %2100 = add i64 %2099, 5
  store i64 %2100, i64* %PC.i363
  %2101 = bitcast i8* %2098 to <2 x float>*
  %2102 = load <2 x float>, <2 x float>* %2101, align 1
  %2103 = extractelement <2 x float> %2102, i32 0
  %2104 = inttoptr i64 %2097 to float*
  store float %2103, float* %2104
  store %struct.Memory* %loadMem_401d92, %struct.Memory** %MEMORY
  %loadMem_401d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 9
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RSI.i361 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 15
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %2113 to i64*
  %2114 = load i64, i64* %RBP.i362
  %2115 = sub i64 %2114, 32
  %2116 = load i64, i64* %PC.i360
  %2117 = add i64 %2116, 4
  store i64 %2117, i64* %PC.i360
  %2118 = inttoptr i64 %2115 to i64*
  %2119 = load i64, i64* %2118
  store i64 %2119, i64* %RSI.i361, align 8
  store %struct.Memory* %loadMem_401d97, %struct.Memory** %MEMORY
  %loadMem_401d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 33
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2122 to i64*
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 11
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %RDI.i358 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 15
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %2128 to i64*
  %2129 = load i64, i64* %RBP.i359
  %2130 = sub i64 %2129, 44
  %2131 = load i64, i64* %PC.i357
  %2132 = add i64 %2131, 4
  store i64 %2132, i64* %PC.i357
  %2133 = inttoptr i64 %2130 to i32*
  %2134 = load i32, i32* %2133
  %2135 = sext i32 %2134 to i64
  store i64 %2135, i64* %RDI.i358, align 8
  store %struct.Memory* %loadMem_401d9b, %struct.Memory** %MEMORY
  %loadMem_401d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 9
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RSI.i354 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 11
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RDI.i355 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2146 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2145, i64 0, i64 0
  %YMM0.i356 = bitcast %union.VectorReg* %2146 to %"class.std::bitset"*
  %2147 = bitcast %"class.std::bitset"* %YMM0.i356 to i8*
  %2148 = load i64, i64* %RSI.i354
  %2149 = load i64, i64* %RDI.i355
  %2150 = mul i64 %2149, 4
  %2151 = add i64 %2150, %2148
  %2152 = load i64, i64* %PC.i353
  %2153 = add i64 %2152, 5
  store i64 %2153, i64* %PC.i353
  %2154 = inttoptr i64 %2151 to float*
  %2155 = load float, float* %2154
  %2156 = bitcast i8* %2147 to float*
  store float %2155, float* %2156, align 1
  %2157 = getelementptr inbounds i8, i8* %2147, i64 4
  %2158 = bitcast i8* %2157 to float*
  store float 0.000000e+00, float* %2158, align 1
  %2159 = getelementptr inbounds i8, i8* %2147, i64 8
  %2160 = bitcast i8* %2159 to float*
  store float 0.000000e+00, float* %2160, align 1
  %2161 = getelementptr inbounds i8, i8* %2147, i64 12
  %2162 = bitcast i8* %2161 to float*
  store float 0.000000e+00, float* %2162, align 1
  store %struct.Memory* %loadMem_401d9f, %struct.Memory** %MEMORY
  %loadMem_401da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 5
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2169, i64 0, i64 0
  %XMM0.i352 = bitcast %union.VectorReg* %2170 to %union.vec128_t*
  %2171 = bitcast %union.vec128_t* %XMM0.i352 to i8*
  %2172 = load i64, i64* %PC.i350
  %2173 = add i64 %2172, 4
  store i64 %2173, i64* %PC.i350
  %2174 = bitcast i8* %2171 to i64*
  %2175 = load i64, i64* %2174, align 1
  %2176 = trunc i64 %2175 to i32
  %2177 = bitcast i64* %RCX.i351 to [2 x i32]*
  %2178 = bitcast i64* %RCX.i351 to i32*
  store i32 %2176, i32* %2178, align 1
  %2179 = getelementptr inbounds [2 x i32], [2 x i32]* %2177, i64 0, i64 1
  store i32 0, i32* %2179, align 1
  store %struct.Memory* %loadMem_401da4, %struct.Memory** %MEMORY
  %loadMem_401da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 5
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %RCX.i349
  %2187 = load i64, i64* %PC.i348
  %2188 = add i64 %2187, 6
  store i64 %2188, i64* %PC.i348
  %2189 = xor i64 -2147483648, %2186
  %2190 = trunc i64 %2189 to i32
  %2191 = and i64 %2189, 4294967295
  store i64 %2191, i64* %RCX.i349, align 8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2192, align 1
  %2193 = and i32 %2190, 255
  %2194 = call i32 @llvm.ctpop.i32(i32 %2193)
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  %2197 = xor i8 %2196, 1
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2197, i8* %2198, align 1
  %2199 = icmp eq i32 %2190, 0
  %2200 = zext i1 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2200, i8* %2201, align 1
  %2202 = lshr i32 %2190, 31
  %2203 = trunc i32 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2203, i8* %2204, align 1
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2205, align 1
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2206, align 1
  store %struct.Memory* %loadMem_401da8, %struct.Memory** %MEMORY
  %loadMem_401dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 5
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %ECX.i346 = bitcast %union.anon* %2212 to i32*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2213, i64 0, i64 0
  %YMM0.i347 = bitcast %union.VectorReg* %2214 to %"class.std::bitset"*
  %2215 = bitcast %"class.std::bitset"* %YMM0.i347 to i8*
  %2216 = load i32, i32* %ECX.i346
  %2217 = zext i32 %2216 to i64
  %2218 = load i64, i64* %PC.i345
  %2219 = add i64 %2218, 4
  store i64 %2219, i64* %PC.i345
  %2220 = bitcast i8* %2215 to i32*
  store i32 %2216, i32* %2220, align 1
  %2221 = getelementptr inbounds i8, i8* %2215, i64 4
  %2222 = bitcast i8* %2221 to i32*
  store i32 0, i32* %2222, align 1
  %2223 = getelementptr inbounds i8, i8* %2215, i64 8
  %2224 = bitcast i8* %2223 to i32*
  store i32 0, i32* %2224, align 1
  %2225 = getelementptr inbounds i8, i8* %2215, i64 12
  %2226 = bitcast i8* %2225 to i32*
  store i32 0, i32* %2226, align 1
  store %struct.Memory* %loadMem_401dae, %struct.Memory** %MEMORY
  %loadMem_401db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 15
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %2232 to i64*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2234 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2233, i64 0, i64 0
  %XMM0.i344 = bitcast %union.VectorReg* %2234 to %union.vec128_t*
  %2235 = load i64, i64* %RBP.i343
  %2236 = sub i64 %2235, 40
  %2237 = bitcast %union.vec128_t* %XMM0.i344 to i8*
  %2238 = load i64, i64* %PC.i342
  %2239 = add i64 %2238, 5
  store i64 %2239, i64* %PC.i342
  %2240 = bitcast i8* %2237 to <2 x float>*
  %2241 = load <2 x float>, <2 x float>* %2240, align 1
  %2242 = extractelement <2 x float> %2241, i32 0
  %2243 = inttoptr i64 %2236 to float*
  store float %2242, float* %2243
  store %struct.Memory* %loadMem_401db2, %struct.Memory** %MEMORY
  %loadMem_401db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 33
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 11
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RDI.i340 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 15
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %2252 to i64*
  %2253 = load i64, i64* %RBP.i341
  %2254 = sub i64 %2253, 44
  %2255 = load i64, i64* %PC.i339
  %2256 = add i64 %2255, 3
  store i64 %2256, i64* %PC.i339
  %2257 = inttoptr i64 %2254 to i32*
  %2258 = load i32, i32* %2257
  %2259 = zext i32 %2258 to i64
  store i64 %2259, i64* %RDI.i340, align 8
  store %struct.Memory* %loadMem_401db7, %struct.Memory** %MEMORY
  %loadMem_401dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 15
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2266, i64 0, i64 0
  %YMM0.i338 = bitcast %union.VectorReg* %2267 to %"class.std::bitset"*
  %2268 = bitcast %"class.std::bitset"* %YMM0.i338 to i8*
  %2269 = load i64, i64* %RBP.i337
  %2270 = sub i64 %2269, 40
  %2271 = load i64, i64* %PC.i336
  %2272 = add i64 %2271, 5
  store i64 %2272, i64* %PC.i336
  %2273 = inttoptr i64 %2270 to float*
  %2274 = load float, float* %2273
  %2275 = bitcast i8* %2268 to float*
  store float %2274, float* %2275, align 1
  %2276 = getelementptr inbounds i8, i8* %2268, i64 4
  %2277 = bitcast i8* %2276 to float*
  store float 0.000000e+00, float* %2277, align 1
  %2278 = getelementptr inbounds i8, i8* %2268, i64 8
  %2279 = bitcast i8* %2278 to float*
  store float 0.000000e+00, float* %2279, align 1
  %2280 = getelementptr inbounds i8, i8* %2268, i64 12
  %2281 = bitcast i8* %2280 to float*
  store float 0.000000e+00, float* %2281, align 1
  store %struct.Memory* %loadMem_401dba, %struct.Memory** %MEMORY
  %loadMem_401dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 33
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 9
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %RSI.i334 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 15
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %2290 to i64*
  %2291 = load i64, i64* %RBP.i335
  %2292 = sub i64 %2291, 8
  %2293 = load i64, i64* %PC.i333
  %2294 = add i64 %2293, 4
  store i64 %2294, i64* %PC.i333
  %2295 = inttoptr i64 %2292 to i64*
  %2296 = load i64, i64* %2295
  store i64 %2296, i64* %RSI.i334, align 8
  store %struct.Memory* %loadMem_401dbf, %struct.Memory** %MEMORY
  %loadMem_401dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 33
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 5
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 15
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %RBP.i332
  %2307 = sub i64 %2306, 12
  %2308 = load i64, i64* %PC.i330
  %2309 = add i64 %2308, 3
  store i64 %2309, i64* %PC.i330
  %2310 = inttoptr i64 %2307 to i32*
  %2311 = load i32, i32* %2310
  %2312 = zext i32 %2311 to i64
  store i64 %2312, i64* %RCX.i331, align 8
  store %struct.Memory* %loadMem_401dc3, %struct.Memory** %MEMORY
  %loadMem_401dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 5
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 15
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %2321 to i64*
  %2322 = load i64, i64* %RCX.i328
  %2323 = load i64, i64* %RBP.i329
  %2324 = sub i64 %2323, 44
  %2325 = load i64, i64* %PC.i327
  %2326 = add i64 %2325, 4
  store i64 %2326, i64* %PC.i327
  %2327 = inttoptr i64 %2324 to i32*
  %2328 = load i32, i32* %2327
  %2329 = shl i64 %2322, 32
  %2330 = ashr exact i64 %2329, 32
  %2331 = sext i32 %2328 to i64
  %2332 = mul i64 %2331, %2330
  %2333 = trunc i64 %2332 to i32
  %2334 = and i64 %2332, 4294967295
  store i64 %2334, i64* %RCX.i328, align 8
  %2335 = shl i64 %2332, 32
  %2336 = ashr exact i64 %2335, 32
  %2337 = icmp ne i64 %2336, %2332
  %2338 = zext i1 %2337 to i8
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2338, i8* %2339, align 1
  %2340 = and i32 %2333, 255
  %2341 = call i32 @llvm.ctpop.i32(i32 %2340)
  %2342 = trunc i32 %2341 to i8
  %2343 = and i8 %2342, 1
  %2344 = xor i8 %2343, 1
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2344, i8* %2345, align 1
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2346, align 1
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2347, align 1
  %2348 = lshr i32 %2333, 31
  %2349 = trunc i32 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2349, i8* %2350, align 1
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2338, i8* %2351, align 1
  store %struct.Memory* %loadMem_401dc6, %struct.Memory** %MEMORY
  %loadMem_401dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 5
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %2357 to i64*
  %2358 = load i64, i64* %RCX.i326
  %2359 = load i64, i64* %PC.i325
  %2360 = add i64 %2359, 3
  store i64 %2360, i64* %PC.i325
  %2361 = trunc i64 %2358 to i32
  %2362 = zext i32 %2361 to i64
  store i64 %2362, i64* %RCX.i326, align 8
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2363, align 1
  %2364 = and i32 %2361, 255
  %2365 = call i32 @llvm.ctpop.i32(i32 %2364)
  %2366 = trunc i32 %2365 to i8
  %2367 = and i8 %2366, 1
  %2368 = xor i8 %2367, 1
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2368, i8* %2369, align 1
  %2370 = trunc i64 %2358 to i32
  %2371 = xor i32 %2370, %2361
  %2372 = lshr i32 %2371, 4
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2374, i8* %2375, align 1
  %2376 = icmp eq i32 %2361, 0
  %2377 = zext i1 %2376 to i8
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2377, i8* %2378, align 1
  %2379 = lshr i32 %2361, 31
  %2380 = trunc i32 %2379 to i8
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2380, i8* %2381, align 1
  %2382 = lshr i32 %2361, 31
  %2383 = xor i32 %2379, %2382
  %2384 = add i32 %2383, %2379
  %2385 = icmp eq i32 %2384, 2
  %2386 = zext i1 %2385 to i8
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2386, i8* %2387, align 1
  store %struct.Memory* %loadMem_401dca, %struct.Memory** %MEMORY
  %loadMem_401dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 33
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 5
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %ECX.i323 = bitcast %union.anon* %2393 to i32*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 17
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %R8.i324 = bitcast %union.anon* %2396 to i64*
  %2397 = load i32, i32* %ECX.i323
  %2398 = zext i32 %2397 to i64
  %2399 = load i64, i64* %PC.i322
  %2400 = add i64 %2399, 3
  store i64 %2400, i64* %PC.i322
  %2401 = shl i64 %2398, 32
  %2402 = ashr exact i64 %2401, 32
  store i64 %2402, i64* %R8.i324, align 8
  store %struct.Memory* %loadMem_401dcd, %struct.Memory** %MEMORY
  %loadMem_401dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 33
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 17
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %R8.i321 = bitcast %union.anon* %2408 to i64*
  %2409 = load i64, i64* %R8.i321
  %2410 = load i64, i64* %PC.i320
  %2411 = add i64 %2410, 4
  store i64 %2411, i64* %PC.i320
  %2412 = shl i64 %2409, 1
  %2413 = icmp slt i64 %2412, 0
  %2414 = shl i64 %2412, 1
  store i64 %2414, i64* %R8.i321, align 8
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2416 = zext i1 %2413 to i8
  store i8 %2416, i8* %2415, align 1
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2418 = trunc i64 %2414 to i32
  %2419 = and i32 %2418, 254
  %2420 = call i32 @llvm.ctpop.i32(i32 %2419)
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  %2423 = xor i8 %2422, 1
  store i8 %2423, i8* %2417, align 1
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2424, align 1
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2426 = icmp eq i64 %2414, 0
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %2425, align 1
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2429 = lshr i64 %2414, 63
  %2430 = trunc i64 %2429 to i8
  store i8 %2430, i8* %2428, align 1
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2431, align 1
  store %struct.Memory* %loadMem_401dd0, %struct.Memory** %MEMORY
  %loadMem_401dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 9
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RSI.i318 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 17
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %R8.i319 = bitcast %union.anon* %2440 to i64*
  %2441 = load i64, i64* %RSI.i318
  %2442 = load i64, i64* %R8.i319
  %2443 = load i64, i64* %PC.i317
  %2444 = add i64 %2443, 3
  store i64 %2444, i64* %PC.i317
  %2445 = add i64 %2442, %2441
  store i64 %2445, i64* %RSI.i318, align 8
  %2446 = icmp ult i64 %2445, %2441
  %2447 = icmp ult i64 %2445, %2442
  %2448 = or i1 %2446, %2447
  %2449 = zext i1 %2448 to i8
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2449, i8* %2450, align 1
  %2451 = trunc i64 %2445 to i32
  %2452 = and i32 %2451, 255
  %2453 = call i32 @llvm.ctpop.i32(i32 %2452)
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  %2456 = xor i8 %2455, 1
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2456, i8* %2457, align 1
  %2458 = xor i64 %2442, %2441
  %2459 = xor i64 %2458, %2445
  %2460 = lshr i64 %2459, 4
  %2461 = trunc i64 %2460 to i8
  %2462 = and i8 %2461, 1
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2462, i8* %2463, align 1
  %2464 = icmp eq i64 %2445, 0
  %2465 = zext i1 %2464 to i8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2465, i8* %2466, align 1
  %2467 = lshr i64 %2445, 63
  %2468 = trunc i64 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2468, i8* %2469, align 1
  %2470 = lshr i64 %2441, 63
  %2471 = lshr i64 %2442, 63
  %2472 = xor i64 %2467, %2470
  %2473 = xor i64 %2467, %2471
  %2474 = add i64 %2472, %2473
  %2475 = icmp eq i64 %2474, 2
  %2476 = zext i1 %2475 to i8
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2476, i8* %2477, align 1
  store %struct.Memory* %loadMem_401dd4, %struct.Memory** %MEMORY
  %loadMem_401dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 5
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 15
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %2486 to i64*
  %2487 = load i64, i64* %RBP.i316
  %2488 = sub i64 %2487, 32
  %2489 = load i64, i64* %PC.i314
  %2490 = add i64 %2489, 4
  store i64 %2490, i64* %PC.i314
  %2491 = inttoptr i64 %2488 to i64*
  %2492 = load i64, i64* %2491
  store i64 %2492, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_401dd7, %struct.Memory** %MEMORY
  %loadMem_401ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 1
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %EAX.i312 = bitcast %union.anon* %2498 to i32*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 7
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RDX.i313 = bitcast %union.anon* %2501 to i64*
  %2502 = load i32, i32* %EAX.i312
  %2503 = zext i32 %2502 to i64
  %2504 = load i64, i64* %PC.i311
  %2505 = add i64 %2504, 2
  store i64 %2505, i64* %PC.i311
  %2506 = and i64 %2503, 4294967295
  store i64 %2506, i64* %RDX.i313, align 8
  store %struct.Memory* %loadMem_401ddb, %struct.Memory** %MEMORY
  %loadMem_401ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 33
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 1
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %EAX.i309 = bitcast %union.anon* %2512 to i32*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 17
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %R8D.i310 = bitcast %union.anon* %2515 to i32*
  %2516 = bitcast i32* %R8D.i310 to i64*
  %2517 = load i32, i32* %EAX.i309
  %2518 = zext i32 %2517 to i64
  %2519 = load i64, i64* %PC.i308
  %2520 = add i64 %2519, 3
  store i64 %2520, i64* %PC.i308
  %2521 = and i64 %2518, 4294967295
  store i64 %2521, i64* %2516, align 8
  store %struct.Memory* %loadMem_401ddd, %struct.Memory** %MEMORY
  %loadMem1_401de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2524 to i64*
  %2525 = load i64, i64* %PC.i307
  %2526 = add i64 %2525, 2704
  %2527 = load i64, i64* %PC.i307
  %2528 = add i64 %2527, 5
  %2529 = load i64, i64* %PC.i307
  %2530 = add i64 %2529, 5
  store i64 %2530, i64* %PC.i307
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2532 = load i64, i64* %2531, align 8
  %2533 = add i64 %2532, -8
  %2534 = inttoptr i64 %2533 to i64*
  store i64 %2528, i64* %2534
  store i64 %2533, i64* %2531, align 8
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2526, i64* %2535, align 8
  store %struct.Memory* %loadMem1_401de0, %struct.Memory** %MEMORY
  %loadMem2_401de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401de0 = load i64, i64* %3
  %call2_401de0 = call %struct.Memory* @sub_402870.daxpy(%struct.State* %0, i64 %loadPC_401de0, %struct.Memory* %loadMem2_401de0)
  store %struct.Memory* %call2_401de0, %struct.Memory** %MEMORY
  %loadMem_401de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 33
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 1
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 15
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %2544 to i64*
  %2545 = load i64, i64* %RBP.i306
  %2546 = sub i64 %2545, 48
  %2547 = load i64, i64* %PC.i304
  %2548 = add i64 %2547, 3
  store i64 %2548, i64* %PC.i304
  %2549 = inttoptr i64 %2546 to i32*
  %2550 = load i32, i32* %2549
  %2551 = zext i32 %2550 to i64
  store i64 %2551, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_401de5, %struct.Memory** %MEMORY
  %loadMem_401de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 1
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %2557 to i64*
  %2558 = load i64, i64* %RAX.i303
  %2559 = load i64, i64* %PC.i302
  %2560 = add i64 %2559, 3
  store i64 %2560, i64* %PC.i302
  %2561 = trunc i64 %2558 to i32
  %2562 = add i32 1, %2561
  %2563 = zext i32 %2562 to i64
  store i64 %2563, i64* %RAX.i303, align 8
  %2564 = icmp ult i32 %2562, %2561
  %2565 = icmp ult i32 %2562, 1
  %2566 = or i1 %2564, %2565
  %2567 = zext i1 %2566 to i8
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2567, i8* %2568, align 1
  %2569 = and i32 %2562, 255
  %2570 = call i32 @llvm.ctpop.i32(i32 %2569)
  %2571 = trunc i32 %2570 to i8
  %2572 = and i8 %2571, 1
  %2573 = xor i8 %2572, 1
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2573, i8* %2574, align 1
  %2575 = xor i64 1, %2558
  %2576 = trunc i64 %2575 to i32
  %2577 = xor i32 %2576, %2562
  %2578 = lshr i32 %2577, 4
  %2579 = trunc i32 %2578 to i8
  %2580 = and i8 %2579, 1
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2580, i8* %2581, align 1
  %2582 = icmp eq i32 %2562, 0
  %2583 = zext i1 %2582 to i8
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2583, i8* %2584, align 1
  %2585 = lshr i32 %2562, 31
  %2586 = trunc i32 %2585 to i8
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2586, i8* %2587, align 1
  %2588 = lshr i32 %2561, 31
  %2589 = xor i32 %2585, %2588
  %2590 = add i32 %2589, %2585
  %2591 = icmp eq i32 %2590, 2
  %2592 = zext i1 %2591 to i8
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2592, i8* %2593, align 1
  store %struct.Memory* %loadMem_401de8, %struct.Memory** %MEMORY
  %loadMem_401deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 1
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %EAX.i300 = bitcast %union.anon* %2599 to i32*
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 15
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2602 to i64*
  %2603 = load i64, i64* %RBP.i301
  %2604 = sub i64 %2603, 48
  %2605 = load i32, i32* %EAX.i300
  %2606 = zext i32 %2605 to i64
  %2607 = load i64, i64* %PC.i299
  %2608 = add i64 %2607, 3
  store i64 %2608, i64* %PC.i299
  %2609 = inttoptr i64 %2604 to i32*
  store i32 %2605, i32* %2609
  store %struct.Memory* %loadMem_401deb, %struct.Memory** %MEMORY
  %loadMem_401dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2612 to i64*
  %2613 = load i64, i64* %PC.i298
  %2614 = add i64 %2613, -166
  %2615 = load i64, i64* %PC.i298
  %2616 = add i64 %2615, 5
  store i64 %2616, i64* %PC.i298
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2614, i64* %2617, align 8
  store %struct.Memory* %loadMem_401dee, %struct.Memory** %MEMORY
  br label %block_.L_401d48

block_.L_401df3:                                  ; preds = %block_.L_401d48
  %loadMem_401df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2620 to i64*
  %2621 = load i64, i64* %PC.i297
  %2622 = add i64 %2621, 436
  %2623 = load i64, i64* %PC.i297
  %2624 = add i64 %2623, 5
  store i64 %2624, i64* %PC.i297
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2622, i64* %2625, align 8
  store %struct.Memory* %loadMem_401df3, %struct.Memory** %MEMORY
  br label %block_.L_401fa7

block_.L_401df8:                                  ; preds = %entry
  %loadMem_401df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 33
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 15
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %2631 to i64*
  %2632 = load i64, i64* %RBP.i296
  %2633 = sub i64 %2632, 44
  %2634 = load i64, i64* %PC.i295
  %2635 = add i64 %2634, 7
  store i64 %2635, i64* %PC.i295
  %2636 = inttoptr i64 %2633 to i32*
  store i32 0, i32* %2636
  store %struct.Memory* %loadMem_401df8, %struct.Memory** %MEMORY
  br label %block_.L_401dff

block_.L_401dff:                                  ; preds = %block_401e0b, %block_.L_401df8
  %loadMem_401dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 1
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %2642 to i64*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 15
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2645 to i64*
  %2646 = load i64, i64* %RBP.i294
  %2647 = sub i64 %2646, 44
  %2648 = load i64, i64* %PC.i292
  %2649 = add i64 %2648, 3
  store i64 %2649, i64* %PC.i292
  %2650 = inttoptr i64 %2647 to i32*
  %2651 = load i32, i32* %2650
  %2652 = zext i32 %2651 to i64
  store i64 %2652, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_401dff, %struct.Memory** %MEMORY
  %loadMem_401e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2655 to i64*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 1
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %EAX.i290 = bitcast %union.anon* %2658 to i32*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 15
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %2661 to i64*
  %2662 = load i32, i32* %EAX.i290
  %2663 = zext i32 %2662 to i64
  %2664 = load i64, i64* %RBP.i291
  %2665 = sub i64 %2664, 16
  %2666 = load i64, i64* %PC.i289
  %2667 = add i64 %2666, 3
  store i64 %2667, i64* %PC.i289
  %2668 = inttoptr i64 %2665 to i32*
  %2669 = load i32, i32* %2668
  %2670 = sub i32 %2662, %2669
  %2671 = icmp ult i32 %2662, %2669
  %2672 = zext i1 %2671 to i8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2672, i8* %2673, align 1
  %2674 = and i32 %2670, 255
  %2675 = call i32 @llvm.ctpop.i32(i32 %2674)
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = xor i8 %2677, 1
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2678, i8* %2679, align 1
  %2680 = xor i32 %2669, %2662
  %2681 = xor i32 %2680, %2670
  %2682 = lshr i32 %2681, 4
  %2683 = trunc i32 %2682 to i8
  %2684 = and i8 %2683, 1
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2684, i8* %2685, align 1
  %2686 = icmp eq i32 %2670, 0
  %2687 = zext i1 %2686 to i8
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2687, i8* %2688, align 1
  %2689 = lshr i32 %2670, 31
  %2690 = trunc i32 %2689 to i8
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2690, i8* %2691, align 1
  %2692 = lshr i32 %2662, 31
  %2693 = lshr i32 %2669, 31
  %2694 = xor i32 %2693, %2692
  %2695 = xor i32 %2689, %2692
  %2696 = add i32 %2695, %2694
  %2697 = icmp eq i32 %2696, 2
  %2698 = zext i1 %2697 to i8
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2698, i8* %2699, align 1
  store %struct.Memory* %loadMem_401e02, %struct.Memory** %MEMORY
  %loadMem_401e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 33
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2702 to i64*
  %2703 = load i64, i64* %PC.i288
  %2704 = add i64 %2703, 135
  %2705 = load i64, i64* %PC.i288
  %2706 = add i64 %2705, 6
  %2707 = load i64, i64* %PC.i288
  %2708 = add i64 %2707, 6
  store i64 %2708, i64* %PC.i288
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2710 = load i8, i8* %2709, align 1
  %2711 = icmp ne i8 %2710, 0
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2713 = load i8, i8* %2712, align 1
  %2714 = icmp ne i8 %2713, 0
  %2715 = xor i1 %2711, %2714
  %2716 = xor i1 %2715, true
  %2717 = zext i1 %2716 to i8
  store i8 %2717, i8* %BRANCH_TAKEN, align 1
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2719 = select i1 %2715, i64 %2706, i64 %2704
  store i64 %2719, i64* %2718, align 8
  store %struct.Memory* %loadMem_401e05, %struct.Memory** %MEMORY
  %loadBr_401e05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e05 = icmp eq i8 %loadBr_401e05, 1
  br i1 %cmpBr_401e05, label %block_.L_401e8c, label %block_401e0b

block_401e0b:                                     ; preds = %block_.L_401dff
  %loadMem_401e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 33
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 1
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %PC.i286
  %2727 = add i64 %2726, 5
  store i64 %2727, i64* %PC.i286
  store i64 1, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_401e0b, %struct.Memory** %MEMORY
  %loadMem_401e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 11
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RDI.i284 = bitcast %union.anon* %2733 to i64*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 15
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %2736 to i64*
  %2737 = load i64, i64* %RBP.i285
  %2738 = sub i64 %2737, 44
  %2739 = load i64, i64* %PC.i283
  %2740 = add i64 %2739, 3
  store i64 %2740, i64* %PC.i283
  %2741 = inttoptr i64 %2738 to i32*
  %2742 = load i32, i32* %2741
  %2743 = zext i32 %2742 to i64
  store i64 %2743, i64* %RDI.i284, align 8
  store %struct.Memory* %loadMem_401e10, %struct.Memory** %MEMORY
  %loadMem_401e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 5
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %RCX.i281 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 15
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %2752 to i64*
  %2753 = load i64, i64* %RBP.i282
  %2754 = sub i64 %2753, 8
  %2755 = load i64, i64* %PC.i280
  %2756 = add i64 %2755, 4
  store i64 %2756, i64* %PC.i280
  %2757 = inttoptr i64 %2754 to i64*
  %2758 = load i64, i64* %2757
  store i64 %2758, i64* %RCX.i281, align 8
  store %struct.Memory* %loadMem_401e13, %struct.Memory** %MEMORY
  %loadMem_401e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 33
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 7
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 15
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %2767 to i64*
  %2768 = load i64, i64* %RBP.i279
  %2769 = sub i64 %2768, 12
  %2770 = load i64, i64* %PC.i277
  %2771 = add i64 %2770, 3
  store i64 %2771, i64* %PC.i277
  %2772 = inttoptr i64 %2769 to i32*
  %2773 = load i32, i32* %2772
  %2774 = zext i32 %2773 to i64
  store i64 %2774, i64* %RDX.i278, align 8
  store %struct.Memory* %loadMem_401e17, %struct.Memory** %MEMORY
  %loadMem_401e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 33
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2777 to i64*
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 7
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %RDX.i275 = bitcast %union.anon* %2780 to i64*
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 15
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %2783 to i64*
  %2784 = load i64, i64* %RDX.i275
  %2785 = load i64, i64* %RBP.i276
  %2786 = sub i64 %2785, 44
  %2787 = load i64, i64* %PC.i274
  %2788 = add i64 %2787, 4
  store i64 %2788, i64* %PC.i274
  %2789 = inttoptr i64 %2786 to i32*
  %2790 = load i32, i32* %2789
  %2791 = shl i64 %2784, 32
  %2792 = ashr exact i64 %2791, 32
  %2793 = sext i32 %2790 to i64
  %2794 = mul i64 %2793, %2792
  %2795 = trunc i64 %2794 to i32
  %2796 = and i64 %2794, 4294967295
  store i64 %2796, i64* %RDX.i275, align 8
  %2797 = shl i64 %2794, 32
  %2798 = ashr exact i64 %2797, 32
  %2799 = icmp ne i64 %2798, %2794
  %2800 = zext i1 %2799 to i8
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2800, i8* %2801, align 1
  %2802 = and i32 %2795, 255
  %2803 = call i32 @llvm.ctpop.i32(i32 %2802)
  %2804 = trunc i32 %2803 to i8
  %2805 = and i8 %2804, 1
  %2806 = xor i8 %2805, 1
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2806, i8* %2807, align 1
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2808, align 1
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2809, align 1
  %2810 = lshr i32 %2795, 31
  %2811 = trunc i32 %2810 to i8
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2811, i8* %2812, align 1
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2800, i8* %2813, align 1
  store %struct.Memory* %loadMem_401e1a, %struct.Memory** %MEMORY
  %loadMem_401e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 33
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 7
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %RDX.i273 = bitcast %union.anon* %2819 to i64*
  %2820 = load i64, i64* %RDX.i273
  %2821 = load i64, i64* %PC.i272
  %2822 = add i64 %2821, 3
  store i64 %2822, i64* %PC.i272
  %2823 = trunc i64 %2820 to i32
  %2824 = zext i32 %2823 to i64
  store i64 %2824, i64* %RDX.i273, align 8
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2825, align 1
  %2826 = and i32 %2823, 255
  %2827 = call i32 @llvm.ctpop.i32(i32 %2826)
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = xor i8 %2829, 1
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2830, i8* %2831, align 1
  %2832 = trunc i64 %2820 to i32
  %2833 = xor i32 %2832, %2823
  %2834 = lshr i32 %2833, 4
  %2835 = trunc i32 %2834 to i8
  %2836 = and i8 %2835, 1
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2836, i8* %2837, align 1
  %2838 = icmp eq i32 %2823, 0
  %2839 = zext i1 %2838 to i8
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2839, i8* %2840, align 1
  %2841 = lshr i32 %2823, 31
  %2842 = trunc i32 %2841 to i8
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2842, i8* %2843, align 1
  %2844 = lshr i32 %2823, 31
  %2845 = xor i32 %2841, %2844
  %2846 = add i32 %2845, %2841
  %2847 = icmp eq i32 %2846, 2
  %2848 = zext i1 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2848, i8* %2849, align 1
  store %struct.Memory* %loadMem_401e1e, %struct.Memory** %MEMORY
  %loadMem_401e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 33
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 7
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %EDX.i270 = bitcast %union.anon* %2855 to i32*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 9
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %RSI.i271 = bitcast %union.anon* %2858 to i64*
  %2859 = load i32, i32* %EDX.i270
  %2860 = zext i32 %2859 to i64
  %2861 = load i64, i64* %PC.i269
  %2862 = add i64 %2861, 3
  store i64 %2862, i64* %PC.i269
  %2863 = shl i64 %2860, 32
  %2864 = ashr exact i64 %2863, 32
  store i64 %2864, i64* %RSI.i271, align 8
  store %struct.Memory* %loadMem_401e21, %struct.Memory** %MEMORY
  %loadMem_401e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 33
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2867 to i64*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 9
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %RSI.i268 = bitcast %union.anon* %2870 to i64*
  %2871 = load i64, i64* %RSI.i268
  %2872 = load i64, i64* %PC.i267
  %2873 = add i64 %2872, 4
  store i64 %2873, i64* %PC.i267
  %2874 = shl i64 %2871, 1
  %2875 = icmp slt i64 %2874, 0
  %2876 = shl i64 %2874, 1
  store i64 %2876, i64* %RSI.i268, align 8
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2878 = zext i1 %2875 to i8
  store i8 %2878, i8* %2877, align 1
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2880 = trunc i64 %2876 to i32
  %2881 = and i32 %2880, 254
  %2882 = call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %2879, align 1
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2886, align 1
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2888 = icmp eq i64 %2876, 0
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %2887, align 1
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2891 = lshr i64 %2876, 63
  %2892 = trunc i64 %2891 to i8
  store i8 %2892, i8* %2890, align 1
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2893, align 1
  store %struct.Memory* %loadMem_401e24, %struct.Memory** %MEMORY
  %loadMem_401e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 5
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 9
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RSI.i266 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %RCX.i265
  %2904 = load i64, i64* %RSI.i266
  %2905 = load i64, i64* %PC.i264
  %2906 = add i64 %2905, 3
  store i64 %2906, i64* %PC.i264
  %2907 = add i64 %2904, %2903
  store i64 %2907, i64* %RCX.i265, align 8
  %2908 = icmp ult i64 %2907, %2903
  %2909 = icmp ult i64 %2907, %2904
  %2910 = or i1 %2908, %2909
  %2911 = zext i1 %2910 to i8
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2911, i8* %2912, align 1
  %2913 = trunc i64 %2907 to i32
  %2914 = and i32 %2913, 255
  %2915 = call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2918, i8* %2919, align 1
  %2920 = xor i64 %2904, %2903
  %2921 = xor i64 %2920, %2907
  %2922 = lshr i64 %2921, 4
  %2923 = trunc i64 %2922 to i8
  %2924 = and i8 %2923, 1
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2924, i8* %2925, align 1
  %2926 = icmp eq i64 %2907, 0
  %2927 = zext i1 %2926 to i8
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2927, i8* %2928, align 1
  %2929 = lshr i64 %2907, 63
  %2930 = trunc i64 %2929 to i8
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2930, i8* %2931, align 1
  %2932 = lshr i64 %2903, 63
  %2933 = lshr i64 %2904, 63
  %2934 = xor i64 %2929, %2932
  %2935 = xor i64 %2929, %2933
  %2936 = add i64 %2934, %2935
  %2937 = icmp eq i64 %2936, 2
  %2938 = zext i1 %2937 to i8
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2938, i8* %2939, align 1
  store %struct.Memory* %loadMem_401e28, %struct.Memory** %MEMORY
  %loadMem_401e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 33
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 9
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RSI.i262 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 15
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %2948 to i64*
  %2949 = load i64, i64* %RBP.i263
  %2950 = sub i64 %2949, 32
  %2951 = load i64, i64* %PC.i261
  %2952 = add i64 %2951, 4
  store i64 %2952, i64* %PC.i261
  %2953 = inttoptr i64 %2950 to i64*
  %2954 = load i64, i64* %2953
  store i64 %2954, i64* %RSI.i262, align 8
  store %struct.Memory* %loadMem_401e2b, %struct.Memory** %MEMORY
  %loadMem_401e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 9
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %RSI.i259 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 15
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2963 to i64*
  %2964 = load i64, i64* %RBP.i260
  %2965 = sub i64 %2964, 72
  %2966 = load i64, i64* %RSI.i259
  %2967 = load i64, i64* %PC.i258
  %2968 = add i64 %2967, 4
  store i64 %2968, i64* %PC.i258
  %2969 = inttoptr i64 %2965 to i64*
  store i64 %2966, i64* %2969
  store %struct.Memory* %loadMem_401e2f, %struct.Memory** %MEMORY
  %loadMem_401e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 5
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 9
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RSI.i257 = bitcast %union.anon* %2978 to i64*
  %2979 = load i64, i64* %RCX.i256
  %2980 = load i64, i64* %PC.i255
  %2981 = add i64 %2980, 3
  store i64 %2981, i64* %PC.i255
  store i64 %2979, i64* %RSI.i257, align 8
  store %struct.Memory* %loadMem_401e33, %struct.Memory** %MEMORY
  %loadMem_401e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 33
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2984 to i64*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 1
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %EAX.i253 = bitcast %union.anon* %2987 to i32*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 7
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %2990 to i64*
  %2991 = load i32, i32* %EAX.i253
  %2992 = zext i32 %2991 to i64
  %2993 = load i64, i64* %PC.i252
  %2994 = add i64 %2993, 2
  store i64 %2994, i64* %PC.i252
  %2995 = and i64 %2992, 4294967295
  store i64 %2995, i64* %RDX.i254, align 8
  store %struct.Memory* %loadMem_401e36, %struct.Memory** %MEMORY
  %loadMem_401e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 5
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 15
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %RBP.i251
  %3006 = sub i64 %3005, 72
  %3007 = load i64, i64* %PC.i249
  %3008 = add i64 %3007, 4
  store i64 %3008, i64* %PC.i249
  %3009 = inttoptr i64 %3006 to i64*
  %3010 = load i64, i64* %3009
  store i64 %3010, i64* %RCX.i250, align 8
  store %struct.Memory* %loadMem_401e38, %struct.Memory** %MEMORY
  %loadMem_401e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 33
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %3013 to i64*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 1
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %EAX.i247 = bitcast %union.anon* %3016 to i32*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 17
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %R8D.i248 = bitcast %union.anon* %3019 to i32*
  %3020 = bitcast i32* %R8D.i248 to i64*
  %3021 = load i32, i32* %EAX.i247
  %3022 = zext i32 %3021 to i64
  %3023 = load i64, i64* %PC.i246
  %3024 = add i64 %3023, 3
  store i64 %3024, i64* %PC.i246
  %3025 = and i64 %3022, 4294967295
  store i64 %3025, i64* %3020, align 8
  store %struct.Memory* %loadMem_401e3c, %struct.Memory** %MEMORY
  %loadMem1_401e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3028 to i64*
  %3029 = load i64, i64* %PC.i245
  %3030 = add i64 %3029, 2977
  %3031 = load i64, i64* %PC.i245
  %3032 = add i64 %3031, 5
  %3033 = load i64, i64* %PC.i245
  %3034 = add i64 %3033, 5
  store i64 %3034, i64* %PC.i245
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3036 = load i64, i64* %3035, align 8
  %3037 = add i64 %3036, -8
  %3038 = inttoptr i64 %3037 to i64*
  store i64 %3032, i64* %3038
  store i64 %3037, i64* %3035, align 8
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3030, i64* %3039, align 8
  store %struct.Memory* %loadMem1_401e3f, %struct.Memory** %MEMORY
  %loadMem2_401e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401e3f = load i64, i64* %3
  %call2_401e3f = call %struct.Memory* @sub_4029e0.ddot(%struct.State* %0, i64 %loadPC_401e3f, %struct.Memory* %loadMem2_401e3f)
  store %struct.Memory* %call2_401e3f, %struct.Memory** %MEMORY
  %loadMem_401e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 33
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3042 to i64*
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 15
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %3045 to i64*
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3047 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3046, i64 0, i64 0
  %XMM0.i244 = bitcast %union.VectorReg* %3047 to %union.vec128_t*
  %3048 = load i64, i64* %RBP.i243
  %3049 = sub i64 %3048, 40
  %3050 = bitcast %union.vec128_t* %XMM0.i244 to i8*
  %3051 = load i64, i64* %PC.i242
  %3052 = add i64 %3051, 5
  store i64 %3052, i64* %PC.i242
  %3053 = bitcast i8* %3050 to <2 x float>*
  %3054 = load <2 x float>, <2 x float>* %3053, align 1
  %3055 = extractelement <2 x float> %3054, i32 0
  %3056 = inttoptr i64 %3049 to float*
  store float %3055, float* %3056
  store %struct.Memory* %loadMem_401e44, %struct.Memory** %MEMORY
  %loadMem_401e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 5
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 15
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %RBP.i241
  %3067 = sub i64 %3066, 32
  %3068 = load i64, i64* %PC.i239
  %3069 = add i64 %3068, 4
  store i64 %3069, i64* %PC.i239
  %3070 = inttoptr i64 %3067 to i64*
  %3071 = load i64, i64* %3070
  store i64 %3071, i64* %RCX.i240, align 8
  store %struct.Memory* %loadMem_401e49, %struct.Memory** %MEMORY
  %loadMem_401e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 9
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %RSI.i237 = bitcast %union.anon* %3077 to i64*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 15
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3080 to i64*
  %3081 = load i64, i64* %RBP.i238
  %3082 = sub i64 %3081, 44
  %3083 = load i64, i64* %PC.i236
  %3084 = add i64 %3083, 4
  store i64 %3084, i64* %PC.i236
  %3085 = inttoptr i64 %3082 to i32*
  %3086 = load i32, i32* %3085
  %3087 = sext i32 %3086 to i64
  store i64 %3087, i64* %RSI.i237, align 8
  store %struct.Memory* %loadMem_401e4d, %struct.Memory** %MEMORY
  %loadMem_401e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 5
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 9
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %RSI.i234 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3098 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3097, i64 0, i64 0
  %YMM0.i235 = bitcast %union.VectorReg* %3098 to %"class.std::bitset"*
  %3099 = bitcast %"class.std::bitset"* %YMM0.i235 to i8*
  %3100 = load i64, i64* %RCX.i233
  %3101 = load i64, i64* %RSI.i234
  %3102 = mul i64 %3101, 4
  %3103 = add i64 %3102, %3100
  %3104 = load i64, i64* %PC.i232
  %3105 = add i64 %3104, 5
  store i64 %3105, i64* %PC.i232
  %3106 = inttoptr i64 %3103 to float*
  %3107 = load float, float* %3106
  %3108 = bitcast i8* %3099 to float*
  store float %3107, float* %3108, align 1
  %3109 = getelementptr inbounds i8, i8* %3099, i64 4
  %3110 = bitcast i8* %3109 to float*
  store float 0.000000e+00, float* %3110, align 1
  %3111 = getelementptr inbounds i8, i8* %3099, i64 8
  %3112 = bitcast i8* %3111 to float*
  store float 0.000000e+00, float* %3112, align 1
  %3113 = getelementptr inbounds i8, i8* %3099, i64 12
  %3114 = bitcast i8* %3113 to float*
  store float 0.000000e+00, float* %3114, align 1
  store %struct.Memory* %loadMem_401e51, %struct.Memory** %MEMORY
  %loadMem_401e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 33
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3117 to i64*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 15
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3121, i64 0, i64 0
  %YMM0.i231 = bitcast %union.VectorReg* %3122 to %"class.std::bitset"*
  %3123 = bitcast %"class.std::bitset"* %YMM0.i231 to i8*
  %3124 = bitcast %"class.std::bitset"* %YMM0.i231 to i8*
  %3125 = load i64, i64* %RBP.i230
  %3126 = sub i64 %3125, 40
  %3127 = load i64, i64* %PC.i229
  %3128 = add i64 %3127, 5
  store i64 %3128, i64* %PC.i229
  %3129 = bitcast i8* %3124 to <2 x float>*
  %3130 = load <2 x float>, <2 x float>* %3129, align 1
  %3131 = getelementptr inbounds i8, i8* %3124, i64 8
  %3132 = bitcast i8* %3131 to <2 x i32>*
  %3133 = load <2 x i32>, <2 x i32>* %3132, align 1
  %3134 = inttoptr i64 %3126 to float*
  %3135 = load float, float* %3134
  %3136 = extractelement <2 x float> %3130, i32 0
  %3137 = fsub float %3136, %3135
  %3138 = bitcast i8* %3123 to float*
  store float %3137, float* %3138, align 1
  %3139 = bitcast <2 x float> %3130 to <2 x i32>
  %3140 = extractelement <2 x i32> %3139, i32 1
  %3141 = getelementptr inbounds i8, i8* %3123, i64 4
  %3142 = bitcast i8* %3141 to i32*
  store i32 %3140, i32* %3142, align 1
  %3143 = extractelement <2 x i32> %3133, i32 0
  %3144 = getelementptr inbounds i8, i8* %3123, i64 8
  %3145 = bitcast i8* %3144 to i32*
  store i32 %3143, i32* %3145, align 1
  %3146 = extractelement <2 x i32> %3133, i32 1
  %3147 = getelementptr inbounds i8, i8* %3123, i64 12
  %3148 = bitcast i8* %3147 to i32*
  store i32 %3146, i32* %3148, align 1
  store %struct.Memory* %loadMem_401e56, %struct.Memory** %MEMORY
  %loadMem_401e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 33
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3151 to i64*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 5
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RCX.i227 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 15
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %3157 to i64*
  %3158 = load i64, i64* %RBP.i228
  %3159 = sub i64 %3158, 8
  %3160 = load i64, i64* %PC.i226
  %3161 = add i64 %3160, 4
  store i64 %3161, i64* %PC.i226
  %3162 = inttoptr i64 %3159 to i64*
  %3163 = load i64, i64* %3162
  store i64 %3163, i64* %RCX.i227, align 8
  store %struct.Memory* %loadMem_401e5b, %struct.Memory** %MEMORY
  %loadMem_401e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 1
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 15
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %3172 to i64*
  %3173 = load i64, i64* %RBP.i225
  %3174 = sub i64 %3173, 12
  %3175 = load i64, i64* %PC.i223
  %3176 = add i64 %3175, 3
  store i64 %3176, i64* %PC.i223
  %3177 = inttoptr i64 %3174 to i32*
  %3178 = load i32, i32* %3177
  %3179 = zext i32 %3178 to i64
  store i64 %3179, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_401e5f, %struct.Memory** %MEMORY
  %loadMem_401e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 33
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 1
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 15
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %3188 to i64*
  %3189 = load i64, i64* %RAX.i221
  %3190 = load i64, i64* %RBP.i222
  %3191 = sub i64 %3190, 44
  %3192 = load i64, i64* %PC.i220
  %3193 = add i64 %3192, 4
  store i64 %3193, i64* %PC.i220
  %3194 = inttoptr i64 %3191 to i32*
  %3195 = load i32, i32* %3194
  %3196 = shl i64 %3189, 32
  %3197 = ashr exact i64 %3196, 32
  %3198 = sext i32 %3195 to i64
  %3199 = mul i64 %3198, %3197
  %3200 = trunc i64 %3199 to i32
  %3201 = and i64 %3199, 4294967295
  store i64 %3201, i64* %RAX.i221, align 8
  %3202 = shl i64 %3199, 32
  %3203 = ashr exact i64 %3202, 32
  %3204 = icmp ne i64 %3203, %3199
  %3205 = zext i1 %3204 to i8
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3205, i8* %3206, align 1
  %3207 = and i32 %3200, 255
  %3208 = call i32 @llvm.ctpop.i32(i32 %3207)
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  %3211 = xor i8 %3210, 1
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3211, i8* %3212, align 1
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3213, align 1
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3214, align 1
  %3215 = lshr i32 %3200, 31
  %3216 = trunc i32 %3215 to i8
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3216, i8* %3217, align 1
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3205, i8* %3218, align 1
  store %struct.Memory* %loadMem_401e62, %struct.Memory** %MEMORY
  %loadMem_401e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 1
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 15
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %RAX.i218
  %3229 = load i64, i64* %RBP.i219
  %3230 = sub i64 %3229, 44
  %3231 = load i64, i64* %PC.i217
  %3232 = add i64 %3231, 3
  store i64 %3232, i64* %PC.i217
  %3233 = trunc i64 %3228 to i32
  %3234 = inttoptr i64 %3230 to i32*
  %3235 = load i32, i32* %3234
  %3236 = add i32 %3235, %3233
  %3237 = zext i32 %3236 to i64
  store i64 %3237, i64* %RAX.i218, align 8
  %3238 = icmp ult i32 %3236, %3233
  %3239 = icmp ult i32 %3236, %3235
  %3240 = or i1 %3238, %3239
  %3241 = zext i1 %3240 to i8
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3241, i8* %3242, align 1
  %3243 = and i32 %3236, 255
  %3244 = call i32 @llvm.ctpop.i32(i32 %3243)
  %3245 = trunc i32 %3244 to i8
  %3246 = and i8 %3245, 1
  %3247 = xor i8 %3246, 1
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3247, i8* %3248, align 1
  %3249 = xor i32 %3235, %3233
  %3250 = xor i32 %3249, %3236
  %3251 = lshr i32 %3250, 4
  %3252 = trunc i32 %3251 to i8
  %3253 = and i8 %3252, 1
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3253, i8* %3254, align 1
  %3255 = icmp eq i32 %3236, 0
  %3256 = zext i1 %3255 to i8
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3256, i8* %3257, align 1
  %3258 = lshr i32 %3236, 31
  %3259 = trunc i32 %3258 to i8
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3259, i8* %3260, align 1
  %3261 = lshr i32 %3233, 31
  %3262 = lshr i32 %3235, 31
  %3263 = xor i32 %3258, %3261
  %3264 = xor i32 %3258, %3262
  %3265 = add i32 %3263, %3264
  %3266 = icmp eq i32 %3265, 2
  %3267 = zext i1 %3266 to i8
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3267, i8* %3268, align 1
  store %struct.Memory* %loadMem_401e66, %struct.Memory** %MEMORY
  %loadMem_401e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 33
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3271 to i64*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 1
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %EAX.i215 = bitcast %union.anon* %3274 to i32*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 9
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RSI.i216 = bitcast %union.anon* %3277 to i64*
  %3278 = load i32, i32* %EAX.i215
  %3279 = zext i32 %3278 to i64
  %3280 = load i64, i64* %PC.i214
  %3281 = add i64 %3280, 3
  store i64 %3281, i64* %PC.i214
  %3282 = shl i64 %3279, 32
  %3283 = ashr exact i64 %3282, 32
  store i64 %3283, i64* %RSI.i216, align 8
  store %struct.Memory* %loadMem_401e69, %struct.Memory** %MEMORY
  %loadMem_401e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 33
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3286 to i64*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 5
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %3289 to i64*
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3291 = getelementptr inbounds %struct.GPR, %struct.GPR* %3290, i32 0, i32 9
  %3292 = getelementptr inbounds %struct.Reg, %struct.Reg* %3291, i32 0, i32 0
  %RSI.i212 = bitcast %union.anon* %3292 to i64*
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3294 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3293, i64 0, i64 0
  %YMM0.i213 = bitcast %union.VectorReg* %3294 to %"class.std::bitset"*
  %3295 = bitcast %"class.std::bitset"* %YMM0.i213 to i8*
  %3296 = bitcast %"class.std::bitset"* %YMM0.i213 to i8*
  %3297 = load i64, i64* %RCX.i211
  %3298 = load i64, i64* %RSI.i212
  %3299 = mul i64 %3298, 4
  %3300 = add i64 %3299, %3297
  %3301 = load i64, i64* %PC.i210
  %3302 = add i64 %3301, 5
  store i64 %3302, i64* %PC.i210
  %3303 = bitcast i8* %3296 to <2 x float>*
  %3304 = load <2 x float>, <2 x float>* %3303, align 1
  %3305 = getelementptr inbounds i8, i8* %3296, i64 8
  %3306 = bitcast i8* %3305 to <2 x i32>*
  %3307 = load <2 x i32>, <2 x i32>* %3306, align 1
  %3308 = inttoptr i64 %3300 to float*
  %3309 = load float, float* %3308
  %3310 = extractelement <2 x float> %3304, i32 0
  %3311 = fdiv float %3310, %3309
  %3312 = bitcast i8* %3295 to float*
  store float %3311, float* %3312, align 1
  %3313 = bitcast <2 x float> %3304 to <2 x i32>
  %3314 = extractelement <2 x i32> %3313, i32 1
  %3315 = getelementptr inbounds i8, i8* %3295, i64 4
  %3316 = bitcast i8* %3315 to i32*
  store i32 %3314, i32* %3316, align 1
  %3317 = extractelement <2 x i32> %3307, i32 0
  %3318 = getelementptr inbounds i8, i8* %3295, i64 8
  %3319 = bitcast i8* %3318 to i32*
  store i32 %3317, i32* %3319, align 1
  %3320 = extractelement <2 x i32> %3307, i32 1
  %3321 = getelementptr inbounds i8, i8* %3295, i64 12
  %3322 = bitcast i8* %3321 to i32*
  store i32 %3320, i32* %3322, align 1
  store %struct.Memory* %loadMem_401e6c, %struct.Memory** %MEMORY
  %loadMem_401e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 33
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 5
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 15
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %3331 to i64*
  %3332 = load i64, i64* %RBP.i209
  %3333 = sub i64 %3332, 32
  %3334 = load i64, i64* %PC.i207
  %3335 = add i64 %3334, 4
  store i64 %3335, i64* %PC.i207
  %3336 = inttoptr i64 %3333 to i64*
  %3337 = load i64, i64* %3336
  store i64 %3337, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_401e71, %struct.Memory** %MEMORY
  %loadMem_401e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 33
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3340 to i64*
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 9
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %RSI.i205 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 15
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %3346 to i64*
  %3347 = load i64, i64* %RBP.i206
  %3348 = sub i64 %3347, 44
  %3349 = load i64, i64* %PC.i204
  %3350 = add i64 %3349, 4
  store i64 %3350, i64* %PC.i204
  %3351 = inttoptr i64 %3348 to i32*
  %3352 = load i32, i32* %3351
  %3353 = sext i32 %3352 to i64
  store i64 %3353, i64* %RSI.i205, align 8
  store %struct.Memory* %loadMem_401e75, %struct.Memory** %MEMORY
  %loadMem_401e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 33
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 5
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %3359 to i64*
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 9
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %RSI.i202 = bitcast %union.anon* %3362 to i64*
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3363, i64 0, i64 0
  %XMM0.i203 = bitcast %union.VectorReg* %3364 to %union.vec128_t*
  %3365 = load i64, i64* %RCX.i201
  %3366 = load i64, i64* %RSI.i202
  %3367 = mul i64 %3366, 4
  %3368 = add i64 %3367, %3365
  %3369 = bitcast %union.vec128_t* %XMM0.i203 to i8*
  %3370 = load i64, i64* %PC.i200
  %3371 = add i64 %3370, 5
  store i64 %3371, i64* %PC.i200
  %3372 = bitcast i8* %3369 to <2 x float>*
  %3373 = load <2 x float>, <2 x float>* %3372, align 1
  %3374 = extractelement <2 x float> %3373, i32 0
  %3375 = inttoptr i64 %3368 to float*
  store float %3374, float* %3375
  store %struct.Memory* %loadMem_401e79, %struct.Memory** %MEMORY
  %loadMem_401e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 33
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3378 to i64*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 1
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %3381 to i64*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 15
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %3384 to i64*
  %3385 = load i64, i64* %RBP.i199
  %3386 = sub i64 %3385, 44
  %3387 = load i64, i64* %PC.i197
  %3388 = add i64 %3387, 3
  store i64 %3388, i64* %PC.i197
  %3389 = inttoptr i64 %3386 to i32*
  %3390 = load i32, i32* %3389
  %3391 = zext i32 %3390 to i64
  store i64 %3391, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_401e7e, %struct.Memory** %MEMORY
  %loadMem_401e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 33
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 1
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %RAX.i196
  %3399 = load i64, i64* %PC.i195
  %3400 = add i64 %3399, 3
  store i64 %3400, i64* %PC.i195
  %3401 = trunc i64 %3398 to i32
  %3402 = add i32 1, %3401
  %3403 = zext i32 %3402 to i64
  store i64 %3403, i64* %RAX.i196, align 8
  %3404 = icmp ult i32 %3402, %3401
  %3405 = icmp ult i32 %3402, 1
  %3406 = or i1 %3404, %3405
  %3407 = zext i1 %3406 to i8
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3407, i8* %3408, align 1
  %3409 = and i32 %3402, 255
  %3410 = call i32 @llvm.ctpop.i32(i32 %3409)
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  %3413 = xor i8 %3412, 1
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3413, i8* %3414, align 1
  %3415 = xor i64 1, %3398
  %3416 = trunc i64 %3415 to i32
  %3417 = xor i32 %3416, %3402
  %3418 = lshr i32 %3417, 4
  %3419 = trunc i32 %3418 to i8
  %3420 = and i8 %3419, 1
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3420, i8* %3421, align 1
  %3422 = icmp eq i32 %3402, 0
  %3423 = zext i1 %3422 to i8
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3423, i8* %3424, align 1
  %3425 = lshr i32 %3402, 31
  %3426 = trunc i32 %3425 to i8
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3426, i8* %3427, align 1
  %3428 = lshr i32 %3401, 31
  %3429 = xor i32 %3425, %3428
  %3430 = add i32 %3429, %3425
  %3431 = icmp eq i32 %3430, 2
  %3432 = zext i1 %3431 to i8
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3432, i8* %3433, align 1
  store %struct.Memory* %loadMem_401e81, %struct.Memory** %MEMORY
  %loadMem_401e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 1
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %EAX.i193 = bitcast %union.anon* %3439 to i32*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 15
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %3442 to i64*
  %3443 = load i64, i64* %RBP.i194
  %3444 = sub i64 %3443, 44
  %3445 = load i32, i32* %EAX.i193
  %3446 = zext i32 %3445 to i64
  %3447 = load i64, i64* %PC.i192
  %3448 = add i64 %3447, 3
  store i64 %3448, i64* %PC.i192
  %3449 = inttoptr i64 %3444 to i32*
  store i32 %3445, i32* %3449
  store %struct.Memory* %loadMem_401e84, %struct.Memory** %MEMORY
  %loadMem_401e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 33
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3452 to i64*
  %3453 = load i64, i64* %PC.i191
  %3454 = add i64 %3453, -136
  %3455 = load i64, i64* %PC.i191
  %3456 = add i64 %3455, 5
  store i64 %3456, i64* %PC.i191
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3454, i64* %3457, align 8
  store %struct.Memory* %loadMem_401e87, %struct.Memory** %MEMORY
  br label %block_.L_401dff

block_.L_401e8c:                                  ; preds = %block_.L_401dff
  %loadMem_401e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 33
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3460 to i64*
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 15
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %3463 to i64*
  %3464 = load i64, i64* %RBP.i190
  %3465 = sub i64 %3464, 56
  %3466 = load i64, i64* %PC.i189
  %3467 = add i64 %3466, 4
  store i64 %3467, i64* %PC.i189
  %3468 = inttoptr i64 %3465 to i32*
  %3469 = load i32, i32* %3468
  %3470 = sub i32 %3469, 1
  %3471 = icmp ult i32 %3469, 1
  %3472 = zext i1 %3471 to i8
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3472, i8* %3473, align 1
  %3474 = and i32 %3470, 255
  %3475 = call i32 @llvm.ctpop.i32(i32 %3474)
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  %3478 = xor i8 %3477, 1
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3478, i8* %3479, align 1
  %3480 = xor i32 %3469, 1
  %3481 = xor i32 %3480, %3470
  %3482 = lshr i32 %3481, 4
  %3483 = trunc i32 %3482 to i8
  %3484 = and i8 %3483, 1
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3484, i8* %3485, align 1
  %3486 = icmp eq i32 %3470, 0
  %3487 = zext i1 %3486 to i8
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3487, i8* %3488, align 1
  %3489 = lshr i32 %3470, 31
  %3490 = trunc i32 %3489 to i8
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3490, i8* %3491, align 1
  %3492 = lshr i32 %3469, 31
  %3493 = xor i32 %3489, %3492
  %3494 = add i32 %3493, %3492
  %3495 = icmp eq i32 %3494, 2
  %3496 = zext i1 %3495 to i8
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3496, i8* %3497, align 1
  store %struct.Memory* %loadMem_401e8c, %struct.Memory** %MEMORY
  %loadMem_401e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 33
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %3500 to i64*
  %3501 = load i64, i64* %PC.i188
  %3502 = add i64 %3501, 274
  %3503 = load i64, i64* %PC.i188
  %3504 = add i64 %3503, 6
  %3505 = load i64, i64* %PC.i188
  %3506 = add i64 %3505, 6
  store i64 %3506, i64* %PC.i188
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3508 = load i8, i8* %3507, align 1
  %3509 = icmp ne i8 %3508, 0
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3511 = load i8, i8* %3510, align 1
  %3512 = icmp ne i8 %3511, 0
  %3513 = xor i1 %3509, %3512
  %3514 = zext i1 %3513 to i8
  store i8 %3514, i8* %BRANCH_TAKEN, align 1
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3516 = select i1 %3513, i64 %3502, i64 %3504
  store i64 %3516, i64* %3515, align 8
  store %struct.Memory* %loadMem_401e90, %struct.Memory** %MEMORY
  %loadBr_401e90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e90 = icmp eq i8 %loadBr_401e90, 1
  br i1 %cmpBr_401e90, label %block_.L_401fa2, label %block_401e96

block_401e96:                                     ; preds = %block_.L_401e8c
  %loadMem_401e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 33
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3519 to i64*
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 15
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %3522 to i64*
  %3523 = load i64, i64* %RBP.i187
  %3524 = sub i64 %3523, 48
  %3525 = load i64, i64* %PC.i186
  %3526 = add i64 %3525, 7
  store i64 %3526, i64* %PC.i186
  %3527 = inttoptr i64 %3524 to i32*
  store i32 1, i32* %3527
  store %struct.Memory* %loadMem_401e96, %struct.Memory** %MEMORY
  br label %block_.L_401e9d

block_.L_401e9d:                                  ; preds = %block_.L_401f8f, %block_401e96
  %loadMem_401e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 1
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 15
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %RBP.i185
  %3538 = sub i64 %3537, 48
  %3539 = load i64, i64* %PC.i183
  %3540 = add i64 %3539, 3
  store i64 %3540, i64* %PC.i183
  %3541 = inttoptr i64 %3538 to i32*
  %3542 = load i32, i32* %3541
  %3543 = zext i32 %3542 to i64
  store i64 %3543, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_401e9d, %struct.Memory** %MEMORY
  %loadMem_401ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 1
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %EAX.i181 = bitcast %union.anon* %3549 to i32*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 15
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %3552 to i64*
  %3553 = load i32, i32* %EAX.i181
  %3554 = zext i32 %3553 to i64
  %3555 = load i64, i64* %RBP.i182
  %3556 = sub i64 %3555, 56
  %3557 = load i64, i64* %PC.i180
  %3558 = add i64 %3557, 3
  store i64 %3558, i64* %PC.i180
  %3559 = inttoptr i64 %3556 to i32*
  %3560 = load i32, i32* %3559
  %3561 = sub i32 %3553, %3560
  %3562 = icmp ult i32 %3553, %3560
  %3563 = zext i1 %3562 to i8
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3563, i8* %3564, align 1
  %3565 = and i32 %3561, 255
  %3566 = call i32 @llvm.ctpop.i32(i32 %3565)
  %3567 = trunc i32 %3566 to i8
  %3568 = and i8 %3567, 1
  %3569 = xor i8 %3568, 1
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3569, i8* %3570, align 1
  %3571 = xor i32 %3560, %3553
  %3572 = xor i32 %3571, %3561
  %3573 = lshr i32 %3572, 4
  %3574 = trunc i32 %3573 to i8
  %3575 = and i8 %3574, 1
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3575, i8* %3576, align 1
  %3577 = icmp eq i32 %3561, 0
  %3578 = zext i1 %3577 to i8
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3578, i8* %3579, align 1
  %3580 = lshr i32 %3561, 31
  %3581 = trunc i32 %3580 to i8
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3581, i8* %3582, align 1
  %3583 = lshr i32 %3553, 31
  %3584 = lshr i32 %3560, 31
  %3585 = xor i32 %3584, %3583
  %3586 = xor i32 %3580, %3583
  %3587 = add i32 %3586, %3585
  %3588 = icmp eq i32 %3587, 2
  %3589 = zext i1 %3588 to i8
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3589, i8* %3590, align 1
  store %struct.Memory* %loadMem_401ea0, %struct.Memory** %MEMORY
  %loadMem_401ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 33
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3593 to i64*
  %3594 = load i64, i64* %PC.i179
  %3595 = add i64 %3594, 250
  %3596 = load i64, i64* %PC.i179
  %3597 = add i64 %3596, 6
  %3598 = load i64, i64* %PC.i179
  %3599 = add i64 %3598, 6
  store i64 %3599, i64* %PC.i179
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3601 = load i8, i8* %3600, align 1
  %3602 = icmp ne i8 %3601, 0
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3604 = load i8, i8* %3603, align 1
  %3605 = icmp ne i8 %3604, 0
  %3606 = xor i1 %3602, %3605
  %3607 = xor i1 %3606, true
  %3608 = zext i1 %3607 to i8
  store i8 %3608, i8* %BRANCH_TAKEN, align 1
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3610 = select i1 %3606, i64 %3597, i64 %3595
  store i64 %3610, i64* %3609, align 8
  store %struct.Memory* %loadMem_401ea3, %struct.Memory** %MEMORY
  %loadBr_401ea3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401ea3 = icmp eq i8 %loadBr_401ea3, 1
  br i1 %cmpBr_401ea3, label %block_.L_401f9d, label %block_401ea9

block_401ea9:                                     ; preds = %block_.L_401e9d
  %loadMem_401ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 1
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %3616 to i64*
  %3617 = load i64, i64* %PC.i177
  %3618 = add i64 %3617, 5
  store i64 %3618, i64* %PC.i177
  store i64 1, i64* %RAX.i178, align 8
  store %struct.Memory* %loadMem_401ea9, %struct.Memory** %MEMORY
  %loadMem_401eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 33
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 5
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %3624 to i64*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 15
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %3627 to i64*
  %3628 = load i64, i64* %RBP.i176
  %3629 = sub i64 %3628, 16
  %3630 = load i64, i64* %PC.i174
  %3631 = add i64 %3630, 3
  store i64 %3631, i64* %PC.i174
  %3632 = inttoptr i64 %3629 to i32*
  %3633 = load i32, i32* %3632
  %3634 = zext i32 %3633 to i64
  store i64 %3634, i64* %RCX.i175, align 8
  store %struct.Memory* %loadMem_401eae, %struct.Memory** %MEMORY
  %loadMem_401eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 33
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %3637 to i64*
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 7
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %RDX.i172 = bitcast %union.anon* %3640 to i64*
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 15
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %3643 to i64*
  %3644 = load i64, i64* %RBP.i173
  %3645 = sub i64 %3644, 48
  %3646 = load i64, i64* %PC.i171
  %3647 = add i64 %3646, 3
  store i64 %3647, i64* %PC.i171
  %3648 = inttoptr i64 %3645 to i32*
  %3649 = load i32, i32* %3648
  %3650 = zext i32 %3649 to i64
  store i64 %3650, i64* %RDX.i172, align 8
  store %struct.Memory* %loadMem_401eb1, %struct.Memory** %MEMORY
  %loadMem_401eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 33
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 7
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %RDX.i170 = bitcast %union.anon* %3656 to i64*
  %3657 = load i64, i64* %RDX.i170
  %3658 = load i64, i64* %PC.i169
  %3659 = add i64 %3658, 3
  store i64 %3659, i64* %PC.i169
  %3660 = trunc i64 %3657 to i32
  %3661 = add i32 1, %3660
  %3662 = zext i32 %3661 to i64
  store i64 %3662, i64* %RDX.i170, align 8
  %3663 = icmp ult i32 %3661, %3660
  %3664 = icmp ult i32 %3661, 1
  %3665 = or i1 %3663, %3664
  %3666 = zext i1 %3665 to i8
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3666, i8* %3667, align 1
  %3668 = and i32 %3661, 255
  %3669 = call i32 @llvm.ctpop.i32(i32 %3668)
  %3670 = trunc i32 %3669 to i8
  %3671 = and i8 %3670, 1
  %3672 = xor i8 %3671, 1
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3672, i8* %3673, align 1
  %3674 = xor i64 1, %3657
  %3675 = trunc i64 %3674 to i32
  %3676 = xor i32 %3675, %3661
  %3677 = lshr i32 %3676, 4
  %3678 = trunc i32 %3677 to i8
  %3679 = and i8 %3678, 1
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3679, i8* %3680, align 1
  %3681 = icmp eq i32 %3661, 0
  %3682 = zext i1 %3681 to i8
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3682, i8* %3683, align 1
  %3684 = lshr i32 %3661, 31
  %3685 = trunc i32 %3684 to i8
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3685, i8* %3686, align 1
  %3687 = lshr i32 %3660, 31
  %3688 = xor i32 %3684, %3687
  %3689 = add i32 %3688, %3684
  %3690 = icmp eq i32 %3689, 2
  %3691 = zext i1 %3690 to i8
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3691, i8* %3692, align 1
  store %struct.Memory* %loadMem_401eb4, %struct.Memory** %MEMORY
  %loadMem_401eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 33
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3695 to i64*
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 7
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %EDX.i167 = bitcast %union.anon* %3698 to i32*
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 5
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %3701 to i64*
  %3702 = load i64, i64* %RCX.i168
  %3703 = load i32, i32* %EDX.i167
  %3704 = zext i32 %3703 to i64
  %3705 = load i64, i64* %PC.i166
  %3706 = add i64 %3705, 2
  store i64 %3706, i64* %PC.i166
  %3707 = trunc i64 %3702 to i32
  %3708 = sub i32 %3707, %3703
  %3709 = zext i32 %3708 to i64
  store i64 %3709, i64* %RCX.i168, align 8
  %3710 = icmp ult i32 %3707, %3703
  %3711 = zext i1 %3710 to i8
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3711, i8* %3712, align 1
  %3713 = and i32 %3708, 255
  %3714 = call i32 @llvm.ctpop.i32(i32 %3713)
  %3715 = trunc i32 %3714 to i8
  %3716 = and i8 %3715, 1
  %3717 = xor i8 %3716, 1
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3717, i8* %3718, align 1
  %3719 = xor i64 %3704, %3702
  %3720 = trunc i64 %3719 to i32
  %3721 = xor i32 %3720, %3708
  %3722 = lshr i32 %3721, 4
  %3723 = trunc i32 %3722 to i8
  %3724 = and i8 %3723, 1
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3724, i8* %3725, align 1
  %3726 = icmp eq i32 %3708, 0
  %3727 = zext i1 %3726 to i8
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3727, i8* %3728, align 1
  %3729 = lshr i32 %3708, 31
  %3730 = trunc i32 %3729 to i8
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3730, i8* %3731, align 1
  %3732 = lshr i32 %3707, 31
  %3733 = lshr i32 %3703, 31
  %3734 = xor i32 %3733, %3732
  %3735 = xor i32 %3729, %3732
  %3736 = add i32 %3735, %3734
  %3737 = icmp eq i32 %3736, 2
  %3738 = zext i1 %3737 to i8
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3738, i8* %3739, align 1
  store %struct.Memory* %loadMem_401eb7, %struct.Memory** %MEMORY
  %loadMem_401eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 33
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3742 to i64*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 5
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %ECX.i164 = bitcast %union.anon* %3745 to i32*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 15
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %3748 to i64*
  %3749 = load i64, i64* %RBP.i165
  %3750 = sub i64 %3749, 44
  %3751 = load i32, i32* %ECX.i164
  %3752 = zext i32 %3751 to i64
  %3753 = load i64, i64* %PC.i163
  %3754 = add i64 %3753, 3
  store i64 %3754, i64* %PC.i163
  %3755 = inttoptr i64 %3750 to i32*
  store i32 %3751, i32* %3755
  store %struct.Memory* %loadMem_401eb9, %struct.Memory** %MEMORY
  %loadMem_401ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 33
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3758 to i64*
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 9
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %RSI.i161 = bitcast %union.anon* %3761 to i64*
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 15
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %3764 to i64*
  %3765 = load i64, i64* %RBP.i162
  %3766 = sub i64 %3765, 32
  %3767 = load i64, i64* %PC.i160
  %3768 = add i64 %3767, 4
  store i64 %3768, i64* %PC.i160
  %3769 = inttoptr i64 %3766 to i64*
  %3770 = load i64, i64* %3769
  store i64 %3770, i64* %RSI.i161, align 8
  store %struct.Memory* %loadMem_401ebc, %struct.Memory** %MEMORY
  %loadMem_401ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 33
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 11
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RDI.i158 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 15
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %3779 to i64*
  %3780 = load i64, i64* %RBP.i159
  %3781 = sub i64 %3780, 44
  %3782 = load i64, i64* %PC.i157
  %3783 = add i64 %3782, 4
  store i64 %3783, i64* %PC.i157
  %3784 = inttoptr i64 %3781 to i32*
  %3785 = load i32, i32* %3784
  %3786 = sext i32 %3785 to i64
  store i64 %3786, i64* %RDI.i158, align 8
  store %struct.Memory* %loadMem_401ec0, %struct.Memory** %MEMORY
  %loadMem_401ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 33
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 9
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %RSI.i154 = bitcast %union.anon* %3792 to i64*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 11
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %RDI.i155 = bitcast %union.anon* %3795 to i64*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3797 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3796, i64 0, i64 0
  %YMM0.i156 = bitcast %union.VectorReg* %3797 to %"class.std::bitset"*
  %3798 = bitcast %"class.std::bitset"* %YMM0.i156 to i8*
  %3799 = load i64, i64* %RSI.i154
  %3800 = load i64, i64* %RDI.i155
  %3801 = mul i64 %3800, 4
  %3802 = add i64 %3801, %3799
  %3803 = load i64, i64* %PC.i153
  %3804 = add i64 %3803, 5
  store i64 %3804, i64* %PC.i153
  %3805 = inttoptr i64 %3802 to float*
  %3806 = load float, float* %3805
  %3807 = bitcast i8* %3798 to float*
  store float %3806, float* %3807, align 1
  %3808 = getelementptr inbounds i8, i8* %3798, i64 4
  %3809 = bitcast i8* %3808 to float*
  store float 0.000000e+00, float* %3809, align 1
  %3810 = getelementptr inbounds i8, i8* %3798, i64 8
  %3811 = bitcast i8* %3810 to float*
  store float 0.000000e+00, float* %3811, align 1
  %3812 = getelementptr inbounds i8, i8* %3798, i64 12
  %3813 = bitcast i8* %3812 to float*
  store float 0.000000e+00, float* %3813, align 1
  store %struct.Memory* %loadMem_401ec4, %struct.Memory** %MEMORY
  %loadMem_401ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3816 to i64*
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 5
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 15
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %3822 to i64*
  %3823 = load i64, i64* %RBP.i152
  %3824 = sub i64 %3823, 16
  %3825 = load i64, i64* %PC.i150
  %3826 = add i64 %3825, 3
  store i64 %3826, i64* %PC.i150
  %3827 = inttoptr i64 %3824 to i32*
  %3828 = load i32, i32* %3827
  %3829 = zext i32 %3828 to i64
  store i64 %3829, i64* %RCX.i151, align 8
  store %struct.Memory* %loadMem_401ec9, %struct.Memory** %MEMORY
  %loadMem_401ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 33
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %3832 to i64*
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 7
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %RDX.i148 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 15
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %3838 to i64*
  %3839 = load i64, i64* %RBP.i149
  %3840 = sub i64 %3839, 44
  %3841 = load i64, i64* %PC.i147
  %3842 = add i64 %3841, 3
  store i64 %3842, i64* %PC.i147
  %3843 = inttoptr i64 %3840 to i32*
  %3844 = load i32, i32* %3843
  %3845 = zext i32 %3844 to i64
  store i64 %3845, i64* %RDX.i148, align 8
  store %struct.Memory* %loadMem_401ecc, %struct.Memory** %MEMORY
  %loadMem_401ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 33
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3848 to i64*
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 7
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %RDX.i146 = bitcast %union.anon* %3851 to i64*
  %3852 = load i64, i64* %RDX.i146
  %3853 = load i64, i64* %PC.i145
  %3854 = add i64 %3853, 3
  store i64 %3854, i64* %PC.i145
  %3855 = trunc i64 %3852 to i32
  %3856 = add i32 1, %3855
  %3857 = zext i32 %3856 to i64
  store i64 %3857, i64* %RDX.i146, align 8
  %3858 = icmp ult i32 %3856, %3855
  %3859 = icmp ult i32 %3856, 1
  %3860 = or i1 %3858, %3859
  %3861 = zext i1 %3860 to i8
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3861, i8* %3862, align 1
  %3863 = and i32 %3856, 255
  %3864 = call i32 @llvm.ctpop.i32(i32 %3863)
  %3865 = trunc i32 %3864 to i8
  %3866 = and i8 %3865, 1
  %3867 = xor i8 %3866, 1
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3867, i8* %3868, align 1
  %3869 = xor i64 1, %3852
  %3870 = trunc i64 %3869 to i32
  %3871 = xor i32 %3870, %3856
  %3872 = lshr i32 %3871, 4
  %3873 = trunc i32 %3872 to i8
  %3874 = and i8 %3873, 1
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3874, i8* %3875, align 1
  %3876 = icmp eq i32 %3856, 0
  %3877 = zext i1 %3876 to i8
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3877, i8* %3878, align 1
  %3879 = lshr i32 %3856, 31
  %3880 = trunc i32 %3879 to i8
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3880, i8* %3881, align 1
  %3882 = lshr i32 %3855, 31
  %3883 = xor i32 %3879, %3882
  %3884 = add i32 %3883, %3879
  %3885 = icmp eq i32 %3884, 2
  %3886 = zext i1 %3885 to i8
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3886, i8* %3887, align 1
  store %struct.Memory* %loadMem_401ecf, %struct.Memory** %MEMORY
  %loadMem_401ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 33
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3890 to i64*
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 7
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %EDX.i143 = bitcast %union.anon* %3893 to i32*
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 5
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %3896 to i64*
  %3897 = load i64, i64* %RCX.i144
  %3898 = load i32, i32* %EDX.i143
  %3899 = zext i32 %3898 to i64
  %3900 = load i64, i64* %PC.i142
  %3901 = add i64 %3900, 2
  store i64 %3901, i64* %PC.i142
  %3902 = trunc i64 %3897 to i32
  %3903 = sub i32 %3902, %3898
  %3904 = zext i32 %3903 to i64
  store i64 %3904, i64* %RCX.i144, align 8
  %3905 = icmp ult i32 %3902, %3898
  %3906 = zext i1 %3905 to i8
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3906, i8* %3907, align 1
  %3908 = and i32 %3903, 255
  %3909 = call i32 @llvm.ctpop.i32(i32 %3908)
  %3910 = trunc i32 %3909 to i8
  %3911 = and i8 %3910, 1
  %3912 = xor i8 %3911, 1
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3912, i8* %3913, align 1
  %3914 = xor i64 %3899, %3897
  %3915 = trunc i64 %3914 to i32
  %3916 = xor i32 %3915, %3903
  %3917 = lshr i32 %3916, 4
  %3918 = trunc i32 %3917 to i8
  %3919 = and i8 %3918, 1
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3919, i8* %3920, align 1
  %3921 = icmp eq i32 %3903, 0
  %3922 = zext i1 %3921 to i8
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3922, i8* %3923, align 1
  %3924 = lshr i32 %3903, 31
  %3925 = trunc i32 %3924 to i8
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3925, i8* %3926, align 1
  %3927 = lshr i32 %3902, 31
  %3928 = lshr i32 %3898, 31
  %3929 = xor i32 %3928, %3927
  %3930 = xor i32 %3924, %3927
  %3931 = add i32 %3930, %3929
  %3932 = icmp eq i32 %3931, 2
  %3933 = zext i1 %3932 to i8
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3933, i8* %3934, align 1
  store %struct.Memory* %loadMem_401ed2, %struct.Memory** %MEMORY
  %loadMem_401ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 9
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RSI.i140 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 15
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %3943 to i64*
  %3944 = load i64, i64* %RBP.i141
  %3945 = sub i64 %3944, 8
  %3946 = load i64, i64* %PC.i139
  %3947 = add i64 %3946, 4
  store i64 %3947, i64* %PC.i139
  %3948 = inttoptr i64 %3945 to i64*
  %3949 = load i64, i64* %3948
  store i64 %3949, i64* %RSI.i140, align 8
  store %struct.Memory* %loadMem_401ed4, %struct.Memory** %MEMORY
  %loadMem_401ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 33
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3952 to i64*
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 7
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %3955 to i64*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 15
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %3958 to i64*
  %3959 = load i64, i64* %RBP.i138
  %3960 = sub i64 %3959, 12
  %3961 = load i64, i64* %PC.i136
  %3962 = add i64 %3961, 3
  store i64 %3962, i64* %PC.i136
  %3963 = inttoptr i64 %3960 to i32*
  %3964 = load i32, i32* %3963
  %3965 = zext i32 %3964 to i64
  store i64 %3965, i64* %RDX.i137, align 8
  store %struct.Memory* %loadMem_401ed8, %struct.Memory** %MEMORY
  %loadMem_401edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 7
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 15
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %3974 to i64*
  %3975 = load i64, i64* %RDX.i134
  %3976 = load i64, i64* %RBP.i135
  %3977 = sub i64 %3976, 44
  %3978 = load i64, i64* %PC.i133
  %3979 = add i64 %3978, 4
  store i64 %3979, i64* %PC.i133
  %3980 = inttoptr i64 %3977 to i32*
  %3981 = load i32, i32* %3980
  %3982 = shl i64 %3975, 32
  %3983 = ashr exact i64 %3982, 32
  %3984 = sext i32 %3981 to i64
  %3985 = mul i64 %3984, %3983
  %3986 = trunc i64 %3985 to i32
  %3987 = and i64 %3985, 4294967295
  store i64 %3987, i64* %RDX.i134, align 8
  %3988 = shl i64 %3985, 32
  %3989 = ashr exact i64 %3988, 32
  %3990 = icmp ne i64 %3989, %3985
  %3991 = zext i1 %3990 to i8
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3991, i8* %3992, align 1
  %3993 = and i32 %3986, 255
  %3994 = call i32 @llvm.ctpop.i32(i32 %3993)
  %3995 = trunc i32 %3994 to i8
  %3996 = and i8 %3995, 1
  %3997 = xor i8 %3996, 1
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3997, i8* %3998, align 1
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3999, align 1
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4000, align 1
  %4001 = lshr i32 %3986, 31
  %4002 = trunc i32 %4001 to i8
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4002, i8* %4003, align 1
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3991, i8* %4004, align 1
  store %struct.Memory* %loadMem_401edb, %struct.Memory** %MEMORY
  %loadMem_401edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 33
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4007 to i64*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 7
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %RDX.i131 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 15
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %4013 to i64*
  %4014 = load i64, i64* %RDX.i131
  %4015 = load i64, i64* %RBP.i132
  %4016 = sub i64 %4015, 44
  %4017 = load i64, i64* %PC.i130
  %4018 = add i64 %4017, 3
  store i64 %4018, i64* %PC.i130
  %4019 = trunc i64 %4014 to i32
  %4020 = inttoptr i64 %4016 to i32*
  %4021 = load i32, i32* %4020
  %4022 = add i32 %4021, %4019
  %4023 = zext i32 %4022 to i64
  store i64 %4023, i64* %RDX.i131, align 8
  %4024 = icmp ult i32 %4022, %4019
  %4025 = icmp ult i32 %4022, %4021
  %4026 = or i1 %4024, %4025
  %4027 = zext i1 %4026 to i8
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4027, i8* %4028, align 1
  %4029 = and i32 %4022, 255
  %4030 = call i32 @llvm.ctpop.i32(i32 %4029)
  %4031 = trunc i32 %4030 to i8
  %4032 = and i8 %4031, 1
  %4033 = xor i8 %4032, 1
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4033, i8* %4034, align 1
  %4035 = xor i32 %4021, %4019
  %4036 = xor i32 %4035, %4022
  %4037 = lshr i32 %4036, 4
  %4038 = trunc i32 %4037 to i8
  %4039 = and i8 %4038, 1
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4039, i8* %4040, align 1
  %4041 = icmp eq i32 %4022, 0
  %4042 = zext i1 %4041 to i8
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4042, i8* %4043, align 1
  %4044 = lshr i32 %4022, 31
  %4045 = trunc i32 %4044 to i8
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4045, i8* %4046, align 1
  %4047 = lshr i32 %4019, 31
  %4048 = lshr i32 %4021, 31
  %4049 = xor i32 %4044, %4047
  %4050 = xor i32 %4044, %4048
  %4051 = add i32 %4049, %4050
  %4052 = icmp eq i32 %4051, 2
  %4053 = zext i1 %4052 to i8
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4053, i8* %4054, align 1
  store %struct.Memory* %loadMem_401edf, %struct.Memory** %MEMORY
  %loadMem_401ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 33
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4057 to i64*
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 7
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %RDX.i129 = bitcast %union.anon* %4060 to i64*
  %4061 = load i64, i64* %RDX.i129
  %4062 = load i64, i64* %PC.i128
  %4063 = add i64 %4062, 3
  store i64 %4063, i64* %PC.i128
  %4064 = trunc i64 %4061 to i32
  %4065 = add i32 1, %4064
  %4066 = zext i32 %4065 to i64
  store i64 %4066, i64* %RDX.i129, align 8
  %4067 = icmp ult i32 %4065, %4064
  %4068 = icmp ult i32 %4065, 1
  %4069 = or i1 %4067, %4068
  %4070 = zext i1 %4069 to i8
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4070, i8* %4071, align 1
  %4072 = and i32 %4065, 255
  %4073 = call i32 @llvm.ctpop.i32(i32 %4072)
  %4074 = trunc i32 %4073 to i8
  %4075 = and i8 %4074, 1
  %4076 = xor i8 %4075, 1
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4076, i8* %4077, align 1
  %4078 = xor i64 1, %4061
  %4079 = trunc i64 %4078 to i32
  %4080 = xor i32 %4079, %4065
  %4081 = lshr i32 %4080, 4
  %4082 = trunc i32 %4081 to i8
  %4083 = and i8 %4082, 1
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4083, i8* %4084, align 1
  %4085 = icmp eq i32 %4065, 0
  %4086 = zext i1 %4085 to i8
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4086, i8* %4087, align 1
  %4088 = lshr i32 %4065, 31
  %4089 = trunc i32 %4088 to i8
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4089, i8* %4090, align 1
  %4091 = lshr i32 %4064, 31
  %4092 = xor i32 %4088, %4091
  %4093 = add i32 %4092, %4088
  %4094 = icmp eq i32 %4093, 2
  %4095 = zext i1 %4094 to i8
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4095, i8* %4096, align 1
  store %struct.Memory* %loadMem_401ee2, %struct.Memory** %MEMORY
  %loadMem_401ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 33
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4099 to i64*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 7
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %EDX.i126 = bitcast %union.anon* %4102 to i32*
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 11
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %RDI.i127 = bitcast %union.anon* %4105 to i64*
  %4106 = load i32, i32* %EDX.i126
  %4107 = zext i32 %4106 to i64
  %4108 = load i64, i64* %PC.i125
  %4109 = add i64 %4108, 3
  store i64 %4109, i64* %PC.i125
  %4110 = shl i64 %4107, 32
  %4111 = ashr exact i64 %4110, 32
  store i64 %4111, i64* %RDI.i127, align 8
  store %struct.Memory* %loadMem_401ee5, %struct.Memory** %MEMORY
  %loadMem_401ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 11
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RDI.i124 = bitcast %union.anon* %4117 to i64*
  %4118 = load i64, i64* %RDI.i124
  %4119 = load i64, i64* %PC.i123
  %4120 = add i64 %4119, 4
  store i64 %4120, i64* %PC.i123
  %4121 = shl i64 %4118, 1
  %4122 = icmp slt i64 %4121, 0
  %4123 = shl i64 %4121, 1
  store i64 %4123, i64* %RDI.i124, align 8
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4125 = zext i1 %4122 to i8
  store i8 %4125, i8* %4124, align 1
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4127 = trunc i64 %4123 to i32
  %4128 = and i32 %4127, 254
  %4129 = call i32 @llvm.ctpop.i32(i32 %4128)
  %4130 = trunc i32 %4129 to i8
  %4131 = and i8 %4130, 1
  %4132 = xor i8 %4131, 1
  store i8 %4132, i8* %4126, align 1
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4133, align 1
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4135 = icmp eq i64 %4123, 0
  %4136 = zext i1 %4135 to i8
  store i8 %4136, i8* %4134, align 1
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4138 = lshr i64 %4123, 63
  %4139 = trunc i64 %4138 to i8
  store i8 %4139, i8* %4137, align 1
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4140, align 1
  store %struct.Memory* %loadMem_401ee8, %struct.Memory** %MEMORY
  %loadMem_401eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 33
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4143 to i64*
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 9
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %RSI.i121 = bitcast %union.anon* %4146 to i64*
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 11
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %RDI.i122 = bitcast %union.anon* %4149 to i64*
  %4150 = load i64, i64* %RSI.i121
  %4151 = load i64, i64* %RDI.i122
  %4152 = load i64, i64* %PC.i120
  %4153 = add i64 %4152, 3
  store i64 %4153, i64* %PC.i120
  %4154 = add i64 %4151, %4150
  store i64 %4154, i64* %RSI.i121, align 8
  %4155 = icmp ult i64 %4154, %4150
  %4156 = icmp ult i64 %4154, %4151
  %4157 = or i1 %4155, %4156
  %4158 = zext i1 %4157 to i8
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4158, i8* %4159, align 1
  %4160 = trunc i64 %4154 to i32
  %4161 = and i32 %4160, 255
  %4162 = call i32 @llvm.ctpop.i32(i32 %4161)
  %4163 = trunc i32 %4162 to i8
  %4164 = and i8 %4163, 1
  %4165 = xor i8 %4164, 1
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4165, i8* %4166, align 1
  %4167 = xor i64 %4151, %4150
  %4168 = xor i64 %4167, %4154
  %4169 = lshr i64 %4168, 4
  %4170 = trunc i64 %4169 to i8
  %4171 = and i8 %4170, 1
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4171, i8* %4172, align 1
  %4173 = icmp eq i64 %4154, 0
  %4174 = zext i1 %4173 to i8
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4174, i8* %4175, align 1
  %4176 = lshr i64 %4154, 63
  %4177 = trunc i64 %4176 to i8
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4177, i8* %4178, align 1
  %4179 = lshr i64 %4150, 63
  %4180 = lshr i64 %4151, 63
  %4181 = xor i64 %4176, %4179
  %4182 = xor i64 %4176, %4180
  %4183 = add i64 %4181, %4182
  %4184 = icmp eq i64 %4183, 2
  %4185 = zext i1 %4184 to i8
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4185, i8* %4186, align 1
  store %struct.Memory* %loadMem_401eec, %struct.Memory** %MEMORY
  %loadMem_401eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 33
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4189 to i64*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 11
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %RDI.i118 = bitcast %union.anon* %4192 to i64*
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 15
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %4195 to i64*
  %4196 = load i64, i64* %RBP.i119
  %4197 = sub i64 %4196, 32
  %4198 = load i64, i64* %PC.i117
  %4199 = add i64 %4198, 4
  store i64 %4199, i64* %PC.i117
  %4200 = inttoptr i64 %4197 to i64*
  %4201 = load i64, i64* %4200
  store i64 %4201, i64* %RDI.i118, align 8
  store %struct.Memory* %loadMem_401eef, %struct.Memory** %MEMORY
  %loadMem_401ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 33
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4204 to i64*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 7
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RDX.i115 = bitcast %union.anon* %4207 to i64*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 15
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %4210 to i64*
  %4211 = load i64, i64* %RBP.i116
  %4212 = sub i64 %4211, 44
  %4213 = load i64, i64* %PC.i114
  %4214 = add i64 %4213, 3
  store i64 %4214, i64* %PC.i114
  %4215 = inttoptr i64 %4212 to i32*
  %4216 = load i32, i32* %4215
  %4217 = zext i32 %4216 to i64
  store i64 %4217, i64* %RDX.i115, align 8
  store %struct.Memory* %loadMem_401ef3, %struct.Memory** %MEMORY
  %loadMem_401ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 33
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4220 to i64*
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 7
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %4223 to i64*
  %4224 = load i64, i64* %RDX.i113
  %4225 = load i64, i64* %PC.i112
  %4226 = add i64 %4225, 3
  store i64 %4226, i64* %PC.i112
  %4227 = trunc i64 %4224 to i32
  %4228 = add i32 1, %4227
  %4229 = zext i32 %4228 to i64
  store i64 %4229, i64* %RDX.i113, align 8
  %4230 = icmp ult i32 %4228, %4227
  %4231 = icmp ult i32 %4228, 1
  %4232 = or i1 %4230, %4231
  %4233 = zext i1 %4232 to i8
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4233, i8* %4234, align 1
  %4235 = and i32 %4228, 255
  %4236 = call i32 @llvm.ctpop.i32(i32 %4235)
  %4237 = trunc i32 %4236 to i8
  %4238 = and i8 %4237, 1
  %4239 = xor i8 %4238, 1
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4239, i8* %4240, align 1
  %4241 = xor i64 1, %4224
  %4242 = trunc i64 %4241 to i32
  %4243 = xor i32 %4242, %4228
  %4244 = lshr i32 %4243, 4
  %4245 = trunc i32 %4244 to i8
  %4246 = and i8 %4245, 1
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4246, i8* %4247, align 1
  %4248 = icmp eq i32 %4228, 0
  %4249 = zext i1 %4248 to i8
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4249, i8* %4250, align 1
  %4251 = lshr i32 %4228, 31
  %4252 = trunc i32 %4251 to i8
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4252, i8* %4253, align 1
  %4254 = lshr i32 %4227, 31
  %4255 = xor i32 %4251, %4254
  %4256 = add i32 %4255, %4251
  %4257 = icmp eq i32 %4256, 2
  %4258 = zext i1 %4257 to i8
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4258, i8* %4259, align 1
  store %struct.Memory* %loadMem_401ef6, %struct.Memory** %MEMORY
  %loadMem_401ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 33
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4262 to i64*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 7
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4265 to i32*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 17
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %R8.i111 = bitcast %union.anon* %4268 to i64*
  %4269 = load i32, i32* %EDX.i
  %4270 = zext i32 %4269 to i64
  %4271 = load i64, i64* %PC.i110
  %4272 = add i64 %4271, 3
  store i64 %4272, i64* %PC.i110
  %4273 = shl i64 %4270, 32
  %4274 = ashr exact i64 %4273, 32
  store i64 %4274, i64* %R8.i111, align 8
  store %struct.Memory* %loadMem_401ef9, %struct.Memory** %MEMORY
  %loadMem_401efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 33
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4277 to i64*
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 17
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %R8.i109 = bitcast %union.anon* %4280 to i64*
  %4281 = load i64, i64* %R8.i109
  %4282 = load i64, i64* %PC.i108
  %4283 = add i64 %4282, 4
  store i64 %4283, i64* %PC.i108
  %4284 = shl i64 %4281, 1
  %4285 = icmp slt i64 %4284, 0
  %4286 = shl i64 %4284, 1
  store i64 %4286, i64* %R8.i109, align 8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4288 = zext i1 %4285 to i8
  store i8 %4288, i8* %4287, align 1
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4290 = trunc i64 %4286 to i32
  %4291 = and i32 %4290, 254
  %4292 = call i32 @llvm.ctpop.i32(i32 %4291)
  %4293 = trunc i32 %4292 to i8
  %4294 = and i8 %4293, 1
  %4295 = xor i8 %4294, 1
  store i8 %4295, i8* %4289, align 1
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4296, align 1
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4298 = icmp eq i64 %4286, 0
  %4299 = zext i1 %4298 to i8
  store i8 %4299, i8* %4297, align 1
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4301 = lshr i64 %4286, 63
  %4302 = trunc i64 %4301 to i8
  store i8 %4302, i8* %4300, align 1
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4303, align 1
  store %struct.Memory* %loadMem_401efc, %struct.Memory** %MEMORY
  %loadMem_401f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 33
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4306 to i64*
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 11
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %RDI.i107 = bitcast %union.anon* %4309 to i64*
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 17
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4312 to i64*
  %4313 = load i64, i64* %RDI.i107
  %4314 = load i64, i64* %R8.i
  %4315 = load i64, i64* %PC.i106
  %4316 = add i64 %4315, 3
  store i64 %4316, i64* %PC.i106
  %4317 = add i64 %4314, %4313
  store i64 %4317, i64* %RDI.i107, align 8
  %4318 = icmp ult i64 %4317, %4313
  %4319 = icmp ult i64 %4317, %4314
  %4320 = or i1 %4318, %4319
  %4321 = zext i1 %4320 to i8
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4321, i8* %4322, align 1
  %4323 = trunc i64 %4317 to i32
  %4324 = and i32 %4323, 255
  %4325 = call i32 @llvm.ctpop.i32(i32 %4324)
  %4326 = trunc i32 %4325 to i8
  %4327 = and i8 %4326, 1
  %4328 = xor i8 %4327, 1
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4328, i8* %4329, align 1
  %4330 = xor i64 %4314, %4313
  %4331 = xor i64 %4330, %4317
  %4332 = lshr i64 %4331, 4
  %4333 = trunc i64 %4332 to i8
  %4334 = and i8 %4333, 1
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4334, i8* %4335, align 1
  %4336 = icmp eq i64 %4317, 0
  %4337 = zext i1 %4336 to i8
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4337, i8* %4338, align 1
  %4339 = lshr i64 %4317, 63
  %4340 = trunc i64 %4339 to i8
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4340, i8* %4341, align 1
  %4342 = lshr i64 %4313, 63
  %4343 = lshr i64 %4314, 63
  %4344 = xor i64 %4339, %4342
  %4345 = xor i64 %4339, %4343
  %4346 = add i64 %4344, %4345
  %4347 = icmp eq i64 %4346, 2
  %4348 = zext i1 %4347 to i8
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4348, i8* %4349, align 1
  store %struct.Memory* %loadMem_401f00, %struct.Memory** %MEMORY
  %loadMem_401f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 33
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4352 to i64*
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 11
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %RDI.i104 = bitcast %union.anon* %4355 to i64*
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 15
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %4358 to i64*
  %4359 = load i64, i64* %RBP.i105
  %4360 = sub i64 %4359, 80
  %4361 = load i64, i64* %RDI.i104
  %4362 = load i64, i64* %PC.i103
  %4363 = add i64 %4362, 4
  store i64 %4363, i64* %PC.i103
  %4364 = inttoptr i64 %4360 to i64*
  store i64 %4361, i64* %4364
  store %struct.Memory* %loadMem_401f03, %struct.Memory** %MEMORY
  %loadMem_401f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 33
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %4367 to i64*
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 5
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4370 to i32*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 11
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4373 to i64*
  %4374 = load i32, i32* %ECX.i
  %4375 = zext i32 %4374 to i64
  %4376 = load i64, i64* %PC.i102
  %4377 = add i64 %4376, 2
  store i64 %4377, i64* %PC.i102
  %4378 = and i64 %4375, 4294967295
  store i64 %4378, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_401f07, %struct.Memory** %MEMORY
  %loadMem_401f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 33
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4381 to i64*
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4383 = getelementptr inbounds %struct.GPR, %struct.GPR* %4382, i32 0, i32 1
  %4384 = getelementptr inbounds %struct.Reg, %struct.Reg* %4383, i32 0, i32 0
  %EAX.i101 = bitcast %union.anon* %4384 to i32*
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 7
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4387 to i64*
  %4388 = load i32, i32* %EAX.i101
  %4389 = zext i32 %4388 to i64
  %4390 = load i64, i64* %PC.i100
  %4391 = add i64 %4390, 2
  store i64 %4391, i64* %PC.i100
  %4392 = and i64 %4389, 4294967295
  store i64 %4392, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_401f09, %struct.Memory** %MEMORY
  %loadMem_401f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 33
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4395 to i64*
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 5
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %4398 to i64*
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 15
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %4401 to i64*
  %4402 = load i64, i64* %RBP.i99
  %4403 = sub i64 %4402, 80
  %4404 = load i64, i64* %PC.i97
  %4405 = add i64 %4404, 4
  store i64 %4405, i64* %PC.i97
  %4406 = inttoptr i64 %4403 to i64*
  %4407 = load i64, i64* %4406
  store i64 %4407, i64* %RCX.i98, align 8
  store %struct.Memory* %loadMem_401f0b, %struct.Memory** %MEMORY
  %loadMem_401f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 33
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %4410 to i64*
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 1
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %EAX.i96 = bitcast %union.anon* %4413 to i32*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 17
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %4416 to i32*
  %4417 = bitcast i32* %R8D.i to i64*
  %4418 = load i32, i32* %EAX.i96
  %4419 = zext i32 %4418 to i64
  %4420 = load i64, i64* %PC.i95
  %4421 = add i64 %4420, 3
  store i64 %4421, i64* %PC.i95
  %4422 = and i64 %4419, 4294967295
  store i64 %4422, i64* %4417, align 8
  store %struct.Memory* %loadMem_401f0f, %struct.Memory** %MEMORY
  %loadMem_401f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 33
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4425 to i64*
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 15
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4429, i64 0, i64 0
  %XMM0.i94 = bitcast %union.VectorReg* %4430 to %union.vec128_t*
  %4431 = load i64, i64* %RBP.i93
  %4432 = sub i64 %4431, 84
  %4433 = bitcast %union.vec128_t* %XMM0.i94 to i8*
  %4434 = load i64, i64* %PC.i92
  %4435 = add i64 %4434, 5
  store i64 %4435, i64* %PC.i92
  %4436 = bitcast i8* %4433 to <2 x float>*
  %4437 = load <2 x float>, <2 x float>* %4436, align 1
  %4438 = extractelement <2 x float> %4437, i32 0
  %4439 = inttoptr i64 %4432 to float*
  store float %4438, float* %4439
  store %struct.Memory* %loadMem_401f12, %struct.Memory** %MEMORY
  %loadMem1_401f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 33
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4442 to i64*
  %4443 = load i64, i64* %PC.i91
  %4444 = add i64 %4443, 2761
  %4445 = load i64, i64* %PC.i91
  %4446 = add i64 %4445, 5
  %4447 = load i64, i64* %PC.i91
  %4448 = add i64 %4447, 5
  store i64 %4448, i64* %PC.i91
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4450 = load i64, i64* %4449, align 8
  %4451 = add i64 %4450, -8
  %4452 = inttoptr i64 %4451 to i64*
  store i64 %4446, i64* %4452
  store i64 %4451, i64* %4449, align 8
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4444, i64* %4453, align 8
  store %struct.Memory* %loadMem1_401f17, %struct.Memory** %MEMORY
  %loadMem2_401f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401f17 = load i64, i64* %3
  %call2_401f17 = call %struct.Memory* @sub_4029e0.ddot(%struct.State* %0, i64 %loadPC_401f17, %struct.Memory* %loadMem2_401f17)
  store %struct.Memory* %call2_401f17, %struct.Memory** %MEMORY
  %loadMem_401f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 33
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4456 to i64*
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 15
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4461 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4460, i64 0, i64 1
  %YMM1.i90 = bitcast %union.VectorReg* %4461 to %"class.std::bitset"*
  %4462 = bitcast %"class.std::bitset"* %YMM1.i90 to i8*
  %4463 = load i64, i64* %RBP.i89
  %4464 = sub i64 %4463, 84
  %4465 = load i64, i64* %PC.i88
  %4466 = add i64 %4465, 5
  store i64 %4466, i64* %PC.i88
  %4467 = inttoptr i64 %4464 to float*
  %4468 = load float, float* %4467
  %4469 = bitcast i8* %4462 to float*
  store float %4468, float* %4469, align 1
  %4470 = getelementptr inbounds i8, i8* %4462, i64 4
  %4471 = bitcast i8* %4470 to float*
  store float 0.000000e+00, float* %4471, align 1
  %4472 = getelementptr inbounds i8, i8* %4462, i64 8
  %4473 = bitcast i8* %4472 to float*
  store float 0.000000e+00, float* %4473, align 1
  %4474 = getelementptr inbounds i8, i8* %4462, i64 12
  %4475 = bitcast i8* %4474 to float*
  store float 0.000000e+00, float* %4475, align 1
  store %struct.Memory* %loadMem_401f1c, %struct.Memory** %MEMORY
  %loadMem_401f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 33
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4478 to i64*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4480 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4479, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4480 to %"class.std::bitset"*
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4481, i64 0, i64 0
  %XMM0.i87 = bitcast %union.VectorReg* %4482 to %union.vec128_t*
  %4483 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4484 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4485 = bitcast %union.vec128_t* %XMM0.i87 to i8*
  %4486 = load i64, i64* %PC.i86
  %4487 = add i64 %4486, 4
  store i64 %4487, i64* %PC.i86
  %4488 = bitcast i8* %4484 to <2 x float>*
  %4489 = load <2 x float>, <2 x float>* %4488, align 1
  %4490 = getelementptr inbounds i8, i8* %4484, i64 8
  %4491 = bitcast i8* %4490 to <2 x i32>*
  %4492 = load <2 x i32>, <2 x i32>* %4491, align 1
  %4493 = bitcast i8* %4485 to <2 x float>*
  %4494 = load <2 x float>, <2 x float>* %4493, align 1
  %4495 = extractelement <2 x float> %4489, i32 0
  %4496 = extractelement <2 x float> %4494, i32 0
  %4497 = fadd float %4495, %4496
  %4498 = bitcast i8* %4483 to float*
  store float %4497, float* %4498, align 1
  %4499 = bitcast <2 x float> %4489 to <2 x i32>
  %4500 = extractelement <2 x i32> %4499, i32 1
  %4501 = getelementptr inbounds i8, i8* %4483, i64 4
  %4502 = bitcast i8* %4501 to i32*
  store i32 %4500, i32* %4502, align 1
  %4503 = extractelement <2 x i32> %4492, i32 0
  %4504 = getelementptr inbounds i8, i8* %4483, i64 8
  %4505 = bitcast i8* %4504 to i32*
  store i32 %4503, i32* %4505, align 1
  %4506 = extractelement <2 x i32> %4492, i32 1
  %4507 = getelementptr inbounds i8, i8* %4483, i64 12
  %4508 = bitcast i8* %4507 to i32*
  store i32 %4506, i32* %4508, align 1
  store %struct.Memory* %loadMem_401f21, %struct.Memory** %MEMORY
  %loadMem_401f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 33
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 5
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %4514 to i64*
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 15
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %4517 to i64*
  %4518 = load i64, i64* %RBP.i85
  %4519 = sub i64 %4518, 32
  %4520 = load i64, i64* %PC.i83
  %4521 = add i64 %4520, 4
  store i64 %4521, i64* %PC.i83
  %4522 = inttoptr i64 %4519 to i64*
  %4523 = load i64, i64* %4522
  store i64 %4523, i64* %RCX.i84, align 8
  store %struct.Memory* %loadMem_401f25, %struct.Memory** %MEMORY
  %loadMem_401f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 33
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 9
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %RSI.i81 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 15
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %4532 to i64*
  %4533 = load i64, i64* %RBP.i82
  %4534 = sub i64 %4533, 44
  %4535 = load i64, i64* %PC.i80
  %4536 = add i64 %4535, 4
  store i64 %4536, i64* %PC.i80
  %4537 = inttoptr i64 %4534 to i32*
  %4538 = load i32, i32* %4537
  %4539 = sext i32 %4538 to i64
  store i64 %4539, i64* %RSI.i81, align 8
  store %struct.Memory* %loadMem_401f29, %struct.Memory** %MEMORY
  %loadMem_401f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 33
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4542 to i64*
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 5
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %4545 to i64*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 9
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %RSI.i79 = bitcast %union.anon* %4548 to i64*
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4550 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4549, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4550 to %union.vec128_t*
  %4551 = load i64, i64* %RCX.i78
  %4552 = load i64, i64* %RSI.i79
  %4553 = mul i64 %4552, 4
  %4554 = add i64 %4553, %4551
  %4555 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4556 = load i64, i64* %PC.i77
  %4557 = add i64 %4556, 5
  store i64 %4557, i64* %PC.i77
  %4558 = bitcast i8* %4555 to <2 x float>*
  %4559 = load <2 x float>, <2 x float>* %4558, align 1
  %4560 = extractelement <2 x float> %4559, i32 0
  %4561 = inttoptr i64 %4554 to float*
  store float %4560, float* %4561
  store %struct.Memory* %loadMem_401f2d, %struct.Memory** %MEMORY
  %loadMem_401f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 33
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4564 to i64*
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 5
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %4567 to i64*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 15
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %4570 to i64*
  %4571 = load i64, i64* %RBP.i76
  %4572 = sub i64 %4571, 24
  %4573 = load i64, i64* %PC.i74
  %4574 = add i64 %4573, 4
  store i64 %4574, i64* %PC.i74
  %4575 = inttoptr i64 %4572 to i64*
  %4576 = load i64, i64* %4575
  store i64 %4576, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_401f32, %struct.Memory** %MEMORY
  %loadMem_401f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 33
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4579 to i64*
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 9
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %RSI.i72 = bitcast %union.anon* %4582 to i64*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 15
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %4585 to i64*
  %4586 = load i64, i64* %RBP.i73
  %4587 = sub i64 %4586, 44
  %4588 = load i64, i64* %PC.i71
  %4589 = add i64 %4588, 4
  store i64 %4589, i64* %PC.i71
  %4590 = inttoptr i64 %4587 to i32*
  %4591 = load i32, i32* %4590
  %4592 = sext i32 %4591 to i64
  store i64 %4592, i64* %RSI.i72, align 8
  store %struct.Memory* %loadMem_401f36, %struct.Memory** %MEMORY
  %loadMem_401f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 33
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4595 to i64*
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4597 = getelementptr inbounds %struct.GPR, %struct.GPR* %4596, i32 0, i32 1
  %4598 = getelementptr inbounds %struct.Reg, %struct.Reg* %4597, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %4598 to i64*
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 5
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %4601 to i64*
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 9
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4604 to i64*
  %4605 = load i64, i64* %RCX.i70
  %4606 = load i64, i64* %RSI.i
  %4607 = mul i64 %4606, 4
  %4608 = add i64 %4607, %4605
  %4609 = load i64, i64* %PC.i68
  %4610 = add i64 %4609, 3
  store i64 %4610, i64* %PC.i68
  %4611 = inttoptr i64 %4608 to i32*
  %4612 = load i32, i32* %4611
  %4613 = zext i32 %4612 to i64
  store i64 %4613, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_401f3a, %struct.Memory** %MEMORY
  %loadMem_401f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 33
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 1
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %4619 to i32*
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 15
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %4622 to i64*
  %4623 = load i64, i64* %RBP.i67
  %4624 = sub i64 %4623, 52
  %4625 = load i32, i32* %EAX.i66
  %4626 = zext i32 %4625 to i64
  %4627 = load i64, i64* %PC.i65
  %4628 = add i64 %4627, 3
  store i64 %4628, i64* %PC.i65
  %4629 = inttoptr i64 %4624 to i32*
  store i32 %4625, i32* %4629
  store %struct.Memory* %loadMem_401f3d, %struct.Memory** %MEMORY
  %loadMem_401f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 33
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 1
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %4635 to i64*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 15
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %4638 to i64*
  %4639 = load i64, i64* %RBP.i64
  %4640 = sub i64 %4639, 52
  %4641 = load i64, i64* %PC.i62
  %4642 = add i64 %4641, 3
  store i64 %4642, i64* %PC.i62
  %4643 = inttoptr i64 %4640 to i32*
  %4644 = load i32, i32* %4643
  %4645 = zext i32 %4644 to i64
  store i64 %4645, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_401f40, %struct.Memory** %MEMORY
  %loadMem_401f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4647 = getelementptr inbounds %struct.GPR, %struct.GPR* %4646, i32 0, i32 33
  %4648 = getelementptr inbounds %struct.Reg, %struct.Reg* %4647, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4648 to i64*
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 1
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %EAX.i60 = bitcast %union.anon* %4651 to i32*
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 15
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %4654 to i64*
  %4655 = load i32, i32* %EAX.i60
  %4656 = zext i32 %4655 to i64
  %4657 = load i64, i64* %RBP.i61
  %4658 = sub i64 %4657, 44
  %4659 = load i64, i64* %PC.i59
  %4660 = add i64 %4659, 3
  store i64 %4660, i64* %PC.i59
  %4661 = inttoptr i64 %4658 to i32*
  %4662 = load i32, i32* %4661
  %4663 = sub i32 %4655, %4662
  %4664 = icmp ult i32 %4655, %4662
  %4665 = zext i1 %4664 to i8
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4665, i8* %4666, align 1
  %4667 = and i32 %4663, 255
  %4668 = call i32 @llvm.ctpop.i32(i32 %4667)
  %4669 = trunc i32 %4668 to i8
  %4670 = and i8 %4669, 1
  %4671 = xor i8 %4670, 1
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4671, i8* %4672, align 1
  %4673 = xor i32 %4662, %4655
  %4674 = xor i32 %4673, %4663
  %4675 = lshr i32 %4674, 4
  %4676 = trunc i32 %4675 to i8
  %4677 = and i8 %4676, 1
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4677, i8* %4678, align 1
  %4679 = icmp eq i32 %4663, 0
  %4680 = zext i1 %4679 to i8
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4680, i8* %4681, align 1
  %4682 = lshr i32 %4663, 31
  %4683 = trunc i32 %4682 to i8
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4683, i8* %4684, align 1
  %4685 = lshr i32 %4655, 31
  %4686 = lshr i32 %4662, 31
  %4687 = xor i32 %4686, %4685
  %4688 = xor i32 %4682, %4685
  %4689 = add i32 %4688, %4687
  %4690 = icmp eq i32 %4689, 2
  %4691 = zext i1 %4690 to i8
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4691, i8* %4692, align 1
  store %struct.Memory* %loadMem_401f43, %struct.Memory** %MEMORY
  %loadMem_401f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 33
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4695 to i64*
  %4696 = load i64, i64* %PC.i58
  %4697 = add i64 %4696, 68
  %4698 = load i64, i64* %PC.i58
  %4699 = add i64 %4698, 6
  %4700 = load i64, i64* %PC.i58
  %4701 = add i64 %4700, 6
  store i64 %4701, i64* %PC.i58
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4703 = load i8, i8* %4702, align 1
  store i8 %4703, i8* %BRANCH_TAKEN, align 1
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4705 = icmp ne i8 %4703, 0
  %4706 = select i1 %4705, i64 %4697, i64 %4699
  store i64 %4706, i64* %4704, align 8
  store %struct.Memory* %loadMem_401f46, %struct.Memory** %MEMORY
  %loadBr_401f46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401f46 = icmp eq i8 %loadBr_401f46, 1
  br i1 %cmpBr_401f46, label %block_.L_401f8a, label %block_401f4c

block_401f4c:                                     ; preds = %block_401ea9
  %loadMem_401f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 33
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %4709 to i64*
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4711 = getelementptr inbounds %struct.GPR, %struct.GPR* %4710, i32 0, i32 1
  %4712 = getelementptr inbounds %struct.Reg, %struct.Reg* %4711, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %4712 to i64*
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 15
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %4715 to i64*
  %4716 = load i64, i64* %RBP.i57
  %4717 = sub i64 %4716, 32
  %4718 = load i64, i64* %PC.i55
  %4719 = add i64 %4718, 4
  store i64 %4719, i64* %PC.i55
  %4720 = inttoptr i64 %4717 to i64*
  %4721 = load i64, i64* %4720
  store i64 %4721, i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_401f4c, %struct.Memory** %MEMORY
  %loadMem_401f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 33
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %4724 to i64*
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 5
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 15
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %4730 to i64*
  %4731 = load i64, i64* %RBP.i54
  %4732 = sub i64 %4731, 52
  %4733 = load i64, i64* %PC.i52
  %4734 = add i64 %4733, 4
  store i64 %4734, i64* %PC.i52
  %4735 = inttoptr i64 %4732 to i32*
  %4736 = load i32, i32* %4735
  %4737 = sext i32 %4736 to i64
  store i64 %4737, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_401f50, %struct.Memory** %MEMORY
  %loadMem_401f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 33
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 1
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 5
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %4746 to i64*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4748 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4747, i64 0, i64 0
  %YMM0.i51 = bitcast %union.VectorReg* %4748 to %"class.std::bitset"*
  %4749 = bitcast %"class.std::bitset"* %YMM0.i51 to i8*
  %4750 = load i64, i64* %RAX.i49
  %4751 = load i64, i64* %RCX.i50
  %4752 = mul i64 %4751, 4
  %4753 = add i64 %4752, %4750
  %4754 = load i64, i64* %PC.i48
  %4755 = add i64 %4754, 5
  store i64 %4755, i64* %PC.i48
  %4756 = inttoptr i64 %4753 to float*
  %4757 = load float, float* %4756
  %4758 = bitcast i8* %4749 to float*
  store float %4757, float* %4758, align 1
  %4759 = getelementptr inbounds i8, i8* %4749, i64 4
  %4760 = bitcast i8* %4759 to float*
  store float 0.000000e+00, float* %4760, align 1
  %4761 = getelementptr inbounds i8, i8* %4749, i64 8
  %4762 = bitcast i8* %4761 to float*
  store float 0.000000e+00, float* %4762, align 1
  %4763 = getelementptr inbounds i8, i8* %4749, i64 12
  %4764 = bitcast i8* %4763 to float*
  store float 0.000000e+00, float* %4764, align 1
  store %struct.Memory* %loadMem_401f54, %struct.Memory** %MEMORY
  %loadMem_401f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4766 = getelementptr inbounds %struct.GPR, %struct.GPR* %4765, i32 0, i32 33
  %4767 = getelementptr inbounds %struct.Reg, %struct.Reg* %4766, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4767 to i64*
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4769 = getelementptr inbounds %struct.GPR, %struct.GPR* %4768, i32 0, i32 15
  %4770 = getelementptr inbounds %struct.Reg, %struct.Reg* %4769, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %4770 to i64*
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4772 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4771, i64 0, i64 0
  %XMM0.i47 = bitcast %union.VectorReg* %4772 to %union.vec128_t*
  %4773 = load i64, i64* %RBP.i46
  %4774 = sub i64 %4773, 40
  %4775 = bitcast %union.vec128_t* %XMM0.i47 to i8*
  %4776 = load i64, i64* %PC.i45
  %4777 = add i64 %4776, 5
  store i64 %4777, i64* %PC.i45
  %4778 = bitcast i8* %4775 to <2 x float>*
  %4779 = load <2 x float>, <2 x float>* %4778, align 1
  %4780 = extractelement <2 x float> %4779, i32 0
  %4781 = inttoptr i64 %4774 to float*
  store float %4780, float* %4781
  store %struct.Memory* %loadMem_401f59, %struct.Memory** %MEMORY
  %loadMem_401f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 33
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4784 to i64*
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 1
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %4787 to i64*
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 15
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %4790 to i64*
  %4791 = load i64, i64* %RBP.i44
  %4792 = sub i64 %4791, 32
  %4793 = load i64, i64* %PC.i42
  %4794 = add i64 %4793, 4
  store i64 %4794, i64* %PC.i42
  %4795 = inttoptr i64 %4792 to i64*
  %4796 = load i64, i64* %4795
  store i64 %4796, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_401f5e, %struct.Memory** %MEMORY
  %loadMem_401f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 33
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4799 to i64*
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 5
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %4802 to i64*
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 15
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %4805 to i64*
  %4806 = load i64, i64* %RBP.i41
  %4807 = sub i64 %4806, 44
  %4808 = load i64, i64* %PC.i39
  %4809 = add i64 %4808, 4
  store i64 %4809, i64* %PC.i39
  %4810 = inttoptr i64 %4807 to i32*
  %4811 = load i32, i32* %4810
  %4812 = sext i32 %4811 to i64
  store i64 %4812, i64* %RCX.i40, align 8
  store %struct.Memory* %loadMem_401f62, %struct.Memory** %MEMORY
  %loadMem_401f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 33
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %4815 to i64*
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4817 = getelementptr inbounds %struct.GPR, %struct.GPR* %4816, i32 0, i32 1
  %4818 = getelementptr inbounds %struct.Reg, %struct.Reg* %4817, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %4818 to i64*
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4820 = getelementptr inbounds %struct.GPR, %struct.GPR* %4819, i32 0, i32 5
  %4821 = getelementptr inbounds %struct.Reg, %struct.Reg* %4820, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %4821 to i64*
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4823 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4822, i64 0, i64 0
  %YMM0.i38 = bitcast %union.VectorReg* %4823 to %"class.std::bitset"*
  %4824 = bitcast %"class.std::bitset"* %YMM0.i38 to i8*
  %4825 = load i64, i64* %RAX.i36
  %4826 = load i64, i64* %RCX.i37
  %4827 = mul i64 %4826, 4
  %4828 = add i64 %4827, %4825
  %4829 = load i64, i64* %PC.i35
  %4830 = add i64 %4829, 5
  store i64 %4830, i64* %PC.i35
  %4831 = inttoptr i64 %4828 to float*
  %4832 = load float, float* %4831
  %4833 = bitcast i8* %4824 to float*
  store float %4832, float* %4833, align 1
  %4834 = getelementptr inbounds i8, i8* %4824, i64 4
  %4835 = bitcast i8* %4834 to float*
  store float 0.000000e+00, float* %4835, align 1
  %4836 = getelementptr inbounds i8, i8* %4824, i64 8
  %4837 = bitcast i8* %4836 to float*
  store float 0.000000e+00, float* %4837, align 1
  %4838 = getelementptr inbounds i8, i8* %4824, i64 12
  %4839 = bitcast i8* %4838 to float*
  store float 0.000000e+00, float* %4839, align 1
  store %struct.Memory* %loadMem_401f66, %struct.Memory** %MEMORY
  %loadMem_401f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 33
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4842 to i64*
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 1
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %4845 to i64*
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 15
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %4848 to i64*
  %4849 = load i64, i64* %RBP.i34
  %4850 = sub i64 %4849, 32
  %4851 = load i64, i64* %PC.i32
  %4852 = add i64 %4851, 4
  store i64 %4852, i64* %PC.i32
  %4853 = inttoptr i64 %4850 to i64*
  %4854 = load i64, i64* %4853
  store i64 %4854, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_401f6b, %struct.Memory** %MEMORY
  %loadMem_401f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 33
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4857 to i64*
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 5
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %4860 to i64*
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 15
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %4863 to i64*
  %4864 = load i64, i64* %RBP.i31
  %4865 = sub i64 %4864, 52
  %4866 = load i64, i64* %PC.i29
  %4867 = add i64 %4866, 4
  store i64 %4867, i64* %PC.i29
  %4868 = inttoptr i64 %4865 to i32*
  %4869 = load i32, i32* %4868
  %4870 = sext i32 %4869 to i64
  store i64 %4870, i64* %RCX.i30, align 8
  store %struct.Memory* %loadMem_401f6f, %struct.Memory** %MEMORY
  %loadMem_401f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 33
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4873 to i64*
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 1
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %4876 to i64*
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 5
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4881 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4880, i64 0, i64 0
  %XMM0.i28 = bitcast %union.VectorReg* %4881 to %union.vec128_t*
  %4882 = load i64, i64* %RAX.i26
  %4883 = load i64, i64* %RCX.i27
  %4884 = mul i64 %4883, 4
  %4885 = add i64 %4884, %4882
  %4886 = bitcast %union.vec128_t* %XMM0.i28 to i8*
  %4887 = load i64, i64* %PC.i25
  %4888 = add i64 %4887, 5
  store i64 %4888, i64* %PC.i25
  %4889 = bitcast i8* %4886 to <2 x float>*
  %4890 = load <2 x float>, <2 x float>* %4889, align 1
  %4891 = extractelement <2 x float> %4890, i32 0
  %4892 = inttoptr i64 %4885 to float*
  store float %4891, float* %4892
  store %struct.Memory* %loadMem_401f73, %struct.Memory** %MEMORY
  %loadMem_401f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 33
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 15
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %4898 to i64*
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4900 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4899, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4900 to %"class.std::bitset"*
  %4901 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4902 = load i64, i64* %RBP.i24
  %4903 = sub i64 %4902, 40
  %4904 = load i64, i64* %PC.i23
  %4905 = add i64 %4904, 5
  store i64 %4905, i64* %PC.i23
  %4906 = inttoptr i64 %4903 to float*
  %4907 = load float, float* %4906
  %4908 = bitcast i8* %4901 to float*
  store float %4907, float* %4908, align 1
  %4909 = getelementptr inbounds i8, i8* %4901, i64 4
  %4910 = bitcast i8* %4909 to float*
  store float 0.000000e+00, float* %4910, align 1
  %4911 = getelementptr inbounds i8, i8* %4901, i64 8
  %4912 = bitcast i8* %4911 to float*
  store float 0.000000e+00, float* %4912, align 1
  %4913 = getelementptr inbounds i8, i8* %4901, i64 12
  %4914 = bitcast i8* %4913 to float*
  store float 0.000000e+00, float* %4914, align 1
  store %struct.Memory* %loadMem_401f78, %struct.Memory** %MEMORY
  %loadMem_401f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 33
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4917 to i64*
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4919 = getelementptr inbounds %struct.GPR, %struct.GPR* %4918, i32 0, i32 1
  %4920 = getelementptr inbounds %struct.Reg, %struct.Reg* %4919, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %4920 to i64*
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4922 = getelementptr inbounds %struct.GPR, %struct.GPR* %4921, i32 0, i32 15
  %4923 = getelementptr inbounds %struct.Reg, %struct.Reg* %4922, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %4923 to i64*
  %4924 = load i64, i64* %RBP.i22
  %4925 = sub i64 %4924, 32
  %4926 = load i64, i64* %PC.i20
  %4927 = add i64 %4926, 4
  store i64 %4927, i64* %PC.i20
  %4928 = inttoptr i64 %4925 to i64*
  %4929 = load i64, i64* %4928
  store i64 %4929, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_401f7d, %struct.Memory** %MEMORY
  %loadMem_401f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 33
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4932 to i64*
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 5
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %4935 to i64*
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 15
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %4938 to i64*
  %4939 = load i64, i64* %RBP.i19
  %4940 = sub i64 %4939, 44
  %4941 = load i64, i64* %PC.i17
  %4942 = add i64 %4941, 4
  store i64 %4942, i64* %PC.i17
  %4943 = inttoptr i64 %4940 to i32*
  %4944 = load i32, i32* %4943
  %4945 = sext i32 %4944 to i64
  store i64 %4945, i64* %RCX.i18, align 8
  store %struct.Memory* %loadMem_401f81, %struct.Memory** %MEMORY
  %loadMem_401f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4947 = getelementptr inbounds %struct.GPR, %struct.GPR* %4946, i32 0, i32 33
  %4948 = getelementptr inbounds %struct.Reg, %struct.Reg* %4947, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4948 to i64*
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 1
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %4951 to i64*
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 5
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4954 to i64*
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4956 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4955, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4956 to %union.vec128_t*
  %4957 = load i64, i64* %RAX.i16
  %4958 = load i64, i64* %RCX.i
  %4959 = mul i64 %4958, 4
  %4960 = add i64 %4959, %4957
  %4961 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4962 = load i64, i64* %PC.i15
  %4963 = add i64 %4962, 5
  store i64 %4963, i64* %PC.i15
  %4964 = bitcast i8* %4961 to <2 x float>*
  %4965 = load <2 x float>, <2 x float>* %4964, align 1
  %4966 = extractelement <2 x float> %4965, i32 0
  %4967 = inttoptr i64 %4960 to float*
  store float %4966, float* %4967
  store %struct.Memory* %loadMem_401f85, %struct.Memory** %MEMORY
  br label %block_.L_401f8a

block_.L_401f8a:                                  ; preds = %block_401f4c, %block_401ea9
  %loadMem_401f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 33
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4970 to i64*
  %4971 = load i64, i64* %PC.i14
  %4972 = add i64 %4971, 5
  %4973 = load i64, i64* %PC.i14
  %4974 = add i64 %4973, 5
  store i64 %4974, i64* %PC.i14
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4972, i64* %4975, align 8
  store %struct.Memory* %loadMem_401f8a, %struct.Memory** %MEMORY
  br label %block_.L_401f8f

block_.L_401f8f:                                  ; preds = %block_.L_401f8a
  %loadMem_401f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 33
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4978 to i64*
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 1
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %4981 to i64*
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 15
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %4984 to i64*
  %4985 = load i64, i64* %RBP.i13
  %4986 = sub i64 %4985, 48
  %4987 = load i64, i64* %PC.i11
  %4988 = add i64 %4987, 3
  store i64 %4988, i64* %PC.i11
  %4989 = inttoptr i64 %4986 to i32*
  %4990 = load i32, i32* %4989
  %4991 = zext i32 %4990 to i64
  store i64 %4991, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_401f8f, %struct.Memory** %MEMORY
  %loadMem_401f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 33
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4994 to i64*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 1
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4997 to i64*
  %4998 = load i64, i64* %RAX.i
  %4999 = load i64, i64* %PC.i10
  %5000 = add i64 %4999, 3
  store i64 %5000, i64* %PC.i10
  %5001 = trunc i64 %4998 to i32
  %5002 = add i32 1, %5001
  %5003 = zext i32 %5002 to i64
  store i64 %5003, i64* %RAX.i, align 8
  %5004 = icmp ult i32 %5002, %5001
  %5005 = icmp ult i32 %5002, 1
  %5006 = or i1 %5004, %5005
  %5007 = zext i1 %5006 to i8
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5007, i8* %5008, align 1
  %5009 = and i32 %5002, 255
  %5010 = call i32 @llvm.ctpop.i32(i32 %5009)
  %5011 = trunc i32 %5010 to i8
  %5012 = and i8 %5011, 1
  %5013 = xor i8 %5012, 1
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5013, i8* %5014, align 1
  %5015 = xor i64 1, %4998
  %5016 = trunc i64 %5015 to i32
  %5017 = xor i32 %5016, %5002
  %5018 = lshr i32 %5017, 4
  %5019 = trunc i32 %5018 to i8
  %5020 = and i8 %5019, 1
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5020, i8* %5021, align 1
  %5022 = icmp eq i32 %5002, 0
  %5023 = zext i1 %5022 to i8
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5023, i8* %5024, align 1
  %5025 = lshr i32 %5002, 31
  %5026 = trunc i32 %5025 to i8
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5026, i8* %5027, align 1
  %5028 = lshr i32 %5001, 31
  %5029 = xor i32 %5025, %5028
  %5030 = add i32 %5029, %5025
  %5031 = icmp eq i32 %5030, 2
  %5032 = zext i1 %5031 to i8
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5032, i8* %5033, align 1
  store %struct.Memory* %loadMem_401f92, %struct.Memory** %MEMORY
  %loadMem_401f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5035 = getelementptr inbounds %struct.GPR, %struct.GPR* %5034, i32 0, i32 33
  %5036 = getelementptr inbounds %struct.Reg, %struct.Reg* %5035, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5036 to i64*
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 1
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5039 to i32*
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 15
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %5042 to i64*
  %5043 = load i64, i64* %RBP.i9
  %5044 = sub i64 %5043, 48
  %5045 = load i32, i32* %EAX.i
  %5046 = zext i32 %5045 to i64
  %5047 = load i64, i64* %PC.i8
  %5048 = add i64 %5047, 3
  store i64 %5048, i64* %PC.i8
  %5049 = inttoptr i64 %5044 to i32*
  store i32 %5045, i32* %5049
  store %struct.Memory* %loadMem_401f95, %struct.Memory** %MEMORY
  %loadMem_401f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 33
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5052 to i64*
  %5053 = load i64, i64* %PC.i7
  %5054 = add i64 %5053, -251
  %5055 = load i64, i64* %PC.i7
  %5056 = add i64 %5055, 5
  store i64 %5056, i64* %PC.i7
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5054, i64* %5057, align 8
  store %struct.Memory* %loadMem_401f98, %struct.Memory** %MEMORY
  br label %block_.L_401e9d

block_.L_401f9d:                                  ; preds = %block_.L_401e9d
  %loadMem_401f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 33
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5060 to i64*
  %5061 = load i64, i64* %PC.i6
  %5062 = add i64 %5061, 5
  %5063 = load i64, i64* %PC.i6
  %5064 = add i64 %5063, 5
  store i64 %5064, i64* %PC.i6
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5062, i64* %5065, align 8
  store %struct.Memory* %loadMem_401f9d, %struct.Memory** %MEMORY
  br label %block_.L_401fa2

block_.L_401fa2:                                  ; preds = %block_.L_401f9d, %block_.L_401e8c
  %loadMem_401fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 33
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5068 to i64*
  %5069 = load i64, i64* %PC.i5
  %5070 = add i64 %5069, 5
  %5071 = load i64, i64* %PC.i5
  %5072 = add i64 %5071, 5
  store i64 %5072, i64* %PC.i5
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5070, i64* %5073, align 8
  store %struct.Memory* %loadMem_401fa2, %struct.Memory** %MEMORY
  br label %block_.L_401fa7

block_.L_401fa7:                                  ; preds = %block_.L_401fa2, %block_.L_401df3
  %loadMem_401fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 33
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5076 to i64*
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 13
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5079 to i64*
  %5080 = load i64, i64* %RSP.i
  %5081 = load i64, i64* %PC.i4
  %5082 = add i64 %5081, 4
  store i64 %5082, i64* %PC.i4
  %5083 = add i64 96, %5080
  store i64 %5083, i64* %RSP.i, align 8
  %5084 = icmp ult i64 %5083, %5080
  %5085 = icmp ult i64 %5083, 96
  %5086 = or i1 %5084, %5085
  %5087 = zext i1 %5086 to i8
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5087, i8* %5088, align 1
  %5089 = trunc i64 %5083 to i32
  %5090 = and i32 %5089, 255
  %5091 = call i32 @llvm.ctpop.i32(i32 %5090)
  %5092 = trunc i32 %5091 to i8
  %5093 = and i8 %5092, 1
  %5094 = xor i8 %5093, 1
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5094, i8* %5095, align 1
  %5096 = xor i64 96, %5080
  %5097 = xor i64 %5096, %5083
  %5098 = lshr i64 %5097, 4
  %5099 = trunc i64 %5098 to i8
  %5100 = and i8 %5099, 1
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5100, i8* %5101, align 1
  %5102 = icmp eq i64 %5083, 0
  %5103 = zext i1 %5102 to i8
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5103, i8* %5104, align 1
  %5105 = lshr i64 %5083, 63
  %5106 = trunc i64 %5105 to i8
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5106, i8* %5107, align 1
  %5108 = lshr i64 %5080, 63
  %5109 = xor i64 %5105, %5108
  %5110 = add i64 %5109, %5105
  %5111 = icmp eq i64 %5110, 2
  %5112 = zext i1 %5111 to i8
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5112, i8* %5113, align 1
  store %struct.Memory* %loadMem_401fa7, %struct.Memory** %MEMORY
  %loadMem_401fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 33
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5116 to i64*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 15
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5119 to i64*
  %5120 = load i64, i64* %PC.i2
  %5121 = add i64 %5120, 1
  store i64 %5121, i64* %PC.i2
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5123 = load i64, i64* %5122, align 8
  %5124 = add i64 %5123, 8
  %5125 = inttoptr i64 %5123 to i64*
  %5126 = load i64, i64* %5125
  store i64 %5126, i64* %RBP.i3, align 8
  store i64 %5124, i64* %5122, align 8
  store %struct.Memory* %loadMem_401fab, %struct.Memory** %MEMORY
  %loadMem_401fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5128 = getelementptr inbounds %struct.GPR, %struct.GPR* %5127, i32 0, i32 33
  %5129 = getelementptr inbounds %struct.Reg, %struct.Reg* %5128, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5129 to i64*
  %5130 = load i64, i64* %PC.i1
  %5131 = add i64 %5130, 1
  store i64 %5131, i64* %PC.i1
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5134 = load i64, i64* %5133, align 8
  %5135 = inttoptr i64 %5134 to i64*
  %5136 = load i64, i64* %5135
  store i64 %5136, i64* %5132, align 8
  %5137 = add i64 %5134, 8
  store i64 %5137, i64* %5133, align 8
  store %struct.Memory* %loadMem_401fac, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_401fac
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 96
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 96
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
  %23 = xor i64 96, %9
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

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movl__r9d__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jne_.L_401df8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jl_.L_401d41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
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

define %struct.Memory* @routine_jge_.L_401d3c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 4
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
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

define %struct.Memory* @routine_je_.L_401cd6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i64 %15, 4
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

define %struct.Memory* @routine_movss_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_subl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %17, %13
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %14, %12
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %18
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %18, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %18, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %17, 31
  %43 = lshr i32 %13, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
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

define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
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

define %struct.Memory* @routine_movslq__edx___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
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

define %struct.Memory* @routine_addq__r8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.daxpy(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401c72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401d41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 16
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

define %struct.Memory* @routine_jge_.L_401df3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rsi__rdi_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
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

define %struct.Memory* @routine_imull_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RCX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
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
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss___rsi__rdi_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
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
  %30 = fdiv float %29, %28
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

define %struct.Memory* @routine_movss__xmm0____rsi__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %RDI
  %16 = mul i64 %15, 4
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

define %struct.Memory* @routine_movd__xmm0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = trunc i64 %15 to i32
  %17 = bitcast i64* %RCX to [2 x i32]*
  %18 = bitcast i64* %RCX to i32*
  store i32 %16, i32* %18, align 1
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__0x80000000___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = xor i64 -2147483648, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movd__ecx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %ECX
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = trunc i64 %9 to i32
  %22 = xor i32 %21, %12
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %12, 31
  %34 = xor i32 %30, %33
  %35 = add i32 %34, %30
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__ecx___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
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

define %struct.Memory* @routine_jmpq_.L_401d48(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401fa7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_401e8c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = trunc i64 %9 to i32
  %22 = xor i32 %21, %12
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %12, 31
  %34 = xor i32 %30, %33
  %35 = add i32 %34, %30
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
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

define %struct.Memory* @routine_shlq__0x2___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.ddot(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rcx__rsi_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 4
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

define %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fsub float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
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

define %struct.Memory* @routine_imull_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RAX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
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

define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss___rcx__rsi_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
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
  %30 = fdiv float %29, %28
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

define %struct.Memory* @routine_movss__xmm0____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RSI
  %16 = mul i64 %15, 4
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

define %struct.Memory* @routine_jmpq_.L_401dff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jl_.L_401fa2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401f9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 84
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

define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
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

define %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss__xmm1____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RSI
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movl___rcx__rsi_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_401f8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401f8f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401e9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401fa2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 96
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
  %25 = xor i64 96, %9
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
