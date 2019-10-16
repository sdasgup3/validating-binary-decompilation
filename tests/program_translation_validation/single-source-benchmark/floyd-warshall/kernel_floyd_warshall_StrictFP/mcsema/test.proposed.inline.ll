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
define %struct.Memory* @kernel_floyd_warshall_StrictFP(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400bf0, %struct.Memory** %MEMORY
  %loadMem_400bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i113
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i113
  store i64 %26, i64* %RBP.i114, align 8
  store %struct.Memory* %loadMem_400bf1, %struct.Memory** %MEMORY
  %loadMem_400bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i198
  %39 = sub i64 %38, 4
  %40 = load i32, i32* %EDI.i
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i197
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i197
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  store %struct.Memory* %loadMem_400bf4, %struct.Memory** %MEMORY
  %loadMem_400bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %50 to i64*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i196
  %55 = sub i64 %54, 16
  %56 = load i64, i64* %RSI.i
  %57 = load i64, i64* %PC.i195
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC.i195
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59
  store %struct.Memory* %loadMem_400bf7, %struct.Memory** %MEMORY
  %loadMem_400bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 33
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %62 to i64*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 15
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %65 to i64*
  %66 = load i64, i64* %RBP.i194
  %67 = sub i64 %66, 28
  %68 = load i64, i64* %PC.i193
  %69 = add i64 %68, 7
  store i64 %69, i64* %PC.i193
  %70 = inttoptr i64 %67 to i32*
  store i32 0, i32* %70
  store %struct.Memory* %loadMem_400bfb, %struct.Memory** %MEMORY
  br label %block_.L_400c02

block_.L_400c02:                                  ; preds = %block_.L_400d20, %entry
  %loadMem_400c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 33
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %73 to i64*
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %75 = getelementptr inbounds %struct.GPR, %struct.GPR* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.Reg, %struct.Reg* %75, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %76 to i64*
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %78 = getelementptr inbounds %struct.GPR, %struct.GPR* %77, i32 0, i32 15
  %79 = getelementptr inbounds %struct.Reg, %struct.Reg* %78, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %79 to i64*
  %80 = load i64, i64* %RBP.i192
  %81 = sub i64 %80, 28
  %82 = load i64, i64* %PC.i190
  %83 = add i64 %82, 3
  store i64 %83, i64* %PC.i190
  %84 = inttoptr i64 %81 to i32*
  %85 = load i32, i32* %84
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_400c02, %struct.Memory** %MEMORY
  %loadMem_400c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 33
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %89 to i64*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %EAX.i188 = bitcast %union.anon* %92 to i32*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 15
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %95 to i64*
  %96 = load i32, i32* %EAX.i188
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* %RBP.i189
  %99 = sub i64 %98, 4
  %100 = load i64, i64* %PC.i187
  %101 = add i64 %100, 3
  store i64 %101, i64* %PC.i187
  %102 = inttoptr i64 %99 to i32*
  %103 = load i32, i32* %102
  %104 = sub i32 %96, %103
  %105 = icmp ult i32 %96, %103
  %106 = zext i1 %105 to i8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %106, i8* %107, align 1
  %108 = and i32 %104, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %112, i8* %113, align 1
  %114 = xor i32 %103, %96
  %115 = xor i32 %114, %104
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %118, i8* %119, align 1
  %120 = icmp eq i32 %104, 0
  %121 = zext i1 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %121, i8* %122, align 1
  %123 = lshr i32 %104, 31
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %124, i8* %125, align 1
  %126 = lshr i32 %96, 31
  %127 = lshr i32 %103, 31
  %128 = xor i32 %127, %126
  %129 = xor i32 %123, %126
  %130 = add i32 %129, %128
  %131 = icmp eq i32 %130, 2
  %132 = zext i1 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %132, i8* %133, align 1
  store %struct.Memory* %loadMem_400c05, %struct.Memory** %MEMORY
  %loadMem_400c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %PC.i186
  %138 = add i64 %137, 294
  %139 = load i64, i64* %PC.i186
  %140 = add i64 %139, 6
  %141 = load i64, i64* %PC.i186
  %142 = add i64 %141, 6
  store i64 %142, i64* %PC.i186
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %144 = load i8, i8* %143, align 1
  %145 = icmp ne i8 %144, 0
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %147 = load i8, i8* %146, align 1
  %148 = icmp ne i8 %147, 0
  %149 = xor i1 %145, %148
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %BRANCH_TAKEN, align 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %153 = select i1 %149, i64 %140, i64 %138
  store i64 %153, i64* %152, align 8
  store %struct.Memory* %loadMem_400c08, %struct.Memory** %MEMORY
  %loadBr_400c08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c08 = icmp eq i8 %loadBr_400c08, 1
  br i1 %cmpBr_400c08, label %block_.L_400d2e, label %block_400c0e

block_400c0e:                                     ; preds = %block_.L_400c02
  %loadMem_400c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 15
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RBP.i185
  %161 = sub i64 %160, 20
  %162 = load i64, i64* %PC.i184
  %163 = add i64 %162, 7
  store i64 %163, i64* %PC.i184
  %164 = inttoptr i64 %161 to i32*
  store i32 0, i32* %164
  store %struct.Memory* %loadMem_400c0e, %struct.Memory** %MEMORY
  br label %block_.L_400c15

block_.L_400c15:                                  ; preds = %block_.L_400d0d, %block_400c0e
  %loadMem_400c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 15
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %RBP.i183
  %175 = sub i64 %174, 20
  %176 = load i64, i64* %PC.i181
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC.i181
  %178 = inttoptr i64 %175 to i32*
  %179 = load i32, i32* %178
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_400c15, %struct.Memory** %MEMORY
  %loadMem_400c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %EAX.i179 = bitcast %union.anon* %186 to i32*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 15
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %189 to i64*
  %190 = load i32, i32* %EAX.i179
  %191 = zext i32 %190 to i64
  %192 = load i64, i64* %RBP.i180
  %193 = sub i64 %192, 4
  %194 = load i64, i64* %PC.i178
  %195 = add i64 %194, 3
  store i64 %195, i64* %PC.i178
  %196 = inttoptr i64 %193 to i32*
  %197 = load i32, i32* %196
  %198 = sub i32 %190, %197
  %199 = icmp ult i32 %190, %197
  %200 = zext i1 %199 to i8
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %200, i8* %201, align 1
  %202 = and i32 %198, 255
  %203 = call i32 @llvm.ctpop.i32(i32 %202)
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %206, i8* %207, align 1
  %208 = xor i32 %197, %190
  %209 = xor i32 %208, %198
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %212, i8* %213, align 1
  %214 = icmp eq i32 %198, 0
  %215 = zext i1 %214 to i8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %215, i8* %216, align 1
  %217 = lshr i32 %198, 31
  %218 = trunc i32 %217 to i8
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %218, i8* %219, align 1
  %220 = lshr i32 %190, 31
  %221 = lshr i32 %197, 31
  %222 = xor i32 %221, %220
  %223 = xor i32 %217, %220
  %224 = add i32 %223, %222
  %225 = icmp eq i32 %224, 2
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %226, i8* %227, align 1
  store %struct.Memory* %loadMem_400c18, %struct.Memory** %MEMORY
  %loadMem_400c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %PC.i177
  %232 = add i64 %231, 256
  %233 = load i64, i64* %PC.i177
  %234 = add i64 %233, 6
  %235 = load i64, i64* %PC.i177
  %236 = add i64 %235, 6
  store i64 %236, i64* %PC.i177
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %238 = load i8, i8* %237, align 1
  %239 = icmp ne i8 %238, 0
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %241 = load i8, i8* %240, align 1
  %242 = icmp ne i8 %241, 0
  %243 = xor i1 %239, %242
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %BRANCH_TAKEN, align 1
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %247 = select i1 %243, i64 %234, i64 %232
  store i64 %247, i64* %246, align 8
  store %struct.Memory* %loadMem_400c1b, %struct.Memory** %MEMORY
  %loadBr_400c1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c1b = icmp eq i8 %loadBr_400c1b, 1
  br i1 %cmpBr_400c1b, label %block_.L_400d1b, label %block_400c21

block_400c21:                                     ; preds = %block_.L_400c15
  %loadMem_400c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 15
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %RBP.i176
  %255 = sub i64 %254, 24
  %256 = load i64, i64* %PC.i175
  %257 = add i64 %256, 7
  store i64 %257, i64* %PC.i175
  %258 = inttoptr i64 %255 to i32*
  store i32 0, i32* %258
  store %struct.Memory* %loadMem_400c21, %struct.Memory** %MEMORY
  br label %block_.L_400c28

block_.L_400c28:                                  ; preds = %block_.L_400cdd, %block_400c21
  %loadMem_400c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %264 to i64*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 15
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %267 to i64*
  %268 = load i64, i64* %RBP.i174
  %269 = sub i64 %268, 24
  %270 = load i64, i64* %PC.i172
  %271 = add i64 %270, 3
  store i64 %271, i64* %PC.i172
  %272 = inttoptr i64 %269 to i32*
  %273 = load i32, i32* %272
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_400c28, %struct.Memory** %MEMORY
  %loadMem_400c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 33
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %EAX.i170 = bitcast %union.anon* %280 to i32*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 15
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %283 to i64*
  %284 = load i32, i32* %EAX.i170
  %285 = zext i32 %284 to i64
  %286 = load i64, i64* %RBP.i171
  %287 = sub i64 %286, 4
  %288 = load i64, i64* %PC.i169
  %289 = add i64 %288, 3
  store i64 %289, i64* %PC.i169
  %290 = inttoptr i64 %287 to i32*
  %291 = load i32, i32* %290
  %292 = sub i32 %284, %291
  %293 = icmp ult i32 %284, %291
  %294 = zext i1 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %294, i8* %295, align 1
  %296 = and i32 %292, 255
  %297 = call i32 @llvm.ctpop.i32(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %300, i8* %301, align 1
  %302 = xor i32 %291, %284
  %303 = xor i32 %302, %292
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %306, i8* %307, align 1
  %308 = icmp eq i32 %292, 0
  %309 = zext i1 %308 to i8
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %309, i8* %310, align 1
  %311 = lshr i32 %292, 31
  %312 = trunc i32 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %312, i8* %313, align 1
  %314 = lshr i32 %284, 31
  %315 = lshr i32 %291, 31
  %316 = xor i32 %315, %314
  %317 = xor i32 %311, %314
  %318 = add i32 %317, %316
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %320, i8* %321, align 1
  store %struct.Memory* %loadMem_400c2b, %struct.Memory** %MEMORY
  %loadMem_400c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %PC.i168
  %326 = add i64 %325, 218
  %327 = load i64, i64* %PC.i168
  %328 = add i64 %327, 6
  %329 = load i64, i64* %PC.i168
  %330 = add i64 %329, 6
  store i64 %330, i64* %PC.i168
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %332 = load i8, i8* %331, align 1
  %333 = icmp ne i8 %332, 0
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %335 = load i8, i8* %334, align 1
  %336 = icmp ne i8 %335, 0
  %337 = xor i1 %333, %336
  %338 = xor i1 %337, true
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %BRANCH_TAKEN, align 1
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %341 = select i1 %337, i64 %328, i64 %326
  store i64 %341, i64* %340, align 8
  store %struct.Memory* %loadMem_400c2e, %struct.Memory** %MEMORY
  %loadBr_400c2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c2e = icmp eq i8 %loadBr_400c2e, 1
  br i1 %cmpBr_400c2e, label %block_.L_400d08, label %block_400c34

block_400c34:                                     ; preds = %block_.L_400c28
  %loadMem_400c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 33
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 15
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %RBP.i167
  %352 = sub i64 %351, 16
  %353 = load i64, i64* %PC.i165
  %354 = add i64 %353, 4
  store i64 %354, i64* %PC.i165
  %355 = inttoptr i64 %352 to i64*
  %356 = load i64, i64* %355
  store i64 %356, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_400c34, %struct.Memory** %MEMORY
  %loadMem_400c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 33
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 5
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 15
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %RBP.i164
  %367 = sub i64 %366, 20
  %368 = load i64, i64* %PC.i162
  %369 = add i64 %368, 4
  store i64 %369, i64* %PC.i162
  %370 = inttoptr i64 %367 to i32*
  %371 = load i32, i32* %370
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %RCX.i163, align 8
  store %struct.Memory* %loadMem_400c38, %struct.Memory** %MEMORY
  %loadMem_400c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 33
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %RCX.i161
  %380 = load i64, i64* %PC.i160
  %381 = add i64 %380, 4
  store i64 %381, i64* %PC.i160
  %382 = shl i64 %379, 12
  %383 = icmp slt i64 %382, 0
  %384 = shl i64 %382, 1
  store i64 %384, i64* %RCX.i161, align 8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %386 = zext i1 %383 to i8
  store i8 %386, i8* %385, align 1
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %388 = trunc i64 %384 to i32
  store i8 1, i8* %387, align 1
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %389, align 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %391 = icmp eq i64 %384, 0
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %390, align 1
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %394 = lshr i64 %384, 63
  %395 = trunc i64 %394 to i8
  store i8 %395, i8* %393, align 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %396, align 1
  store %struct.Memory* %loadMem_400c3c, %struct.Memory** %MEMORY
  %loadMem_400c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 33
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %405 to i64*
  %406 = load i64, i64* %RAX.i158
  %407 = load i64, i64* %RCX.i159
  %408 = load i64, i64* %PC.i157
  %409 = add i64 %408, 3
  store i64 %409, i64* %PC.i157
  %410 = add i64 %407, %406
  store i64 %410, i64* %RAX.i158, align 8
  %411 = icmp ult i64 %410, %406
  %412 = icmp ult i64 %410, %407
  %413 = or i1 %411, %412
  %414 = zext i1 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %414, i8* %415, align 1
  %416 = trunc i64 %410 to i32
  %417 = and i32 %416, 255
  %418 = call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %421, i8* %422, align 1
  %423 = xor i64 %407, %406
  %424 = xor i64 %423, %410
  %425 = lshr i64 %424, 4
  %426 = trunc i64 %425 to i8
  %427 = and i8 %426, 1
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %427, i8* %428, align 1
  %429 = icmp eq i64 %410, 0
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %430, i8* %431, align 1
  %432 = lshr i64 %410, 63
  %433 = trunc i64 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %433, i8* %434, align 1
  %435 = lshr i64 %406, 63
  %436 = lshr i64 %407, 63
  %437 = xor i64 %432, %435
  %438 = xor i64 %432, %436
  %439 = add i64 %437, %438
  %440 = icmp eq i64 %439, 2
  %441 = zext i1 %440 to i8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %441, i8* %442, align 1
  store %struct.Memory* %loadMem_400c40, %struct.Memory** %MEMORY
  %loadMem_400c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 33
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 5
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 15
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %RBP.i156
  %453 = sub i64 %452, 24
  %454 = load i64, i64* %PC.i154
  %455 = add i64 %454, 4
  store i64 %455, i64* %PC.i154
  %456 = inttoptr i64 %453 to i32*
  %457 = load i32, i32* %456
  %458 = sext i32 %457 to i64
  store i64 %458, i64* %RCX.i155, align 8
  store %struct.Memory* %loadMem_400c43, %struct.Memory** %MEMORY
  %loadMem_400c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 33
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 1
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 5
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %469 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %468, i64 0, i64 0
  %YMM0.i153 = bitcast %union.VectorReg* %469 to %"class.std::bitset"*
  %470 = bitcast %"class.std::bitset"* %YMM0.i153 to i8*
  %471 = load i64, i64* %RAX.i151
  %472 = load i64, i64* %RCX.i152
  %473 = mul i64 %472, 8
  %474 = add i64 %473, %471
  %475 = load i64, i64* %PC.i150
  %476 = add i64 %475, 5
  store i64 %476, i64* %PC.i150
  %477 = inttoptr i64 %474 to double*
  %478 = load double, double* %477
  %479 = bitcast i8* %470 to double*
  store double %478, double* %479, align 1
  %480 = getelementptr inbounds i8, i8* %470, i64 8
  %481 = bitcast i8* %480 to double*
  store double 0.000000e+00, double* %481, align 1
  store %struct.Memory* %loadMem_400c47, %struct.Memory** %MEMORY
  %loadMem_400c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 33
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %484 to i64*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 15
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %490 to i64*
  %491 = load i64, i64* %RBP.i149
  %492 = sub i64 %491, 16
  %493 = load i64, i64* %PC.i147
  %494 = add i64 %493, 4
  store i64 %494, i64* %PC.i147
  %495 = inttoptr i64 %492 to i64*
  %496 = load i64, i64* %495
  store i64 %496, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_400c4c, %struct.Memory** %MEMORY
  %loadMem_400c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 33
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %499 to i64*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 5
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 15
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %505 to i64*
  %506 = load i64, i64* %RBP.i146
  %507 = sub i64 %506, 20
  %508 = load i64, i64* %PC.i144
  %509 = add i64 %508, 4
  store i64 %509, i64* %PC.i144
  %510 = inttoptr i64 %507 to i32*
  %511 = load i32, i32* %510
  %512 = sext i32 %511 to i64
  store i64 %512, i64* %RCX.i145, align 8
  store %struct.Memory* %loadMem_400c50, %struct.Memory** %MEMORY
  %loadMem_400c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 5
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %518 to i64*
  %519 = load i64, i64* %RCX.i143
  %520 = load i64, i64* %PC.i142
  %521 = add i64 %520, 4
  store i64 %521, i64* %PC.i142
  %522 = shl i64 %519, 12
  %523 = icmp slt i64 %522, 0
  %524 = shl i64 %522, 1
  store i64 %524, i64* %RCX.i143, align 8
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %526 = zext i1 %523 to i8
  store i8 %526, i8* %525, align 1
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %528 = trunc i64 %524 to i32
  store i8 1, i8* %527, align 1
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %529, align 1
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %531 = icmp eq i64 %524, 0
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %530, align 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %534 = lshr i64 %524, 63
  %535 = trunc i64 %534 to i8
  store i8 %535, i8* %533, align 1
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %536, align 1
  store %struct.Memory* %loadMem_400c54, %struct.Memory** %MEMORY
  %loadMem_400c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 33
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 1
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 5
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %545 to i64*
  %546 = load i64, i64* %RAX.i140
  %547 = load i64, i64* %RCX.i141
  %548 = load i64, i64* %PC.i139
  %549 = add i64 %548, 3
  store i64 %549, i64* %PC.i139
  %550 = add i64 %547, %546
  store i64 %550, i64* %RAX.i140, align 8
  %551 = icmp ult i64 %550, %546
  %552 = icmp ult i64 %550, %547
  %553 = or i1 %551, %552
  %554 = zext i1 %553 to i8
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %554, i8* %555, align 1
  %556 = trunc i64 %550 to i32
  %557 = and i32 %556, 255
  %558 = call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %561, i8* %562, align 1
  %563 = xor i64 %547, %546
  %564 = xor i64 %563, %550
  %565 = lshr i64 %564, 4
  %566 = trunc i64 %565 to i8
  %567 = and i8 %566, 1
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %567, i8* %568, align 1
  %569 = icmp eq i64 %550, 0
  %570 = zext i1 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %570, i8* %571, align 1
  %572 = lshr i64 %550, 63
  %573 = trunc i64 %572 to i8
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %573, i8* %574, align 1
  %575 = lshr i64 %546, 63
  %576 = lshr i64 %547, 63
  %577 = xor i64 %572, %575
  %578 = xor i64 %572, %576
  %579 = add i64 %577, %578
  %580 = icmp eq i64 %579, 2
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %581, i8* %582, align 1
  store %struct.Memory* %loadMem_400c58, %struct.Memory** %MEMORY
  %loadMem_400c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 5
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 15
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %591 to i64*
  %592 = load i64, i64* %RBP.i138
  %593 = sub i64 %592, 28
  %594 = load i64, i64* %PC.i136
  %595 = add i64 %594, 4
  store i64 %595, i64* %PC.i136
  %596 = inttoptr i64 %593 to i32*
  %597 = load i32, i32* %596
  %598 = sext i32 %597 to i64
  store i64 %598, i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_400c5b, %struct.Memory** %MEMORY
  %loadMem_400c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 33
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 1
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 5
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %609 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %608, i64 0, i64 1
  %YMM1.i135 = bitcast %union.VectorReg* %609 to %"class.std::bitset"*
  %610 = bitcast %"class.std::bitset"* %YMM1.i135 to i8*
  %611 = load i64, i64* %RAX.i133
  %612 = load i64, i64* %RCX.i134
  %613 = mul i64 %612, 8
  %614 = add i64 %613, %611
  %615 = load i64, i64* %PC.i132
  %616 = add i64 %615, 5
  store i64 %616, i64* %PC.i132
  %617 = inttoptr i64 %614 to double*
  %618 = load double, double* %617
  %619 = bitcast i8* %610 to double*
  store double %618, double* %619, align 1
  %620 = getelementptr inbounds i8, i8* %610, i64 8
  %621 = bitcast i8* %620 to double*
  store double 0.000000e+00, double* %621, align 1
  store %struct.Memory* %loadMem_400c5f, %struct.Memory** %MEMORY
  %loadMem_400c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 1
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 15
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %RBP.i131
  %632 = sub i64 %631, 16
  %633 = load i64, i64* %PC.i129
  %634 = add i64 %633, 4
  store i64 %634, i64* %PC.i129
  %635 = inttoptr i64 %632 to i64*
  %636 = load i64, i64* %635
  store i64 %636, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_400c64, %struct.Memory** %MEMORY
  %loadMem_400c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 5
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 15
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %645 to i64*
  %646 = load i64, i64* %RBP.i128
  %647 = sub i64 %646, 28
  %648 = load i64, i64* %PC.i126
  %649 = add i64 %648, 4
  store i64 %649, i64* %PC.i126
  %650 = inttoptr i64 %647 to i32*
  %651 = load i32, i32* %650
  %652 = sext i32 %651 to i64
  store i64 %652, i64* %RCX.i127, align 8
  store %struct.Memory* %loadMem_400c68, %struct.Memory** %MEMORY
  %loadMem_400c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 33
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 5
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %658 to i64*
  %659 = load i64, i64* %RCX.i125
  %660 = load i64, i64* %PC.i124
  %661 = add i64 %660, 4
  store i64 %661, i64* %PC.i124
  %662 = shl i64 %659, 12
  %663 = icmp slt i64 %662, 0
  %664 = shl i64 %662, 1
  store i64 %664, i64* %RCX.i125, align 8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %666 = zext i1 %663 to i8
  store i8 %666, i8* %665, align 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %668 = trunc i64 %664 to i32
  store i8 1, i8* %667, align 1
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %669, align 1
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %671 = icmp eq i64 %664, 0
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %670, align 1
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %674 = lshr i64 %664, 63
  %675 = trunc i64 %674 to i8
  store i8 %675, i8* %673, align 1
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %676, align 1
  store %struct.Memory* %loadMem_400c6c, %struct.Memory** %MEMORY
  %loadMem_400c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 33
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %679 to i64*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 1
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 5
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %685 to i64*
  %686 = load i64, i64* %RAX.i122
  %687 = load i64, i64* %RCX.i123
  %688 = load i64, i64* %PC.i121
  %689 = add i64 %688, 3
  store i64 %689, i64* %PC.i121
  %690 = add i64 %687, %686
  store i64 %690, i64* %RAX.i122, align 8
  %691 = icmp ult i64 %690, %686
  %692 = icmp ult i64 %690, %687
  %693 = or i1 %691, %692
  %694 = zext i1 %693 to i8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %694, i8* %695, align 1
  %696 = trunc i64 %690 to i32
  %697 = and i32 %696, 255
  %698 = call i32 @llvm.ctpop.i32(i32 %697)
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  %701 = xor i8 %700, 1
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %701, i8* %702, align 1
  %703 = xor i64 %687, %686
  %704 = xor i64 %703, %690
  %705 = lshr i64 %704, 4
  %706 = trunc i64 %705 to i8
  %707 = and i8 %706, 1
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %707, i8* %708, align 1
  %709 = icmp eq i64 %690, 0
  %710 = zext i1 %709 to i8
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %710, i8* %711, align 1
  %712 = lshr i64 %690, 63
  %713 = trunc i64 %712 to i8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %713, i8* %714, align 1
  %715 = lshr i64 %686, 63
  %716 = lshr i64 %687, 63
  %717 = xor i64 %712, %715
  %718 = xor i64 %712, %716
  %719 = add i64 %717, %718
  %720 = icmp eq i64 %719, 2
  %721 = zext i1 %720 to i8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %721, i8* %722, align 1
  store %struct.Memory* %loadMem_400c70, %struct.Memory** %MEMORY
  %loadMem_400c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 5
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 15
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %RBP.i120
  %733 = sub i64 %732, 24
  %734 = load i64, i64* %PC.i118
  %735 = add i64 %734, 4
  store i64 %735, i64* %PC.i118
  %736 = inttoptr i64 %733 to i32*
  %737 = load i32, i32* %736
  %738 = sext i32 %737 to i64
  store i64 %738, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_400c73, %struct.Memory** %MEMORY
  %loadMem_400c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 1
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 5
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %749 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %748, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %749 to %"class.std::bitset"*
  %750 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %751 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %752 = load i64, i64* %RAX.i116
  %753 = load i64, i64* %RCX.i117
  %754 = mul i64 %753, 8
  %755 = add i64 %754, %752
  %756 = load i64, i64* %PC.i115
  %757 = add i64 %756, 5
  store i64 %757, i64* %PC.i115
  %758 = bitcast i8* %751 to double*
  %759 = load double, double* %758, align 1
  %760 = getelementptr inbounds i8, i8* %751, i64 8
  %761 = bitcast i8* %760 to i64*
  %762 = load i64, i64* %761, align 1
  %763 = inttoptr i64 %755 to double*
  %764 = load double, double* %763
  %765 = fadd double %759, %764
  %766 = bitcast i8* %750 to double*
  store double %765, double* %766, align 1
  %767 = getelementptr inbounds i8, i8* %750, i64 8
  %768 = bitcast i8* %767 to i64*
  store i64 %762, i64* %768, align 1
  store %struct.Memory* %loadMem_400c77, %struct.Memory** %MEMORY
  %loadMem_400c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %773 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %772, i64 0, i64 0
  %XMM0.i112 = bitcast %union.VectorReg* %773 to %union.vec128_t*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %775 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %774, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %775 to %union.vec128_t*
  %776 = bitcast %union.vec128_t* %XMM1.i to i8*
  %777 = bitcast %union.vec128_t* %XMM0.i112 to i8*
  %778 = load i64, i64* %PC.i111
  %779 = add i64 %778, 4
  store i64 %779, i64* %PC.i111
  %780 = bitcast i8* %776 to double*
  %781 = load double, double* %780, align 1
  %782 = bitcast i8* %777 to double*
  %783 = load double, double* %782, align 1
  %784 = fcmp uno double %781, %783
  br i1 %784, label %785, label %797

; <label>:785:                                    ; preds = %block_400c34
  %786 = fadd double %781, %783
  %787 = bitcast double %786 to i64
  %788 = and i64 %787, 9221120237041090560
  %789 = icmp eq i64 %788, 9218868437227405312
  %790 = and i64 %787, 2251799813685247
  %791 = icmp ne i64 %790, 0
  %792 = and i1 %789, %791
  br i1 %792, label %793, label %803

; <label>:793:                                    ; preds = %785
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %795 = load i64, i64* %794, align 8
  %796 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %795, %struct.Memory* %loadMem_400c7c)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:797:                                    ; preds = %block_400c34
  %798 = fcmp ogt double %781, %783
  br i1 %798, label %803, label %799

; <label>:799:                                    ; preds = %797
  %800 = fcmp olt double %781, %783
  br i1 %800, label %803, label %801

; <label>:801:                                    ; preds = %799
  %802 = fcmp oeq double %781, %783
  br i1 %802, label %803, label %810

; <label>:803:                                    ; preds = %801, %799, %797, %785
  %804 = phi i8 [ 0, %797 ], [ 0, %799 ], [ 1, %801 ], [ 1, %785 ]
  %805 = phi i8 [ 0, %797 ], [ 0, %799 ], [ 0, %801 ], [ 1, %785 ]
  %806 = phi i8 [ 0, %797 ], [ 1, %799 ], [ 0, %801 ], [ 1, %785 ]
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %804, i8* %807, align 1
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %805, i8* %808, align 1
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %806, i8* %809, align 1
  br label %810

; <label>:810:                                    ; preds = %803, %801
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %811, align 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %812, align 1
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %813, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %793, %810
  %814 = phi %struct.Memory* [ %796, %793 ], [ %loadMem_400c7c, %810 ]
  store %struct.Memory* %814, %struct.Memory** %MEMORY
  %loadMem_400c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 33
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %817 to i64*
  %818 = load i64, i64* %PC.i110
  %819 = add i64 %818, 40
  %820 = load i64, i64* %PC.i110
  %821 = add i64 %820, 6
  %822 = load i64, i64* %PC.i110
  %823 = add i64 %822, 6
  store i64 %823, i64* %PC.i110
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %825 = load i8, i8* %824, align 1
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %827 = load i8, i8* %826, align 1
  %828 = or i8 %827, %825
  %829 = icmp ne i8 %828, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %BRANCH_TAKEN, align 1
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %832 = select i1 %829, i64 %819, i64 %821
  store i64 %832, i64* %831, align 8
  store %struct.Memory* %loadMem_400c80, %struct.Memory** %MEMORY
  %loadBr_400c80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c80 = icmp eq i8 %loadBr_400c80, 1
  br i1 %cmpBr_400c80, label %block_.L_400ca8, label %block_400c86

block_400c86:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_400c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 33
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 1
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 15
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %841 to i64*
  %842 = load i64, i64* %RBP.i109
  %843 = sub i64 %842, 16
  %844 = load i64, i64* %PC.i107
  %845 = add i64 %844, 4
  store i64 %845, i64* %PC.i107
  %846 = inttoptr i64 %843 to i64*
  %847 = load i64, i64* %846
  store i64 %847, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_400c86, %struct.Memory** %MEMORY
  %loadMem_400c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 5
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 15
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %856 to i64*
  %857 = load i64, i64* %RBP.i106
  %858 = sub i64 %857, 20
  %859 = load i64, i64* %PC.i104
  %860 = add i64 %859, 4
  store i64 %860, i64* %PC.i104
  %861 = inttoptr i64 %858 to i32*
  %862 = load i32, i32* %861
  %863 = sext i32 %862 to i64
  store i64 %863, i64* %RCX.i105, align 8
  store %struct.Memory* %loadMem_400c8a, %struct.Memory** %MEMORY
  %loadMem_400c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 5
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %869 to i64*
  %870 = load i64, i64* %RCX.i103
  %871 = load i64, i64* %PC.i102
  %872 = add i64 %871, 4
  store i64 %872, i64* %PC.i102
  %873 = shl i64 %870, 12
  %874 = icmp slt i64 %873, 0
  %875 = shl i64 %873, 1
  store i64 %875, i64* %RCX.i103, align 8
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %877 = zext i1 %874 to i8
  store i8 %877, i8* %876, align 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %879 = trunc i64 %875 to i32
  store i8 1, i8* %878, align 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %880, align 1
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %882 = icmp eq i64 %875, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %881, align 1
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %885 = lshr i64 %875, 63
  %886 = trunc i64 %885 to i8
  store i8 %886, i8* %884, align 1
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %887, align 1
  store %struct.Memory* %loadMem_400c8e, %struct.Memory** %MEMORY
  %loadMem_400c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 5
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %896 to i64*
  %897 = load i64, i64* %RAX.i100
  %898 = load i64, i64* %RCX.i101
  %899 = load i64, i64* %PC.i99
  %900 = add i64 %899, 3
  store i64 %900, i64* %PC.i99
  %901 = add i64 %898, %897
  store i64 %901, i64* %RAX.i100, align 8
  %902 = icmp ult i64 %901, %897
  %903 = icmp ult i64 %901, %898
  %904 = or i1 %902, %903
  %905 = zext i1 %904 to i8
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %905, i8* %906, align 1
  %907 = trunc i64 %901 to i32
  %908 = and i32 %907, 255
  %909 = call i32 @llvm.ctpop.i32(i32 %908)
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %912, i8* %913, align 1
  %914 = xor i64 %898, %897
  %915 = xor i64 %914, %901
  %916 = lshr i64 %915, 4
  %917 = trunc i64 %916 to i8
  %918 = and i8 %917, 1
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %918, i8* %919, align 1
  %920 = icmp eq i64 %901, 0
  %921 = zext i1 %920 to i8
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %921, i8* %922, align 1
  %923 = lshr i64 %901, 63
  %924 = trunc i64 %923 to i8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %924, i8* %925, align 1
  %926 = lshr i64 %897, 63
  %927 = lshr i64 %898, 63
  %928 = xor i64 %923, %926
  %929 = xor i64 %923, %927
  %930 = add i64 %928, %929
  %931 = icmp eq i64 %930, 2
  %932 = zext i1 %931 to i8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %932, i8* %933, align 1
  store %struct.Memory* %loadMem_400c92, %struct.Memory** %MEMORY
  %loadMem_400c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 5
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 15
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %942 to i64*
  %943 = load i64, i64* %RBP.i98
  %944 = sub i64 %943, 24
  %945 = load i64, i64* %PC.i96
  %946 = add i64 %945, 4
  store i64 %946, i64* %PC.i96
  %947 = inttoptr i64 %944 to i32*
  %948 = load i32, i32* %947
  %949 = sext i32 %948 to i64
  store i64 %949, i64* %RCX.i97, align 8
  store %struct.Memory* %loadMem_400c95, %struct.Memory** %MEMORY
  %loadMem_400c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 33
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 1
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 5
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %958 to i64*
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %960 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %959, i64 0, i64 0
  %YMM0.i95 = bitcast %union.VectorReg* %960 to %"class.std::bitset"*
  %961 = bitcast %"class.std::bitset"* %YMM0.i95 to i8*
  %962 = load i64, i64* %RAX.i93
  %963 = load i64, i64* %RCX.i94
  %964 = mul i64 %963, 8
  %965 = add i64 %964, %962
  %966 = load i64, i64* %PC.i92
  %967 = add i64 %966, 5
  store i64 %967, i64* %PC.i92
  %968 = inttoptr i64 %965 to double*
  %969 = load double, double* %968
  %970 = bitcast i8* %961 to double*
  store double %969, double* %970, align 1
  %971 = getelementptr inbounds i8, i8* %961, i64 8
  %972 = bitcast i8* %971 to double*
  store double 0.000000e+00, double* %972, align 1
  store %struct.Memory* %loadMem_400c99, %struct.Memory** %MEMORY
  %loadMem_400c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 33
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %975 to i64*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 15
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %979, i64 0, i64 0
  %XMM0.i91 = bitcast %union.VectorReg* %980 to %union.vec128_t*
  %981 = load i64, i64* %RBP.i90
  %982 = sub i64 %981, 40
  %983 = bitcast %union.vec128_t* %XMM0.i91 to i8*
  %984 = load i64, i64* %PC.i89
  %985 = add i64 %984, 5
  store i64 %985, i64* %PC.i89
  %986 = bitcast i8* %983 to double*
  %987 = load double, double* %986, align 1
  %988 = inttoptr i64 %982 to double*
  store double %987, double* %988
  store %struct.Memory* %loadMem_400c9e, %struct.Memory** %MEMORY
  %loadMem_400ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 33
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %991 to i64*
  %992 = load i64, i64* %PC.i88
  %993 = add i64 %992, 58
  %994 = load i64, i64* %PC.i88
  %995 = add i64 %994, 5
  store i64 %995, i64* %PC.i88
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %993, i64* %996, align 8
  store %struct.Memory* %loadMem_400ca3, %struct.Memory** %MEMORY
  br label %block_.L_400cdd

block_.L_400ca8:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_400ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 15
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %1005 to i64*
  %1006 = load i64, i64* %RBP.i87
  %1007 = sub i64 %1006, 16
  %1008 = load i64, i64* %PC.i85
  %1009 = add i64 %1008, 4
  store i64 %1009, i64* %PC.i85
  %1010 = inttoptr i64 %1007 to i64*
  %1011 = load i64, i64* %1010
  store i64 %1011, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_400ca8, %struct.Memory** %MEMORY
  %loadMem_400cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 33
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 5
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %1017 to i64*
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 15
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %1020 to i64*
  %1021 = load i64, i64* %RBP.i84
  %1022 = sub i64 %1021, 20
  %1023 = load i64, i64* %PC.i82
  %1024 = add i64 %1023, 4
  store i64 %1024, i64* %PC.i82
  %1025 = inttoptr i64 %1022 to i32*
  %1026 = load i32, i32* %1025
  %1027 = sext i32 %1026 to i64
  store i64 %1027, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_400cac, %struct.Memory** %MEMORY
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 33
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %1030 to i64*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 5
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %RCX.i81
  %1035 = load i64, i64* %PC.i80
  %1036 = add i64 %1035, 4
  store i64 %1036, i64* %PC.i80
  %1037 = shl i64 %1034, 12
  %1038 = icmp slt i64 %1037, 0
  %1039 = shl i64 %1037, 1
  store i64 %1039, i64* %RCX.i81, align 8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1041 = zext i1 %1038 to i8
  store i8 %1041, i8* %1040, align 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1043 = trunc i64 %1039 to i32
  store i8 1, i8* %1042, align 1
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1044, align 1
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1046 = icmp eq i64 %1039, 0
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %1045, align 1
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1049 = lshr i64 %1039, 63
  %1050 = trunc i64 %1049 to i8
  store i8 %1050, i8* %1048, align 1
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1051, align 1
  store %struct.Memory* %loadMem_400cb0, %struct.Memory** %MEMORY
  %loadMem_400cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %1054 to i64*
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 1
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %1057 to i64*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 5
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %1060 to i64*
  %1061 = load i64, i64* %RAX.i78
  %1062 = load i64, i64* %RCX.i79
  %1063 = load i64, i64* %PC.i77
  %1064 = add i64 %1063, 3
  store i64 %1064, i64* %PC.i77
  %1065 = add i64 %1062, %1061
  store i64 %1065, i64* %RAX.i78, align 8
  %1066 = icmp ult i64 %1065, %1061
  %1067 = icmp ult i64 %1065, %1062
  %1068 = or i1 %1066, %1067
  %1069 = zext i1 %1068 to i8
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1069, i8* %1070, align 1
  %1071 = trunc i64 %1065 to i32
  %1072 = and i32 %1071, 255
  %1073 = call i32 @llvm.ctpop.i32(i32 %1072)
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1076, i8* %1077, align 1
  %1078 = xor i64 %1062, %1061
  %1079 = xor i64 %1078, %1065
  %1080 = lshr i64 %1079, 4
  %1081 = trunc i64 %1080 to i8
  %1082 = and i8 %1081, 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1082, i8* %1083, align 1
  %1084 = icmp eq i64 %1065, 0
  %1085 = zext i1 %1084 to i8
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1085, i8* %1086, align 1
  %1087 = lshr i64 %1065, 63
  %1088 = trunc i64 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1088, i8* %1089, align 1
  %1090 = lshr i64 %1061, 63
  %1091 = lshr i64 %1062, 63
  %1092 = xor i64 %1087, %1090
  %1093 = xor i64 %1087, %1091
  %1094 = add i64 %1092, %1093
  %1095 = icmp eq i64 %1094, 2
  %1096 = zext i1 %1095 to i8
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1096, i8* %1097, align 1
  store %struct.Memory* %loadMem_400cb4, %struct.Memory** %MEMORY
  %loadMem_400cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 33
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 5
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 15
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %1106 to i64*
  %1107 = load i64, i64* %RBP.i76
  %1108 = sub i64 %1107, 28
  %1109 = load i64, i64* %PC.i74
  %1110 = add i64 %1109, 4
  store i64 %1110, i64* %PC.i74
  %1111 = inttoptr i64 %1108 to i32*
  %1112 = load i32, i32* %1111
  %1113 = sext i32 %1112 to i64
  store i64 %1113, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_400cb7, %struct.Memory** %MEMORY
  %loadMem_400cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 33
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 1
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 5
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1124 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1123, i64 0, i64 0
  %YMM0.i73 = bitcast %union.VectorReg* %1124 to %"class.std::bitset"*
  %1125 = bitcast %"class.std::bitset"* %YMM0.i73 to i8*
  %1126 = load i64, i64* %RAX.i71
  %1127 = load i64, i64* %RCX.i72
  %1128 = mul i64 %1127, 8
  %1129 = add i64 %1128, %1126
  %1130 = load i64, i64* %PC.i70
  %1131 = add i64 %1130, 5
  store i64 %1131, i64* %PC.i70
  %1132 = inttoptr i64 %1129 to double*
  %1133 = load double, double* %1132
  %1134 = bitcast i8* %1125 to double*
  store double %1133, double* %1134, align 1
  %1135 = getelementptr inbounds i8, i8* %1125, i64 8
  %1136 = bitcast i8* %1135 to double*
  store double 0.000000e+00, double* %1136, align 1
  store %struct.Memory* %loadMem_400cbb, %struct.Memory** %MEMORY
  %loadMem_400cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 33
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 1
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 15
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %1145 to i64*
  %1146 = load i64, i64* %RBP.i69
  %1147 = sub i64 %1146, 16
  %1148 = load i64, i64* %PC.i67
  %1149 = add i64 %1148, 4
  store i64 %1149, i64* %PC.i67
  %1150 = inttoptr i64 %1147 to i64*
  %1151 = load i64, i64* %1150
  store i64 %1151, i64* %RAX.i68, align 8
  store %struct.Memory* %loadMem_400cc0, %struct.Memory** %MEMORY
  %loadMem_400cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 5
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 15
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %1160 to i64*
  %1161 = load i64, i64* %RBP.i66
  %1162 = sub i64 %1161, 28
  %1163 = load i64, i64* %PC.i64
  %1164 = add i64 %1163, 4
  store i64 %1164, i64* %PC.i64
  %1165 = inttoptr i64 %1162 to i32*
  %1166 = load i32, i32* %1165
  %1167 = sext i32 %1166 to i64
  store i64 %1167, i64* %RCX.i65, align 8
  store %struct.Memory* %loadMem_400cc4, %struct.Memory** %MEMORY
  %loadMem_400cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 5
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %1173 to i64*
  %1174 = load i64, i64* %RCX.i63
  %1175 = load i64, i64* %PC.i62
  %1176 = add i64 %1175, 4
  store i64 %1176, i64* %PC.i62
  %1177 = shl i64 %1174, 12
  %1178 = icmp slt i64 %1177, 0
  %1179 = shl i64 %1177, 1
  store i64 %1179, i64* %RCX.i63, align 8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1181 = zext i1 %1178 to i8
  store i8 %1181, i8* %1180, align 1
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1183 = trunc i64 %1179 to i32
  store i8 1, i8* %1182, align 1
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1184, align 1
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1186 = icmp eq i64 %1179, 0
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %1185, align 1
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1189 = lshr i64 %1179, 63
  %1190 = trunc i64 %1189 to i8
  store i8 %1190, i8* %1188, align 1
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1191, align 1
  store %struct.Memory* %loadMem_400cc8, %struct.Memory** %MEMORY
  %loadMem_400ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 33
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %1194 to i64*
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 1
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %1197 to i64*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 5
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %1200 to i64*
  %1201 = load i64, i64* %RAX.i60
  %1202 = load i64, i64* %RCX.i61
  %1203 = load i64, i64* %PC.i59
  %1204 = add i64 %1203, 3
  store i64 %1204, i64* %PC.i59
  %1205 = add i64 %1202, %1201
  store i64 %1205, i64* %RAX.i60, align 8
  %1206 = icmp ult i64 %1205, %1201
  %1207 = icmp ult i64 %1205, %1202
  %1208 = or i1 %1206, %1207
  %1209 = zext i1 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1209, i8* %1210, align 1
  %1211 = trunc i64 %1205 to i32
  %1212 = and i32 %1211, 255
  %1213 = call i32 @llvm.ctpop.i32(i32 %1212)
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1216, i8* %1217, align 1
  %1218 = xor i64 %1202, %1201
  %1219 = xor i64 %1218, %1205
  %1220 = lshr i64 %1219, 4
  %1221 = trunc i64 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1222, i8* %1223, align 1
  %1224 = icmp eq i64 %1205, 0
  %1225 = zext i1 %1224 to i8
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1225, i8* %1226, align 1
  %1227 = lshr i64 %1205, 63
  %1228 = trunc i64 %1227 to i8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1228, i8* %1229, align 1
  %1230 = lshr i64 %1201, 63
  %1231 = lshr i64 %1202, 63
  %1232 = xor i64 %1227, %1230
  %1233 = xor i64 %1227, %1231
  %1234 = add i64 %1232, %1233
  %1235 = icmp eq i64 %1234, 2
  %1236 = zext i1 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1236, i8* %1237, align 1
  store %struct.Memory* %loadMem_400ccc, %struct.Memory** %MEMORY
  %loadMem_400ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 5
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 15
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %1246 to i64*
  %1247 = load i64, i64* %RBP.i58
  %1248 = sub i64 %1247, 24
  %1249 = load i64, i64* %PC.i56
  %1250 = add i64 %1249, 4
  store i64 %1250, i64* %PC.i56
  %1251 = inttoptr i64 %1248 to i32*
  %1252 = load i32, i32* %1251
  %1253 = sext i32 %1252 to i64
  store i64 %1253, i64* %RCX.i57, align 8
  store %struct.Memory* %loadMem_400ccf, %struct.Memory** %MEMORY
  %loadMem_400cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 1
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 5
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1263, i64 0, i64 0
  %YMM0.i55 = bitcast %union.VectorReg* %1264 to %"class.std::bitset"*
  %1265 = bitcast %"class.std::bitset"* %YMM0.i55 to i8*
  %1266 = bitcast %"class.std::bitset"* %YMM0.i55 to i8*
  %1267 = load i64, i64* %RAX.i53
  %1268 = load i64, i64* %RCX.i54
  %1269 = mul i64 %1268, 8
  %1270 = add i64 %1269, %1267
  %1271 = load i64, i64* %PC.i52
  %1272 = add i64 %1271, 5
  store i64 %1272, i64* %PC.i52
  %1273 = bitcast i8* %1266 to double*
  %1274 = load double, double* %1273, align 1
  %1275 = getelementptr inbounds i8, i8* %1266, i64 8
  %1276 = bitcast i8* %1275 to i64*
  %1277 = load i64, i64* %1276, align 1
  %1278 = inttoptr i64 %1270 to double*
  %1279 = load double, double* %1278
  %1280 = fadd double %1274, %1279
  %1281 = bitcast i8* %1265 to double*
  store double %1280, double* %1281, align 1
  %1282 = getelementptr inbounds i8, i8* %1265, i64 8
  %1283 = bitcast i8* %1282 to i64*
  store i64 %1277, i64* %1283, align 1
  store %struct.Memory* %loadMem_400cd3, %struct.Memory** %MEMORY
  %loadMem_400cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 15
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1290, i64 0, i64 0
  %XMM0.i51 = bitcast %union.VectorReg* %1291 to %union.vec128_t*
  %1292 = load i64, i64* %RBP.i50
  %1293 = sub i64 %1292, 40
  %1294 = bitcast %union.vec128_t* %XMM0.i51 to i8*
  %1295 = load i64, i64* %PC.i49
  %1296 = add i64 %1295, 5
  store i64 %1296, i64* %PC.i49
  %1297 = bitcast i8* %1294 to double*
  %1298 = load double, double* %1297, align 1
  %1299 = inttoptr i64 %1293 to double*
  store double %1298, double* %1299
  store %struct.Memory* %loadMem_400cd8, %struct.Memory** %MEMORY
  br label %block_.L_400cdd

block_.L_400cdd:                                  ; preds = %block_.L_400ca8, %block_400c86
  %loadMem_400cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 15
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1306, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %1307 to %"class.std::bitset"*
  %1308 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1309 = load i64, i64* %RBP.i48
  %1310 = sub i64 %1309, 40
  %1311 = load i64, i64* %PC.i47
  %1312 = add i64 %1311, 5
  store i64 %1312, i64* %PC.i47
  %1313 = inttoptr i64 %1310 to double*
  %1314 = load double, double* %1313
  %1315 = bitcast i8* %1308 to double*
  store double %1314, double* %1315, align 1
  %1316 = getelementptr inbounds i8, i8* %1308, i64 8
  %1317 = bitcast i8* %1316 to double*
  store double 0.000000e+00, double* %1317, align 1
  store %struct.Memory* %loadMem_400cdd, %struct.Memory** %MEMORY
  %loadMem_400ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 33
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 1
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %1323 to i64*
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 15
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %1326 to i64*
  %1327 = load i64, i64* %RBP.i46
  %1328 = sub i64 %1327, 16
  %1329 = load i64, i64* %PC.i44
  %1330 = add i64 %1329, 4
  store i64 %1330, i64* %PC.i44
  %1331 = inttoptr i64 %1328 to i64*
  %1332 = load i64, i64* %1331
  store i64 %1332, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_400ce2, %struct.Memory** %MEMORY
  %loadMem_400ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 33
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 5
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %1338 to i64*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 15
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %1341 to i64*
  %1342 = load i64, i64* %RBP.i43
  %1343 = sub i64 %1342, 20
  %1344 = load i64, i64* %PC.i41
  %1345 = add i64 %1344, 4
  store i64 %1345, i64* %PC.i41
  %1346 = inttoptr i64 %1343 to i32*
  %1347 = load i32, i32* %1346
  %1348 = sext i32 %1347 to i64
  store i64 %1348, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_400ce6, %struct.Memory** %MEMORY
  %loadMem_400cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 5
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %RCX.i40
  %1356 = load i64, i64* %PC.i39
  %1357 = add i64 %1356, 4
  store i64 %1357, i64* %PC.i39
  %1358 = shl i64 %1355, 12
  %1359 = icmp slt i64 %1358, 0
  %1360 = shl i64 %1358, 1
  store i64 %1360, i64* %RCX.i40, align 8
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1362 = zext i1 %1359 to i8
  store i8 %1362, i8* %1361, align 1
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1364 = trunc i64 %1360 to i32
  store i8 1, i8* %1363, align 1
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1365, align 1
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1367 = icmp eq i64 %1360, 0
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %1366, align 1
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1370 = lshr i64 %1360, 63
  %1371 = trunc i64 %1370 to i8
  store i8 %1371, i8* %1369, align 1
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1372, align 1
  store %struct.Memory* %loadMem_400cea, %struct.Memory** %MEMORY
  %loadMem_400cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 1
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 5
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %1381 to i64*
  %1382 = load i64, i64* %RAX.i37
  %1383 = load i64, i64* %RCX.i38
  %1384 = load i64, i64* %PC.i36
  %1385 = add i64 %1384, 3
  store i64 %1385, i64* %PC.i36
  %1386 = add i64 %1383, %1382
  store i64 %1386, i64* %RAX.i37, align 8
  %1387 = icmp ult i64 %1386, %1382
  %1388 = icmp ult i64 %1386, %1383
  %1389 = or i1 %1387, %1388
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1390, i8* %1391, align 1
  %1392 = trunc i64 %1386 to i32
  %1393 = and i32 %1392, 255
  %1394 = call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1397, i8* %1398, align 1
  %1399 = xor i64 %1383, %1382
  %1400 = xor i64 %1399, %1386
  %1401 = lshr i64 %1400, 4
  %1402 = trunc i64 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1403, i8* %1404, align 1
  %1405 = icmp eq i64 %1386, 0
  %1406 = zext i1 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1406, i8* %1407, align 1
  %1408 = lshr i64 %1386, 63
  %1409 = trunc i64 %1408 to i8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1409, i8* %1410, align 1
  %1411 = lshr i64 %1382, 63
  %1412 = lshr i64 %1383, 63
  %1413 = xor i64 %1408, %1411
  %1414 = xor i64 %1408, %1412
  %1415 = add i64 %1413, %1414
  %1416 = icmp eq i64 %1415, 2
  %1417 = zext i1 %1416 to i8
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1417, i8* %1418, align 1
  store %struct.Memory* %loadMem_400cee, %struct.Memory** %MEMORY
  %loadMem_400cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %1421 to i64*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 5
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %1424 to i64*
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 15
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %1427 to i64*
  %1428 = load i64, i64* %RBP.i35
  %1429 = sub i64 %1428, 24
  %1430 = load i64, i64* %PC.i33
  %1431 = add i64 %1430, 4
  store i64 %1431, i64* %PC.i33
  %1432 = inttoptr i64 %1429 to i32*
  %1433 = load i32, i32* %1432
  %1434 = sext i32 %1433 to i64
  store i64 %1434, i64* %RCX.i34, align 8
  store %struct.Memory* %loadMem_400cf1, %struct.Memory** %MEMORY
  %loadMem_400cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 1
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 5
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1445 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1444, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %1445 to %union.vec128_t*
  %1446 = load i64, i64* %RAX.i32
  %1447 = load i64, i64* %RCX.i
  %1448 = mul i64 %1447, 8
  %1449 = add i64 %1448, %1446
  %1450 = bitcast %union.vec128_t* %XMM0.i to i8*
  %1451 = load i64, i64* %PC.i31
  %1452 = add i64 %1451, 5
  store i64 %1452, i64* %PC.i31
  %1453 = bitcast i8* %1450 to double*
  %1454 = load double, double* %1453, align 1
  %1455 = inttoptr i64 %1449 to double*
  store double %1454, double* %1455
  store %struct.Memory* %loadMem_400cf5, %struct.Memory** %MEMORY
  %loadMem_400cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 33
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 1
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 15
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %1464 to i64*
  %1465 = load i64, i64* %RBP.i30
  %1466 = sub i64 %1465, 24
  %1467 = load i64, i64* %PC.i28
  %1468 = add i64 %1467, 3
  store i64 %1468, i64* %PC.i28
  %1469 = inttoptr i64 %1466 to i32*
  %1470 = load i32, i32* %1469
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_400cfa, %struct.Memory** %MEMORY
  %loadMem_400cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 33
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %1474 to i64*
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 1
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %1477 to i64*
  %1478 = load i64, i64* %RAX.i27
  %1479 = load i64, i64* %PC.i26
  %1480 = add i64 %1479, 3
  store i64 %1480, i64* %PC.i26
  %1481 = trunc i64 %1478 to i32
  %1482 = add i32 1, %1481
  %1483 = zext i32 %1482 to i64
  store i64 %1483, i64* %RAX.i27, align 8
  %1484 = icmp ult i32 %1482, %1481
  %1485 = icmp ult i32 %1482, 1
  %1486 = or i1 %1484, %1485
  %1487 = zext i1 %1486 to i8
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1487, i8* %1488, align 1
  %1489 = and i32 %1482, 255
  %1490 = call i32 @llvm.ctpop.i32(i32 %1489)
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  %1493 = xor i8 %1492, 1
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1493, i8* %1494, align 1
  %1495 = xor i64 1, %1478
  %1496 = trunc i64 %1495 to i32
  %1497 = xor i32 %1496, %1482
  %1498 = lshr i32 %1497, 4
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1500, i8* %1501, align 1
  %1502 = icmp eq i32 %1482, 0
  %1503 = zext i1 %1502 to i8
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1503, i8* %1504, align 1
  %1505 = lshr i32 %1482, 31
  %1506 = trunc i32 %1505 to i8
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1506, i8* %1507, align 1
  %1508 = lshr i32 %1481, 31
  %1509 = xor i32 %1505, %1508
  %1510 = add i32 %1509, %1505
  %1511 = icmp eq i32 %1510, 2
  %1512 = zext i1 %1511 to i8
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1512, i8* %1513, align 1
  store %struct.Memory* %loadMem_400cfd, %struct.Memory** %MEMORY
  %loadMem_400d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 1
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %1519 to i32*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 15
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %1522 to i64*
  %1523 = load i64, i64* %RBP.i25
  %1524 = sub i64 %1523, 24
  %1525 = load i32, i32* %EAX.i24
  %1526 = zext i32 %1525 to i64
  %1527 = load i64, i64* %PC.i23
  %1528 = add i64 %1527, 3
  store i64 %1528, i64* %PC.i23
  %1529 = inttoptr i64 %1524 to i32*
  store i32 %1525, i32* %1529
  store %struct.Memory* %loadMem_400d00, %struct.Memory** %MEMORY
  %loadMem_400d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 33
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %1532 to i64*
  %1533 = load i64, i64* %PC.i22
  %1534 = add i64 %1533, -219
  %1535 = load i64, i64* %PC.i22
  %1536 = add i64 %1535, 5
  store i64 %1536, i64* %PC.i22
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1534, i64* %1537, align 8
  store %struct.Memory* %loadMem_400d03, %struct.Memory** %MEMORY
  br label %block_.L_400c28

block_.L_400d08:                                  ; preds = %block_.L_400c28
  %loadMem_400d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 33
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %PC.i21
  %1542 = add i64 %1541, 5
  %1543 = load i64, i64* %PC.i21
  %1544 = add i64 %1543, 5
  store i64 %1544, i64* %PC.i21
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1542, i64* %1545, align 8
  store %struct.Memory* %loadMem_400d08, %struct.Memory** %MEMORY
  br label %block_.L_400d0d

block_.L_400d0d:                                  ; preds = %block_.L_400d08
  %loadMem_400d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 33
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %1548 to i64*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 1
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %1551 to i64*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 15
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %1554 to i64*
  %1555 = load i64, i64* %RBP.i20
  %1556 = sub i64 %1555, 20
  %1557 = load i64, i64* %PC.i18
  %1558 = add i64 %1557, 3
  store i64 %1558, i64* %PC.i18
  %1559 = inttoptr i64 %1556 to i32*
  %1560 = load i32, i32* %1559
  %1561 = zext i32 %1560 to i64
  store i64 %1561, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_400d0d, %struct.Memory** %MEMORY
  %loadMem_400d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 33
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 1
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %1567 to i64*
  %1568 = load i64, i64* %RAX.i17
  %1569 = load i64, i64* %PC.i16
  %1570 = add i64 %1569, 3
  store i64 %1570, i64* %PC.i16
  %1571 = trunc i64 %1568 to i32
  %1572 = add i32 1, %1571
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RAX.i17, align 8
  %1574 = icmp ult i32 %1572, %1571
  %1575 = icmp ult i32 %1572, 1
  %1576 = or i1 %1574, %1575
  %1577 = zext i1 %1576 to i8
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1577, i8* %1578, align 1
  %1579 = and i32 %1572, 255
  %1580 = call i32 @llvm.ctpop.i32(i32 %1579)
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  %1583 = xor i8 %1582, 1
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1583, i8* %1584, align 1
  %1585 = xor i64 1, %1568
  %1586 = trunc i64 %1585 to i32
  %1587 = xor i32 %1586, %1572
  %1588 = lshr i32 %1587, 4
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1590, i8* %1591, align 1
  %1592 = icmp eq i32 %1572, 0
  %1593 = zext i1 %1592 to i8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1593, i8* %1594, align 1
  %1595 = lshr i32 %1572, 31
  %1596 = trunc i32 %1595 to i8
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1596, i8* %1597, align 1
  %1598 = lshr i32 %1571, 31
  %1599 = xor i32 %1595, %1598
  %1600 = add i32 %1599, %1595
  %1601 = icmp eq i32 %1600, 2
  %1602 = zext i1 %1601 to i8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1602, i8* %1603, align 1
  store %struct.Memory* %loadMem_400d10, %struct.Memory** %MEMORY
  %loadMem_400d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 1
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %1609 to i32*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 15
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %1612 to i64*
  %1613 = load i64, i64* %RBP.i15
  %1614 = sub i64 %1613, 20
  %1615 = load i32, i32* %EAX.i14
  %1616 = zext i32 %1615 to i64
  %1617 = load i64, i64* %PC.i13
  %1618 = add i64 %1617, 3
  store i64 %1618, i64* %PC.i13
  %1619 = inttoptr i64 %1614 to i32*
  store i32 %1615, i32* %1619
  store %struct.Memory* %loadMem_400d13, %struct.Memory** %MEMORY
  %loadMem_400d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 33
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %1622 to i64*
  %1623 = load i64, i64* %PC.i12
  %1624 = add i64 %1623, -257
  %1625 = load i64, i64* %PC.i12
  %1626 = add i64 %1625, 5
  store i64 %1626, i64* %PC.i12
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1624, i64* %1627, align 8
  store %struct.Memory* %loadMem_400d16, %struct.Memory** %MEMORY
  br label %block_.L_400c15

block_.L_400d1b:                                  ; preds = %block_.L_400c15
  %loadMem_400d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %1630 to i64*
  %1631 = load i64, i64* %PC.i11
  %1632 = add i64 %1631, 5
  %1633 = load i64, i64* %PC.i11
  %1634 = add i64 %1633, 5
  store i64 %1634, i64* %PC.i11
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1632, i64* %1635, align 8
  store %struct.Memory* %loadMem_400d1b, %struct.Memory** %MEMORY
  br label %block_.L_400d20

block_.L_400d20:                                  ; preds = %block_.L_400d1b
  %loadMem_400d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 33
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 1
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 15
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %1644 to i64*
  %1645 = load i64, i64* %RBP.i10
  %1646 = sub i64 %1645, 28
  %1647 = load i64, i64* %PC.i8
  %1648 = add i64 %1647, 3
  store i64 %1648, i64* %PC.i8
  %1649 = inttoptr i64 %1646 to i32*
  %1650 = load i32, i32* %1649
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_400d20, %struct.Memory** %MEMORY
  %loadMem_400d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 1
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %RAX.i
  %1659 = load i64, i64* %PC.i7
  %1660 = add i64 %1659, 3
  store i64 %1660, i64* %PC.i7
  %1661 = trunc i64 %1658 to i32
  %1662 = add i32 1, %1661
  %1663 = zext i32 %1662 to i64
  store i64 %1663, i64* %RAX.i, align 8
  %1664 = icmp ult i32 %1662, %1661
  %1665 = icmp ult i32 %1662, 1
  %1666 = or i1 %1664, %1665
  %1667 = zext i1 %1666 to i8
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1667, i8* %1668, align 1
  %1669 = and i32 %1662, 255
  %1670 = call i32 @llvm.ctpop.i32(i32 %1669)
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = xor i8 %1672, 1
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1673, i8* %1674, align 1
  %1675 = xor i64 1, %1658
  %1676 = trunc i64 %1675 to i32
  %1677 = xor i32 %1676, %1662
  %1678 = lshr i32 %1677, 4
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1680, i8* %1681, align 1
  %1682 = icmp eq i32 %1662, 0
  %1683 = zext i1 %1682 to i8
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1683, i8* %1684, align 1
  %1685 = lshr i32 %1662, 31
  %1686 = trunc i32 %1685 to i8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1686, i8* %1687, align 1
  %1688 = lshr i32 %1661, 31
  %1689 = xor i32 %1685, %1688
  %1690 = add i32 %1689, %1685
  %1691 = icmp eq i32 %1690, 2
  %1692 = zext i1 %1691 to i8
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1692, i8* %1693, align 1
  store %struct.Memory* %loadMem_400d23, %struct.Memory** %MEMORY
  %loadMem_400d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 1
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1699 to i32*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 15
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %1702 to i64*
  %1703 = load i64, i64* %RBP.i6
  %1704 = sub i64 %1703, 28
  %1705 = load i32, i32* %EAX.i
  %1706 = zext i32 %1705 to i64
  %1707 = load i64, i64* %PC.i5
  %1708 = add i64 %1707, 3
  store i64 %1708, i64* %PC.i5
  %1709 = inttoptr i64 %1704 to i32*
  store i32 %1705, i32* %1709
  store %struct.Memory* %loadMem_400d26, %struct.Memory** %MEMORY
  %loadMem_400d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 33
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1712 to i64*
  %1713 = load i64, i64* %PC.i4
  %1714 = add i64 %1713, -295
  %1715 = load i64, i64* %PC.i4
  %1716 = add i64 %1715, 5
  store i64 %1716, i64* %PC.i4
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1714, i64* %1717, align 8
  store %struct.Memory* %loadMem_400d29, %struct.Memory** %MEMORY
  br label %block_.L_400c02

block_.L_400d2e:                                  ; preds = %block_.L_400c02
  %loadMem_400d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 33
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 15
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %PC.i2
  %1725 = add i64 %1724, 1
  store i64 %1725, i64* %PC.i2
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1727 = load i64, i64* %1726, align 8
  %1728 = add i64 %1727, 8
  %1729 = inttoptr i64 %1727 to i64*
  %1730 = load i64, i64* %1729
  store i64 %1730, i64* %RBP.i3, align 8
  store i64 %1728, i64* %1726, align 8
  store %struct.Memory* %loadMem_400d2e, %struct.Memory** %MEMORY
  %loadMem_400d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 33
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1733 to i64*
  %1734 = load i64, i64* %PC.i1
  %1735 = add i64 %1734, 1
  store i64 %1735, i64* %PC.i1
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1738 = load i64, i64* %1737, align 8
  %1739 = inttoptr i64 %1738 to i64*
  %1740 = load i64, i64* %1739
  store i64 %1740, i64* %1736, align 8
  %1741 = add i64 %1738, 8
  store i64 %1741, i64* %1737, align 8
  store %struct.Memory* %loadMem_400d2f, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400d2f
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

define %struct.Memory* @routine_jge_.L_400d2e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400d1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400d08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 12
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %29 = fadd double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
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

define %struct.Memory* @routine_jbe_.L_400ca8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cdd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
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

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d20(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400c02(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
