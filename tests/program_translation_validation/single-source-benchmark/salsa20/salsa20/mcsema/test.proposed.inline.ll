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
define %struct.Memory* @salsa20(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400510 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400510, %struct.Memory** %MEMORY
  %loadMem_400511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i903 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i902
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i902
  store i64 %26, i64* %RBP.i903, align 8
  store %struct.Memory* %loadMem_400511, %struct.Memory** %MEMORY
  %loadMem_400514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i901 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i901
  %39 = sub i64 %38, 8
  %40 = load i64, i64* %RDI.i
  %41 = load i64, i64* %PC.i900
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i900
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43
  store %struct.Memory* %loadMem_400514, %struct.Memory** %MEMORY
  %loadMem_400518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RSI.i898 = bitcast %union.anon* %49 to i64*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RBP.i899 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %RBP.i899
  %54 = sub i64 %53, 16
  %55 = load i64, i64* %RSI.i898
  %56 = load i64, i64* %PC.i897
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC.i897
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58
  store %struct.Memory* %loadMem_400518, %struct.Memory** %MEMORY
  %loadMem_40051c = load %struct.Memory*, %struct.Memory** %MEMORY
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 33
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %61 to i64*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %63 = getelementptr inbounds %struct.GPR, %struct.GPR* %62, i32 0, i32 15
  %64 = getelementptr inbounds %struct.Reg, %struct.Reg* %63, i32 0, i32 0
  %RBP.i896 = bitcast %union.anon* %64 to i64*
  %65 = load i64, i64* %RBP.i896
  %66 = sub i64 %65, 20
  %67 = load i64, i64* %PC.i895
  %68 = add i64 %67, 7
  store i64 %68, i64* %PC.i895
  %69 = inttoptr i64 %66 to i32*
  store i32 0, i32* %69
  store %struct.Memory* %loadMem_40051c, %struct.Memory** %MEMORY
  br label %block_.L_400523

block_.L_400523:                                  ; preds = %block_40052d, %entry
  %loadMem_400523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 33
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i894 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i894
  %77 = sub i64 %76, 20
  %78 = load i64, i64* %PC.i893
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i893
  %80 = inttoptr i64 %77 to i32*
  %81 = load i32, i32* %80
  %82 = sub i32 %81, 16
  %83 = icmp ult i32 %81, 16
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %84, i8* %85, align 1
  %86 = and i32 %82, 255
  %87 = call i32 @llvm.ctpop.i32(i32 %86)
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %90, i8* %91, align 1
  %92 = xor i32 %81, 16
  %93 = xor i32 %92, %82
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %96, i8* %97, align 1
  %98 = icmp eq i32 %82, 0
  %99 = zext i1 %98 to i8
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %99, i8* %100, align 1
  %101 = lshr i32 %82, 31
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %102, i8* %103, align 1
  %104 = lshr i32 %81, 31
  %105 = xor i32 %101, %104
  %106 = add i32 %105, %104
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i8
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %108, i8* %109, align 1
  store %struct.Memory* %loadMem_400523, %struct.Memory** %MEMORY
  %loadMem_400527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 33
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %PC.i892
  %114 = add i64 %113, 41
  %115 = load i64, i64* %PC.i892
  %116 = add i64 %115, 6
  %117 = load i64, i64* %PC.i892
  %118 = add i64 %117, 6
  store i64 %118, i64* %PC.i892
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %120 = load i8, i8* %119, align 1
  %121 = icmp eq i8 %120, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %BRANCH_TAKEN, align 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %124 = select i1 %121, i64 %114, i64 %116
  store i64 %124, i64* %123, align 8
  store %struct.Memory* %loadMem_400527, %struct.Memory** %MEMORY
  %loadBr_400527 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400527 = icmp eq i8 %loadBr_400527, 1
  br i1 %cmpBr_400527, label %block_.L_400550, label %block_40052d

block_40052d:                                     ; preds = %block_.L_400523
  %loadMem_40052d = load %struct.Memory*, %struct.Memory** %MEMORY
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 33
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %RAX.i890 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 15
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RBP.i891 = bitcast %union.anon* %133 to i64*
  %134 = load i64, i64* %RBP.i891
  %135 = sub i64 %134, 16
  %136 = load i64, i64* %PC.i889
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC.i889
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138
  store i64 %139, i64* %RAX.i890, align 8
  store %struct.Memory* %loadMem_40052d, %struct.Memory** %MEMORY
  %loadMem_400531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RCX.i887 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 15
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RBP.i888 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %RBP.i888
  %150 = sub i64 %149, 20
  %151 = load i64, i64* %PC.i886
  %152 = add i64 %151, 3
  store i64 %152, i64* %PC.i886
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RCX.i887, align 8
  store %struct.Memory* %loadMem_400531, %struct.Memory** %MEMORY
  %loadMem_400534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %ECX.i884 = bitcast %union.anon* %161 to i32*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RDX.i885 = bitcast %union.anon* %164 to i64*
  %165 = load i32, i32* %ECX.i884
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* %PC.i883
  %168 = add i64 %167, 2
  store i64 %168, i64* %PC.i883
  %169 = and i64 %166, 4294967295
  store i64 %169, i64* %RDX.i885, align 8
  store %struct.Memory* %loadMem_400534, %struct.Memory** %MEMORY
  %loadMem_400536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RAX.i880 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RCX.i881 = bitcast %union.anon* %178 to i64*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %RDX.i882 = bitcast %union.anon* %181 to i64*
  %182 = load i64, i64* %RAX.i880
  %183 = load i64, i64* %RDX.i882
  %184 = mul i64 %183, 4
  %185 = add i64 %184, %182
  %186 = load i64, i64* %PC.i879
  %187 = add i64 %186, 3
  store i64 %187, i64* %PC.i879
  %188 = inttoptr i64 %185 to i32*
  %189 = load i32, i32* %188
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RCX.i881, align 8
  store %struct.Memory* %loadMem_400536, %struct.Memory** %MEMORY
  %loadMem_400539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 9
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %RSI.i877 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 15
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %199 to i64*
  %200 = load i64, i64* %RBP.i878
  %201 = sub i64 %200, 20
  %202 = load i64, i64* %PC.i876
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC.i876
  %204 = inttoptr i64 %201 to i32*
  %205 = load i32, i32* %204
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RSI.i877, align 8
  store %struct.Memory* %loadMem_400539, %struct.Memory** %MEMORY
  %loadMem_40053c = load %struct.Memory*, %struct.Memory** %MEMORY
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 33
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 9
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %212 to i32*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RAX.i875 = bitcast %union.anon* %215 to i64*
  %216 = load i32, i32* %ESI.i
  %217 = zext i32 %216 to i64
  %218 = load i64, i64* %PC.i874
  %219 = add i64 %218, 2
  store i64 %219, i64* %PC.i874
  %220 = and i64 %217, 4294967295
  store i64 %220, i64* %RAX.i875, align 8
  store %struct.Memory* %loadMem_40053c, %struct.Memory** %MEMORY
  %loadMem_40053e = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %ECX.i871 = bitcast %union.anon* %226 to i32*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %RAX.i872 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 15
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %232 to i64*
  %233 = load i64, i64* %RBP.i873
  %234 = load i64, i64* %RAX.i872
  %235 = mul i64 %234, 4
  %236 = add i64 %233, -96
  %237 = add i64 %236, %235
  %238 = load i32, i32* %ECX.i871
  %239 = zext i32 %238 to i64
  %240 = load i64, i64* %PC.i870
  %241 = add i64 %240, 4
  store i64 %241, i64* %PC.i870
  %242 = inttoptr i64 %237 to i32*
  store i32 %238, i32* %242
  store %struct.Memory* %loadMem_40053e, %struct.Memory** %MEMORY
  %loadMem_400542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 33
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RAX.i868 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i869 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RBP.i869
  %253 = sub i64 %252, 20
  %254 = load i64, i64* %PC.i867
  %255 = add i64 %254, 3
  store i64 %255, i64* %PC.i867
  %256 = inttoptr i64 %253 to i32*
  %257 = load i32, i32* %256
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RAX.i868, align 8
  store %struct.Memory* %loadMem_400542, %struct.Memory** %MEMORY
  %loadMem_400545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RAX.i866 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RAX.i866
  %266 = load i64, i64* %PC.i865
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC.i865
  %268 = trunc i64 %265 to i32
  %269 = add i32 1, %268
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RAX.i866, align 8
  %271 = icmp ult i32 %269, %268
  %272 = icmp ult i32 %269, 1
  %273 = or i1 %271, %272
  %274 = zext i1 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %274, i8* %275, align 1
  %276 = and i32 %269, 255
  %277 = call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %280, i8* %281, align 1
  %282 = xor i64 1, %265
  %283 = trunc i64 %282 to i32
  %284 = xor i32 %283, %269
  %285 = lshr i32 %284, 4
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %287, i8* %288, align 1
  %289 = icmp eq i32 %269, 0
  %290 = zext i1 %289 to i8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %290, i8* %291, align 1
  %292 = lshr i32 %269, 31
  %293 = trunc i32 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %293, i8* %294, align 1
  %295 = lshr i32 %268, 31
  %296 = xor i32 %292, %295
  %297 = add i32 %296, %292
  %298 = icmp eq i32 %297, 2
  %299 = zext i1 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %299, i8* %300, align 1
  store %struct.Memory* %loadMem_400545, %struct.Memory** %MEMORY
  %loadMem_400548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %EAX.i863 = bitcast %union.anon* %306 to i32*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 15
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %RBP.i864 = bitcast %union.anon* %309 to i64*
  %310 = load i64, i64* %RBP.i864
  %311 = sub i64 %310, 20
  %312 = load i32, i32* %EAX.i863
  %313 = zext i32 %312 to i64
  %314 = load i64, i64* %PC.i862
  %315 = add i64 %314, 3
  store i64 %315, i64* %PC.i862
  %316 = inttoptr i64 %311 to i32*
  store i32 %312, i32* %316
  store %struct.Memory* %loadMem_400548, %struct.Memory** %MEMORY
  %loadMem_40054b = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %PC.i861
  %321 = add i64 %320, -40
  %322 = load i64, i64* %PC.i861
  %323 = add i64 %322, 5
  store i64 %323, i64* %PC.i861
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %321, i64* %324, align 8
  store %struct.Memory* %loadMem_40054b, %struct.Memory** %MEMORY
  br label %block_.L_400523

block_.L_400550:                                  ; preds = %block_.L_400523
  %loadMem_400550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 15
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %RBP.i860
  %332 = sub i64 %331, 20
  %333 = load i64, i64* %PC.i859
  %334 = add i64 %333, 7
  store i64 %334, i64* %PC.i859
  %335 = inttoptr i64 %332 to i32*
  store i32 20, i32* %335
  store %struct.Memory* %loadMem_400550, %struct.Memory** %MEMORY
  br label %block_.L_400557

block_.L_400557:                                  ; preds = %block_400561, %block_.L_400550
  %loadMem_400557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 15
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %341 to i64*
  %342 = load i64, i64* %RBP.i858
  %343 = sub i64 %342, 20
  %344 = load i64, i64* %PC.i857
  %345 = add i64 %344, 4
  store i64 %345, i64* %PC.i857
  %346 = inttoptr i64 %343 to i32*
  %347 = load i32, i32* %346
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %348, align 1
  %349 = and i32 %347, 255
  %350 = call i32 @llvm.ctpop.i32(i32 %349)
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %353, i8* %354, align 1
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %355, align 1
  %356 = icmp eq i32 %347, 0
  %357 = zext i1 %356 to i8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %357, i8* %358, align 1
  %359 = lshr i32 %347, 31
  %360 = trunc i32 %359 to i8
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %360, i8* %361, align 1
  %362 = lshr i32 %347, 31
  %363 = xor i32 %359, %362
  %364 = add i32 %363, %362
  %365 = icmp eq i32 %364, 2
  %366 = zext i1 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %366, i8* %367, align 1
  store %struct.Memory* %loadMem_400557, %struct.Memory** %MEMORY
  %loadMem_40055b = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %370 to i64*
  %371 = load i64, i64* %PC.i856
  %372 = add i64 %371, 852
  %373 = load i64, i64* %PC.i856
  %374 = add i64 %373, 6
  %375 = load i64, i64* %PC.i856
  %376 = add i64 %375, 6
  store i64 %376, i64* %PC.i856
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %378 = load i8, i8* %377, align 1
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %380 = load i8, i8* %379, align 1
  %381 = or i8 %380, %378
  %382 = icmp ne i8 %381, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %BRANCH_TAKEN, align 1
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %385 = select i1 %382, i64 %372, i64 %374
  store i64 %385, i64* %384, align 8
  store %struct.Memory* %loadMem_40055b, %struct.Memory** %MEMORY
  %loadBr_40055b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40055b = icmp eq i8 %loadBr_40055b, 1
  br i1 %cmpBr_40055b, label %block_.L_4008af, label %block_400561

block_400561:                                     ; preds = %block_.L_400557
  %loadMem_400561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RAX.i854 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 15
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %RBP.i855
  %396 = sub i64 %395, 96
  %397 = load i64, i64* %PC.i853
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC.i853
  %399 = inttoptr i64 %396 to i32*
  %400 = load i32, i32* %399
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RAX.i854, align 8
  store %struct.Memory* %loadMem_400561, %struct.Memory** %MEMORY
  %loadMem_400564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RAX.i851 = bitcast %union.anon* %407 to i64*
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 15
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %RBP.i852 = bitcast %union.anon* %410 to i64*
  %411 = load i64, i64* %RAX.i851
  %412 = load i64, i64* %RBP.i852
  %413 = sub i64 %412, 48
  %414 = load i64, i64* %PC.i850
  %415 = add i64 %414, 3
  store i64 %415, i64* %PC.i850
  %416 = trunc i64 %411 to i32
  %417 = inttoptr i64 %413 to i32*
  %418 = load i32, i32* %417
  %419 = add i32 %418, %416
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RAX.i851, align 8
  %421 = icmp ult i32 %419, %416
  %422 = icmp ult i32 %419, %418
  %423 = or i1 %421, %422
  %424 = zext i1 %423 to i8
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %424, i8* %425, align 1
  %426 = and i32 %419, 255
  %427 = call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %430, i8* %431, align 1
  %432 = xor i32 %418, %416
  %433 = xor i32 %432, %419
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %436, i8* %437, align 1
  %438 = icmp eq i32 %419, 0
  %439 = zext i1 %438 to i8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %439, i8* %440, align 1
  %441 = lshr i32 %419, 31
  %442 = trunc i32 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %442, i8* %443, align 1
  %444 = lshr i32 %416, 31
  %445 = lshr i32 %418, 31
  %446 = xor i32 %441, %444
  %447 = xor i32 %441, %445
  %448 = add i32 %446, %447
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %450, i8* %451, align 1
  store %struct.Memory* %loadMem_400564, %struct.Memory** %MEMORY
  %loadMem_400567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RAX.i849 = bitcast %union.anon* %457 to i64*
  %458 = load i64, i64* %RAX.i849
  %459 = load i64, i64* %PC.i848
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC.i848
  %461 = and i64 %458, 4294967295
  %462 = shl i64 %461, 6
  %463 = trunc i64 %462 to i32
  %464 = icmp slt i32 %463, 0
  %465 = shl i32 %463, 1
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RAX.i849, align 8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %468 = zext i1 %464 to i8
  store i8 %468, i8* %467, align 1
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %470 = and i32 %465, 254
  %471 = call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %469, align 1
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %475, align 1
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %477 = icmp eq i32 %465, 0
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %476, align 1
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %480 = lshr i32 %465, 31
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %479, align 1
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %482, align 1
  store %struct.Memory* %loadMem_400567, %struct.Memory** %MEMORY
  %loadMem_40056a = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 5
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RCX.i846 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 15
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %RBP.i847
  %493 = sub i64 %492, 96
  %494 = load i64, i64* %PC.i845
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC.i845
  %496 = inttoptr i64 %493 to i32*
  %497 = load i32, i32* %496
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RCX.i846, align 8
  store %struct.Memory* %loadMem_40056a, %struct.Memory** %MEMORY
  %loadMem_40056d = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 5
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RCX.i843 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 15
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RBP.i844 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %RCX.i843
  %509 = load i64, i64* %RBP.i844
  %510 = sub i64 %509, 48
  %511 = load i64, i64* %PC.i842
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC.i842
  %513 = trunc i64 %508 to i32
  %514 = inttoptr i64 %510 to i32*
  %515 = load i32, i32* %514
  %516 = add i32 %515, %513
  %517 = zext i32 %516 to i64
  store i64 %517, i64* %RCX.i843, align 8
  %518 = icmp ult i32 %516, %513
  %519 = icmp ult i32 %516, %515
  %520 = or i1 %518, %519
  %521 = zext i1 %520 to i8
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %521, i8* %522, align 1
  %523 = and i32 %516, 255
  %524 = call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %527, i8* %528, align 1
  %529 = xor i32 %515, %513
  %530 = xor i32 %529, %516
  %531 = lshr i32 %530, 4
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %533, i8* %534, align 1
  %535 = icmp eq i32 %516, 0
  %536 = zext i1 %535 to i8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %536, i8* %537, align 1
  %538 = lshr i32 %516, 31
  %539 = trunc i32 %538 to i8
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %539, i8* %540, align 1
  %541 = lshr i32 %513, 31
  %542 = lshr i32 %515, 31
  %543 = xor i32 %538, %541
  %544 = xor i32 %538, %542
  %545 = add i32 %543, %544
  %546 = icmp eq i32 %545, 2
  %547 = zext i1 %546 to i8
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %547, i8* %548, align 1
  store %struct.Memory* %loadMem_40056d, %struct.Memory** %MEMORY
  %loadMem_400570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 33
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 5
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RCX.i841 = bitcast %union.anon* %554 to i64*
  %555 = load i64, i64* %RCX.i841
  %556 = load i64, i64* %PC.i840
  %557 = add i64 %556, 3
  store i64 %557, i64* %PC.i840
  %558 = and i64 %555, 4294967295
  %559 = lshr i64 %558, 24
  %560 = trunc i64 %559 to i8
  %561 = and i8 %560, 1
  %562 = lshr i64 %559, 1
  %563 = trunc i64 %562 to i32
  %564 = and i32 %563, 2147483647
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RCX.i841, align 8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %561, i8* %566, align 1
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %568 = and i32 %563, 255
  %569 = call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %567, align 1
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %573, align 1
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %575 = icmp eq i32 %564, 0
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %574, align 1
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %577, align 1
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %578, align 1
  store %struct.Memory* %loadMem_400570, %struct.Memory** %MEMORY
  %loadMem_400573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 33
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %581 to i64*
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 5
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %ECX.i838 = bitcast %union.anon* %584 to i32*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 1
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %587 to i64*
  %588 = load i64, i64* %RAX.i839
  %589 = load i32, i32* %ECX.i838
  %590 = zext i32 %589 to i64
  %591 = load i64, i64* %PC.i837
  %592 = add i64 %591, 2
  store i64 %592, i64* %PC.i837
  %593 = or i64 %590, %588
  %594 = trunc i64 %593 to i32
  %595 = and i64 %593, 4294967295
  store i64 %595, i64* %RAX.i839, align 8
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %596, align 1
  %597 = and i32 %594, 255
  %598 = call i32 @llvm.ctpop.i32(i32 %597)
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %601, i8* %602, align 1
  %603 = icmp eq i32 %594, 0
  %604 = zext i1 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %604, i8* %605, align 1
  %606 = lshr i32 %594, 31
  %607 = trunc i32 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %607, i8* %608, align 1
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %609, align 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %610, align 1
  store %struct.Memory* %loadMem_400573, %struct.Memory** %MEMORY
  %loadMem_400575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 1
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %RAX.i835 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 15
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RBP.i836 = bitcast %union.anon* %619 to i64*
  %620 = load i64, i64* %RAX.i835
  %621 = load i64, i64* %RBP.i836
  %622 = sub i64 %621, 80
  %623 = load i64, i64* %PC.i834
  %624 = add i64 %623, 3
  store i64 %624, i64* %PC.i834
  %625 = trunc i64 %620 to i32
  %626 = inttoptr i64 %622 to i32*
  %627 = load i32, i32* %626
  %628 = xor i32 %627, %625
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RAX.i835, align 8
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %630, align 1
  %631 = and i32 %628, 255
  %632 = call i32 @llvm.ctpop.i32(i32 %631)
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %635, i8* %636, align 1
  %637 = icmp eq i32 %628, 0
  %638 = zext i1 %637 to i8
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %638, i8* %639, align 1
  %640 = lshr i32 %628, 31
  %641 = trunc i32 %640 to i8
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %641, i8* %642, align 1
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %643, align 1
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %644, align 1
  store %struct.Memory* %loadMem_400575, %struct.Memory** %MEMORY
  %loadMem_400578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 1
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %EAX.i832 = bitcast %union.anon* %650 to i32*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 15
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RBP.i833 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %RBP.i833
  %655 = sub i64 %654, 80
  %656 = load i32, i32* %EAX.i832
  %657 = zext i32 %656 to i64
  %658 = load i64, i64* %PC.i831
  %659 = add i64 %658, 3
  store i64 %659, i64* %PC.i831
  %660 = inttoptr i64 %655 to i32*
  store i32 %656, i32* %660
  store %struct.Memory* %loadMem_400578, %struct.Memory** %MEMORY
  %loadMem_40057b = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RAX.i829 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 15
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %RBP.i830 = bitcast %union.anon* %669 to i64*
  %670 = load i64, i64* %RBP.i830
  %671 = sub i64 %670, 80
  %672 = load i64, i64* %PC.i828
  %673 = add i64 %672, 3
  store i64 %673, i64* %PC.i828
  %674 = inttoptr i64 %671 to i32*
  %675 = load i32, i32* %674
  %676 = zext i32 %675 to i64
  store i64 %676, i64* %RAX.i829, align 8
  store %struct.Memory* %loadMem_40057b, %struct.Memory** %MEMORY
  %loadMem_40057e = load %struct.Memory*, %struct.Memory** %MEMORY
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 33
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %679 to i64*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 1
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %RAX.i826 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 15
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %685 to i64*
  %686 = load i64, i64* %RAX.i826
  %687 = load i64, i64* %RBP.i827
  %688 = sub i64 %687, 96
  %689 = load i64, i64* %PC.i825
  %690 = add i64 %689, 3
  store i64 %690, i64* %PC.i825
  %691 = trunc i64 %686 to i32
  %692 = inttoptr i64 %688 to i32*
  %693 = load i32, i32* %692
  %694 = add i32 %693, %691
  %695 = zext i32 %694 to i64
  store i64 %695, i64* %RAX.i826, align 8
  %696 = icmp ult i32 %694, %691
  %697 = icmp ult i32 %694, %693
  %698 = or i1 %696, %697
  %699 = zext i1 %698 to i8
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %699, i8* %700, align 1
  %701 = and i32 %694, 255
  %702 = call i32 @llvm.ctpop.i32(i32 %701)
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %705, i8* %706, align 1
  %707 = xor i32 %693, %691
  %708 = xor i32 %707, %694
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %711, i8* %712, align 1
  %713 = icmp eq i32 %694, 0
  %714 = zext i1 %713 to i8
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %714, i8* %715, align 1
  %716 = lshr i32 %694, 31
  %717 = trunc i32 %716 to i8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %717, i8* %718, align 1
  %719 = lshr i32 %691, 31
  %720 = lshr i32 %693, 31
  %721 = xor i32 %716, %719
  %722 = xor i32 %716, %720
  %723 = add i32 %721, %722
  %724 = icmp eq i32 %723, 2
  %725 = zext i1 %724 to i8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %725, i8* %726, align 1
  store %struct.Memory* %loadMem_40057e, %struct.Memory** %MEMORY
  %loadMem_400581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 33
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 1
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RAX.i824 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %RAX.i824
  %734 = load i64, i64* %PC.i823
  %735 = add i64 %734, 3
  store i64 %735, i64* %PC.i823
  %736 = and i64 %733, 4294967295
  %737 = shl i64 %736, 8
  %738 = trunc i64 %737 to i32
  %739 = icmp slt i32 %738, 0
  %740 = shl i32 %738, 1
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RAX.i824, align 8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %743 = zext i1 %739 to i8
  store i8 %743, i8* %742, align 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %744, align 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %745, align 1
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %747 = icmp eq i32 %740, 0
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %746, align 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %750 = lshr i32 %740, 31
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %749, align 1
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %752, align 1
  store %struct.Memory* %loadMem_400581, %struct.Memory** %MEMORY
  %loadMem_400584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 33
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 5
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RCX.i821 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 15
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %761 to i64*
  %762 = load i64, i64* %RBP.i822
  %763 = sub i64 %762, 80
  %764 = load i64, i64* %PC.i820
  %765 = add i64 %764, 3
  store i64 %765, i64* %PC.i820
  %766 = inttoptr i64 %763 to i32*
  %767 = load i32, i32* %766
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RCX.i821, align 8
  store %struct.Memory* %loadMem_400584, %struct.Memory** %MEMORY
  %loadMem_400587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 5
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %RCX.i818 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 15
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RBP.i819 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %RCX.i818
  %779 = load i64, i64* %RBP.i819
  %780 = sub i64 %779, 96
  %781 = load i64, i64* %PC.i817
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC.i817
  %783 = trunc i64 %778 to i32
  %784 = inttoptr i64 %780 to i32*
  %785 = load i32, i32* %784
  %786 = add i32 %785, %783
  %787 = zext i32 %786 to i64
  store i64 %787, i64* %RCX.i818, align 8
  %788 = icmp ult i32 %786, %783
  %789 = icmp ult i32 %786, %785
  %790 = or i1 %788, %789
  %791 = zext i1 %790 to i8
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %791, i8* %792, align 1
  %793 = and i32 %786, 255
  %794 = call i32 @llvm.ctpop.i32(i32 %793)
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %797, i8* %798, align 1
  %799 = xor i32 %785, %783
  %800 = xor i32 %799, %786
  %801 = lshr i32 %800, 4
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %803, i8* %804, align 1
  %805 = icmp eq i32 %786, 0
  %806 = zext i1 %805 to i8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %806, i8* %807, align 1
  %808 = lshr i32 %786, 31
  %809 = trunc i32 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %809, i8* %810, align 1
  %811 = lshr i32 %783, 31
  %812 = lshr i32 %785, 31
  %813 = xor i32 %808, %811
  %814 = xor i32 %808, %812
  %815 = add i32 %813, %814
  %816 = icmp eq i32 %815, 2
  %817 = zext i1 %816 to i8
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %817, i8* %818, align 1
  store %struct.Memory* %loadMem_400587, %struct.Memory** %MEMORY
  %loadMem_40058a = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 5
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RCX.i816 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %RCX.i816
  %826 = load i64, i64* %PC.i815
  %827 = add i64 %826, 3
  store i64 %827, i64* %PC.i815
  %828 = and i64 %825, 4294967295
  %829 = lshr i64 %828, 22
  %830 = trunc i64 %829 to i8
  %831 = and i8 %830, 1
  %832 = lshr i64 %829, 1
  %833 = trunc i64 %832 to i32
  %834 = and i32 %833, 2147483647
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RCX.i816, align 8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %831, i8* %836, align 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %838 = and i32 %833, 255
  %839 = call i32 @llvm.ctpop.i32(i32 %838)
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  store i8 %842, i8* %837, align 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %843, align 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %845 = icmp eq i32 %834, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %844, align 1
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %847, align 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %848, align 1
  store %struct.Memory* %loadMem_40058a, %struct.Memory** %MEMORY
  %loadMem_40058d = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 5
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %ECX.i813 = bitcast %union.anon* %854 to i32*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 1
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RAX.i814 = bitcast %union.anon* %857 to i64*
  %858 = load i64, i64* %RAX.i814
  %859 = load i32, i32* %ECX.i813
  %860 = zext i32 %859 to i64
  %861 = load i64, i64* %PC.i812
  %862 = add i64 %861, 2
  store i64 %862, i64* %PC.i812
  %863 = or i64 %860, %858
  %864 = trunc i64 %863 to i32
  %865 = and i64 %863, 4294967295
  store i64 %865, i64* %RAX.i814, align 8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %866, align 1
  %867 = and i32 %864, 255
  %868 = call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %871, i8* %872, align 1
  %873 = icmp eq i32 %864, 0
  %874 = zext i1 %873 to i8
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %874, i8* %875, align 1
  %876 = lshr i32 %864, 31
  %877 = trunc i32 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %877, i8* %878, align 1
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %879, align 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %880, align 1
  store %struct.Memory* %loadMem_40058d, %struct.Memory** %MEMORY
  %loadMem_40058f = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 1
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 15
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %889 to i64*
  %890 = load i64, i64* %RAX.i810
  %891 = load i64, i64* %RBP.i811
  %892 = sub i64 %891, 64
  %893 = load i64, i64* %PC.i809
  %894 = add i64 %893, 3
  store i64 %894, i64* %PC.i809
  %895 = trunc i64 %890 to i32
  %896 = inttoptr i64 %892 to i32*
  %897 = load i32, i32* %896
  %898 = xor i32 %897, %895
  %899 = zext i32 %898 to i64
  store i64 %899, i64* %RAX.i810, align 8
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %900, align 1
  %901 = and i32 %898, 255
  %902 = call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %905, i8* %906, align 1
  %907 = icmp eq i32 %898, 0
  %908 = zext i1 %907 to i8
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %908, i8* %909, align 1
  %910 = lshr i32 %898, 31
  %911 = trunc i32 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %911, i8* %912, align 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %913, align 1
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %914, align 1
  store %struct.Memory* %loadMem_40058f, %struct.Memory** %MEMORY
  %loadMem_400592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 1
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %EAX.i807 = bitcast %union.anon* %920 to i32*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 15
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RBP.i808 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %RBP.i808
  %925 = sub i64 %924, 64
  %926 = load i32, i32* %EAX.i807
  %927 = zext i32 %926 to i64
  %928 = load i64, i64* %PC.i806
  %929 = add i64 %928, 3
  store i64 %929, i64* %PC.i806
  %930 = inttoptr i64 %925 to i32*
  store i32 %926, i32* %930
  store %struct.Memory* %loadMem_400592, %struct.Memory** %MEMORY
  %loadMem_400595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RAX.i804 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i805 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RBP.i805
  %941 = sub i64 %940, 64
  %942 = load i64, i64* %PC.i803
  %943 = add i64 %942, 3
  store i64 %943, i64* %PC.i803
  %944 = inttoptr i64 %941 to i32*
  %945 = load i32, i32* %944
  %946 = zext i32 %945 to i64
  store i64 %946, i64* %RAX.i804, align 8
  store %struct.Memory* %loadMem_400595, %struct.Memory** %MEMORY
  %loadMem_400598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 1
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RAX.i801 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 15
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RBP.i802 = bitcast %union.anon* %955 to i64*
  %956 = load i64, i64* %RAX.i801
  %957 = load i64, i64* %RBP.i802
  %958 = sub i64 %957, 80
  %959 = load i64, i64* %PC.i800
  %960 = add i64 %959, 3
  store i64 %960, i64* %PC.i800
  %961 = trunc i64 %956 to i32
  %962 = inttoptr i64 %958 to i32*
  %963 = load i32, i32* %962
  %964 = add i32 %963, %961
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %RAX.i801, align 8
  %966 = icmp ult i32 %964, %961
  %967 = icmp ult i32 %964, %963
  %968 = or i1 %966, %967
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %969, i8* %970, align 1
  %971 = and i32 %964, 255
  %972 = call i32 @llvm.ctpop.i32(i32 %971)
  %973 = trunc i32 %972 to i8
  %974 = and i8 %973, 1
  %975 = xor i8 %974, 1
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %975, i8* %976, align 1
  %977 = xor i32 %963, %961
  %978 = xor i32 %977, %964
  %979 = lshr i32 %978, 4
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %981, i8* %982, align 1
  %983 = icmp eq i32 %964, 0
  %984 = zext i1 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %984, i8* %985, align 1
  %986 = lshr i32 %964, 31
  %987 = trunc i32 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %987, i8* %988, align 1
  %989 = lshr i32 %961, 31
  %990 = lshr i32 %963, 31
  %991 = xor i32 %986, %989
  %992 = xor i32 %986, %990
  %993 = add i32 %991, %992
  %994 = icmp eq i32 %993, 2
  %995 = zext i1 %994 to i8
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %995, i8* %996, align 1
  store %struct.Memory* %loadMem_400598, %struct.Memory** %MEMORY
  %loadMem_40059b = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RAX.i799 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %RAX.i799
  %1004 = load i64, i64* %PC.i798
  %1005 = add i64 %1004, 3
  store i64 %1005, i64* %PC.i798
  %1006 = and i64 %1003, 4294967295
  %1007 = shl i64 %1006, 12
  %1008 = trunc i64 %1007 to i32
  %1009 = icmp slt i32 %1008, 0
  %1010 = shl i32 %1008, 1
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %RAX.i799, align 8
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1013 = zext i1 %1009 to i8
  store i8 %1013, i8* %1012, align 1
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1014, align 1
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1015, align 1
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1017 = icmp eq i32 %1010, 0
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %1016, align 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1020 = lshr i32 %1010, 31
  %1021 = trunc i32 %1020 to i8
  store i8 %1021, i8* %1019, align 1
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1022, align 1
  store %struct.Memory* %loadMem_40059b, %struct.Memory** %MEMORY
  %loadMem_40059e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 33
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 5
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RCX.i796 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 15
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RBP.i797 = bitcast %union.anon* %1031 to i64*
  %1032 = load i64, i64* %RBP.i797
  %1033 = sub i64 %1032, 64
  %1034 = load i64, i64* %PC.i795
  %1035 = add i64 %1034, 3
  store i64 %1035, i64* %PC.i795
  %1036 = inttoptr i64 %1033 to i32*
  %1037 = load i32, i32* %1036
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RCX.i796, align 8
  store %struct.Memory* %loadMem_40059e, %struct.Memory** %MEMORY
  %loadMem_4005a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 5
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %RCX.i793 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 15
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %1047 to i64*
  %1048 = load i64, i64* %RCX.i793
  %1049 = load i64, i64* %RBP.i794
  %1050 = sub i64 %1049, 80
  %1051 = load i64, i64* %PC.i792
  %1052 = add i64 %1051, 3
  store i64 %1052, i64* %PC.i792
  %1053 = trunc i64 %1048 to i32
  %1054 = inttoptr i64 %1050 to i32*
  %1055 = load i32, i32* %1054
  %1056 = add i32 %1055, %1053
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RCX.i793, align 8
  %1058 = icmp ult i32 %1056, %1053
  %1059 = icmp ult i32 %1056, %1055
  %1060 = or i1 %1058, %1059
  %1061 = zext i1 %1060 to i8
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1061, i8* %1062, align 1
  %1063 = and i32 %1056, 255
  %1064 = call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1067, i8* %1068, align 1
  %1069 = xor i32 %1055, %1053
  %1070 = xor i32 %1069, %1056
  %1071 = lshr i32 %1070, 4
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1073, i8* %1074, align 1
  %1075 = icmp eq i32 %1056, 0
  %1076 = zext i1 %1075 to i8
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1076, i8* %1077, align 1
  %1078 = lshr i32 %1056, 31
  %1079 = trunc i32 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1079, i8* %1080, align 1
  %1081 = lshr i32 %1053, 31
  %1082 = lshr i32 %1055, 31
  %1083 = xor i32 %1078, %1081
  %1084 = xor i32 %1078, %1082
  %1085 = add i32 %1083, %1084
  %1086 = icmp eq i32 %1085, 2
  %1087 = zext i1 %1086 to i8
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1087, i8* %1088, align 1
  store %struct.Memory* %loadMem_4005a1, %struct.Memory** %MEMORY
  %loadMem_4005a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 33
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 5
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %RCX.i791 = bitcast %union.anon* %1094 to i64*
  %1095 = load i64, i64* %RCX.i791
  %1096 = load i64, i64* %PC.i790
  %1097 = add i64 %1096, 3
  store i64 %1097, i64* %PC.i790
  %1098 = and i64 %1095, 4294967295
  %1099 = lshr i64 %1098, 18
  %1100 = trunc i64 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = lshr i64 %1099, 1
  %1103 = trunc i64 %1102 to i32
  %1104 = and i32 %1103, 2147483647
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RCX.i791, align 8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1101, i8* %1106, align 1
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1108 = and i32 %1103, 255
  %1109 = call i32 @llvm.ctpop.i32(i32 %1108)
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = xor i8 %1111, 1
  store i8 %1112, i8* %1107, align 1
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1113, align 1
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1115 = icmp eq i32 %1104, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %1114, align 1
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1117, align 1
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1118, align 1
  store %struct.Memory* %loadMem_4005a4, %struct.Memory** %MEMORY
  %loadMem_4005a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 5
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %ECX.i788 = bitcast %union.anon* %1124 to i32*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 1
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %RAX.i789 = bitcast %union.anon* %1127 to i64*
  %1128 = load i64, i64* %RAX.i789
  %1129 = load i32, i32* %ECX.i788
  %1130 = zext i32 %1129 to i64
  %1131 = load i64, i64* %PC.i787
  %1132 = add i64 %1131, 2
  store i64 %1132, i64* %PC.i787
  %1133 = or i64 %1130, %1128
  %1134 = trunc i64 %1133 to i32
  %1135 = and i64 %1133, 4294967295
  store i64 %1135, i64* %RAX.i789, align 8
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1136, align 1
  %1137 = and i32 %1134, 255
  %1138 = call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1141, i8* %1142, align 1
  %1143 = icmp eq i32 %1134, 0
  %1144 = zext i1 %1143 to i8
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1144, i8* %1145, align 1
  %1146 = lshr i32 %1134, 31
  %1147 = trunc i32 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1147, i8* %1148, align 1
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1149, align 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1150, align 1
  store %struct.Memory* %loadMem_4005a7, %struct.Memory** %MEMORY
  %loadMem_4005a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 1
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RAX.i785 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 15
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RBP.i786 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %RAX.i785
  %1161 = load i64, i64* %RBP.i786
  %1162 = sub i64 %1161, 48
  %1163 = load i64, i64* %PC.i784
  %1164 = add i64 %1163, 3
  store i64 %1164, i64* %PC.i784
  %1165 = trunc i64 %1160 to i32
  %1166 = inttoptr i64 %1162 to i32*
  %1167 = load i32, i32* %1166
  %1168 = xor i32 %1167, %1165
  %1169 = zext i32 %1168 to i64
  store i64 %1169, i64* %RAX.i785, align 8
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1170, align 1
  %1171 = and i32 %1168, 255
  %1172 = call i32 @llvm.ctpop.i32(i32 %1171)
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1175, i8* %1176, align 1
  %1177 = icmp eq i32 %1168, 0
  %1178 = zext i1 %1177 to i8
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1178, i8* %1179, align 1
  %1180 = lshr i32 %1168, 31
  %1181 = trunc i32 %1180 to i8
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1181, i8* %1182, align 1
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1183, align 1
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1184, align 1
  store %struct.Memory* %loadMem_4005a9, %struct.Memory** %MEMORY
  %loadMem_4005ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 1
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %EAX.i782 = bitcast %union.anon* %1190 to i32*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 15
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %RBP.i783
  %1195 = sub i64 %1194, 48
  %1196 = load i32, i32* %EAX.i782
  %1197 = zext i32 %1196 to i64
  %1198 = load i64, i64* %PC.i781
  %1199 = add i64 %1198, 3
  store i64 %1199, i64* %PC.i781
  %1200 = inttoptr i64 %1195 to i32*
  store i32 %1196, i32* %1200
  store %struct.Memory* %loadMem_4005ac, %struct.Memory** %MEMORY
  %loadMem_4005af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RAX.i779 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 15
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %1209 to i64*
  %1210 = load i64, i64* %RBP.i780
  %1211 = sub i64 %1210, 48
  %1212 = load i64, i64* %PC.i778
  %1213 = add i64 %1212, 3
  store i64 %1213, i64* %PC.i778
  %1214 = inttoptr i64 %1211 to i32*
  %1215 = load i32, i32* %1214
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RAX.i779, align 8
  store %struct.Memory* %loadMem_4005af, %struct.Memory** %MEMORY
  %loadMem_4005b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 33
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 1
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 15
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %1225 to i64*
  %1226 = load i64, i64* %RAX.i776
  %1227 = load i64, i64* %RBP.i777
  %1228 = sub i64 %1227, 64
  %1229 = load i64, i64* %PC.i775
  %1230 = add i64 %1229, 3
  store i64 %1230, i64* %PC.i775
  %1231 = trunc i64 %1226 to i32
  %1232 = inttoptr i64 %1228 to i32*
  %1233 = load i32, i32* %1232
  %1234 = add i32 %1233, %1231
  %1235 = zext i32 %1234 to i64
  store i64 %1235, i64* %RAX.i776, align 8
  %1236 = icmp ult i32 %1234, %1231
  %1237 = icmp ult i32 %1234, %1233
  %1238 = or i1 %1236, %1237
  %1239 = zext i1 %1238 to i8
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1239, i8* %1240, align 1
  %1241 = and i32 %1234, 255
  %1242 = call i32 @llvm.ctpop.i32(i32 %1241)
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = xor i8 %1244, 1
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1245, i8* %1246, align 1
  %1247 = xor i32 %1233, %1231
  %1248 = xor i32 %1247, %1234
  %1249 = lshr i32 %1248, 4
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1251, i8* %1252, align 1
  %1253 = icmp eq i32 %1234, 0
  %1254 = zext i1 %1253 to i8
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1254, i8* %1255, align 1
  %1256 = lshr i32 %1234, 31
  %1257 = trunc i32 %1256 to i8
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1257, i8* %1258, align 1
  %1259 = lshr i32 %1231, 31
  %1260 = lshr i32 %1233, 31
  %1261 = xor i32 %1256, %1259
  %1262 = xor i32 %1256, %1260
  %1263 = add i32 %1261, %1262
  %1264 = icmp eq i32 %1263, 2
  %1265 = zext i1 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1265, i8* %1266, align 1
  store %struct.Memory* %loadMem_4005b2, %struct.Memory** %MEMORY
  %loadMem_4005b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 33
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 1
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RAX.i774 = bitcast %union.anon* %1272 to i64*
  %1273 = load i64, i64* %RAX.i774
  %1274 = load i64, i64* %PC.i773
  %1275 = add i64 %1274, 3
  store i64 %1275, i64* %PC.i773
  %1276 = and i64 %1273, 4294967295
  %1277 = shl i64 %1276, 17
  %1278 = trunc i64 %1277 to i32
  %1279 = icmp slt i32 %1278, 0
  %1280 = shl i32 %1278, 1
  %1281 = zext i32 %1280 to i64
  store i64 %1281, i64* %RAX.i774, align 8
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1283 = zext i1 %1279 to i8
  store i8 %1283, i8* %1282, align 1
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1284, align 1
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1285, align 1
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1287 = icmp eq i32 %1280, 0
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %1286, align 1
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1290 = lshr i32 %1280, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %1289, align 1
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1292, align 1
  store %struct.Memory* %loadMem_4005b5, %struct.Memory** %MEMORY
  %loadMem_4005b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 5
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RCX.i771 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 15
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RBP.i772 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %RBP.i772
  %1303 = sub i64 %1302, 48
  %1304 = load i64, i64* %PC.i770
  %1305 = add i64 %1304, 3
  store i64 %1305, i64* %PC.i770
  %1306 = inttoptr i64 %1303 to i32*
  %1307 = load i32, i32* %1306
  %1308 = zext i32 %1307 to i64
  store i64 %1308, i64* %RCX.i771, align 8
  store %struct.Memory* %loadMem_4005b8, %struct.Memory** %MEMORY
  %loadMem_4005bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 5
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RCX.i768 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 15
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RBP.i769 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %RCX.i768
  %1319 = load i64, i64* %RBP.i769
  %1320 = sub i64 %1319, 64
  %1321 = load i64, i64* %PC.i767
  %1322 = add i64 %1321, 3
  store i64 %1322, i64* %PC.i767
  %1323 = trunc i64 %1318 to i32
  %1324 = inttoptr i64 %1320 to i32*
  %1325 = load i32, i32* %1324
  %1326 = add i32 %1325, %1323
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RCX.i768, align 8
  %1328 = icmp ult i32 %1326, %1323
  %1329 = icmp ult i32 %1326, %1325
  %1330 = or i1 %1328, %1329
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1331, i8* %1332, align 1
  %1333 = and i32 %1326, 255
  %1334 = call i32 @llvm.ctpop.i32(i32 %1333)
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1337, i8* %1338, align 1
  %1339 = xor i32 %1325, %1323
  %1340 = xor i32 %1339, %1326
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1343, i8* %1344, align 1
  %1345 = icmp eq i32 %1326, 0
  %1346 = zext i1 %1345 to i8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1346, i8* %1347, align 1
  %1348 = lshr i32 %1326, 31
  %1349 = trunc i32 %1348 to i8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1349, i8* %1350, align 1
  %1351 = lshr i32 %1323, 31
  %1352 = lshr i32 %1325, 31
  %1353 = xor i32 %1348, %1351
  %1354 = xor i32 %1348, %1352
  %1355 = add i32 %1353, %1354
  %1356 = icmp eq i32 %1355, 2
  %1357 = zext i1 %1356 to i8
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1357, i8* %1358, align 1
  store %struct.Memory* %loadMem_4005bb, %struct.Memory** %MEMORY
  %loadMem_4005be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 5
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RCX.i766 = bitcast %union.anon* %1364 to i64*
  %1365 = load i64, i64* %RCX.i766
  %1366 = load i64, i64* %PC.i765
  %1367 = add i64 %1366, 3
  store i64 %1367, i64* %PC.i765
  %1368 = and i64 %1365, 4294967295
  %1369 = lshr i64 %1368, 13
  %1370 = trunc i64 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = lshr i64 %1369, 1
  %1373 = trunc i64 %1372 to i32
  %1374 = and i32 %1373, 2147483647
  %1375 = zext i32 %1374 to i64
  store i64 %1375, i64* %RCX.i766, align 8
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1371, i8* %1376, align 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1378 = and i32 %1373, 255
  %1379 = call i32 @llvm.ctpop.i32(i32 %1378)
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = xor i8 %1381, 1
  store i8 %1382, i8* %1377, align 1
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1383, align 1
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1385 = icmp eq i32 %1374, 0
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %1384, align 1
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1387, align 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1388, align 1
  store %struct.Memory* %loadMem_4005be, %struct.Memory** %MEMORY
  %loadMem_4005c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 5
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %ECX.i763 = bitcast %union.anon* %1394 to i32*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 1
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %1397 to i64*
  %1398 = load i64, i64* %RAX.i764
  %1399 = load i32, i32* %ECX.i763
  %1400 = zext i32 %1399 to i64
  %1401 = load i64, i64* %PC.i762
  %1402 = add i64 %1401, 2
  store i64 %1402, i64* %PC.i762
  %1403 = or i64 %1400, %1398
  %1404 = trunc i64 %1403 to i32
  %1405 = and i64 %1403, 4294967295
  store i64 %1405, i64* %RAX.i764, align 8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1406, align 1
  %1407 = and i32 %1404, 255
  %1408 = call i32 @llvm.ctpop.i32(i32 %1407)
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = xor i8 %1410, 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1411, i8* %1412, align 1
  %1413 = icmp eq i32 %1404, 0
  %1414 = zext i1 %1413 to i8
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1414, i8* %1415, align 1
  %1416 = lshr i32 %1404, 31
  %1417 = trunc i32 %1416 to i8
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1417, i8* %1418, align 1
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1419, align 1
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1420, align 1
  store %struct.Memory* %loadMem_4005c1, %struct.Memory** %MEMORY
  %loadMem_4005c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 1
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 15
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %1429 to i64*
  %1430 = load i64, i64* %RAX.i760
  %1431 = load i64, i64* %RBP.i761
  %1432 = sub i64 %1431, 96
  %1433 = load i64, i64* %PC.i759
  %1434 = add i64 %1433, 3
  store i64 %1434, i64* %PC.i759
  %1435 = trunc i64 %1430 to i32
  %1436 = inttoptr i64 %1432 to i32*
  %1437 = load i32, i32* %1436
  %1438 = xor i32 %1437, %1435
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RAX.i760, align 8
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1440, align 1
  %1441 = and i32 %1438, 255
  %1442 = call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1445, i8* %1446, align 1
  %1447 = icmp eq i32 %1438, 0
  %1448 = zext i1 %1447 to i8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1448, i8* %1449, align 1
  %1450 = lshr i32 %1438, 31
  %1451 = trunc i32 %1450 to i8
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1451, i8* %1452, align 1
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1453, align 1
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1454, align 1
  store %struct.Memory* %loadMem_4005c3, %struct.Memory** %MEMORY
  %loadMem_4005c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 33
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %1457 to i64*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 1
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %EAX.i757 = bitcast %union.anon* %1460 to i32*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 15
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %RBP.i758
  %1465 = sub i64 %1464, 96
  %1466 = load i32, i32* %EAX.i757
  %1467 = zext i32 %1466 to i64
  %1468 = load i64, i64* %PC.i756
  %1469 = add i64 %1468, 3
  store i64 %1469, i64* %PC.i756
  %1470 = inttoptr i64 %1465 to i32*
  store i32 %1466, i32* %1470
  store %struct.Memory* %loadMem_4005c6, %struct.Memory** %MEMORY
  %loadMem_4005c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 1
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RAX.i754 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 15
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %RBP.i755
  %1481 = sub i64 %1480, 76
  %1482 = load i64, i64* %PC.i753
  %1483 = add i64 %1482, 3
  store i64 %1483, i64* %PC.i753
  %1484 = inttoptr i64 %1481 to i32*
  %1485 = load i32, i32* %1484
  %1486 = zext i32 %1485 to i64
  store i64 %1486, i64* %RAX.i754, align 8
  store %struct.Memory* %loadMem_4005c9, %struct.Memory** %MEMORY
  %loadMem_4005cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 1
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RAX.i751 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 15
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RBP.i752 = bitcast %union.anon* %1495 to i64*
  %1496 = load i64, i64* %RAX.i751
  %1497 = load i64, i64* %RBP.i752
  %1498 = sub i64 %1497, 92
  %1499 = load i64, i64* %PC.i750
  %1500 = add i64 %1499, 3
  store i64 %1500, i64* %PC.i750
  %1501 = trunc i64 %1496 to i32
  %1502 = inttoptr i64 %1498 to i32*
  %1503 = load i32, i32* %1502
  %1504 = add i32 %1503, %1501
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RAX.i751, align 8
  %1506 = icmp ult i32 %1504, %1501
  %1507 = icmp ult i32 %1504, %1503
  %1508 = or i1 %1506, %1507
  %1509 = zext i1 %1508 to i8
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1509, i8* %1510, align 1
  %1511 = and i32 %1504, 255
  %1512 = call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1515, i8* %1516, align 1
  %1517 = xor i32 %1503, %1501
  %1518 = xor i32 %1517, %1504
  %1519 = lshr i32 %1518, 4
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1521, i8* %1522, align 1
  %1523 = icmp eq i32 %1504, 0
  %1524 = zext i1 %1523 to i8
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1524, i8* %1525, align 1
  %1526 = lshr i32 %1504, 31
  %1527 = trunc i32 %1526 to i8
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1527, i8* %1528, align 1
  %1529 = lshr i32 %1501, 31
  %1530 = lshr i32 %1503, 31
  %1531 = xor i32 %1526, %1529
  %1532 = xor i32 %1526, %1530
  %1533 = add i32 %1531, %1532
  %1534 = icmp eq i32 %1533, 2
  %1535 = zext i1 %1534 to i8
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1535, i8* %1536, align 1
  store %struct.Memory* %loadMem_4005cc, %struct.Memory** %MEMORY
  %loadMem_4005cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 1
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RAX.i749 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %RAX.i749
  %1544 = load i64, i64* %PC.i748
  %1545 = add i64 %1544, 3
  store i64 %1545, i64* %PC.i748
  %1546 = and i64 %1543, 4294967295
  %1547 = shl i64 %1546, 6
  %1548 = trunc i64 %1547 to i32
  %1549 = icmp slt i32 %1548, 0
  %1550 = shl i32 %1548, 1
  %1551 = zext i32 %1550 to i64
  store i64 %1551, i64* %RAX.i749, align 8
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1553 = zext i1 %1549 to i8
  store i8 %1553, i8* %1552, align 1
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1555 = and i32 %1550, 254
  %1556 = call i32 @llvm.ctpop.i32(i32 %1555)
  %1557 = trunc i32 %1556 to i8
  %1558 = and i8 %1557, 1
  %1559 = xor i8 %1558, 1
  store i8 %1559, i8* %1554, align 1
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1560, align 1
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1562 = icmp eq i32 %1550, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %1561, align 1
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1565 = lshr i32 %1550, 31
  %1566 = trunc i32 %1565 to i8
  store i8 %1566, i8* %1564, align 1
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1567, align 1
  store %struct.Memory* %loadMem_4005cf, %struct.Memory** %MEMORY
  %loadMem_4005d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 33
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1570 to i64*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 5
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %RCX.i746 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 15
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %1576 to i64*
  %1577 = load i64, i64* %RBP.i747
  %1578 = sub i64 %1577, 76
  %1579 = load i64, i64* %PC.i745
  %1580 = add i64 %1579, 3
  store i64 %1580, i64* %PC.i745
  %1581 = inttoptr i64 %1578 to i32*
  %1582 = load i32, i32* %1581
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RCX.i746, align 8
  store %struct.Memory* %loadMem_4005d2, %struct.Memory** %MEMORY
  %loadMem_4005d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1586 to i64*
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 5
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %RCX.i743 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 15
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RCX.i743
  %1594 = load i64, i64* %RBP.i744
  %1595 = sub i64 %1594, 92
  %1596 = load i64, i64* %PC.i742
  %1597 = add i64 %1596, 3
  store i64 %1597, i64* %PC.i742
  %1598 = trunc i64 %1593 to i32
  %1599 = inttoptr i64 %1595 to i32*
  %1600 = load i32, i32* %1599
  %1601 = add i32 %1600, %1598
  %1602 = zext i32 %1601 to i64
  store i64 %1602, i64* %RCX.i743, align 8
  %1603 = icmp ult i32 %1601, %1598
  %1604 = icmp ult i32 %1601, %1600
  %1605 = or i1 %1603, %1604
  %1606 = zext i1 %1605 to i8
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1606, i8* %1607, align 1
  %1608 = and i32 %1601, 255
  %1609 = call i32 @llvm.ctpop.i32(i32 %1608)
  %1610 = trunc i32 %1609 to i8
  %1611 = and i8 %1610, 1
  %1612 = xor i8 %1611, 1
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1612, i8* %1613, align 1
  %1614 = xor i32 %1600, %1598
  %1615 = xor i32 %1614, %1601
  %1616 = lshr i32 %1615, 4
  %1617 = trunc i32 %1616 to i8
  %1618 = and i8 %1617, 1
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1618, i8* %1619, align 1
  %1620 = icmp eq i32 %1601, 0
  %1621 = zext i1 %1620 to i8
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1621, i8* %1622, align 1
  %1623 = lshr i32 %1601, 31
  %1624 = trunc i32 %1623 to i8
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1624, i8* %1625, align 1
  %1626 = lshr i32 %1598, 31
  %1627 = lshr i32 %1600, 31
  %1628 = xor i32 %1623, %1626
  %1629 = xor i32 %1623, %1627
  %1630 = add i32 %1628, %1629
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1632, i8* %1633, align 1
  store %struct.Memory* %loadMem_4005d5, %struct.Memory** %MEMORY
  %loadMem_4005d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 5
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RCX.i741 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %RCX.i741
  %1641 = load i64, i64* %PC.i740
  %1642 = add i64 %1641, 3
  store i64 %1642, i64* %PC.i740
  %1643 = and i64 %1640, 4294967295
  %1644 = lshr i64 %1643, 24
  %1645 = trunc i64 %1644 to i8
  %1646 = and i8 %1645, 1
  %1647 = lshr i64 %1644, 1
  %1648 = trunc i64 %1647 to i32
  %1649 = and i32 %1648, 2147483647
  %1650 = zext i32 %1649 to i64
  store i64 %1650, i64* %RCX.i741, align 8
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1646, i8* %1651, align 1
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1653 = and i32 %1648, 255
  %1654 = call i32 @llvm.ctpop.i32(i32 %1653)
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  %1657 = xor i8 %1656, 1
  store i8 %1657, i8* %1652, align 1
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1658, align 1
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1660 = icmp eq i32 %1649, 0
  %1661 = zext i1 %1660 to i8
  store i8 %1661, i8* %1659, align 1
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1662, align 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1663, align 1
  store %struct.Memory* %loadMem_4005d8, %struct.Memory** %MEMORY
  %loadMem_4005db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 5
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %ECX.i738 = bitcast %union.anon* %1669 to i32*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 1
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %1672 to i64*
  %1673 = load i64, i64* %RAX.i739
  %1674 = load i32, i32* %ECX.i738
  %1675 = zext i32 %1674 to i64
  %1676 = load i64, i64* %PC.i737
  %1677 = add i64 %1676, 2
  store i64 %1677, i64* %PC.i737
  %1678 = or i64 %1675, %1673
  %1679 = trunc i64 %1678 to i32
  %1680 = and i64 %1678, 4294967295
  store i64 %1680, i64* %RAX.i739, align 8
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1681, align 1
  %1682 = and i32 %1679, 255
  %1683 = call i32 @llvm.ctpop.i32(i32 %1682)
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1686, i8* %1687, align 1
  %1688 = icmp eq i32 %1679, 0
  %1689 = zext i1 %1688 to i8
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1689, i8* %1690, align 1
  %1691 = lshr i32 %1679, 31
  %1692 = trunc i32 %1691 to i8
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1692, i8* %1693, align 1
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1694, align 1
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1695, align 1
  store %struct.Memory* %loadMem_4005db, %struct.Memory** %MEMORY
  %loadMem_4005dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 1
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RAX.i735 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 15
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RBP.i736 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %RAX.i735
  %1706 = load i64, i64* %RBP.i736
  %1707 = sub i64 %1706, 60
  %1708 = load i64, i64* %PC.i734
  %1709 = add i64 %1708, 3
  store i64 %1709, i64* %PC.i734
  %1710 = trunc i64 %1705 to i32
  %1711 = inttoptr i64 %1707 to i32*
  %1712 = load i32, i32* %1711
  %1713 = xor i32 %1712, %1710
  %1714 = zext i32 %1713 to i64
  store i64 %1714, i64* %RAX.i735, align 8
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1715, align 1
  %1716 = and i32 %1713, 255
  %1717 = call i32 @llvm.ctpop.i32(i32 %1716)
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  %1720 = xor i8 %1719, 1
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1720, i8* %1721, align 1
  %1722 = icmp eq i32 %1713, 0
  %1723 = zext i1 %1722 to i8
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1723, i8* %1724, align 1
  %1725 = lshr i32 %1713, 31
  %1726 = trunc i32 %1725 to i8
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1726, i8* %1727, align 1
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1728, align 1
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1729, align 1
  store %struct.Memory* %loadMem_4005dd, %struct.Memory** %MEMORY
  %loadMem_4005e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 1
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %EAX.i732 = bitcast %union.anon* %1735 to i32*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 15
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RBP.i733 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %RBP.i733
  %1740 = sub i64 %1739, 60
  %1741 = load i32, i32* %EAX.i732
  %1742 = zext i32 %1741 to i64
  %1743 = load i64, i64* %PC.i731
  %1744 = add i64 %1743, 3
  store i64 %1744, i64* %PC.i731
  %1745 = inttoptr i64 %1740 to i32*
  store i32 %1741, i32* %1745
  store %struct.Memory* %loadMem_4005e0, %struct.Memory** %MEMORY
  %loadMem_4005e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 1
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 15
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RBP.i730
  %1756 = sub i64 %1755, 60
  %1757 = load i64, i64* %PC.i728
  %1758 = add i64 %1757, 3
  store i64 %1758, i64* %PC.i728
  %1759 = inttoptr i64 %1756 to i32*
  %1760 = load i32, i32* %1759
  %1761 = zext i32 %1760 to i64
  store i64 %1761, i64* %RAX.i729, align 8
  store %struct.Memory* %loadMem_4005e3, %struct.Memory** %MEMORY
  %loadMem_4005e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 1
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 15
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %RAX.i726
  %1772 = load i64, i64* %RBP.i727
  %1773 = sub i64 %1772, 76
  %1774 = load i64, i64* %PC.i725
  %1775 = add i64 %1774, 3
  store i64 %1775, i64* %PC.i725
  %1776 = trunc i64 %1771 to i32
  %1777 = inttoptr i64 %1773 to i32*
  %1778 = load i32, i32* %1777
  %1779 = add i32 %1778, %1776
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RAX.i726, align 8
  %1781 = icmp ult i32 %1779, %1776
  %1782 = icmp ult i32 %1779, %1778
  %1783 = or i1 %1781, %1782
  %1784 = zext i1 %1783 to i8
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1784, i8* %1785, align 1
  %1786 = and i32 %1779, 255
  %1787 = call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1790, i8* %1791, align 1
  %1792 = xor i32 %1778, %1776
  %1793 = xor i32 %1792, %1779
  %1794 = lshr i32 %1793, 4
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1796, i8* %1797, align 1
  %1798 = icmp eq i32 %1779, 0
  %1799 = zext i1 %1798 to i8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1799, i8* %1800, align 1
  %1801 = lshr i32 %1779, 31
  %1802 = trunc i32 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1802, i8* %1803, align 1
  %1804 = lshr i32 %1776, 31
  %1805 = lshr i32 %1778, 31
  %1806 = xor i32 %1801, %1804
  %1807 = xor i32 %1801, %1805
  %1808 = add i32 %1806, %1807
  %1809 = icmp eq i32 %1808, 2
  %1810 = zext i1 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1810, i8* %1811, align 1
  store %struct.Memory* %loadMem_4005e6, %struct.Memory** %MEMORY
  %loadMem_4005e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 1
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RAX.i724 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %RAX.i724
  %1819 = load i64, i64* %PC.i723
  %1820 = add i64 %1819, 3
  store i64 %1820, i64* %PC.i723
  %1821 = and i64 %1818, 4294967295
  %1822 = shl i64 %1821, 8
  %1823 = trunc i64 %1822 to i32
  %1824 = icmp slt i32 %1823, 0
  %1825 = shl i32 %1823, 1
  %1826 = zext i32 %1825 to i64
  store i64 %1826, i64* %RAX.i724, align 8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1828 = zext i1 %1824 to i8
  store i8 %1828, i8* %1827, align 1
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1829, align 1
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1830, align 1
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1832 = icmp eq i32 %1825, 0
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %1831, align 1
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1835 = lshr i32 %1825, 31
  %1836 = trunc i32 %1835 to i8
  store i8 %1836, i8* %1834, align 1
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1837, align 1
  store %struct.Memory* %loadMem_4005e9, %struct.Memory** %MEMORY
  %loadMem_4005ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 33
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 5
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RCX.i721 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 15
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %1846 to i64*
  %1847 = load i64, i64* %RBP.i722
  %1848 = sub i64 %1847, 60
  %1849 = load i64, i64* %PC.i720
  %1850 = add i64 %1849, 3
  store i64 %1850, i64* %PC.i720
  %1851 = inttoptr i64 %1848 to i32*
  %1852 = load i32, i32* %1851
  %1853 = zext i32 %1852 to i64
  store i64 %1853, i64* %RCX.i721, align 8
  store %struct.Memory* %loadMem_4005ec, %struct.Memory** %MEMORY
  %loadMem_4005ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 5
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RCX.i718 = bitcast %union.anon* %1859 to i64*
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 15
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %RBP.i719 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %RCX.i718
  %1864 = load i64, i64* %RBP.i719
  %1865 = sub i64 %1864, 76
  %1866 = load i64, i64* %PC.i717
  %1867 = add i64 %1866, 3
  store i64 %1867, i64* %PC.i717
  %1868 = trunc i64 %1863 to i32
  %1869 = inttoptr i64 %1865 to i32*
  %1870 = load i32, i32* %1869
  %1871 = add i32 %1870, %1868
  %1872 = zext i32 %1871 to i64
  store i64 %1872, i64* %RCX.i718, align 8
  %1873 = icmp ult i32 %1871, %1868
  %1874 = icmp ult i32 %1871, %1870
  %1875 = or i1 %1873, %1874
  %1876 = zext i1 %1875 to i8
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1876, i8* %1877, align 1
  %1878 = and i32 %1871, 255
  %1879 = call i32 @llvm.ctpop.i32(i32 %1878)
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  %1882 = xor i8 %1881, 1
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1882, i8* %1883, align 1
  %1884 = xor i32 %1870, %1868
  %1885 = xor i32 %1884, %1871
  %1886 = lshr i32 %1885, 4
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1888, i8* %1889, align 1
  %1890 = icmp eq i32 %1871, 0
  %1891 = zext i1 %1890 to i8
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1891, i8* %1892, align 1
  %1893 = lshr i32 %1871, 31
  %1894 = trunc i32 %1893 to i8
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1894, i8* %1895, align 1
  %1896 = lshr i32 %1868, 31
  %1897 = lshr i32 %1870, 31
  %1898 = xor i32 %1893, %1896
  %1899 = xor i32 %1893, %1897
  %1900 = add i32 %1898, %1899
  %1901 = icmp eq i32 %1900, 2
  %1902 = zext i1 %1901 to i8
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1902, i8* %1903, align 1
  store %struct.Memory* %loadMem_4005ef, %struct.Memory** %MEMORY
  %loadMem_4005f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 33
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 5
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RCX.i716 = bitcast %union.anon* %1909 to i64*
  %1910 = load i64, i64* %RCX.i716
  %1911 = load i64, i64* %PC.i715
  %1912 = add i64 %1911, 3
  store i64 %1912, i64* %PC.i715
  %1913 = and i64 %1910, 4294967295
  %1914 = lshr i64 %1913, 22
  %1915 = trunc i64 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = lshr i64 %1914, 1
  %1918 = trunc i64 %1917 to i32
  %1919 = and i32 %1918, 2147483647
  %1920 = zext i32 %1919 to i64
  store i64 %1920, i64* %RCX.i716, align 8
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1916, i8* %1921, align 1
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1923 = and i32 %1918, 255
  %1924 = call i32 @llvm.ctpop.i32(i32 %1923)
  %1925 = trunc i32 %1924 to i8
  %1926 = and i8 %1925, 1
  %1927 = xor i8 %1926, 1
  store i8 %1927, i8* %1922, align 1
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1928, align 1
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1930 = icmp eq i32 %1919, 0
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %1929, align 1
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1932, align 1
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1933, align 1
  store %struct.Memory* %loadMem_4005f2, %struct.Memory** %MEMORY
  %loadMem_4005f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 5
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %ECX.i713 = bitcast %union.anon* %1939 to i32*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 1
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RAX.i714 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %RAX.i714
  %1944 = load i32, i32* %ECX.i713
  %1945 = zext i32 %1944 to i64
  %1946 = load i64, i64* %PC.i712
  %1947 = add i64 %1946, 2
  store i64 %1947, i64* %PC.i712
  %1948 = or i64 %1945, %1943
  %1949 = trunc i64 %1948 to i32
  %1950 = and i64 %1948, 4294967295
  store i64 %1950, i64* %RAX.i714, align 8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1951, align 1
  %1952 = and i32 %1949, 255
  %1953 = call i32 @llvm.ctpop.i32(i32 %1952)
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  %1956 = xor i8 %1955, 1
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1956, i8* %1957, align 1
  %1958 = icmp eq i32 %1949, 0
  %1959 = zext i1 %1958 to i8
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1959, i8* %1960, align 1
  %1961 = lshr i32 %1949, 31
  %1962 = trunc i32 %1961 to i8
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1962, i8* %1963, align 1
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1964, align 1
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1965, align 1
  store %struct.Memory* %loadMem_4005f5, %struct.Memory** %MEMORY
  %loadMem_4005f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 33
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 1
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RAX.i710 = bitcast %union.anon* %1971 to i64*
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 15
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %1974 to i64*
  %1975 = load i64, i64* %RAX.i710
  %1976 = load i64, i64* %RBP.i711
  %1977 = sub i64 %1976, 44
  %1978 = load i64, i64* %PC.i709
  %1979 = add i64 %1978, 3
  store i64 %1979, i64* %PC.i709
  %1980 = trunc i64 %1975 to i32
  %1981 = inttoptr i64 %1977 to i32*
  %1982 = load i32, i32* %1981
  %1983 = xor i32 %1982, %1980
  %1984 = zext i32 %1983 to i64
  store i64 %1984, i64* %RAX.i710, align 8
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1985, align 1
  %1986 = and i32 %1983, 255
  %1987 = call i32 @llvm.ctpop.i32(i32 %1986)
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  %1990 = xor i8 %1989, 1
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1990, i8* %1991, align 1
  %1992 = icmp eq i32 %1983, 0
  %1993 = zext i1 %1992 to i8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1993, i8* %1994, align 1
  %1995 = lshr i32 %1983, 31
  %1996 = trunc i32 %1995 to i8
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1996, i8* %1997, align 1
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1998, align 1
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1999, align 1
  store %struct.Memory* %loadMem_4005f7, %struct.Memory** %MEMORY
  %loadMem_4005fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 33
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 1
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %EAX.i707 = bitcast %union.anon* %2005 to i32*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 15
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %2008 to i64*
  %2009 = load i64, i64* %RBP.i708
  %2010 = sub i64 %2009, 44
  %2011 = load i32, i32* %EAX.i707
  %2012 = zext i32 %2011 to i64
  %2013 = load i64, i64* %PC.i706
  %2014 = add i64 %2013, 3
  store i64 %2014, i64* %PC.i706
  %2015 = inttoptr i64 %2010 to i32*
  store i32 %2011, i32* %2015
  store %struct.Memory* %loadMem_4005fa, %struct.Memory** %MEMORY
  %loadMem_4005fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 33
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 1
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %RAX.i704 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 15
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %2024 to i64*
  %2025 = load i64, i64* %RBP.i705
  %2026 = sub i64 %2025, 44
  %2027 = load i64, i64* %PC.i703
  %2028 = add i64 %2027, 3
  store i64 %2028, i64* %PC.i703
  %2029 = inttoptr i64 %2026 to i32*
  %2030 = load i32, i32* %2029
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RAX.i704, align 8
  store %struct.Memory* %loadMem_4005fd, %struct.Memory** %MEMORY
  %loadMem_400600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 1
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RAX.i701 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 15
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %2040 to i64*
  %2041 = load i64, i64* %RAX.i701
  %2042 = load i64, i64* %RBP.i702
  %2043 = sub i64 %2042, 60
  %2044 = load i64, i64* %PC.i700
  %2045 = add i64 %2044, 3
  store i64 %2045, i64* %PC.i700
  %2046 = trunc i64 %2041 to i32
  %2047 = inttoptr i64 %2043 to i32*
  %2048 = load i32, i32* %2047
  %2049 = add i32 %2048, %2046
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %RAX.i701, align 8
  %2051 = icmp ult i32 %2049, %2046
  %2052 = icmp ult i32 %2049, %2048
  %2053 = or i1 %2051, %2052
  %2054 = zext i1 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2054, i8* %2055, align 1
  %2056 = and i32 %2049, 255
  %2057 = call i32 @llvm.ctpop.i32(i32 %2056)
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  %2060 = xor i8 %2059, 1
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2060, i8* %2061, align 1
  %2062 = xor i32 %2048, %2046
  %2063 = xor i32 %2062, %2049
  %2064 = lshr i32 %2063, 4
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2066, i8* %2067, align 1
  %2068 = icmp eq i32 %2049, 0
  %2069 = zext i1 %2068 to i8
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2069, i8* %2070, align 1
  %2071 = lshr i32 %2049, 31
  %2072 = trunc i32 %2071 to i8
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2072, i8* %2073, align 1
  %2074 = lshr i32 %2046, 31
  %2075 = lshr i32 %2048, 31
  %2076 = xor i32 %2071, %2074
  %2077 = xor i32 %2071, %2075
  %2078 = add i32 %2076, %2077
  %2079 = icmp eq i32 %2078, 2
  %2080 = zext i1 %2079 to i8
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2080, i8* %2081, align 1
  store %struct.Memory* %loadMem_400600, %struct.Memory** %MEMORY
  %loadMem_400603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 1
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %2087 to i64*
  %2088 = load i64, i64* %RAX.i699
  %2089 = load i64, i64* %PC.i698
  %2090 = add i64 %2089, 3
  store i64 %2090, i64* %PC.i698
  %2091 = and i64 %2088, 4294967295
  %2092 = shl i64 %2091, 12
  %2093 = trunc i64 %2092 to i32
  %2094 = icmp slt i32 %2093, 0
  %2095 = shl i32 %2093, 1
  %2096 = zext i32 %2095 to i64
  store i64 %2096, i64* %RAX.i699, align 8
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2098 = zext i1 %2094 to i8
  store i8 %2098, i8* %2097, align 1
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2099, align 1
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2100, align 1
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2102 = icmp eq i32 %2095, 0
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %2101, align 1
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2105 = lshr i32 %2095, 31
  %2106 = trunc i32 %2105 to i8
  store i8 %2106, i8* %2104, align 1
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2107, align 1
  store %struct.Memory* %loadMem_400603, %struct.Memory** %MEMORY
  %loadMem_400606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 33
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 5
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RCX.i696 = bitcast %union.anon* %2113 to i64*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 15
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %2116 to i64*
  %2117 = load i64, i64* %RBP.i697
  %2118 = sub i64 %2117, 44
  %2119 = load i64, i64* %PC.i695
  %2120 = add i64 %2119, 3
  store i64 %2120, i64* %PC.i695
  %2121 = inttoptr i64 %2118 to i32*
  %2122 = load i32, i32* %2121
  %2123 = zext i32 %2122 to i64
  store i64 %2123, i64* %RCX.i696, align 8
  store %struct.Memory* %loadMem_400606, %struct.Memory** %MEMORY
  %loadMem_400609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 5
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 15
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RCX.i693
  %2134 = load i64, i64* %RBP.i694
  %2135 = sub i64 %2134, 60
  %2136 = load i64, i64* %PC.i692
  %2137 = add i64 %2136, 3
  store i64 %2137, i64* %PC.i692
  %2138 = trunc i64 %2133 to i32
  %2139 = inttoptr i64 %2135 to i32*
  %2140 = load i32, i32* %2139
  %2141 = add i32 %2140, %2138
  %2142 = zext i32 %2141 to i64
  store i64 %2142, i64* %RCX.i693, align 8
  %2143 = icmp ult i32 %2141, %2138
  %2144 = icmp ult i32 %2141, %2140
  %2145 = or i1 %2143, %2144
  %2146 = zext i1 %2145 to i8
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2146, i8* %2147, align 1
  %2148 = and i32 %2141, 255
  %2149 = call i32 @llvm.ctpop.i32(i32 %2148)
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = xor i8 %2151, 1
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2152, i8* %2153, align 1
  %2154 = xor i32 %2140, %2138
  %2155 = xor i32 %2154, %2141
  %2156 = lshr i32 %2155, 4
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2158, i8* %2159, align 1
  %2160 = icmp eq i32 %2141, 0
  %2161 = zext i1 %2160 to i8
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2161, i8* %2162, align 1
  %2163 = lshr i32 %2141, 31
  %2164 = trunc i32 %2163 to i8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2164, i8* %2165, align 1
  %2166 = lshr i32 %2138, 31
  %2167 = lshr i32 %2140, 31
  %2168 = xor i32 %2163, %2166
  %2169 = xor i32 %2163, %2167
  %2170 = add i32 %2168, %2169
  %2171 = icmp eq i32 %2170, 2
  %2172 = zext i1 %2171 to i8
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2172, i8* %2173, align 1
  store %struct.Memory* %loadMem_400609, %struct.Memory** %MEMORY
  %loadMem_40060c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 33
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 5
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %RCX.i691 = bitcast %union.anon* %2179 to i64*
  %2180 = load i64, i64* %RCX.i691
  %2181 = load i64, i64* %PC.i690
  %2182 = add i64 %2181, 3
  store i64 %2182, i64* %PC.i690
  %2183 = and i64 %2180, 4294967295
  %2184 = lshr i64 %2183, 18
  %2185 = trunc i64 %2184 to i8
  %2186 = and i8 %2185, 1
  %2187 = lshr i64 %2184, 1
  %2188 = trunc i64 %2187 to i32
  %2189 = and i32 %2188, 2147483647
  %2190 = zext i32 %2189 to i64
  store i64 %2190, i64* %RCX.i691, align 8
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2186, i8* %2191, align 1
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2193 = and i32 %2188, 255
  %2194 = call i32 @llvm.ctpop.i32(i32 %2193)
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  %2197 = xor i8 %2196, 1
  store i8 %2197, i8* %2192, align 1
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2198, align 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2200 = icmp eq i32 %2189, 0
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %2199, align 1
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2202, align 1
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2203, align 1
  store %struct.Memory* %loadMem_40060c, %struct.Memory** %MEMORY
  %loadMem_40060f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 5
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %ECX.i688 = bitcast %union.anon* %2209 to i32*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 1
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %RAX.i689
  %2214 = load i32, i32* %ECX.i688
  %2215 = zext i32 %2214 to i64
  %2216 = load i64, i64* %PC.i687
  %2217 = add i64 %2216, 2
  store i64 %2217, i64* %PC.i687
  %2218 = or i64 %2215, %2213
  %2219 = trunc i64 %2218 to i32
  %2220 = and i64 %2218, 4294967295
  store i64 %2220, i64* %RAX.i689, align 8
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2221, align 1
  %2222 = and i32 %2219, 255
  %2223 = call i32 @llvm.ctpop.i32(i32 %2222)
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  %2226 = xor i8 %2225, 1
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2226, i8* %2227, align 1
  %2228 = icmp eq i32 %2219, 0
  %2229 = zext i1 %2228 to i8
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2229, i8* %2230, align 1
  %2231 = lshr i32 %2219, 31
  %2232 = trunc i32 %2231 to i8
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2232, i8* %2233, align 1
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2234, align 1
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2235, align 1
  store %struct.Memory* %loadMem_40060f, %struct.Memory** %MEMORY
  %loadMem_400611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 33
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 1
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 15
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %RAX.i685
  %2246 = load i64, i64* %RBP.i686
  %2247 = sub i64 %2246, 92
  %2248 = load i64, i64* %PC.i684
  %2249 = add i64 %2248, 3
  store i64 %2249, i64* %PC.i684
  %2250 = trunc i64 %2245 to i32
  %2251 = inttoptr i64 %2247 to i32*
  %2252 = load i32, i32* %2251
  %2253 = xor i32 %2252, %2250
  %2254 = zext i32 %2253 to i64
  store i64 %2254, i64* %RAX.i685, align 8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2255, align 1
  %2256 = and i32 %2253, 255
  %2257 = call i32 @llvm.ctpop.i32(i32 %2256)
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  %2260 = xor i8 %2259, 1
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2260, i8* %2261, align 1
  %2262 = icmp eq i32 %2253, 0
  %2263 = zext i1 %2262 to i8
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2263, i8* %2264, align 1
  %2265 = lshr i32 %2253, 31
  %2266 = trunc i32 %2265 to i8
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2266, i8* %2267, align 1
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2268, align 1
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2269, align 1
  store %struct.Memory* %loadMem_400611, %struct.Memory** %MEMORY
  %loadMem_400614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 33
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 1
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %EAX.i682 = bitcast %union.anon* %2275 to i32*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 15
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %2278 to i64*
  %2279 = load i64, i64* %RBP.i683
  %2280 = sub i64 %2279, 92
  %2281 = load i32, i32* %EAX.i682
  %2282 = zext i32 %2281 to i64
  %2283 = load i64, i64* %PC.i681
  %2284 = add i64 %2283, 3
  store i64 %2284, i64* %PC.i681
  %2285 = inttoptr i64 %2280 to i32*
  store i32 %2281, i32* %2285
  store %struct.Memory* %loadMem_400614, %struct.Memory** %MEMORY
  %loadMem_400617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 33
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 1
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 15
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %2294 to i64*
  %2295 = load i64, i64* %RBP.i680
  %2296 = sub i64 %2295, 92
  %2297 = load i64, i64* %PC.i678
  %2298 = add i64 %2297, 3
  store i64 %2298, i64* %PC.i678
  %2299 = inttoptr i64 %2296 to i32*
  %2300 = load i32, i32* %2299
  %2301 = zext i32 %2300 to i64
  store i64 %2301, i64* %RAX.i679, align 8
  store %struct.Memory* %loadMem_400617, %struct.Memory** %MEMORY
  %loadMem_40061a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 33
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 1
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 15
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %2310 to i64*
  %2311 = load i64, i64* %RAX.i676
  %2312 = load i64, i64* %RBP.i677
  %2313 = sub i64 %2312, 44
  %2314 = load i64, i64* %PC.i675
  %2315 = add i64 %2314, 3
  store i64 %2315, i64* %PC.i675
  %2316 = trunc i64 %2311 to i32
  %2317 = inttoptr i64 %2313 to i32*
  %2318 = load i32, i32* %2317
  %2319 = add i32 %2318, %2316
  %2320 = zext i32 %2319 to i64
  store i64 %2320, i64* %RAX.i676, align 8
  %2321 = icmp ult i32 %2319, %2316
  %2322 = icmp ult i32 %2319, %2318
  %2323 = or i1 %2321, %2322
  %2324 = zext i1 %2323 to i8
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2324, i8* %2325, align 1
  %2326 = and i32 %2319, 255
  %2327 = call i32 @llvm.ctpop.i32(i32 %2326)
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = xor i8 %2329, 1
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2330, i8* %2331, align 1
  %2332 = xor i32 %2318, %2316
  %2333 = xor i32 %2332, %2319
  %2334 = lshr i32 %2333, 4
  %2335 = trunc i32 %2334 to i8
  %2336 = and i8 %2335, 1
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2336, i8* %2337, align 1
  %2338 = icmp eq i32 %2319, 0
  %2339 = zext i1 %2338 to i8
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2339, i8* %2340, align 1
  %2341 = lshr i32 %2319, 31
  %2342 = trunc i32 %2341 to i8
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2342, i8* %2343, align 1
  %2344 = lshr i32 %2316, 31
  %2345 = lshr i32 %2318, 31
  %2346 = xor i32 %2341, %2344
  %2347 = xor i32 %2341, %2345
  %2348 = add i32 %2346, %2347
  %2349 = icmp eq i32 %2348, 2
  %2350 = zext i1 %2349 to i8
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2350, i8* %2351, align 1
  store %struct.Memory* %loadMem_40061a, %struct.Memory** %MEMORY
  %loadMem_40061d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %2357 to i64*
  %2358 = load i64, i64* %RAX.i674
  %2359 = load i64, i64* %PC.i673
  %2360 = add i64 %2359, 3
  store i64 %2360, i64* %PC.i673
  %2361 = and i64 %2358, 4294967295
  %2362 = shl i64 %2361, 17
  %2363 = trunc i64 %2362 to i32
  %2364 = icmp slt i32 %2363, 0
  %2365 = shl i32 %2363, 1
  %2366 = zext i32 %2365 to i64
  store i64 %2366, i64* %RAX.i674, align 8
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2368 = zext i1 %2364 to i8
  store i8 %2368, i8* %2367, align 1
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2369, align 1
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2370, align 1
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2372 = icmp eq i32 %2365, 0
  %2373 = zext i1 %2372 to i8
  store i8 %2373, i8* %2371, align 1
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2375 = lshr i32 %2365, 31
  %2376 = trunc i32 %2375 to i8
  store i8 %2376, i8* %2374, align 1
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2377, align 1
  store %struct.Memory* %loadMem_40061d, %struct.Memory** %MEMORY
  %loadMem_400620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 5
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RCX.i671 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 15
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %2386 to i64*
  %2387 = load i64, i64* %RBP.i672
  %2388 = sub i64 %2387, 92
  %2389 = load i64, i64* %PC.i670
  %2390 = add i64 %2389, 3
  store i64 %2390, i64* %PC.i670
  %2391 = inttoptr i64 %2388 to i32*
  %2392 = load i32, i32* %2391
  %2393 = zext i32 %2392 to i64
  store i64 %2393, i64* %RCX.i671, align 8
  store %struct.Memory* %loadMem_400620, %struct.Memory** %MEMORY
  %loadMem_400623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 33
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 5
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RCX.i668 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 15
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %2402 to i64*
  %2403 = load i64, i64* %RCX.i668
  %2404 = load i64, i64* %RBP.i669
  %2405 = sub i64 %2404, 44
  %2406 = load i64, i64* %PC.i667
  %2407 = add i64 %2406, 3
  store i64 %2407, i64* %PC.i667
  %2408 = trunc i64 %2403 to i32
  %2409 = inttoptr i64 %2405 to i32*
  %2410 = load i32, i32* %2409
  %2411 = add i32 %2410, %2408
  %2412 = zext i32 %2411 to i64
  store i64 %2412, i64* %RCX.i668, align 8
  %2413 = icmp ult i32 %2411, %2408
  %2414 = icmp ult i32 %2411, %2410
  %2415 = or i1 %2413, %2414
  %2416 = zext i1 %2415 to i8
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2416, i8* %2417, align 1
  %2418 = and i32 %2411, 255
  %2419 = call i32 @llvm.ctpop.i32(i32 %2418)
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  %2422 = xor i8 %2421, 1
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2422, i8* %2423, align 1
  %2424 = xor i32 %2410, %2408
  %2425 = xor i32 %2424, %2411
  %2426 = lshr i32 %2425, 4
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2428, i8* %2429, align 1
  %2430 = icmp eq i32 %2411, 0
  %2431 = zext i1 %2430 to i8
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2431, i8* %2432, align 1
  %2433 = lshr i32 %2411, 31
  %2434 = trunc i32 %2433 to i8
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2434, i8* %2435, align 1
  %2436 = lshr i32 %2408, 31
  %2437 = lshr i32 %2410, 31
  %2438 = xor i32 %2433, %2436
  %2439 = xor i32 %2433, %2437
  %2440 = add i32 %2438, %2439
  %2441 = icmp eq i32 %2440, 2
  %2442 = zext i1 %2441 to i8
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2442, i8* %2443, align 1
  store %struct.Memory* %loadMem_400623, %struct.Memory** %MEMORY
  %loadMem_400626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 33
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2446 to i64*
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 5
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %2449 to i64*
  %2450 = load i64, i64* %RCX.i666
  %2451 = load i64, i64* %PC.i665
  %2452 = add i64 %2451, 3
  store i64 %2452, i64* %PC.i665
  %2453 = and i64 %2450, 4294967295
  %2454 = lshr i64 %2453, 13
  %2455 = trunc i64 %2454 to i8
  %2456 = and i8 %2455, 1
  %2457 = lshr i64 %2454, 1
  %2458 = trunc i64 %2457 to i32
  %2459 = and i32 %2458, 2147483647
  %2460 = zext i32 %2459 to i64
  store i64 %2460, i64* %RCX.i666, align 8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2456, i8* %2461, align 1
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2463 = and i32 %2458, 255
  %2464 = call i32 @llvm.ctpop.i32(i32 %2463)
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  %2467 = xor i8 %2466, 1
  store i8 %2467, i8* %2462, align 1
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2468, align 1
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2470 = icmp eq i32 %2459, 0
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %2469, align 1
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2472, align 1
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2473, align 1
  store %struct.Memory* %loadMem_400626, %struct.Memory** %MEMORY
  %loadMem_400629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 33
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 5
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %ECX.i663 = bitcast %union.anon* %2479 to i32*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 1
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RAX.i664 = bitcast %union.anon* %2482 to i64*
  %2483 = load i64, i64* %RAX.i664
  %2484 = load i32, i32* %ECX.i663
  %2485 = zext i32 %2484 to i64
  %2486 = load i64, i64* %PC.i662
  %2487 = add i64 %2486, 2
  store i64 %2487, i64* %PC.i662
  %2488 = or i64 %2485, %2483
  %2489 = trunc i64 %2488 to i32
  %2490 = and i64 %2488, 4294967295
  store i64 %2490, i64* %RAX.i664, align 8
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2491, align 1
  %2492 = and i32 %2489, 255
  %2493 = call i32 @llvm.ctpop.i32(i32 %2492)
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  %2496 = xor i8 %2495, 1
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2496, i8* %2497, align 1
  %2498 = icmp eq i32 %2489, 0
  %2499 = zext i1 %2498 to i8
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2499, i8* %2500, align 1
  %2501 = lshr i32 %2489, 31
  %2502 = trunc i32 %2501 to i8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2502, i8* %2503, align 1
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2504, align 1
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2505, align 1
  store %struct.Memory* %loadMem_400629, %struct.Memory** %MEMORY
  %loadMem_40062b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 1
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RAX.i660 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 15
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %2514 to i64*
  %2515 = load i64, i64* %RAX.i660
  %2516 = load i64, i64* %RBP.i661
  %2517 = sub i64 %2516, 76
  %2518 = load i64, i64* %PC.i659
  %2519 = add i64 %2518, 3
  store i64 %2519, i64* %PC.i659
  %2520 = trunc i64 %2515 to i32
  %2521 = inttoptr i64 %2517 to i32*
  %2522 = load i32, i32* %2521
  %2523 = xor i32 %2522, %2520
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RAX.i660, align 8
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2525, align 1
  %2526 = and i32 %2523, 255
  %2527 = call i32 @llvm.ctpop.i32(i32 %2526)
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = xor i8 %2529, 1
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2530, i8* %2531, align 1
  %2532 = icmp eq i32 %2523, 0
  %2533 = zext i1 %2532 to i8
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2533, i8* %2534, align 1
  %2535 = lshr i32 %2523, 31
  %2536 = trunc i32 %2535 to i8
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2536, i8* %2537, align 1
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2538, align 1
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2539, align 1
  store %struct.Memory* %loadMem_40062b, %struct.Memory** %MEMORY
  %loadMem_40062e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 1
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %EAX.i657 = bitcast %union.anon* %2545 to i32*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 15
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %2548 to i64*
  %2549 = load i64, i64* %RBP.i658
  %2550 = sub i64 %2549, 76
  %2551 = load i32, i32* %EAX.i657
  %2552 = zext i32 %2551 to i64
  %2553 = load i64, i64* %PC.i656
  %2554 = add i64 %2553, 3
  store i64 %2554, i64* %PC.i656
  %2555 = inttoptr i64 %2550 to i32*
  store i32 %2551, i32* %2555
  store %struct.Memory* %loadMem_40062e, %struct.Memory** %MEMORY
  %loadMem_400631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 1
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RAX.i654 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 15
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %2564 to i64*
  %2565 = load i64, i64* %RBP.i655
  %2566 = sub i64 %2565, 56
  %2567 = load i64, i64* %PC.i653
  %2568 = add i64 %2567, 3
  store i64 %2568, i64* %PC.i653
  %2569 = inttoptr i64 %2566 to i32*
  %2570 = load i32, i32* %2569
  %2571 = zext i32 %2570 to i64
  store i64 %2571, i64* %RAX.i654, align 8
  store %struct.Memory* %loadMem_400631, %struct.Memory** %MEMORY
  %loadMem_400634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 1
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 15
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %2580 to i64*
  %2581 = load i64, i64* %RAX.i651
  %2582 = load i64, i64* %RBP.i652
  %2583 = sub i64 %2582, 72
  %2584 = load i64, i64* %PC.i650
  %2585 = add i64 %2584, 3
  store i64 %2585, i64* %PC.i650
  %2586 = trunc i64 %2581 to i32
  %2587 = inttoptr i64 %2583 to i32*
  %2588 = load i32, i32* %2587
  %2589 = add i32 %2588, %2586
  %2590 = zext i32 %2589 to i64
  store i64 %2590, i64* %RAX.i651, align 8
  %2591 = icmp ult i32 %2589, %2586
  %2592 = icmp ult i32 %2589, %2588
  %2593 = or i1 %2591, %2592
  %2594 = zext i1 %2593 to i8
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2594, i8* %2595, align 1
  %2596 = and i32 %2589, 255
  %2597 = call i32 @llvm.ctpop.i32(i32 %2596)
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  %2600 = xor i8 %2599, 1
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2600, i8* %2601, align 1
  %2602 = xor i32 %2588, %2586
  %2603 = xor i32 %2602, %2589
  %2604 = lshr i32 %2603, 4
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2606, i8* %2607, align 1
  %2608 = icmp eq i32 %2589, 0
  %2609 = zext i1 %2608 to i8
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2609, i8* %2610, align 1
  %2611 = lshr i32 %2589, 31
  %2612 = trunc i32 %2611 to i8
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2612, i8* %2613, align 1
  %2614 = lshr i32 %2586, 31
  %2615 = lshr i32 %2588, 31
  %2616 = xor i32 %2611, %2614
  %2617 = xor i32 %2611, %2615
  %2618 = add i32 %2616, %2617
  %2619 = icmp eq i32 %2618, 2
  %2620 = zext i1 %2619 to i8
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2620, i8* %2621, align 1
  store %struct.Memory* %loadMem_400634, %struct.Memory** %MEMORY
  %loadMem_400637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 33
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 1
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %2627 to i64*
  %2628 = load i64, i64* %RAX.i649
  %2629 = load i64, i64* %PC.i648
  %2630 = add i64 %2629, 3
  store i64 %2630, i64* %PC.i648
  %2631 = and i64 %2628, 4294967295
  %2632 = shl i64 %2631, 6
  %2633 = trunc i64 %2632 to i32
  %2634 = icmp slt i32 %2633, 0
  %2635 = shl i32 %2633, 1
  %2636 = zext i32 %2635 to i64
  store i64 %2636, i64* %RAX.i649, align 8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2638 = zext i1 %2634 to i8
  store i8 %2638, i8* %2637, align 1
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2640 = and i32 %2635, 254
  %2641 = call i32 @llvm.ctpop.i32(i32 %2640)
  %2642 = trunc i32 %2641 to i8
  %2643 = and i8 %2642, 1
  %2644 = xor i8 %2643, 1
  store i8 %2644, i8* %2639, align 1
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2645, align 1
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2647 = icmp eq i32 %2635, 0
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %2646, align 1
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2650 = lshr i32 %2635, 31
  %2651 = trunc i32 %2650 to i8
  store i8 %2651, i8* %2649, align 1
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2652, align 1
  store %struct.Memory* %loadMem_400637, %struct.Memory** %MEMORY
  %loadMem_40063a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2655 to i64*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 5
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RCX.i646 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 15
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %2661 to i64*
  %2662 = load i64, i64* %RBP.i647
  %2663 = sub i64 %2662, 56
  %2664 = load i64, i64* %PC.i645
  %2665 = add i64 %2664, 3
  store i64 %2665, i64* %PC.i645
  %2666 = inttoptr i64 %2663 to i32*
  %2667 = load i32, i32* %2666
  %2668 = zext i32 %2667 to i64
  store i64 %2668, i64* %RCX.i646, align 8
  store %struct.Memory* %loadMem_40063a, %struct.Memory** %MEMORY
  %loadMem_40063d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 33
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2671 to i64*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 5
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %RCX.i643 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 15
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %2677 to i64*
  %2678 = load i64, i64* %RCX.i643
  %2679 = load i64, i64* %RBP.i644
  %2680 = sub i64 %2679, 72
  %2681 = load i64, i64* %PC.i642
  %2682 = add i64 %2681, 3
  store i64 %2682, i64* %PC.i642
  %2683 = trunc i64 %2678 to i32
  %2684 = inttoptr i64 %2680 to i32*
  %2685 = load i32, i32* %2684
  %2686 = add i32 %2685, %2683
  %2687 = zext i32 %2686 to i64
  store i64 %2687, i64* %RCX.i643, align 8
  %2688 = icmp ult i32 %2686, %2683
  %2689 = icmp ult i32 %2686, %2685
  %2690 = or i1 %2688, %2689
  %2691 = zext i1 %2690 to i8
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2691, i8* %2692, align 1
  %2693 = and i32 %2686, 255
  %2694 = call i32 @llvm.ctpop.i32(i32 %2693)
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  %2697 = xor i8 %2696, 1
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2697, i8* %2698, align 1
  %2699 = xor i32 %2685, %2683
  %2700 = xor i32 %2699, %2686
  %2701 = lshr i32 %2700, 4
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2703, i8* %2704, align 1
  %2705 = icmp eq i32 %2686, 0
  %2706 = zext i1 %2705 to i8
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2706, i8* %2707, align 1
  %2708 = lshr i32 %2686, 31
  %2709 = trunc i32 %2708 to i8
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2709, i8* %2710, align 1
  %2711 = lshr i32 %2683, 31
  %2712 = lshr i32 %2685, 31
  %2713 = xor i32 %2708, %2711
  %2714 = xor i32 %2708, %2712
  %2715 = add i32 %2713, %2714
  %2716 = icmp eq i32 %2715, 2
  %2717 = zext i1 %2716 to i8
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2717, i8* %2718, align 1
  store %struct.Memory* %loadMem_40063d, %struct.Memory** %MEMORY
  %loadMem_400640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 33
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %2721 to i64*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 5
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %2724 to i64*
  %2725 = load i64, i64* %RCX.i641
  %2726 = load i64, i64* %PC.i640
  %2727 = add i64 %2726, 3
  store i64 %2727, i64* %PC.i640
  %2728 = and i64 %2725, 4294967295
  %2729 = lshr i64 %2728, 24
  %2730 = trunc i64 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = lshr i64 %2729, 1
  %2733 = trunc i64 %2732 to i32
  %2734 = and i32 %2733, 2147483647
  %2735 = zext i32 %2734 to i64
  store i64 %2735, i64* %RCX.i641, align 8
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2731, i8* %2736, align 1
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2738 = and i32 %2733, 255
  %2739 = call i32 @llvm.ctpop.i32(i32 %2738)
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  %2742 = xor i8 %2741, 1
  store i8 %2742, i8* %2737, align 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2743, align 1
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2745 = icmp eq i32 %2734, 0
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %2744, align 1
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2747, align 1
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2748, align 1
  store %struct.Memory* %loadMem_400640, %struct.Memory** %MEMORY
  %loadMem_400643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 5
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %ECX.i638 = bitcast %union.anon* %2754 to i32*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 1
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %2757 to i64*
  %2758 = load i64, i64* %RAX.i639
  %2759 = load i32, i32* %ECX.i638
  %2760 = zext i32 %2759 to i64
  %2761 = load i64, i64* %PC.i637
  %2762 = add i64 %2761, 2
  store i64 %2762, i64* %PC.i637
  %2763 = or i64 %2760, %2758
  %2764 = trunc i64 %2763 to i32
  %2765 = and i64 %2763, 4294967295
  store i64 %2765, i64* %RAX.i639, align 8
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2766, align 1
  %2767 = and i32 %2764, 255
  %2768 = call i32 @llvm.ctpop.i32(i32 %2767)
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = xor i8 %2770, 1
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2771, i8* %2772, align 1
  %2773 = icmp eq i32 %2764, 0
  %2774 = zext i1 %2773 to i8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2774, i8* %2775, align 1
  %2776 = lshr i32 %2764, 31
  %2777 = trunc i32 %2776 to i8
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2777, i8* %2778, align 1
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2779, align 1
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2780, align 1
  store %struct.Memory* %loadMem_400643, %struct.Memory** %MEMORY
  %loadMem_400645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 1
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 15
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %2789 to i64*
  %2790 = load i64, i64* %RAX.i635
  %2791 = load i64, i64* %RBP.i636
  %2792 = sub i64 %2791, 40
  %2793 = load i64, i64* %PC.i634
  %2794 = add i64 %2793, 3
  store i64 %2794, i64* %PC.i634
  %2795 = trunc i64 %2790 to i32
  %2796 = inttoptr i64 %2792 to i32*
  %2797 = load i32, i32* %2796
  %2798 = xor i32 %2797, %2795
  %2799 = zext i32 %2798 to i64
  store i64 %2799, i64* %RAX.i635, align 8
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2800, align 1
  %2801 = and i32 %2798, 255
  %2802 = call i32 @llvm.ctpop.i32(i32 %2801)
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  %2805 = xor i8 %2804, 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2805, i8* %2806, align 1
  %2807 = icmp eq i32 %2798, 0
  %2808 = zext i1 %2807 to i8
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2808, i8* %2809, align 1
  %2810 = lshr i32 %2798, 31
  %2811 = trunc i32 %2810 to i8
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2811, i8* %2812, align 1
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2813, align 1
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2814, align 1
  store %struct.Memory* %loadMem_400645, %struct.Memory** %MEMORY
  %loadMem_400648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 1
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %EAX.i632 = bitcast %union.anon* %2820 to i32*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 15
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %2823 to i64*
  %2824 = load i64, i64* %RBP.i633
  %2825 = sub i64 %2824, 40
  %2826 = load i32, i32* %EAX.i632
  %2827 = zext i32 %2826 to i64
  %2828 = load i64, i64* %PC.i631
  %2829 = add i64 %2828, 3
  store i64 %2829, i64* %PC.i631
  %2830 = inttoptr i64 %2825 to i32*
  store i32 %2826, i32* %2830
  store %struct.Memory* %loadMem_400648, %struct.Memory** %MEMORY
  %loadMem_40064b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 33
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 1
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 15
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %2839 to i64*
  %2840 = load i64, i64* %RBP.i630
  %2841 = sub i64 %2840, 40
  %2842 = load i64, i64* %PC.i628
  %2843 = add i64 %2842, 3
  store i64 %2843, i64* %PC.i628
  %2844 = inttoptr i64 %2841 to i32*
  %2845 = load i32, i32* %2844
  %2846 = zext i32 %2845 to i64
  store i64 %2846, i64* %RAX.i629, align 8
  store %struct.Memory* %loadMem_40064b, %struct.Memory** %MEMORY
  %loadMem_40064e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 33
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 1
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 15
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %RAX.i626
  %2857 = load i64, i64* %RBP.i627
  %2858 = sub i64 %2857, 56
  %2859 = load i64, i64* %PC.i625
  %2860 = add i64 %2859, 3
  store i64 %2860, i64* %PC.i625
  %2861 = trunc i64 %2856 to i32
  %2862 = inttoptr i64 %2858 to i32*
  %2863 = load i32, i32* %2862
  %2864 = add i32 %2863, %2861
  %2865 = zext i32 %2864 to i64
  store i64 %2865, i64* %RAX.i626, align 8
  %2866 = icmp ult i32 %2864, %2861
  %2867 = icmp ult i32 %2864, %2863
  %2868 = or i1 %2866, %2867
  %2869 = zext i1 %2868 to i8
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2869, i8* %2870, align 1
  %2871 = and i32 %2864, 255
  %2872 = call i32 @llvm.ctpop.i32(i32 %2871)
  %2873 = trunc i32 %2872 to i8
  %2874 = and i8 %2873, 1
  %2875 = xor i8 %2874, 1
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2875, i8* %2876, align 1
  %2877 = xor i32 %2863, %2861
  %2878 = xor i32 %2877, %2864
  %2879 = lshr i32 %2878, 4
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2881, i8* %2882, align 1
  %2883 = icmp eq i32 %2864, 0
  %2884 = zext i1 %2883 to i8
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2884, i8* %2885, align 1
  %2886 = lshr i32 %2864, 31
  %2887 = trunc i32 %2886 to i8
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2887, i8* %2888, align 1
  %2889 = lshr i32 %2861, 31
  %2890 = lshr i32 %2863, 31
  %2891 = xor i32 %2886, %2889
  %2892 = xor i32 %2886, %2890
  %2893 = add i32 %2891, %2892
  %2894 = icmp eq i32 %2893, 2
  %2895 = zext i1 %2894 to i8
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2895, i8* %2896, align 1
  store %struct.Memory* %loadMem_40064e, %struct.Memory** %MEMORY
  %loadMem_400651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 33
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 1
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %RAX.i624
  %2904 = load i64, i64* %PC.i623
  %2905 = add i64 %2904, 3
  store i64 %2905, i64* %PC.i623
  %2906 = and i64 %2903, 4294967295
  %2907 = shl i64 %2906, 8
  %2908 = trunc i64 %2907 to i32
  %2909 = icmp slt i32 %2908, 0
  %2910 = shl i32 %2908, 1
  %2911 = zext i32 %2910 to i64
  store i64 %2911, i64* %RAX.i624, align 8
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2913 = zext i1 %2909 to i8
  store i8 %2913, i8* %2912, align 1
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2914, align 1
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2915, align 1
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2917 = icmp eq i32 %2910, 0
  %2918 = zext i1 %2917 to i8
  store i8 %2918, i8* %2916, align 1
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2920 = lshr i32 %2910, 31
  %2921 = trunc i32 %2920 to i8
  store i8 %2921, i8* %2919, align 1
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2922, align 1
  store %struct.Memory* %loadMem_400651, %struct.Memory** %MEMORY
  %loadMem_400654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 5
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RCX.i621 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 15
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %2931 to i64*
  %2932 = load i64, i64* %RBP.i622
  %2933 = sub i64 %2932, 40
  %2934 = load i64, i64* %PC.i620
  %2935 = add i64 %2934, 3
  store i64 %2935, i64* %PC.i620
  %2936 = inttoptr i64 %2933 to i32*
  %2937 = load i32, i32* %2936
  %2938 = zext i32 %2937 to i64
  store i64 %2938, i64* %RCX.i621, align 8
  store %struct.Memory* %loadMem_400654, %struct.Memory** %MEMORY
  %loadMem_400657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 33
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 5
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %2944 to i64*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 15
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %2947 to i64*
  %2948 = load i64, i64* %RCX.i618
  %2949 = load i64, i64* %RBP.i619
  %2950 = sub i64 %2949, 56
  %2951 = load i64, i64* %PC.i617
  %2952 = add i64 %2951, 3
  store i64 %2952, i64* %PC.i617
  %2953 = trunc i64 %2948 to i32
  %2954 = inttoptr i64 %2950 to i32*
  %2955 = load i32, i32* %2954
  %2956 = add i32 %2955, %2953
  %2957 = zext i32 %2956 to i64
  store i64 %2957, i64* %RCX.i618, align 8
  %2958 = icmp ult i32 %2956, %2953
  %2959 = icmp ult i32 %2956, %2955
  %2960 = or i1 %2958, %2959
  %2961 = zext i1 %2960 to i8
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2961, i8* %2962, align 1
  %2963 = and i32 %2956, 255
  %2964 = call i32 @llvm.ctpop.i32(i32 %2963)
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  %2967 = xor i8 %2966, 1
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2967, i8* %2968, align 1
  %2969 = xor i32 %2955, %2953
  %2970 = xor i32 %2969, %2956
  %2971 = lshr i32 %2970, 4
  %2972 = trunc i32 %2971 to i8
  %2973 = and i8 %2972, 1
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2973, i8* %2974, align 1
  %2975 = icmp eq i32 %2956, 0
  %2976 = zext i1 %2975 to i8
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2976, i8* %2977, align 1
  %2978 = lshr i32 %2956, 31
  %2979 = trunc i32 %2978 to i8
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2979, i8* %2980, align 1
  %2981 = lshr i32 %2953, 31
  %2982 = lshr i32 %2955, 31
  %2983 = xor i32 %2978, %2981
  %2984 = xor i32 %2978, %2982
  %2985 = add i32 %2983, %2984
  %2986 = icmp eq i32 %2985, 2
  %2987 = zext i1 %2986 to i8
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2987, i8* %2988, align 1
  store %struct.Memory* %loadMem_400657, %struct.Memory** %MEMORY
  %loadMem_40065a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 5
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RCX.i616 = bitcast %union.anon* %2994 to i64*
  %2995 = load i64, i64* %RCX.i616
  %2996 = load i64, i64* %PC.i615
  %2997 = add i64 %2996, 3
  store i64 %2997, i64* %PC.i615
  %2998 = and i64 %2995, 4294967295
  %2999 = lshr i64 %2998, 22
  %3000 = trunc i64 %2999 to i8
  %3001 = and i8 %3000, 1
  %3002 = lshr i64 %2999, 1
  %3003 = trunc i64 %3002 to i32
  %3004 = and i32 %3003, 2147483647
  %3005 = zext i32 %3004 to i64
  store i64 %3005, i64* %RCX.i616, align 8
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3001, i8* %3006, align 1
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3008 = and i32 %3003, 255
  %3009 = call i32 @llvm.ctpop.i32(i32 %3008)
  %3010 = trunc i32 %3009 to i8
  %3011 = and i8 %3010, 1
  %3012 = xor i8 %3011, 1
  store i8 %3012, i8* %3007, align 1
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3013, align 1
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3015 = icmp eq i32 %3004, 0
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %3014, align 1
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3017, align 1
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3018, align 1
  store %struct.Memory* %loadMem_40065a, %struct.Memory** %MEMORY
  %loadMem_40065d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 5
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %ECX.i613 = bitcast %union.anon* %3024 to i32*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 1
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %3027 to i64*
  %3028 = load i64, i64* %RAX.i614
  %3029 = load i32, i32* %ECX.i613
  %3030 = zext i32 %3029 to i64
  %3031 = load i64, i64* %PC.i612
  %3032 = add i64 %3031, 2
  store i64 %3032, i64* %PC.i612
  %3033 = or i64 %3030, %3028
  %3034 = trunc i64 %3033 to i32
  %3035 = and i64 %3033, 4294967295
  store i64 %3035, i64* %RAX.i614, align 8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3036, align 1
  %3037 = and i32 %3034, 255
  %3038 = call i32 @llvm.ctpop.i32(i32 %3037)
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  %3041 = xor i8 %3040, 1
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3041, i8* %3042, align 1
  %3043 = icmp eq i32 %3034, 0
  %3044 = zext i1 %3043 to i8
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3044, i8* %3045, align 1
  %3046 = lshr i32 %3034, 31
  %3047 = trunc i32 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3047, i8* %3048, align 1
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3049, align 1
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3050, align 1
  store %struct.Memory* %loadMem_40065d, %struct.Memory** %MEMORY
  %loadMem_40065f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 33
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %3053 to i64*
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 1
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %RAX.i610 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 15
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %3059 to i64*
  %3060 = load i64, i64* %RAX.i610
  %3061 = load i64, i64* %RBP.i611
  %3062 = sub i64 %3061, 88
  %3063 = load i64, i64* %PC.i609
  %3064 = add i64 %3063, 3
  store i64 %3064, i64* %PC.i609
  %3065 = trunc i64 %3060 to i32
  %3066 = inttoptr i64 %3062 to i32*
  %3067 = load i32, i32* %3066
  %3068 = xor i32 %3067, %3065
  %3069 = zext i32 %3068 to i64
  store i64 %3069, i64* %RAX.i610, align 8
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3070, align 1
  %3071 = and i32 %3068, 255
  %3072 = call i32 @llvm.ctpop.i32(i32 %3071)
  %3073 = trunc i32 %3072 to i8
  %3074 = and i8 %3073, 1
  %3075 = xor i8 %3074, 1
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3075, i8* %3076, align 1
  %3077 = icmp eq i32 %3068, 0
  %3078 = zext i1 %3077 to i8
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3078, i8* %3079, align 1
  %3080 = lshr i32 %3068, 31
  %3081 = trunc i32 %3080 to i8
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3081, i8* %3082, align 1
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3083, align 1
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3084, align 1
  store %struct.Memory* %loadMem_40065f, %struct.Memory** %MEMORY
  %loadMem_400662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 33
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %3087 to i64*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 1
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %EAX.i607 = bitcast %union.anon* %3090 to i32*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 15
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %3093 to i64*
  %3094 = load i64, i64* %RBP.i608
  %3095 = sub i64 %3094, 88
  %3096 = load i32, i32* %EAX.i607
  %3097 = zext i32 %3096 to i64
  %3098 = load i64, i64* %PC.i606
  %3099 = add i64 %3098, 3
  store i64 %3099, i64* %PC.i606
  %3100 = inttoptr i64 %3095 to i32*
  store i32 %3096, i32* %3100
  store %struct.Memory* %loadMem_400662, %struct.Memory** %MEMORY
  %loadMem_400665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 1
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 15
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %3109 to i64*
  %3110 = load i64, i64* %RBP.i605
  %3111 = sub i64 %3110, 88
  %3112 = load i64, i64* %PC.i603
  %3113 = add i64 %3112, 3
  store i64 %3113, i64* %PC.i603
  %3114 = inttoptr i64 %3111 to i32*
  %3115 = load i32, i32* %3114
  %3116 = zext i32 %3115 to i64
  store i64 %3116, i64* %RAX.i604, align 8
  store %struct.Memory* %loadMem_400665, %struct.Memory** %MEMORY
  %loadMem_400668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 1
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 15
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %RAX.i601
  %3127 = load i64, i64* %RBP.i602
  %3128 = sub i64 %3127, 40
  %3129 = load i64, i64* %PC.i600
  %3130 = add i64 %3129, 3
  store i64 %3130, i64* %PC.i600
  %3131 = trunc i64 %3126 to i32
  %3132 = inttoptr i64 %3128 to i32*
  %3133 = load i32, i32* %3132
  %3134 = add i32 %3133, %3131
  %3135 = zext i32 %3134 to i64
  store i64 %3135, i64* %RAX.i601, align 8
  %3136 = icmp ult i32 %3134, %3131
  %3137 = icmp ult i32 %3134, %3133
  %3138 = or i1 %3136, %3137
  %3139 = zext i1 %3138 to i8
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3139, i8* %3140, align 1
  %3141 = and i32 %3134, 255
  %3142 = call i32 @llvm.ctpop.i32(i32 %3141)
  %3143 = trunc i32 %3142 to i8
  %3144 = and i8 %3143, 1
  %3145 = xor i8 %3144, 1
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3145, i8* %3146, align 1
  %3147 = xor i32 %3133, %3131
  %3148 = xor i32 %3147, %3134
  %3149 = lshr i32 %3148, 4
  %3150 = trunc i32 %3149 to i8
  %3151 = and i8 %3150, 1
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3151, i8* %3152, align 1
  %3153 = icmp eq i32 %3134, 0
  %3154 = zext i1 %3153 to i8
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3154, i8* %3155, align 1
  %3156 = lshr i32 %3134, 31
  %3157 = trunc i32 %3156 to i8
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3157, i8* %3158, align 1
  %3159 = lshr i32 %3131, 31
  %3160 = lshr i32 %3133, 31
  %3161 = xor i32 %3156, %3159
  %3162 = xor i32 %3156, %3160
  %3163 = add i32 %3161, %3162
  %3164 = icmp eq i32 %3163, 2
  %3165 = zext i1 %3164 to i8
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3165, i8* %3166, align 1
  store %struct.Memory* %loadMem_400668, %struct.Memory** %MEMORY
  %loadMem_40066b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 33
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 1
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %3172 to i64*
  %3173 = load i64, i64* %RAX.i599
  %3174 = load i64, i64* %PC.i598
  %3175 = add i64 %3174, 3
  store i64 %3175, i64* %PC.i598
  %3176 = and i64 %3173, 4294967295
  %3177 = shl i64 %3176, 12
  %3178 = trunc i64 %3177 to i32
  %3179 = icmp slt i32 %3178, 0
  %3180 = shl i32 %3178, 1
  %3181 = zext i32 %3180 to i64
  store i64 %3181, i64* %RAX.i599, align 8
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3183 = zext i1 %3179 to i8
  store i8 %3183, i8* %3182, align 1
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3184, align 1
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3185, align 1
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3187 = icmp eq i32 %3180, 0
  %3188 = zext i1 %3187 to i8
  store i8 %3188, i8* %3186, align 1
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3190 = lshr i32 %3180, 31
  %3191 = trunc i32 %3190 to i8
  store i8 %3191, i8* %3189, align 1
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3192, align 1
  store %struct.Memory* %loadMem_40066b, %struct.Memory** %MEMORY
  %loadMem_40066e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 33
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 5
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 15
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %3201 to i64*
  %3202 = load i64, i64* %RBP.i597
  %3203 = sub i64 %3202, 88
  %3204 = load i64, i64* %PC.i595
  %3205 = add i64 %3204, 3
  store i64 %3205, i64* %PC.i595
  %3206 = inttoptr i64 %3203 to i32*
  %3207 = load i32, i32* %3206
  %3208 = zext i32 %3207 to i64
  store i64 %3208, i64* %RCX.i596, align 8
  store %struct.Memory* %loadMem_40066e, %struct.Memory** %MEMORY
  %loadMem_400671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 5
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %RCX.i593 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 15
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %3217 to i64*
  %3218 = load i64, i64* %RCX.i593
  %3219 = load i64, i64* %RBP.i594
  %3220 = sub i64 %3219, 40
  %3221 = load i64, i64* %PC.i592
  %3222 = add i64 %3221, 3
  store i64 %3222, i64* %PC.i592
  %3223 = trunc i64 %3218 to i32
  %3224 = inttoptr i64 %3220 to i32*
  %3225 = load i32, i32* %3224
  %3226 = add i32 %3225, %3223
  %3227 = zext i32 %3226 to i64
  store i64 %3227, i64* %RCX.i593, align 8
  %3228 = icmp ult i32 %3226, %3223
  %3229 = icmp ult i32 %3226, %3225
  %3230 = or i1 %3228, %3229
  %3231 = zext i1 %3230 to i8
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3231, i8* %3232, align 1
  %3233 = and i32 %3226, 255
  %3234 = call i32 @llvm.ctpop.i32(i32 %3233)
  %3235 = trunc i32 %3234 to i8
  %3236 = and i8 %3235, 1
  %3237 = xor i8 %3236, 1
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3237, i8* %3238, align 1
  %3239 = xor i32 %3225, %3223
  %3240 = xor i32 %3239, %3226
  %3241 = lshr i32 %3240, 4
  %3242 = trunc i32 %3241 to i8
  %3243 = and i8 %3242, 1
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3243, i8* %3244, align 1
  %3245 = icmp eq i32 %3226, 0
  %3246 = zext i1 %3245 to i8
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3246, i8* %3247, align 1
  %3248 = lshr i32 %3226, 31
  %3249 = trunc i32 %3248 to i8
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3249, i8* %3250, align 1
  %3251 = lshr i32 %3223, 31
  %3252 = lshr i32 %3225, 31
  %3253 = xor i32 %3248, %3251
  %3254 = xor i32 %3248, %3252
  %3255 = add i32 %3253, %3254
  %3256 = icmp eq i32 %3255, 2
  %3257 = zext i1 %3256 to i8
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3257, i8* %3258, align 1
  store %struct.Memory* %loadMem_400671, %struct.Memory** %MEMORY
  %loadMem_400674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 33
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 5
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RCX.i591 = bitcast %union.anon* %3264 to i64*
  %3265 = load i64, i64* %RCX.i591
  %3266 = load i64, i64* %PC.i590
  %3267 = add i64 %3266, 3
  store i64 %3267, i64* %PC.i590
  %3268 = and i64 %3265, 4294967295
  %3269 = lshr i64 %3268, 18
  %3270 = trunc i64 %3269 to i8
  %3271 = and i8 %3270, 1
  %3272 = lshr i64 %3269, 1
  %3273 = trunc i64 %3272 to i32
  %3274 = and i32 %3273, 2147483647
  %3275 = zext i32 %3274 to i64
  store i64 %3275, i64* %RCX.i591, align 8
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3271, i8* %3276, align 1
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3278 = and i32 %3273, 255
  %3279 = call i32 @llvm.ctpop.i32(i32 %3278)
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  %3282 = xor i8 %3281, 1
  store i8 %3282, i8* %3277, align 1
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3283, align 1
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3285 = icmp eq i32 %3274, 0
  %3286 = zext i1 %3285 to i8
  store i8 %3286, i8* %3284, align 1
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3287, align 1
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3288, align 1
  store %struct.Memory* %loadMem_400674, %struct.Memory** %MEMORY
  %loadMem_400677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 33
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 5
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %ECX.i588 = bitcast %union.anon* %3294 to i32*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 1
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %3297 to i64*
  %3298 = load i64, i64* %RAX.i589
  %3299 = load i32, i32* %ECX.i588
  %3300 = zext i32 %3299 to i64
  %3301 = load i64, i64* %PC.i587
  %3302 = add i64 %3301, 2
  store i64 %3302, i64* %PC.i587
  %3303 = or i64 %3300, %3298
  %3304 = trunc i64 %3303 to i32
  %3305 = and i64 %3303, 4294967295
  store i64 %3305, i64* %RAX.i589, align 8
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3306, align 1
  %3307 = and i32 %3304, 255
  %3308 = call i32 @llvm.ctpop.i32(i32 %3307)
  %3309 = trunc i32 %3308 to i8
  %3310 = and i8 %3309, 1
  %3311 = xor i8 %3310, 1
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3311, i8* %3312, align 1
  %3313 = icmp eq i32 %3304, 0
  %3314 = zext i1 %3313 to i8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3314, i8* %3315, align 1
  %3316 = lshr i32 %3304, 31
  %3317 = trunc i32 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3317, i8* %3318, align 1
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3319, align 1
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3320, align 1
  store %struct.Memory* %loadMem_400677, %struct.Memory** %MEMORY
  %loadMem_400679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 1
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 15
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %RAX.i585
  %3331 = load i64, i64* %RBP.i586
  %3332 = sub i64 %3331, 72
  %3333 = load i64, i64* %PC.i584
  %3334 = add i64 %3333, 3
  store i64 %3334, i64* %PC.i584
  %3335 = trunc i64 %3330 to i32
  %3336 = inttoptr i64 %3332 to i32*
  %3337 = load i32, i32* %3336
  %3338 = xor i32 %3337, %3335
  %3339 = zext i32 %3338 to i64
  store i64 %3339, i64* %RAX.i585, align 8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3340, align 1
  %3341 = and i32 %3338, 255
  %3342 = call i32 @llvm.ctpop.i32(i32 %3341)
  %3343 = trunc i32 %3342 to i8
  %3344 = and i8 %3343, 1
  %3345 = xor i8 %3344, 1
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3345, i8* %3346, align 1
  %3347 = icmp eq i32 %3338, 0
  %3348 = zext i1 %3347 to i8
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3348, i8* %3349, align 1
  %3350 = lshr i32 %3338, 31
  %3351 = trunc i32 %3350 to i8
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3351, i8* %3352, align 1
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3353, align 1
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3354, align 1
  store %struct.Memory* %loadMem_400679, %struct.Memory** %MEMORY
  %loadMem_40067c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 33
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %3357 to i64*
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 1
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %EAX.i582 = bitcast %union.anon* %3360 to i32*
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 15
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %3363 to i64*
  %3364 = load i64, i64* %RBP.i583
  %3365 = sub i64 %3364, 72
  %3366 = load i32, i32* %EAX.i582
  %3367 = zext i32 %3366 to i64
  %3368 = load i64, i64* %PC.i581
  %3369 = add i64 %3368, 3
  store i64 %3369, i64* %PC.i581
  %3370 = inttoptr i64 %3365 to i32*
  store i32 %3366, i32* %3370
  store %struct.Memory* %loadMem_40067c, %struct.Memory** %MEMORY
  %loadMem_40067f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3373 to i64*
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 1
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %3376 to i64*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 15
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %3379 to i64*
  %3380 = load i64, i64* %RBP.i580
  %3381 = sub i64 %3380, 72
  %3382 = load i64, i64* %PC.i578
  %3383 = add i64 %3382, 3
  store i64 %3383, i64* %PC.i578
  %3384 = inttoptr i64 %3381 to i32*
  %3385 = load i32, i32* %3384
  %3386 = zext i32 %3385 to i64
  store i64 %3386, i64* %RAX.i579, align 8
  store %struct.Memory* %loadMem_40067f, %struct.Memory** %MEMORY
  %loadMem_400682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 33
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3389 to i64*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 1
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 15
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %3395 to i64*
  %3396 = load i64, i64* %RAX.i576
  %3397 = load i64, i64* %RBP.i577
  %3398 = sub i64 %3397, 88
  %3399 = load i64, i64* %PC.i575
  %3400 = add i64 %3399, 3
  store i64 %3400, i64* %PC.i575
  %3401 = trunc i64 %3396 to i32
  %3402 = inttoptr i64 %3398 to i32*
  %3403 = load i32, i32* %3402
  %3404 = add i32 %3403, %3401
  %3405 = zext i32 %3404 to i64
  store i64 %3405, i64* %RAX.i576, align 8
  %3406 = icmp ult i32 %3404, %3401
  %3407 = icmp ult i32 %3404, %3403
  %3408 = or i1 %3406, %3407
  %3409 = zext i1 %3408 to i8
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3409, i8* %3410, align 1
  %3411 = and i32 %3404, 255
  %3412 = call i32 @llvm.ctpop.i32(i32 %3411)
  %3413 = trunc i32 %3412 to i8
  %3414 = and i8 %3413, 1
  %3415 = xor i8 %3414, 1
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3415, i8* %3416, align 1
  %3417 = xor i32 %3403, %3401
  %3418 = xor i32 %3417, %3404
  %3419 = lshr i32 %3418, 4
  %3420 = trunc i32 %3419 to i8
  %3421 = and i8 %3420, 1
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3421, i8* %3422, align 1
  %3423 = icmp eq i32 %3404, 0
  %3424 = zext i1 %3423 to i8
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3424, i8* %3425, align 1
  %3426 = lshr i32 %3404, 31
  %3427 = trunc i32 %3426 to i8
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3427, i8* %3428, align 1
  %3429 = lshr i32 %3401, 31
  %3430 = lshr i32 %3403, 31
  %3431 = xor i32 %3426, %3429
  %3432 = xor i32 %3426, %3430
  %3433 = add i32 %3431, %3432
  %3434 = icmp eq i32 %3433, 2
  %3435 = zext i1 %3434 to i8
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3435, i8* %3436, align 1
  store %struct.Memory* %loadMem_400682, %struct.Memory** %MEMORY
  %loadMem_400685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 33
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 1
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RAX.i574 = bitcast %union.anon* %3442 to i64*
  %3443 = load i64, i64* %RAX.i574
  %3444 = load i64, i64* %PC.i573
  %3445 = add i64 %3444, 3
  store i64 %3445, i64* %PC.i573
  %3446 = and i64 %3443, 4294967295
  %3447 = shl i64 %3446, 17
  %3448 = trunc i64 %3447 to i32
  %3449 = icmp slt i32 %3448, 0
  %3450 = shl i32 %3448, 1
  %3451 = zext i32 %3450 to i64
  store i64 %3451, i64* %RAX.i574, align 8
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3453 = zext i1 %3449 to i8
  store i8 %3453, i8* %3452, align 1
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3454, align 1
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3455, align 1
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3457 = icmp eq i32 %3450, 0
  %3458 = zext i1 %3457 to i8
  store i8 %3458, i8* %3456, align 1
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3460 = lshr i32 %3450, 31
  %3461 = trunc i32 %3460 to i8
  store i8 %3461, i8* %3459, align 1
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3462, align 1
  store %struct.Memory* %loadMem_400685, %struct.Memory** %MEMORY
  %loadMem_400688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 33
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3465 to i64*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 5
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %RCX.i571 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 15
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %3471 to i64*
  %3472 = load i64, i64* %RBP.i572
  %3473 = sub i64 %3472, 72
  %3474 = load i64, i64* %PC.i570
  %3475 = add i64 %3474, 3
  store i64 %3475, i64* %PC.i570
  %3476 = inttoptr i64 %3473 to i32*
  %3477 = load i32, i32* %3476
  %3478 = zext i32 %3477 to i64
  store i64 %3478, i64* %RCX.i571, align 8
  store %struct.Memory* %loadMem_400688, %struct.Memory** %MEMORY
  %loadMem_40068b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 33
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3481 to i64*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 5
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 15
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %3487 to i64*
  %3488 = load i64, i64* %RCX.i568
  %3489 = load i64, i64* %RBP.i569
  %3490 = sub i64 %3489, 88
  %3491 = load i64, i64* %PC.i567
  %3492 = add i64 %3491, 3
  store i64 %3492, i64* %PC.i567
  %3493 = trunc i64 %3488 to i32
  %3494 = inttoptr i64 %3490 to i32*
  %3495 = load i32, i32* %3494
  %3496 = add i32 %3495, %3493
  %3497 = zext i32 %3496 to i64
  store i64 %3497, i64* %RCX.i568, align 8
  %3498 = icmp ult i32 %3496, %3493
  %3499 = icmp ult i32 %3496, %3495
  %3500 = or i1 %3498, %3499
  %3501 = zext i1 %3500 to i8
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3501, i8* %3502, align 1
  %3503 = and i32 %3496, 255
  %3504 = call i32 @llvm.ctpop.i32(i32 %3503)
  %3505 = trunc i32 %3504 to i8
  %3506 = and i8 %3505, 1
  %3507 = xor i8 %3506, 1
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3507, i8* %3508, align 1
  %3509 = xor i32 %3495, %3493
  %3510 = xor i32 %3509, %3496
  %3511 = lshr i32 %3510, 4
  %3512 = trunc i32 %3511 to i8
  %3513 = and i8 %3512, 1
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3513, i8* %3514, align 1
  %3515 = icmp eq i32 %3496, 0
  %3516 = zext i1 %3515 to i8
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3516, i8* %3517, align 1
  %3518 = lshr i32 %3496, 31
  %3519 = trunc i32 %3518 to i8
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3519, i8* %3520, align 1
  %3521 = lshr i32 %3493, 31
  %3522 = lshr i32 %3495, 31
  %3523 = xor i32 %3518, %3521
  %3524 = xor i32 %3518, %3522
  %3525 = add i32 %3523, %3524
  %3526 = icmp eq i32 %3525, 2
  %3527 = zext i1 %3526 to i8
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3527, i8* %3528, align 1
  store %struct.Memory* %loadMem_40068b, %struct.Memory** %MEMORY
  %loadMem_40068e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 33
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3531 to i64*
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 5
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %3534 to i64*
  %3535 = load i64, i64* %RCX.i566
  %3536 = load i64, i64* %PC.i565
  %3537 = add i64 %3536, 3
  store i64 %3537, i64* %PC.i565
  %3538 = and i64 %3535, 4294967295
  %3539 = lshr i64 %3538, 13
  %3540 = trunc i64 %3539 to i8
  %3541 = and i8 %3540, 1
  %3542 = lshr i64 %3539, 1
  %3543 = trunc i64 %3542 to i32
  %3544 = and i32 %3543, 2147483647
  %3545 = zext i32 %3544 to i64
  store i64 %3545, i64* %RCX.i566, align 8
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3541, i8* %3546, align 1
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3548 = and i32 %3543, 255
  %3549 = call i32 @llvm.ctpop.i32(i32 %3548)
  %3550 = trunc i32 %3549 to i8
  %3551 = and i8 %3550, 1
  %3552 = xor i8 %3551, 1
  store i8 %3552, i8* %3547, align 1
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3553, align 1
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3555 = icmp eq i32 %3544, 0
  %3556 = zext i1 %3555 to i8
  store i8 %3556, i8* %3554, align 1
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3557, align 1
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3558, align 1
  store %struct.Memory* %loadMem_40068e, %struct.Memory** %MEMORY
  %loadMem_400691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 5
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %ECX.i563 = bitcast %union.anon* %3564 to i32*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 1
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %RAX.i564
  %3569 = load i32, i32* %ECX.i563
  %3570 = zext i32 %3569 to i64
  %3571 = load i64, i64* %PC.i562
  %3572 = add i64 %3571, 2
  store i64 %3572, i64* %PC.i562
  %3573 = or i64 %3570, %3568
  %3574 = trunc i64 %3573 to i32
  %3575 = and i64 %3573, 4294967295
  store i64 %3575, i64* %RAX.i564, align 8
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3576, align 1
  %3577 = and i32 %3574, 255
  %3578 = call i32 @llvm.ctpop.i32(i32 %3577)
  %3579 = trunc i32 %3578 to i8
  %3580 = and i8 %3579, 1
  %3581 = xor i8 %3580, 1
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3581, i8* %3582, align 1
  %3583 = icmp eq i32 %3574, 0
  %3584 = zext i1 %3583 to i8
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3584, i8* %3585, align 1
  %3586 = lshr i32 %3574, 31
  %3587 = trunc i32 %3586 to i8
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3587, i8* %3588, align 1
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3589, align 1
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3590, align 1
  store %struct.Memory* %loadMem_400691, %struct.Memory** %MEMORY
  %loadMem_400693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 33
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 1
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 15
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %3599 to i64*
  %3600 = load i64, i64* %RAX.i560
  %3601 = load i64, i64* %RBP.i561
  %3602 = sub i64 %3601, 56
  %3603 = load i64, i64* %PC.i559
  %3604 = add i64 %3603, 3
  store i64 %3604, i64* %PC.i559
  %3605 = trunc i64 %3600 to i32
  %3606 = inttoptr i64 %3602 to i32*
  %3607 = load i32, i32* %3606
  %3608 = xor i32 %3607, %3605
  %3609 = zext i32 %3608 to i64
  store i64 %3609, i64* %RAX.i560, align 8
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3610, align 1
  %3611 = and i32 %3608, 255
  %3612 = call i32 @llvm.ctpop.i32(i32 %3611)
  %3613 = trunc i32 %3612 to i8
  %3614 = and i8 %3613, 1
  %3615 = xor i8 %3614, 1
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3615, i8* %3616, align 1
  %3617 = icmp eq i32 %3608, 0
  %3618 = zext i1 %3617 to i8
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3618, i8* %3619, align 1
  %3620 = lshr i32 %3608, 31
  %3621 = trunc i32 %3620 to i8
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3621, i8* %3622, align 1
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3623, align 1
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3624, align 1
  store %struct.Memory* %loadMem_400693, %struct.Memory** %MEMORY
  %loadMem_400696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 33
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3627 to i64*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 1
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %EAX.i557 = bitcast %union.anon* %3630 to i32*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 15
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %3633 to i64*
  %3634 = load i64, i64* %RBP.i558
  %3635 = sub i64 %3634, 56
  %3636 = load i32, i32* %EAX.i557
  %3637 = zext i32 %3636 to i64
  %3638 = load i64, i64* %PC.i556
  %3639 = add i64 %3638, 3
  store i64 %3639, i64* %PC.i556
  %3640 = inttoptr i64 %3635 to i32*
  store i32 %3636, i32* %3640
  store %struct.Memory* %loadMem_400696, %struct.Memory** %MEMORY
  %loadMem_400699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 33
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3643 to i64*
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 1
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 15
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %3649 to i64*
  %3650 = load i64, i64* %RBP.i555
  %3651 = sub i64 %3650, 36
  %3652 = load i64, i64* %PC.i553
  %3653 = add i64 %3652, 3
  store i64 %3653, i64* %PC.i553
  %3654 = inttoptr i64 %3651 to i32*
  %3655 = load i32, i32* %3654
  %3656 = zext i32 %3655 to i64
  store i64 %3656, i64* %RAX.i554, align 8
  store %struct.Memory* %loadMem_400699, %struct.Memory** %MEMORY
  %loadMem_40069c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 33
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %3659 to i64*
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 1
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %3662 to i64*
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 15
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %3665 to i64*
  %3666 = load i64, i64* %RAX.i551
  %3667 = load i64, i64* %RBP.i552
  %3668 = sub i64 %3667, 52
  %3669 = load i64, i64* %PC.i550
  %3670 = add i64 %3669, 3
  store i64 %3670, i64* %PC.i550
  %3671 = trunc i64 %3666 to i32
  %3672 = inttoptr i64 %3668 to i32*
  %3673 = load i32, i32* %3672
  %3674 = add i32 %3673, %3671
  %3675 = zext i32 %3674 to i64
  store i64 %3675, i64* %RAX.i551, align 8
  %3676 = icmp ult i32 %3674, %3671
  %3677 = icmp ult i32 %3674, %3673
  %3678 = or i1 %3676, %3677
  %3679 = zext i1 %3678 to i8
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3679, i8* %3680, align 1
  %3681 = and i32 %3674, 255
  %3682 = call i32 @llvm.ctpop.i32(i32 %3681)
  %3683 = trunc i32 %3682 to i8
  %3684 = and i8 %3683, 1
  %3685 = xor i8 %3684, 1
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3685, i8* %3686, align 1
  %3687 = xor i32 %3673, %3671
  %3688 = xor i32 %3687, %3674
  %3689 = lshr i32 %3688, 4
  %3690 = trunc i32 %3689 to i8
  %3691 = and i8 %3690, 1
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3691, i8* %3692, align 1
  %3693 = icmp eq i32 %3674, 0
  %3694 = zext i1 %3693 to i8
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3694, i8* %3695, align 1
  %3696 = lshr i32 %3674, 31
  %3697 = trunc i32 %3696 to i8
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3697, i8* %3698, align 1
  %3699 = lshr i32 %3671, 31
  %3700 = lshr i32 %3673, 31
  %3701 = xor i32 %3696, %3699
  %3702 = xor i32 %3696, %3700
  %3703 = add i32 %3701, %3702
  %3704 = icmp eq i32 %3703, 2
  %3705 = zext i1 %3704 to i8
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3705, i8* %3706, align 1
  store %struct.Memory* %loadMem_40069c, %struct.Memory** %MEMORY
  %loadMem_40069f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 1
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %3712 to i64*
  %3713 = load i64, i64* %RAX.i549
  %3714 = load i64, i64* %PC.i548
  %3715 = add i64 %3714, 3
  store i64 %3715, i64* %PC.i548
  %3716 = and i64 %3713, 4294967295
  %3717 = shl i64 %3716, 6
  %3718 = trunc i64 %3717 to i32
  %3719 = icmp slt i32 %3718, 0
  %3720 = shl i32 %3718, 1
  %3721 = zext i32 %3720 to i64
  store i64 %3721, i64* %RAX.i549, align 8
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3723 = zext i1 %3719 to i8
  store i8 %3723, i8* %3722, align 1
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3725 = and i32 %3720, 254
  %3726 = call i32 @llvm.ctpop.i32(i32 %3725)
  %3727 = trunc i32 %3726 to i8
  %3728 = and i8 %3727, 1
  %3729 = xor i8 %3728, 1
  store i8 %3729, i8* %3724, align 1
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3730, align 1
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3732 = icmp eq i32 %3720, 0
  %3733 = zext i1 %3732 to i8
  store i8 %3733, i8* %3731, align 1
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3735 = lshr i32 %3720, 31
  %3736 = trunc i32 %3735 to i8
  store i8 %3736, i8* %3734, align 1
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3737, align 1
  store %struct.Memory* %loadMem_40069f, %struct.Memory** %MEMORY
  %loadMem_4006a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 33
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3740 to i64*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 5
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RCX.i546 = bitcast %union.anon* %3743 to i64*
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 15
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %3746 to i64*
  %3747 = load i64, i64* %RBP.i547
  %3748 = sub i64 %3747, 36
  %3749 = load i64, i64* %PC.i545
  %3750 = add i64 %3749, 3
  store i64 %3750, i64* %PC.i545
  %3751 = inttoptr i64 %3748 to i32*
  %3752 = load i32, i32* %3751
  %3753 = zext i32 %3752 to i64
  store i64 %3753, i64* %RCX.i546, align 8
  store %struct.Memory* %loadMem_4006a2, %struct.Memory** %MEMORY
  %loadMem_4006a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 33
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 5
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RCX.i543 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 15
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %3762 to i64*
  %3763 = load i64, i64* %RCX.i543
  %3764 = load i64, i64* %RBP.i544
  %3765 = sub i64 %3764, 52
  %3766 = load i64, i64* %PC.i542
  %3767 = add i64 %3766, 3
  store i64 %3767, i64* %PC.i542
  %3768 = trunc i64 %3763 to i32
  %3769 = inttoptr i64 %3765 to i32*
  %3770 = load i32, i32* %3769
  %3771 = add i32 %3770, %3768
  %3772 = zext i32 %3771 to i64
  store i64 %3772, i64* %RCX.i543, align 8
  %3773 = icmp ult i32 %3771, %3768
  %3774 = icmp ult i32 %3771, %3770
  %3775 = or i1 %3773, %3774
  %3776 = zext i1 %3775 to i8
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3776, i8* %3777, align 1
  %3778 = and i32 %3771, 255
  %3779 = call i32 @llvm.ctpop.i32(i32 %3778)
  %3780 = trunc i32 %3779 to i8
  %3781 = and i8 %3780, 1
  %3782 = xor i8 %3781, 1
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3782, i8* %3783, align 1
  %3784 = xor i32 %3770, %3768
  %3785 = xor i32 %3784, %3771
  %3786 = lshr i32 %3785, 4
  %3787 = trunc i32 %3786 to i8
  %3788 = and i8 %3787, 1
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3788, i8* %3789, align 1
  %3790 = icmp eq i32 %3771, 0
  %3791 = zext i1 %3790 to i8
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3791, i8* %3792, align 1
  %3793 = lshr i32 %3771, 31
  %3794 = trunc i32 %3793 to i8
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3794, i8* %3795, align 1
  %3796 = lshr i32 %3768, 31
  %3797 = lshr i32 %3770, 31
  %3798 = xor i32 %3793, %3796
  %3799 = xor i32 %3793, %3797
  %3800 = add i32 %3798, %3799
  %3801 = icmp eq i32 %3800, 2
  %3802 = zext i1 %3801 to i8
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3802, i8* %3803, align 1
  store %struct.Memory* %loadMem_4006a5, %struct.Memory** %MEMORY
  %loadMem_4006a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 33
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3806 to i64*
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 5
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %RCX.i541 = bitcast %union.anon* %3809 to i64*
  %3810 = load i64, i64* %RCX.i541
  %3811 = load i64, i64* %PC.i540
  %3812 = add i64 %3811, 3
  store i64 %3812, i64* %PC.i540
  %3813 = and i64 %3810, 4294967295
  %3814 = lshr i64 %3813, 24
  %3815 = trunc i64 %3814 to i8
  %3816 = and i8 %3815, 1
  %3817 = lshr i64 %3814, 1
  %3818 = trunc i64 %3817 to i32
  %3819 = and i32 %3818, 2147483647
  %3820 = zext i32 %3819 to i64
  store i64 %3820, i64* %RCX.i541, align 8
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3816, i8* %3821, align 1
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3823 = and i32 %3818, 255
  %3824 = call i32 @llvm.ctpop.i32(i32 %3823)
  %3825 = trunc i32 %3824 to i8
  %3826 = and i8 %3825, 1
  %3827 = xor i8 %3826, 1
  store i8 %3827, i8* %3822, align 1
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3828, align 1
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3830 = icmp eq i32 %3819, 0
  %3831 = zext i1 %3830 to i8
  store i8 %3831, i8* %3829, align 1
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3832, align 1
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3833, align 1
  store %struct.Memory* %loadMem_4006a8, %struct.Memory** %MEMORY
  %loadMem_4006ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 33
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3836 to i64*
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 5
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %ECX.i538 = bitcast %union.anon* %3839 to i32*
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 1
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %3842 to i64*
  %3843 = load i64, i64* %RAX.i539
  %3844 = load i32, i32* %ECX.i538
  %3845 = zext i32 %3844 to i64
  %3846 = load i64, i64* %PC.i537
  %3847 = add i64 %3846, 2
  store i64 %3847, i64* %PC.i537
  %3848 = or i64 %3845, %3843
  %3849 = trunc i64 %3848 to i32
  %3850 = and i64 %3848, 4294967295
  store i64 %3850, i64* %RAX.i539, align 8
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3851, align 1
  %3852 = and i32 %3849, 255
  %3853 = call i32 @llvm.ctpop.i32(i32 %3852)
  %3854 = trunc i32 %3853 to i8
  %3855 = and i8 %3854, 1
  %3856 = xor i8 %3855, 1
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3856, i8* %3857, align 1
  %3858 = icmp eq i32 %3849, 0
  %3859 = zext i1 %3858 to i8
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3859, i8* %3860, align 1
  %3861 = lshr i32 %3849, 31
  %3862 = trunc i32 %3861 to i8
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3862, i8* %3863, align 1
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3864, align 1
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3865, align 1
  store %struct.Memory* %loadMem_4006ab, %struct.Memory** %MEMORY
  %loadMem_4006ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 1
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %3871 to i64*
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 15
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %3874 to i64*
  %3875 = load i64, i64* %RAX.i535
  %3876 = load i64, i64* %RBP.i536
  %3877 = sub i64 %3876, 84
  %3878 = load i64, i64* %PC.i534
  %3879 = add i64 %3878, 3
  store i64 %3879, i64* %PC.i534
  %3880 = trunc i64 %3875 to i32
  %3881 = inttoptr i64 %3877 to i32*
  %3882 = load i32, i32* %3881
  %3883 = xor i32 %3882, %3880
  %3884 = zext i32 %3883 to i64
  store i64 %3884, i64* %RAX.i535, align 8
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3885, align 1
  %3886 = and i32 %3883, 255
  %3887 = call i32 @llvm.ctpop.i32(i32 %3886)
  %3888 = trunc i32 %3887 to i8
  %3889 = and i8 %3888, 1
  %3890 = xor i8 %3889, 1
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3890, i8* %3891, align 1
  %3892 = icmp eq i32 %3883, 0
  %3893 = zext i1 %3892 to i8
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3893, i8* %3894, align 1
  %3895 = lshr i32 %3883, 31
  %3896 = trunc i32 %3895 to i8
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3896, i8* %3897, align 1
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3898, align 1
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3899, align 1
  store %struct.Memory* %loadMem_4006ad, %struct.Memory** %MEMORY
  %loadMem_4006b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 33
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3902 to i64*
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 1
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %EAX.i532 = bitcast %union.anon* %3905 to i32*
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 15
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3908 to i64*
  %3909 = load i64, i64* %RBP.i533
  %3910 = sub i64 %3909, 84
  %3911 = load i32, i32* %EAX.i532
  %3912 = zext i32 %3911 to i64
  %3913 = load i64, i64* %PC.i531
  %3914 = add i64 %3913, 3
  store i64 %3914, i64* %PC.i531
  %3915 = inttoptr i64 %3910 to i32*
  store i32 %3911, i32* %3915
  store %struct.Memory* %loadMem_4006b0, %struct.Memory** %MEMORY
  %loadMem_4006b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 33
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3918 to i64*
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 1
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %3921 to i64*
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 15
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %3924 to i64*
  %3925 = load i64, i64* %RBP.i530
  %3926 = sub i64 %3925, 84
  %3927 = load i64, i64* %PC.i528
  %3928 = add i64 %3927, 3
  store i64 %3928, i64* %PC.i528
  %3929 = inttoptr i64 %3926 to i32*
  %3930 = load i32, i32* %3929
  %3931 = zext i32 %3930 to i64
  store i64 %3931, i64* %RAX.i529, align 8
  store %struct.Memory* %loadMem_4006b3, %struct.Memory** %MEMORY
  %loadMem_4006b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 33
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3934 to i64*
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 1
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 15
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %3940 to i64*
  %3941 = load i64, i64* %RAX.i526
  %3942 = load i64, i64* %RBP.i527
  %3943 = sub i64 %3942, 36
  %3944 = load i64, i64* %PC.i525
  %3945 = add i64 %3944, 3
  store i64 %3945, i64* %PC.i525
  %3946 = trunc i64 %3941 to i32
  %3947 = inttoptr i64 %3943 to i32*
  %3948 = load i32, i32* %3947
  %3949 = add i32 %3948, %3946
  %3950 = zext i32 %3949 to i64
  store i64 %3950, i64* %RAX.i526, align 8
  %3951 = icmp ult i32 %3949, %3946
  %3952 = icmp ult i32 %3949, %3948
  %3953 = or i1 %3951, %3952
  %3954 = zext i1 %3953 to i8
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3954, i8* %3955, align 1
  %3956 = and i32 %3949, 255
  %3957 = call i32 @llvm.ctpop.i32(i32 %3956)
  %3958 = trunc i32 %3957 to i8
  %3959 = and i8 %3958, 1
  %3960 = xor i8 %3959, 1
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3960, i8* %3961, align 1
  %3962 = xor i32 %3948, %3946
  %3963 = xor i32 %3962, %3949
  %3964 = lshr i32 %3963, 4
  %3965 = trunc i32 %3964 to i8
  %3966 = and i8 %3965, 1
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3966, i8* %3967, align 1
  %3968 = icmp eq i32 %3949, 0
  %3969 = zext i1 %3968 to i8
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3969, i8* %3970, align 1
  %3971 = lshr i32 %3949, 31
  %3972 = trunc i32 %3971 to i8
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3972, i8* %3973, align 1
  %3974 = lshr i32 %3946, 31
  %3975 = lshr i32 %3948, 31
  %3976 = xor i32 %3971, %3974
  %3977 = xor i32 %3971, %3975
  %3978 = add i32 %3976, %3977
  %3979 = icmp eq i32 %3978, 2
  %3980 = zext i1 %3979 to i8
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3980, i8* %3981, align 1
  store %struct.Memory* %loadMem_4006b6, %struct.Memory** %MEMORY
  %loadMem_4006b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 33
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3984 to i64*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 1
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %3987 to i64*
  %3988 = load i64, i64* %RAX.i524
  %3989 = load i64, i64* %PC.i523
  %3990 = add i64 %3989, 3
  store i64 %3990, i64* %PC.i523
  %3991 = and i64 %3988, 4294967295
  %3992 = shl i64 %3991, 8
  %3993 = trunc i64 %3992 to i32
  %3994 = icmp slt i32 %3993, 0
  %3995 = shl i32 %3993, 1
  %3996 = zext i32 %3995 to i64
  store i64 %3996, i64* %RAX.i524, align 8
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3998 = zext i1 %3994 to i8
  store i8 %3998, i8* %3997, align 1
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3999, align 1
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4000, align 1
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4002 = icmp eq i32 %3995, 0
  %4003 = zext i1 %4002 to i8
  store i8 %4003, i8* %4001, align 1
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4005 = lshr i32 %3995, 31
  %4006 = trunc i32 %4005 to i8
  store i8 %4006, i8* %4004, align 1
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4007, align 1
  store %struct.Memory* %loadMem_4006b9, %struct.Memory** %MEMORY
  %loadMem_4006bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 33
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 5
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %4013 to i64*
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 15
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %4016 to i64*
  %4017 = load i64, i64* %RBP.i522
  %4018 = sub i64 %4017, 84
  %4019 = load i64, i64* %PC.i520
  %4020 = add i64 %4019, 3
  store i64 %4020, i64* %PC.i520
  %4021 = inttoptr i64 %4018 to i32*
  %4022 = load i32, i32* %4021
  %4023 = zext i32 %4022 to i64
  store i64 %4023, i64* %RCX.i521, align 8
  store %struct.Memory* %loadMem_4006bc, %struct.Memory** %MEMORY
  %loadMem_4006bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 33
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %4026 to i64*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 5
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %RCX.i518 = bitcast %union.anon* %4029 to i64*
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 15
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %4032 to i64*
  %4033 = load i64, i64* %RCX.i518
  %4034 = load i64, i64* %RBP.i519
  %4035 = sub i64 %4034, 36
  %4036 = load i64, i64* %PC.i517
  %4037 = add i64 %4036, 3
  store i64 %4037, i64* %PC.i517
  %4038 = trunc i64 %4033 to i32
  %4039 = inttoptr i64 %4035 to i32*
  %4040 = load i32, i32* %4039
  %4041 = add i32 %4040, %4038
  %4042 = zext i32 %4041 to i64
  store i64 %4042, i64* %RCX.i518, align 8
  %4043 = icmp ult i32 %4041, %4038
  %4044 = icmp ult i32 %4041, %4040
  %4045 = or i1 %4043, %4044
  %4046 = zext i1 %4045 to i8
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4046, i8* %4047, align 1
  %4048 = and i32 %4041, 255
  %4049 = call i32 @llvm.ctpop.i32(i32 %4048)
  %4050 = trunc i32 %4049 to i8
  %4051 = and i8 %4050, 1
  %4052 = xor i8 %4051, 1
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4052, i8* %4053, align 1
  %4054 = xor i32 %4040, %4038
  %4055 = xor i32 %4054, %4041
  %4056 = lshr i32 %4055, 4
  %4057 = trunc i32 %4056 to i8
  %4058 = and i8 %4057, 1
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4058, i8* %4059, align 1
  %4060 = icmp eq i32 %4041, 0
  %4061 = zext i1 %4060 to i8
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4061, i8* %4062, align 1
  %4063 = lshr i32 %4041, 31
  %4064 = trunc i32 %4063 to i8
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4064, i8* %4065, align 1
  %4066 = lshr i32 %4038, 31
  %4067 = lshr i32 %4040, 31
  %4068 = xor i32 %4063, %4066
  %4069 = xor i32 %4063, %4067
  %4070 = add i32 %4068, %4069
  %4071 = icmp eq i32 %4070, 2
  %4072 = zext i1 %4071 to i8
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4072, i8* %4073, align 1
  store %struct.Memory* %loadMem_4006bf, %struct.Memory** %MEMORY
  %loadMem_4006c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 33
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %4076 to i64*
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 5
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %4079 to i64*
  %4080 = load i64, i64* %RCX.i516
  %4081 = load i64, i64* %PC.i515
  %4082 = add i64 %4081, 3
  store i64 %4082, i64* %PC.i515
  %4083 = and i64 %4080, 4294967295
  %4084 = lshr i64 %4083, 22
  %4085 = trunc i64 %4084 to i8
  %4086 = and i8 %4085, 1
  %4087 = lshr i64 %4084, 1
  %4088 = trunc i64 %4087 to i32
  %4089 = and i32 %4088, 2147483647
  %4090 = zext i32 %4089 to i64
  store i64 %4090, i64* %RCX.i516, align 8
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4086, i8* %4091, align 1
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4093 = and i32 %4088, 255
  %4094 = call i32 @llvm.ctpop.i32(i32 %4093)
  %4095 = trunc i32 %4094 to i8
  %4096 = and i8 %4095, 1
  %4097 = xor i8 %4096, 1
  store i8 %4097, i8* %4092, align 1
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4098, align 1
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4100 = icmp eq i32 %4089, 0
  %4101 = zext i1 %4100 to i8
  store i8 %4101, i8* %4099, align 1
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4102, align 1
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4103, align 1
  store %struct.Memory* %loadMem_4006c2, %struct.Memory** %MEMORY
  %loadMem_4006c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 33
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 5
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %ECX.i513 = bitcast %union.anon* %4109 to i32*
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 1
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %4112 to i64*
  %4113 = load i64, i64* %RAX.i514
  %4114 = load i32, i32* %ECX.i513
  %4115 = zext i32 %4114 to i64
  %4116 = load i64, i64* %PC.i512
  %4117 = add i64 %4116, 2
  store i64 %4117, i64* %PC.i512
  %4118 = or i64 %4115, %4113
  %4119 = trunc i64 %4118 to i32
  %4120 = and i64 %4118, 4294967295
  store i64 %4120, i64* %RAX.i514, align 8
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4121, align 1
  %4122 = and i32 %4119, 255
  %4123 = call i32 @llvm.ctpop.i32(i32 %4122)
  %4124 = trunc i32 %4123 to i8
  %4125 = and i8 %4124, 1
  %4126 = xor i8 %4125, 1
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4126, i8* %4127, align 1
  %4128 = icmp eq i32 %4119, 0
  %4129 = zext i1 %4128 to i8
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4129, i8* %4130, align 1
  %4131 = lshr i32 %4119, 31
  %4132 = trunc i32 %4131 to i8
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4132, i8* %4133, align 1
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4134, align 1
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4135, align 1
  store %struct.Memory* %loadMem_4006c5, %struct.Memory** %MEMORY
  %loadMem_4006c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 33
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 1
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %4141 to i64*
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 15
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %4144 to i64*
  %4145 = load i64, i64* %RAX.i510
  %4146 = load i64, i64* %RBP.i511
  %4147 = sub i64 %4146, 68
  %4148 = load i64, i64* %PC.i509
  %4149 = add i64 %4148, 3
  store i64 %4149, i64* %PC.i509
  %4150 = trunc i64 %4145 to i32
  %4151 = inttoptr i64 %4147 to i32*
  %4152 = load i32, i32* %4151
  %4153 = xor i32 %4152, %4150
  %4154 = zext i32 %4153 to i64
  store i64 %4154, i64* %RAX.i510, align 8
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4155, align 1
  %4156 = and i32 %4153, 255
  %4157 = call i32 @llvm.ctpop.i32(i32 %4156)
  %4158 = trunc i32 %4157 to i8
  %4159 = and i8 %4158, 1
  %4160 = xor i8 %4159, 1
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4160, i8* %4161, align 1
  %4162 = icmp eq i32 %4153, 0
  %4163 = zext i1 %4162 to i8
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4163, i8* %4164, align 1
  %4165 = lshr i32 %4153, 31
  %4166 = trunc i32 %4165 to i8
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4166, i8* %4167, align 1
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4168, align 1
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4169, align 1
  store %struct.Memory* %loadMem_4006c7, %struct.Memory** %MEMORY
  %loadMem_4006ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 33
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 1
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %EAX.i507 = bitcast %union.anon* %4175 to i32*
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 15
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %4178 to i64*
  %4179 = load i64, i64* %RBP.i508
  %4180 = sub i64 %4179, 68
  %4181 = load i32, i32* %EAX.i507
  %4182 = zext i32 %4181 to i64
  %4183 = load i64, i64* %PC.i506
  %4184 = add i64 %4183, 3
  store i64 %4184, i64* %PC.i506
  %4185 = inttoptr i64 %4180 to i32*
  store i32 %4181, i32* %4185
  store %struct.Memory* %loadMem_4006ca, %struct.Memory** %MEMORY
  %loadMem_4006cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 33
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %4188 to i64*
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 1
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %4191 to i64*
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 15
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %4194 to i64*
  %4195 = load i64, i64* %RBP.i505
  %4196 = sub i64 %4195, 68
  %4197 = load i64, i64* %PC.i503
  %4198 = add i64 %4197, 3
  store i64 %4198, i64* %PC.i503
  %4199 = inttoptr i64 %4196 to i32*
  %4200 = load i32, i32* %4199
  %4201 = zext i32 %4200 to i64
  store i64 %4201, i64* %RAX.i504, align 8
  store %struct.Memory* %loadMem_4006cd, %struct.Memory** %MEMORY
  %loadMem_4006d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 33
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %4204 to i64*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 1
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %4207 to i64*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 15
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %4210 to i64*
  %4211 = load i64, i64* %RAX.i501
  %4212 = load i64, i64* %RBP.i502
  %4213 = sub i64 %4212, 84
  %4214 = load i64, i64* %PC.i500
  %4215 = add i64 %4214, 3
  store i64 %4215, i64* %PC.i500
  %4216 = trunc i64 %4211 to i32
  %4217 = inttoptr i64 %4213 to i32*
  %4218 = load i32, i32* %4217
  %4219 = add i32 %4218, %4216
  %4220 = zext i32 %4219 to i64
  store i64 %4220, i64* %RAX.i501, align 8
  %4221 = icmp ult i32 %4219, %4216
  %4222 = icmp ult i32 %4219, %4218
  %4223 = or i1 %4221, %4222
  %4224 = zext i1 %4223 to i8
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4224, i8* %4225, align 1
  %4226 = and i32 %4219, 255
  %4227 = call i32 @llvm.ctpop.i32(i32 %4226)
  %4228 = trunc i32 %4227 to i8
  %4229 = and i8 %4228, 1
  %4230 = xor i8 %4229, 1
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4230, i8* %4231, align 1
  %4232 = xor i32 %4218, %4216
  %4233 = xor i32 %4232, %4219
  %4234 = lshr i32 %4233, 4
  %4235 = trunc i32 %4234 to i8
  %4236 = and i8 %4235, 1
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4236, i8* %4237, align 1
  %4238 = icmp eq i32 %4219, 0
  %4239 = zext i1 %4238 to i8
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4239, i8* %4240, align 1
  %4241 = lshr i32 %4219, 31
  %4242 = trunc i32 %4241 to i8
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4242, i8* %4243, align 1
  %4244 = lshr i32 %4216, 31
  %4245 = lshr i32 %4218, 31
  %4246 = xor i32 %4241, %4244
  %4247 = xor i32 %4241, %4245
  %4248 = add i32 %4246, %4247
  %4249 = icmp eq i32 %4248, 2
  %4250 = zext i1 %4249 to i8
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4250, i8* %4251, align 1
  store %struct.Memory* %loadMem_4006d0, %struct.Memory** %MEMORY
  %loadMem_4006d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 33
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %4254 to i64*
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 1
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %4257 to i64*
  %4258 = load i64, i64* %RAX.i499
  %4259 = load i64, i64* %PC.i498
  %4260 = add i64 %4259, 3
  store i64 %4260, i64* %PC.i498
  %4261 = and i64 %4258, 4294967295
  %4262 = shl i64 %4261, 12
  %4263 = trunc i64 %4262 to i32
  %4264 = icmp slt i32 %4263, 0
  %4265 = shl i32 %4263, 1
  %4266 = zext i32 %4265 to i64
  store i64 %4266, i64* %RAX.i499, align 8
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4268 = zext i1 %4264 to i8
  store i8 %4268, i8* %4267, align 1
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4269, align 1
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4270, align 1
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4272 = icmp eq i32 %4265, 0
  %4273 = zext i1 %4272 to i8
  store i8 %4273, i8* %4271, align 1
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4275 = lshr i32 %4265, 31
  %4276 = trunc i32 %4275 to i8
  store i8 %4276, i8* %4274, align 1
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4277, align 1
  store %struct.Memory* %loadMem_4006d3, %struct.Memory** %MEMORY
  %loadMem_4006d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 33
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %4280 to i64*
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 5
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %4283 to i64*
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 15
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %4286 to i64*
  %4287 = load i64, i64* %RBP.i497
  %4288 = sub i64 %4287, 68
  %4289 = load i64, i64* %PC.i495
  %4290 = add i64 %4289, 3
  store i64 %4290, i64* %PC.i495
  %4291 = inttoptr i64 %4288 to i32*
  %4292 = load i32, i32* %4291
  %4293 = zext i32 %4292 to i64
  store i64 %4293, i64* %RCX.i496, align 8
  store %struct.Memory* %loadMem_4006d6, %struct.Memory** %MEMORY
  %loadMem_4006d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 33
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %4296 to i64*
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 5
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %RCX.i493 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 15
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %4302 to i64*
  %4303 = load i64, i64* %RCX.i493
  %4304 = load i64, i64* %RBP.i494
  %4305 = sub i64 %4304, 84
  %4306 = load i64, i64* %PC.i492
  %4307 = add i64 %4306, 3
  store i64 %4307, i64* %PC.i492
  %4308 = trunc i64 %4303 to i32
  %4309 = inttoptr i64 %4305 to i32*
  %4310 = load i32, i32* %4309
  %4311 = add i32 %4310, %4308
  %4312 = zext i32 %4311 to i64
  store i64 %4312, i64* %RCX.i493, align 8
  %4313 = icmp ult i32 %4311, %4308
  %4314 = icmp ult i32 %4311, %4310
  %4315 = or i1 %4313, %4314
  %4316 = zext i1 %4315 to i8
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4316, i8* %4317, align 1
  %4318 = and i32 %4311, 255
  %4319 = call i32 @llvm.ctpop.i32(i32 %4318)
  %4320 = trunc i32 %4319 to i8
  %4321 = and i8 %4320, 1
  %4322 = xor i8 %4321, 1
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4322, i8* %4323, align 1
  %4324 = xor i32 %4310, %4308
  %4325 = xor i32 %4324, %4311
  %4326 = lshr i32 %4325, 4
  %4327 = trunc i32 %4326 to i8
  %4328 = and i8 %4327, 1
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4328, i8* %4329, align 1
  %4330 = icmp eq i32 %4311, 0
  %4331 = zext i1 %4330 to i8
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4331, i8* %4332, align 1
  %4333 = lshr i32 %4311, 31
  %4334 = trunc i32 %4333 to i8
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4334, i8* %4335, align 1
  %4336 = lshr i32 %4308, 31
  %4337 = lshr i32 %4310, 31
  %4338 = xor i32 %4333, %4336
  %4339 = xor i32 %4333, %4337
  %4340 = add i32 %4338, %4339
  %4341 = icmp eq i32 %4340, 2
  %4342 = zext i1 %4341 to i8
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4342, i8* %4343, align 1
  store %struct.Memory* %loadMem_4006d9, %struct.Memory** %MEMORY
  %loadMem_4006dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 33
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %4346 to i64*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 5
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %RCX.i491 = bitcast %union.anon* %4349 to i64*
  %4350 = load i64, i64* %RCX.i491
  %4351 = load i64, i64* %PC.i490
  %4352 = add i64 %4351, 3
  store i64 %4352, i64* %PC.i490
  %4353 = and i64 %4350, 4294967295
  %4354 = lshr i64 %4353, 18
  %4355 = trunc i64 %4354 to i8
  %4356 = and i8 %4355, 1
  %4357 = lshr i64 %4354, 1
  %4358 = trunc i64 %4357 to i32
  %4359 = and i32 %4358, 2147483647
  %4360 = zext i32 %4359 to i64
  store i64 %4360, i64* %RCX.i491, align 8
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4356, i8* %4361, align 1
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4363 = and i32 %4358, 255
  %4364 = call i32 @llvm.ctpop.i32(i32 %4363)
  %4365 = trunc i32 %4364 to i8
  %4366 = and i8 %4365, 1
  %4367 = xor i8 %4366, 1
  store i8 %4367, i8* %4362, align 1
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4368, align 1
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4370 = icmp eq i32 %4359, 0
  %4371 = zext i1 %4370 to i8
  store i8 %4371, i8* %4369, align 1
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4372, align 1
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4373, align 1
  store %struct.Memory* %loadMem_4006dc, %struct.Memory** %MEMORY
  %loadMem_4006df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 33
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4376 to i64*
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 5
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %ECX.i488 = bitcast %union.anon* %4379 to i32*
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4381 = getelementptr inbounds %struct.GPR, %struct.GPR* %4380, i32 0, i32 1
  %4382 = getelementptr inbounds %struct.Reg, %struct.Reg* %4381, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %4382 to i64*
  %4383 = load i64, i64* %RAX.i489
  %4384 = load i32, i32* %ECX.i488
  %4385 = zext i32 %4384 to i64
  %4386 = load i64, i64* %PC.i487
  %4387 = add i64 %4386, 2
  store i64 %4387, i64* %PC.i487
  %4388 = or i64 %4385, %4383
  %4389 = trunc i64 %4388 to i32
  %4390 = and i64 %4388, 4294967295
  store i64 %4390, i64* %RAX.i489, align 8
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4391, align 1
  %4392 = and i32 %4389, 255
  %4393 = call i32 @llvm.ctpop.i32(i32 %4392)
  %4394 = trunc i32 %4393 to i8
  %4395 = and i8 %4394, 1
  %4396 = xor i8 %4395, 1
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4396, i8* %4397, align 1
  %4398 = icmp eq i32 %4389, 0
  %4399 = zext i1 %4398 to i8
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4399, i8* %4400, align 1
  %4401 = lshr i32 %4389, 31
  %4402 = trunc i32 %4401 to i8
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4402, i8* %4403, align 1
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4404, align 1
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4405, align 1
  store %struct.Memory* %loadMem_4006df, %struct.Memory** %MEMORY
  %loadMem_4006e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 33
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %4408 to i64*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 1
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 15
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %4414 to i64*
  %4415 = load i64, i64* %RAX.i485
  %4416 = load i64, i64* %RBP.i486
  %4417 = sub i64 %4416, 52
  %4418 = load i64, i64* %PC.i484
  %4419 = add i64 %4418, 3
  store i64 %4419, i64* %PC.i484
  %4420 = trunc i64 %4415 to i32
  %4421 = inttoptr i64 %4417 to i32*
  %4422 = load i32, i32* %4421
  %4423 = xor i32 %4422, %4420
  %4424 = zext i32 %4423 to i64
  store i64 %4424, i64* %RAX.i485, align 8
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4425, align 1
  %4426 = and i32 %4423, 255
  %4427 = call i32 @llvm.ctpop.i32(i32 %4426)
  %4428 = trunc i32 %4427 to i8
  %4429 = and i8 %4428, 1
  %4430 = xor i8 %4429, 1
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4430, i8* %4431, align 1
  %4432 = icmp eq i32 %4423, 0
  %4433 = zext i1 %4432 to i8
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4433, i8* %4434, align 1
  %4435 = lshr i32 %4423, 31
  %4436 = trunc i32 %4435 to i8
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4436, i8* %4437, align 1
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4438, align 1
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4439, align 1
  store %struct.Memory* %loadMem_4006e1, %struct.Memory** %MEMORY
  %loadMem_4006e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 33
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4442 to i64*
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4444 = getelementptr inbounds %struct.GPR, %struct.GPR* %4443, i32 0, i32 1
  %4445 = getelementptr inbounds %struct.Reg, %struct.Reg* %4444, i32 0, i32 0
  %EAX.i482 = bitcast %union.anon* %4445 to i32*
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4447 = getelementptr inbounds %struct.GPR, %struct.GPR* %4446, i32 0, i32 15
  %4448 = getelementptr inbounds %struct.Reg, %struct.Reg* %4447, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %4448 to i64*
  %4449 = load i64, i64* %RBP.i483
  %4450 = sub i64 %4449, 52
  %4451 = load i32, i32* %EAX.i482
  %4452 = zext i32 %4451 to i64
  %4453 = load i64, i64* %PC.i481
  %4454 = add i64 %4453, 3
  store i64 %4454, i64* %PC.i481
  %4455 = inttoptr i64 %4450 to i32*
  store i32 %4451, i32* %4455
  store %struct.Memory* %loadMem_4006e4, %struct.Memory** %MEMORY
  %loadMem_4006e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 33
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4458 to i64*
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 1
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %4461 to i64*
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 15
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %4464 to i64*
  %4465 = load i64, i64* %RBP.i480
  %4466 = sub i64 %4465, 52
  %4467 = load i64, i64* %PC.i478
  %4468 = add i64 %4467, 3
  store i64 %4468, i64* %PC.i478
  %4469 = inttoptr i64 %4466 to i32*
  %4470 = load i32, i32* %4469
  %4471 = zext i32 %4470 to i64
  store i64 %4471, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_4006e7, %struct.Memory** %MEMORY
  %loadMem_4006ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 33
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %4474 to i64*
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 1
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %4477 to i64*
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 15
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %4480 to i64*
  %4481 = load i64, i64* %RAX.i476
  %4482 = load i64, i64* %RBP.i477
  %4483 = sub i64 %4482, 68
  %4484 = load i64, i64* %PC.i475
  %4485 = add i64 %4484, 3
  store i64 %4485, i64* %PC.i475
  %4486 = trunc i64 %4481 to i32
  %4487 = inttoptr i64 %4483 to i32*
  %4488 = load i32, i32* %4487
  %4489 = add i32 %4488, %4486
  %4490 = zext i32 %4489 to i64
  store i64 %4490, i64* %RAX.i476, align 8
  %4491 = icmp ult i32 %4489, %4486
  %4492 = icmp ult i32 %4489, %4488
  %4493 = or i1 %4491, %4492
  %4494 = zext i1 %4493 to i8
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4494, i8* %4495, align 1
  %4496 = and i32 %4489, 255
  %4497 = call i32 @llvm.ctpop.i32(i32 %4496)
  %4498 = trunc i32 %4497 to i8
  %4499 = and i8 %4498, 1
  %4500 = xor i8 %4499, 1
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4500, i8* %4501, align 1
  %4502 = xor i32 %4488, %4486
  %4503 = xor i32 %4502, %4489
  %4504 = lshr i32 %4503, 4
  %4505 = trunc i32 %4504 to i8
  %4506 = and i8 %4505, 1
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4506, i8* %4507, align 1
  %4508 = icmp eq i32 %4489, 0
  %4509 = zext i1 %4508 to i8
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4509, i8* %4510, align 1
  %4511 = lshr i32 %4489, 31
  %4512 = trunc i32 %4511 to i8
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4512, i8* %4513, align 1
  %4514 = lshr i32 %4486, 31
  %4515 = lshr i32 %4488, 31
  %4516 = xor i32 %4511, %4514
  %4517 = xor i32 %4511, %4515
  %4518 = add i32 %4516, %4517
  %4519 = icmp eq i32 %4518, 2
  %4520 = zext i1 %4519 to i8
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4520, i8* %4521, align 1
  store %struct.Memory* %loadMem_4006ea, %struct.Memory** %MEMORY
  %loadMem_4006ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 33
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %4524 to i64*
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 1
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %4527 to i64*
  %4528 = load i64, i64* %RAX.i474
  %4529 = load i64, i64* %PC.i473
  %4530 = add i64 %4529, 3
  store i64 %4530, i64* %PC.i473
  %4531 = and i64 %4528, 4294967295
  %4532 = shl i64 %4531, 17
  %4533 = trunc i64 %4532 to i32
  %4534 = icmp slt i32 %4533, 0
  %4535 = shl i32 %4533, 1
  %4536 = zext i32 %4535 to i64
  store i64 %4536, i64* %RAX.i474, align 8
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4538 = zext i1 %4534 to i8
  store i8 %4538, i8* %4537, align 1
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4539, align 1
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4540, align 1
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4542 = icmp eq i32 %4535, 0
  %4543 = zext i1 %4542 to i8
  store i8 %4543, i8* %4541, align 1
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4545 = lshr i32 %4535, 31
  %4546 = trunc i32 %4545 to i8
  store i8 %4546, i8* %4544, align 1
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4547, align 1
  store %struct.Memory* %loadMem_4006ed, %struct.Memory** %MEMORY
  %loadMem_4006f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 33
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4550 to i64*
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 5
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %RCX.i471 = bitcast %union.anon* %4553 to i64*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 15
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %4556 to i64*
  %4557 = load i64, i64* %RBP.i472
  %4558 = sub i64 %4557, 52
  %4559 = load i64, i64* %PC.i470
  %4560 = add i64 %4559, 3
  store i64 %4560, i64* %PC.i470
  %4561 = inttoptr i64 %4558 to i32*
  %4562 = load i32, i32* %4561
  %4563 = zext i32 %4562 to i64
  store i64 %4563, i64* %RCX.i471, align 8
  store %struct.Memory* %loadMem_4006f0, %struct.Memory** %MEMORY
  %loadMem_4006f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 33
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4566 to i64*
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 5
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %4569 to i64*
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 15
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %4572 to i64*
  %4573 = load i64, i64* %RCX.i468
  %4574 = load i64, i64* %RBP.i469
  %4575 = sub i64 %4574, 68
  %4576 = load i64, i64* %PC.i467
  %4577 = add i64 %4576, 3
  store i64 %4577, i64* %PC.i467
  %4578 = trunc i64 %4573 to i32
  %4579 = inttoptr i64 %4575 to i32*
  %4580 = load i32, i32* %4579
  %4581 = add i32 %4580, %4578
  %4582 = zext i32 %4581 to i64
  store i64 %4582, i64* %RCX.i468, align 8
  %4583 = icmp ult i32 %4581, %4578
  %4584 = icmp ult i32 %4581, %4580
  %4585 = or i1 %4583, %4584
  %4586 = zext i1 %4585 to i8
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4586, i8* %4587, align 1
  %4588 = and i32 %4581, 255
  %4589 = call i32 @llvm.ctpop.i32(i32 %4588)
  %4590 = trunc i32 %4589 to i8
  %4591 = and i8 %4590, 1
  %4592 = xor i8 %4591, 1
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4592, i8* %4593, align 1
  %4594 = xor i32 %4580, %4578
  %4595 = xor i32 %4594, %4581
  %4596 = lshr i32 %4595, 4
  %4597 = trunc i32 %4596 to i8
  %4598 = and i8 %4597, 1
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4598, i8* %4599, align 1
  %4600 = icmp eq i32 %4581, 0
  %4601 = zext i1 %4600 to i8
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4601, i8* %4602, align 1
  %4603 = lshr i32 %4581, 31
  %4604 = trunc i32 %4603 to i8
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4604, i8* %4605, align 1
  %4606 = lshr i32 %4578, 31
  %4607 = lshr i32 %4580, 31
  %4608 = xor i32 %4603, %4606
  %4609 = xor i32 %4603, %4607
  %4610 = add i32 %4608, %4609
  %4611 = icmp eq i32 %4610, 2
  %4612 = zext i1 %4611 to i8
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4612, i8* %4613, align 1
  store %struct.Memory* %loadMem_4006f3, %struct.Memory** %MEMORY
  %loadMem_4006f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 33
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 5
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %4619 to i64*
  %4620 = load i64, i64* %RCX.i466
  %4621 = load i64, i64* %PC.i465
  %4622 = add i64 %4621, 3
  store i64 %4622, i64* %PC.i465
  %4623 = and i64 %4620, 4294967295
  %4624 = lshr i64 %4623, 13
  %4625 = trunc i64 %4624 to i8
  %4626 = and i8 %4625, 1
  %4627 = lshr i64 %4624, 1
  %4628 = trunc i64 %4627 to i32
  %4629 = and i32 %4628, 2147483647
  %4630 = zext i32 %4629 to i64
  store i64 %4630, i64* %RCX.i466, align 8
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4626, i8* %4631, align 1
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4633 = and i32 %4628, 255
  %4634 = call i32 @llvm.ctpop.i32(i32 %4633)
  %4635 = trunc i32 %4634 to i8
  %4636 = and i8 %4635, 1
  %4637 = xor i8 %4636, 1
  store i8 %4637, i8* %4632, align 1
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4638, align 1
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4640 = icmp eq i32 %4629, 0
  %4641 = zext i1 %4640 to i8
  store i8 %4641, i8* %4639, align 1
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4642, align 1
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4643, align 1
  store %struct.Memory* %loadMem_4006f6, %struct.Memory** %MEMORY
  %loadMem_4006f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 33
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %4646 to i64*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 5
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %ECX.i463 = bitcast %union.anon* %4649 to i32*
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 1
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %4652 to i64*
  %4653 = load i64, i64* %RAX.i464
  %4654 = load i32, i32* %ECX.i463
  %4655 = zext i32 %4654 to i64
  %4656 = load i64, i64* %PC.i462
  %4657 = add i64 %4656, 2
  store i64 %4657, i64* %PC.i462
  %4658 = or i64 %4655, %4653
  %4659 = trunc i64 %4658 to i32
  %4660 = and i64 %4658, 4294967295
  store i64 %4660, i64* %RAX.i464, align 8
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4661, align 1
  %4662 = and i32 %4659, 255
  %4663 = call i32 @llvm.ctpop.i32(i32 %4662)
  %4664 = trunc i32 %4663 to i8
  %4665 = and i8 %4664, 1
  %4666 = xor i8 %4665, 1
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4666, i8* %4667, align 1
  %4668 = icmp eq i32 %4659, 0
  %4669 = zext i1 %4668 to i8
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4669, i8* %4670, align 1
  %4671 = lshr i32 %4659, 31
  %4672 = trunc i32 %4671 to i8
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4672, i8* %4673, align 1
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4674, align 1
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4675, align 1
  store %struct.Memory* %loadMem_4006f9, %struct.Memory** %MEMORY
  %loadMem_4006fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 33
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4678 to i64*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 1
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %4681 to i64*
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 15
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %4684 to i64*
  %4685 = load i64, i64* %RAX.i460
  %4686 = load i64, i64* %RBP.i461
  %4687 = sub i64 %4686, 36
  %4688 = load i64, i64* %PC.i459
  %4689 = add i64 %4688, 3
  store i64 %4689, i64* %PC.i459
  %4690 = trunc i64 %4685 to i32
  %4691 = inttoptr i64 %4687 to i32*
  %4692 = load i32, i32* %4691
  %4693 = xor i32 %4692, %4690
  %4694 = zext i32 %4693 to i64
  store i64 %4694, i64* %RAX.i460, align 8
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4695, align 1
  %4696 = and i32 %4693, 255
  %4697 = call i32 @llvm.ctpop.i32(i32 %4696)
  %4698 = trunc i32 %4697 to i8
  %4699 = and i8 %4698, 1
  %4700 = xor i8 %4699, 1
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4700, i8* %4701, align 1
  %4702 = icmp eq i32 %4693, 0
  %4703 = zext i1 %4702 to i8
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4703, i8* %4704, align 1
  %4705 = lshr i32 %4693, 31
  %4706 = trunc i32 %4705 to i8
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4706, i8* %4707, align 1
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4708, align 1
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4709, align 1
  store %struct.Memory* %loadMem_4006fb, %struct.Memory** %MEMORY
  %loadMem_4006fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4711 = getelementptr inbounds %struct.GPR, %struct.GPR* %4710, i32 0, i32 33
  %4712 = getelementptr inbounds %struct.Reg, %struct.Reg* %4711, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4712 to i64*
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 1
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %EAX.i457 = bitcast %union.anon* %4715 to i32*
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 15
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %4718 to i64*
  %4719 = load i64, i64* %RBP.i458
  %4720 = sub i64 %4719, 36
  %4721 = load i32, i32* %EAX.i457
  %4722 = zext i32 %4721 to i64
  %4723 = load i64, i64* %PC.i456
  %4724 = add i64 %4723, 3
  store i64 %4724, i64* %PC.i456
  %4725 = inttoptr i64 %4720 to i32*
  store i32 %4721, i32* %4725
  store %struct.Memory* %loadMem_4006fe, %struct.Memory** %MEMORY
  %loadMem_400701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 33
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %4728 to i64*
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 1
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %4731 to i64*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 15
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %4734 to i64*
  %4735 = load i64, i64* %RBP.i455
  %4736 = sub i64 %4735, 96
  %4737 = load i64, i64* %PC.i453
  %4738 = add i64 %4737, 3
  store i64 %4738, i64* %PC.i453
  %4739 = inttoptr i64 %4736 to i32*
  %4740 = load i32, i32* %4739
  %4741 = zext i32 %4740 to i64
  store i64 %4741, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_400701, %struct.Memory** %MEMORY
  %loadMem_400704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 33
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %4744 to i64*
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 1
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %4747 to i64*
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 15
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %4750 to i64*
  %4751 = load i64, i64* %RAX.i451
  %4752 = load i64, i64* %RBP.i452
  %4753 = sub i64 %4752, 84
  %4754 = load i64, i64* %PC.i450
  %4755 = add i64 %4754, 3
  store i64 %4755, i64* %PC.i450
  %4756 = trunc i64 %4751 to i32
  %4757 = inttoptr i64 %4753 to i32*
  %4758 = load i32, i32* %4757
  %4759 = add i32 %4758, %4756
  %4760 = zext i32 %4759 to i64
  store i64 %4760, i64* %RAX.i451, align 8
  %4761 = icmp ult i32 %4759, %4756
  %4762 = icmp ult i32 %4759, %4758
  %4763 = or i1 %4761, %4762
  %4764 = zext i1 %4763 to i8
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4764, i8* %4765, align 1
  %4766 = and i32 %4759, 255
  %4767 = call i32 @llvm.ctpop.i32(i32 %4766)
  %4768 = trunc i32 %4767 to i8
  %4769 = and i8 %4768, 1
  %4770 = xor i8 %4769, 1
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4770, i8* %4771, align 1
  %4772 = xor i32 %4758, %4756
  %4773 = xor i32 %4772, %4759
  %4774 = lshr i32 %4773, 4
  %4775 = trunc i32 %4774 to i8
  %4776 = and i8 %4775, 1
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4776, i8* %4777, align 1
  %4778 = icmp eq i32 %4759, 0
  %4779 = zext i1 %4778 to i8
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4779, i8* %4780, align 1
  %4781 = lshr i32 %4759, 31
  %4782 = trunc i32 %4781 to i8
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4782, i8* %4783, align 1
  %4784 = lshr i32 %4756, 31
  %4785 = lshr i32 %4758, 31
  %4786 = xor i32 %4781, %4784
  %4787 = xor i32 %4781, %4785
  %4788 = add i32 %4786, %4787
  %4789 = icmp eq i32 %4788, 2
  %4790 = zext i1 %4789 to i8
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4790, i8* %4791, align 1
  store %struct.Memory* %loadMem_400704, %struct.Memory** %MEMORY
  %loadMem_400707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4793 = getelementptr inbounds %struct.GPR, %struct.GPR* %4792, i32 0, i32 33
  %4794 = getelementptr inbounds %struct.Reg, %struct.Reg* %4793, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4794 to i64*
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 1
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %4797 to i64*
  %4798 = load i64, i64* %RAX.i449
  %4799 = load i64, i64* %PC.i448
  %4800 = add i64 %4799, 3
  store i64 %4800, i64* %PC.i448
  %4801 = and i64 %4798, 4294967295
  %4802 = shl i64 %4801, 6
  %4803 = trunc i64 %4802 to i32
  %4804 = icmp slt i32 %4803, 0
  %4805 = shl i32 %4803, 1
  %4806 = zext i32 %4805 to i64
  store i64 %4806, i64* %RAX.i449, align 8
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4808 = zext i1 %4804 to i8
  store i8 %4808, i8* %4807, align 1
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4810 = and i32 %4805, 254
  %4811 = call i32 @llvm.ctpop.i32(i32 %4810)
  %4812 = trunc i32 %4811 to i8
  %4813 = and i8 %4812, 1
  %4814 = xor i8 %4813, 1
  store i8 %4814, i8* %4809, align 1
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4815, align 1
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4817 = icmp eq i32 %4805, 0
  %4818 = zext i1 %4817 to i8
  store i8 %4818, i8* %4816, align 1
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4820 = lshr i32 %4805, 31
  %4821 = trunc i32 %4820 to i8
  store i8 %4821, i8* %4819, align 1
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4822, align 1
  store %struct.Memory* %loadMem_400707, %struct.Memory** %MEMORY
  %loadMem_40070a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4825 to i64*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 5
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 15
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %4831 to i64*
  %4832 = load i64, i64* %RBP.i447
  %4833 = sub i64 %4832, 96
  %4834 = load i64, i64* %PC.i445
  %4835 = add i64 %4834, 3
  store i64 %4835, i64* %PC.i445
  %4836 = inttoptr i64 %4833 to i32*
  %4837 = load i32, i32* %4836
  %4838 = zext i32 %4837 to i64
  store i64 %4838, i64* %RCX.i446, align 8
  store %struct.Memory* %loadMem_40070a, %struct.Memory** %MEMORY
  %loadMem_40070d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 33
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4841 to i64*
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 5
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 15
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %4847 to i64*
  %4848 = load i64, i64* %RCX.i443
  %4849 = load i64, i64* %RBP.i444
  %4850 = sub i64 %4849, 84
  %4851 = load i64, i64* %PC.i442
  %4852 = add i64 %4851, 3
  store i64 %4852, i64* %PC.i442
  %4853 = trunc i64 %4848 to i32
  %4854 = inttoptr i64 %4850 to i32*
  %4855 = load i32, i32* %4854
  %4856 = add i32 %4855, %4853
  %4857 = zext i32 %4856 to i64
  store i64 %4857, i64* %RCX.i443, align 8
  %4858 = icmp ult i32 %4856, %4853
  %4859 = icmp ult i32 %4856, %4855
  %4860 = or i1 %4858, %4859
  %4861 = zext i1 %4860 to i8
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4861, i8* %4862, align 1
  %4863 = and i32 %4856, 255
  %4864 = call i32 @llvm.ctpop.i32(i32 %4863)
  %4865 = trunc i32 %4864 to i8
  %4866 = and i8 %4865, 1
  %4867 = xor i8 %4866, 1
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4867, i8* %4868, align 1
  %4869 = xor i32 %4855, %4853
  %4870 = xor i32 %4869, %4856
  %4871 = lshr i32 %4870, 4
  %4872 = trunc i32 %4871 to i8
  %4873 = and i8 %4872, 1
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4873, i8* %4874, align 1
  %4875 = icmp eq i32 %4856, 0
  %4876 = zext i1 %4875 to i8
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4876, i8* %4877, align 1
  %4878 = lshr i32 %4856, 31
  %4879 = trunc i32 %4878 to i8
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4879, i8* %4880, align 1
  %4881 = lshr i32 %4853, 31
  %4882 = lshr i32 %4855, 31
  %4883 = xor i32 %4878, %4881
  %4884 = xor i32 %4878, %4882
  %4885 = add i32 %4883, %4884
  %4886 = icmp eq i32 %4885, 2
  %4887 = zext i1 %4886 to i8
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4887, i8* %4888, align 1
  store %struct.Memory* %loadMem_40070d, %struct.Memory** %MEMORY
  %loadMem_400710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 33
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %4891 to i64*
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4893 = getelementptr inbounds %struct.GPR, %struct.GPR* %4892, i32 0, i32 5
  %4894 = getelementptr inbounds %struct.Reg, %struct.Reg* %4893, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %4894 to i64*
  %4895 = load i64, i64* %RCX.i441
  %4896 = load i64, i64* %PC.i440
  %4897 = add i64 %4896, 3
  store i64 %4897, i64* %PC.i440
  %4898 = and i64 %4895, 4294967295
  %4899 = lshr i64 %4898, 24
  %4900 = trunc i64 %4899 to i8
  %4901 = and i8 %4900, 1
  %4902 = lshr i64 %4899, 1
  %4903 = trunc i64 %4902 to i32
  %4904 = and i32 %4903, 2147483647
  %4905 = zext i32 %4904 to i64
  store i64 %4905, i64* %RCX.i441, align 8
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4901, i8* %4906, align 1
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4908 = and i32 %4903, 255
  %4909 = call i32 @llvm.ctpop.i32(i32 %4908)
  %4910 = trunc i32 %4909 to i8
  %4911 = and i8 %4910, 1
  %4912 = xor i8 %4911, 1
  store i8 %4912, i8* %4907, align 1
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4913, align 1
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4915 = icmp eq i32 %4904, 0
  %4916 = zext i1 %4915 to i8
  store i8 %4916, i8* %4914, align 1
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4917, align 1
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4918, align 1
  store %struct.Memory* %loadMem_400710, %struct.Memory** %MEMORY
  %loadMem_400713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 33
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %4921 to i64*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 5
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %ECX.i438 = bitcast %union.anon* %4924 to i32*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 1
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %4927 to i64*
  %4928 = load i64, i64* %RAX.i439
  %4929 = load i32, i32* %ECX.i438
  %4930 = zext i32 %4929 to i64
  %4931 = load i64, i64* %PC.i437
  %4932 = add i64 %4931, 2
  store i64 %4932, i64* %PC.i437
  %4933 = or i64 %4930, %4928
  %4934 = trunc i64 %4933 to i32
  %4935 = and i64 %4933, 4294967295
  store i64 %4935, i64* %RAX.i439, align 8
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4936, align 1
  %4937 = and i32 %4934, 255
  %4938 = call i32 @llvm.ctpop.i32(i32 %4937)
  %4939 = trunc i32 %4938 to i8
  %4940 = and i8 %4939, 1
  %4941 = xor i8 %4940, 1
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4941, i8* %4942, align 1
  %4943 = icmp eq i32 %4934, 0
  %4944 = zext i1 %4943 to i8
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4944, i8* %4945, align 1
  %4946 = lshr i32 %4934, 31
  %4947 = trunc i32 %4946 to i8
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4947, i8* %4948, align 1
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4949, align 1
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4950, align 1
  store %struct.Memory* %loadMem_400713, %struct.Memory** %MEMORY
  %loadMem_400715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 33
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4953 to i64*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 1
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %4956 to i64*
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 15
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %4959 to i64*
  %4960 = load i64, i64* %RAX.i435
  %4961 = load i64, i64* %RBP.i436
  %4962 = sub i64 %4961, 92
  %4963 = load i64, i64* %PC.i434
  %4964 = add i64 %4963, 3
  store i64 %4964, i64* %PC.i434
  %4965 = trunc i64 %4960 to i32
  %4966 = inttoptr i64 %4962 to i32*
  %4967 = load i32, i32* %4966
  %4968 = xor i32 %4967, %4965
  %4969 = zext i32 %4968 to i64
  store i64 %4969, i64* %RAX.i435, align 8
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4970, align 1
  %4971 = and i32 %4968, 255
  %4972 = call i32 @llvm.ctpop.i32(i32 %4971)
  %4973 = trunc i32 %4972 to i8
  %4974 = and i8 %4973, 1
  %4975 = xor i8 %4974, 1
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4975, i8* %4976, align 1
  %4977 = icmp eq i32 %4968, 0
  %4978 = zext i1 %4977 to i8
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4978, i8* %4979, align 1
  %4980 = lshr i32 %4968, 31
  %4981 = trunc i32 %4980 to i8
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4981, i8* %4982, align 1
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4983, align 1
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4984, align 1
  store %struct.Memory* %loadMem_400715, %struct.Memory** %MEMORY
  %loadMem_400718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 33
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4987 to i64*
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 1
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %EAX.i432 = bitcast %union.anon* %4990 to i32*
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 15
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %4993 to i64*
  %4994 = load i64, i64* %RBP.i433
  %4995 = sub i64 %4994, 92
  %4996 = load i32, i32* %EAX.i432
  %4997 = zext i32 %4996 to i64
  %4998 = load i64, i64* %PC.i431
  %4999 = add i64 %4998, 3
  store i64 %4999, i64* %PC.i431
  %5000 = inttoptr i64 %4995 to i32*
  store i32 %4996, i32* %5000
  store %struct.Memory* %loadMem_400718, %struct.Memory** %MEMORY
  %loadMem_40071b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5002 = getelementptr inbounds %struct.GPR, %struct.GPR* %5001, i32 0, i32 33
  %5003 = getelementptr inbounds %struct.Reg, %struct.Reg* %5002, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %5003 to i64*
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 1
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %5006 to i64*
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 15
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %5009 to i64*
  %5010 = load i64, i64* %RBP.i430
  %5011 = sub i64 %5010, 92
  %5012 = load i64, i64* %PC.i428
  %5013 = add i64 %5012, 3
  store i64 %5013, i64* %PC.i428
  %5014 = inttoptr i64 %5011 to i32*
  %5015 = load i32, i32* %5014
  %5016 = zext i32 %5015 to i64
  store i64 %5016, i64* %RAX.i429, align 8
  store %struct.Memory* %loadMem_40071b, %struct.Memory** %MEMORY
  %loadMem_40071e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5018 = getelementptr inbounds %struct.GPR, %struct.GPR* %5017, i32 0, i32 33
  %5019 = getelementptr inbounds %struct.Reg, %struct.Reg* %5018, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %5019 to i64*
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 1
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %5022 to i64*
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 15
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %5025 to i64*
  %5026 = load i64, i64* %RAX.i426
  %5027 = load i64, i64* %RBP.i427
  %5028 = sub i64 %5027, 96
  %5029 = load i64, i64* %PC.i425
  %5030 = add i64 %5029, 3
  store i64 %5030, i64* %PC.i425
  %5031 = trunc i64 %5026 to i32
  %5032 = inttoptr i64 %5028 to i32*
  %5033 = load i32, i32* %5032
  %5034 = add i32 %5033, %5031
  %5035 = zext i32 %5034 to i64
  store i64 %5035, i64* %RAX.i426, align 8
  %5036 = icmp ult i32 %5034, %5031
  %5037 = icmp ult i32 %5034, %5033
  %5038 = or i1 %5036, %5037
  %5039 = zext i1 %5038 to i8
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5039, i8* %5040, align 1
  %5041 = and i32 %5034, 255
  %5042 = call i32 @llvm.ctpop.i32(i32 %5041)
  %5043 = trunc i32 %5042 to i8
  %5044 = and i8 %5043, 1
  %5045 = xor i8 %5044, 1
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5045, i8* %5046, align 1
  %5047 = xor i32 %5033, %5031
  %5048 = xor i32 %5047, %5034
  %5049 = lshr i32 %5048, 4
  %5050 = trunc i32 %5049 to i8
  %5051 = and i8 %5050, 1
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5051, i8* %5052, align 1
  %5053 = icmp eq i32 %5034, 0
  %5054 = zext i1 %5053 to i8
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5054, i8* %5055, align 1
  %5056 = lshr i32 %5034, 31
  %5057 = trunc i32 %5056 to i8
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5057, i8* %5058, align 1
  %5059 = lshr i32 %5031, 31
  %5060 = lshr i32 %5033, 31
  %5061 = xor i32 %5056, %5059
  %5062 = xor i32 %5056, %5060
  %5063 = add i32 %5061, %5062
  %5064 = icmp eq i32 %5063, 2
  %5065 = zext i1 %5064 to i8
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5065, i8* %5066, align 1
  store %struct.Memory* %loadMem_40071e, %struct.Memory** %MEMORY
  %loadMem_400721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 33
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %5069 to i64*
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 1
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %5072 to i64*
  %5073 = load i64, i64* %RAX.i424
  %5074 = load i64, i64* %PC.i423
  %5075 = add i64 %5074, 3
  store i64 %5075, i64* %PC.i423
  %5076 = and i64 %5073, 4294967295
  %5077 = shl i64 %5076, 8
  %5078 = trunc i64 %5077 to i32
  %5079 = icmp slt i32 %5078, 0
  %5080 = shl i32 %5078, 1
  %5081 = zext i32 %5080 to i64
  store i64 %5081, i64* %RAX.i424, align 8
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5083 = zext i1 %5079 to i8
  store i8 %5083, i8* %5082, align 1
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5084, align 1
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5085, align 1
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5087 = icmp eq i32 %5080, 0
  %5088 = zext i1 %5087 to i8
  store i8 %5088, i8* %5086, align 1
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5090 = lshr i32 %5080, 31
  %5091 = trunc i32 %5090 to i8
  store i8 %5091, i8* %5089, align 1
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5092, align 1
  store %struct.Memory* %loadMem_400721, %struct.Memory** %MEMORY
  %loadMem_400724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 33
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %5095 to i64*
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 5
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %RCX.i421 = bitcast %union.anon* %5098 to i64*
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 15
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %5101 to i64*
  %5102 = load i64, i64* %RBP.i422
  %5103 = sub i64 %5102, 92
  %5104 = load i64, i64* %PC.i420
  %5105 = add i64 %5104, 3
  store i64 %5105, i64* %PC.i420
  %5106 = inttoptr i64 %5103 to i32*
  %5107 = load i32, i32* %5106
  %5108 = zext i32 %5107 to i64
  store i64 %5108, i64* %RCX.i421, align 8
  store %struct.Memory* %loadMem_400724, %struct.Memory** %MEMORY
  %loadMem_400727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5110 = getelementptr inbounds %struct.GPR, %struct.GPR* %5109, i32 0, i32 33
  %5111 = getelementptr inbounds %struct.Reg, %struct.Reg* %5110, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %5111 to i64*
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5113 = getelementptr inbounds %struct.GPR, %struct.GPR* %5112, i32 0, i32 5
  %5114 = getelementptr inbounds %struct.Reg, %struct.Reg* %5113, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %5114 to i64*
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 15
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %5117 to i64*
  %5118 = load i64, i64* %RCX.i418
  %5119 = load i64, i64* %RBP.i419
  %5120 = sub i64 %5119, 96
  %5121 = load i64, i64* %PC.i417
  %5122 = add i64 %5121, 3
  store i64 %5122, i64* %PC.i417
  %5123 = trunc i64 %5118 to i32
  %5124 = inttoptr i64 %5120 to i32*
  %5125 = load i32, i32* %5124
  %5126 = add i32 %5125, %5123
  %5127 = zext i32 %5126 to i64
  store i64 %5127, i64* %RCX.i418, align 8
  %5128 = icmp ult i32 %5126, %5123
  %5129 = icmp ult i32 %5126, %5125
  %5130 = or i1 %5128, %5129
  %5131 = zext i1 %5130 to i8
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5131, i8* %5132, align 1
  %5133 = and i32 %5126, 255
  %5134 = call i32 @llvm.ctpop.i32(i32 %5133)
  %5135 = trunc i32 %5134 to i8
  %5136 = and i8 %5135, 1
  %5137 = xor i8 %5136, 1
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5137, i8* %5138, align 1
  %5139 = xor i32 %5125, %5123
  %5140 = xor i32 %5139, %5126
  %5141 = lshr i32 %5140, 4
  %5142 = trunc i32 %5141 to i8
  %5143 = and i8 %5142, 1
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5143, i8* %5144, align 1
  %5145 = icmp eq i32 %5126, 0
  %5146 = zext i1 %5145 to i8
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5146, i8* %5147, align 1
  %5148 = lshr i32 %5126, 31
  %5149 = trunc i32 %5148 to i8
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5149, i8* %5150, align 1
  %5151 = lshr i32 %5123, 31
  %5152 = lshr i32 %5125, 31
  %5153 = xor i32 %5148, %5151
  %5154 = xor i32 %5148, %5152
  %5155 = add i32 %5153, %5154
  %5156 = icmp eq i32 %5155, 2
  %5157 = zext i1 %5156 to i8
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5157, i8* %5158, align 1
  store %struct.Memory* %loadMem_400727, %struct.Memory** %MEMORY
  %loadMem_40072a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5160 = getelementptr inbounds %struct.GPR, %struct.GPR* %5159, i32 0, i32 33
  %5161 = getelementptr inbounds %struct.Reg, %struct.Reg* %5160, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %5161 to i64*
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 5
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %5164 to i64*
  %5165 = load i64, i64* %RCX.i416
  %5166 = load i64, i64* %PC.i415
  %5167 = add i64 %5166, 3
  store i64 %5167, i64* %PC.i415
  %5168 = and i64 %5165, 4294967295
  %5169 = lshr i64 %5168, 22
  %5170 = trunc i64 %5169 to i8
  %5171 = and i8 %5170, 1
  %5172 = lshr i64 %5169, 1
  %5173 = trunc i64 %5172 to i32
  %5174 = and i32 %5173, 2147483647
  %5175 = zext i32 %5174 to i64
  store i64 %5175, i64* %RCX.i416, align 8
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5171, i8* %5176, align 1
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5178 = and i32 %5173, 255
  %5179 = call i32 @llvm.ctpop.i32(i32 %5178)
  %5180 = trunc i32 %5179 to i8
  %5181 = and i8 %5180, 1
  %5182 = xor i8 %5181, 1
  store i8 %5182, i8* %5177, align 1
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5183, align 1
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5185 = icmp eq i32 %5174, 0
  %5186 = zext i1 %5185 to i8
  store i8 %5186, i8* %5184, align 1
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5187, align 1
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5188, align 1
  store %struct.Memory* %loadMem_40072a, %struct.Memory** %MEMORY
  %loadMem_40072d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 33
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %5191 to i64*
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 5
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %ECX.i413 = bitcast %union.anon* %5194 to i32*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 1
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %5197 to i64*
  %5198 = load i64, i64* %RAX.i414
  %5199 = load i32, i32* %ECX.i413
  %5200 = zext i32 %5199 to i64
  %5201 = load i64, i64* %PC.i412
  %5202 = add i64 %5201, 2
  store i64 %5202, i64* %PC.i412
  %5203 = or i64 %5200, %5198
  %5204 = trunc i64 %5203 to i32
  %5205 = and i64 %5203, 4294967295
  store i64 %5205, i64* %RAX.i414, align 8
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5206, align 1
  %5207 = and i32 %5204, 255
  %5208 = call i32 @llvm.ctpop.i32(i32 %5207)
  %5209 = trunc i32 %5208 to i8
  %5210 = and i8 %5209, 1
  %5211 = xor i8 %5210, 1
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5211, i8* %5212, align 1
  %5213 = icmp eq i32 %5204, 0
  %5214 = zext i1 %5213 to i8
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5214, i8* %5215, align 1
  %5216 = lshr i32 %5204, 31
  %5217 = trunc i32 %5216 to i8
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5217, i8* %5218, align 1
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5219, align 1
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5220, align 1
  store %struct.Memory* %loadMem_40072d, %struct.Memory** %MEMORY
  %loadMem_40072f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 33
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %5223 to i64*
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5225 = getelementptr inbounds %struct.GPR, %struct.GPR* %5224, i32 0, i32 1
  %5226 = getelementptr inbounds %struct.Reg, %struct.Reg* %5225, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %5226 to i64*
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5228 = getelementptr inbounds %struct.GPR, %struct.GPR* %5227, i32 0, i32 15
  %5229 = getelementptr inbounds %struct.Reg, %struct.Reg* %5228, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %5229 to i64*
  %5230 = load i64, i64* %RAX.i410
  %5231 = load i64, i64* %RBP.i411
  %5232 = sub i64 %5231, 88
  %5233 = load i64, i64* %PC.i409
  %5234 = add i64 %5233, 3
  store i64 %5234, i64* %PC.i409
  %5235 = trunc i64 %5230 to i32
  %5236 = inttoptr i64 %5232 to i32*
  %5237 = load i32, i32* %5236
  %5238 = xor i32 %5237, %5235
  %5239 = zext i32 %5238 to i64
  store i64 %5239, i64* %RAX.i410, align 8
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5240, align 1
  %5241 = and i32 %5238, 255
  %5242 = call i32 @llvm.ctpop.i32(i32 %5241)
  %5243 = trunc i32 %5242 to i8
  %5244 = and i8 %5243, 1
  %5245 = xor i8 %5244, 1
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5245, i8* %5246, align 1
  %5247 = icmp eq i32 %5238, 0
  %5248 = zext i1 %5247 to i8
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5248, i8* %5249, align 1
  %5250 = lshr i32 %5238, 31
  %5251 = trunc i32 %5250 to i8
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5251, i8* %5252, align 1
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5253, align 1
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5254, align 1
  store %struct.Memory* %loadMem_40072f, %struct.Memory** %MEMORY
  %loadMem_400732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 1
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %EAX.i407 = bitcast %union.anon* %5260 to i32*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 15
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %5263 to i64*
  %5264 = load i64, i64* %RBP.i408
  %5265 = sub i64 %5264, 88
  %5266 = load i32, i32* %EAX.i407
  %5267 = zext i32 %5266 to i64
  %5268 = load i64, i64* %PC.i406
  %5269 = add i64 %5268, 3
  store i64 %5269, i64* %PC.i406
  %5270 = inttoptr i64 %5265 to i32*
  store i32 %5266, i32* %5270
  store %struct.Memory* %loadMem_400732, %struct.Memory** %MEMORY
  %loadMem_400735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 33
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %5273 to i64*
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 1
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %5276 to i64*
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5278 = getelementptr inbounds %struct.GPR, %struct.GPR* %5277, i32 0, i32 15
  %5279 = getelementptr inbounds %struct.Reg, %struct.Reg* %5278, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %5279 to i64*
  %5280 = load i64, i64* %RBP.i405
  %5281 = sub i64 %5280, 88
  %5282 = load i64, i64* %PC.i403
  %5283 = add i64 %5282, 3
  store i64 %5283, i64* %PC.i403
  %5284 = inttoptr i64 %5281 to i32*
  %5285 = load i32, i32* %5284
  %5286 = zext i32 %5285 to i64
  store i64 %5286, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_400735, %struct.Memory** %MEMORY
  %loadMem_400738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 33
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 1
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %5292 to i64*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 15
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %5295 to i64*
  %5296 = load i64, i64* %RAX.i401
  %5297 = load i64, i64* %RBP.i402
  %5298 = sub i64 %5297, 92
  %5299 = load i64, i64* %PC.i400
  %5300 = add i64 %5299, 3
  store i64 %5300, i64* %PC.i400
  %5301 = trunc i64 %5296 to i32
  %5302 = inttoptr i64 %5298 to i32*
  %5303 = load i32, i32* %5302
  %5304 = add i32 %5303, %5301
  %5305 = zext i32 %5304 to i64
  store i64 %5305, i64* %RAX.i401, align 8
  %5306 = icmp ult i32 %5304, %5301
  %5307 = icmp ult i32 %5304, %5303
  %5308 = or i1 %5306, %5307
  %5309 = zext i1 %5308 to i8
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5309, i8* %5310, align 1
  %5311 = and i32 %5304, 255
  %5312 = call i32 @llvm.ctpop.i32(i32 %5311)
  %5313 = trunc i32 %5312 to i8
  %5314 = and i8 %5313, 1
  %5315 = xor i8 %5314, 1
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5315, i8* %5316, align 1
  %5317 = xor i32 %5303, %5301
  %5318 = xor i32 %5317, %5304
  %5319 = lshr i32 %5318, 4
  %5320 = trunc i32 %5319 to i8
  %5321 = and i8 %5320, 1
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5321, i8* %5322, align 1
  %5323 = icmp eq i32 %5304, 0
  %5324 = zext i1 %5323 to i8
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5324, i8* %5325, align 1
  %5326 = lshr i32 %5304, 31
  %5327 = trunc i32 %5326 to i8
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5327, i8* %5328, align 1
  %5329 = lshr i32 %5301, 31
  %5330 = lshr i32 %5303, 31
  %5331 = xor i32 %5326, %5329
  %5332 = xor i32 %5326, %5330
  %5333 = add i32 %5331, %5332
  %5334 = icmp eq i32 %5333, 2
  %5335 = zext i1 %5334 to i8
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5335, i8* %5336, align 1
  store %struct.Memory* %loadMem_400738, %struct.Memory** %MEMORY
  %loadMem_40073b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 33
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %5339 to i64*
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 1
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %5342 to i64*
  %5343 = load i64, i64* %RAX.i399
  %5344 = load i64, i64* %PC.i398
  %5345 = add i64 %5344, 3
  store i64 %5345, i64* %PC.i398
  %5346 = and i64 %5343, 4294967295
  %5347 = shl i64 %5346, 12
  %5348 = trunc i64 %5347 to i32
  %5349 = icmp slt i32 %5348, 0
  %5350 = shl i32 %5348, 1
  %5351 = zext i32 %5350 to i64
  store i64 %5351, i64* %RAX.i399, align 8
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5353 = zext i1 %5349 to i8
  store i8 %5353, i8* %5352, align 1
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5354, align 1
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5355, align 1
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5357 = icmp eq i32 %5350, 0
  %5358 = zext i1 %5357 to i8
  store i8 %5358, i8* %5356, align 1
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5360 = lshr i32 %5350, 31
  %5361 = trunc i32 %5360 to i8
  store i8 %5361, i8* %5359, align 1
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5362, align 1
  store %struct.Memory* %loadMem_40073b, %struct.Memory** %MEMORY
  %loadMem_40073e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5364 = getelementptr inbounds %struct.GPR, %struct.GPR* %5363, i32 0, i32 33
  %5365 = getelementptr inbounds %struct.Reg, %struct.Reg* %5364, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %5365 to i64*
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 5
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %5368 to i64*
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 15
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %5371 to i64*
  %5372 = load i64, i64* %RBP.i397
  %5373 = sub i64 %5372, 88
  %5374 = load i64, i64* %PC.i395
  %5375 = add i64 %5374, 3
  store i64 %5375, i64* %PC.i395
  %5376 = inttoptr i64 %5373 to i32*
  %5377 = load i32, i32* %5376
  %5378 = zext i32 %5377 to i64
  store i64 %5378, i64* %RCX.i396, align 8
  store %struct.Memory* %loadMem_40073e, %struct.Memory** %MEMORY
  %loadMem_400741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 33
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %5381 to i64*
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 5
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %5384 to i64*
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 15
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %5387 to i64*
  %5388 = load i64, i64* %RCX.i393
  %5389 = load i64, i64* %RBP.i394
  %5390 = sub i64 %5389, 92
  %5391 = load i64, i64* %PC.i392
  %5392 = add i64 %5391, 3
  store i64 %5392, i64* %PC.i392
  %5393 = trunc i64 %5388 to i32
  %5394 = inttoptr i64 %5390 to i32*
  %5395 = load i32, i32* %5394
  %5396 = add i32 %5395, %5393
  %5397 = zext i32 %5396 to i64
  store i64 %5397, i64* %RCX.i393, align 8
  %5398 = icmp ult i32 %5396, %5393
  %5399 = icmp ult i32 %5396, %5395
  %5400 = or i1 %5398, %5399
  %5401 = zext i1 %5400 to i8
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5401, i8* %5402, align 1
  %5403 = and i32 %5396, 255
  %5404 = call i32 @llvm.ctpop.i32(i32 %5403)
  %5405 = trunc i32 %5404 to i8
  %5406 = and i8 %5405, 1
  %5407 = xor i8 %5406, 1
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5407, i8* %5408, align 1
  %5409 = xor i32 %5395, %5393
  %5410 = xor i32 %5409, %5396
  %5411 = lshr i32 %5410, 4
  %5412 = trunc i32 %5411 to i8
  %5413 = and i8 %5412, 1
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5413, i8* %5414, align 1
  %5415 = icmp eq i32 %5396, 0
  %5416 = zext i1 %5415 to i8
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5416, i8* %5417, align 1
  %5418 = lshr i32 %5396, 31
  %5419 = trunc i32 %5418 to i8
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5419, i8* %5420, align 1
  %5421 = lshr i32 %5393, 31
  %5422 = lshr i32 %5395, 31
  %5423 = xor i32 %5418, %5421
  %5424 = xor i32 %5418, %5422
  %5425 = add i32 %5423, %5424
  %5426 = icmp eq i32 %5425, 2
  %5427 = zext i1 %5426 to i8
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5427, i8* %5428, align 1
  store %struct.Memory* %loadMem_400741, %struct.Memory** %MEMORY
  %loadMem_400744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 33
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %5431 to i64*
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 5
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %5434 to i64*
  %5435 = load i64, i64* %RCX.i391
  %5436 = load i64, i64* %PC.i390
  %5437 = add i64 %5436, 3
  store i64 %5437, i64* %PC.i390
  %5438 = and i64 %5435, 4294967295
  %5439 = lshr i64 %5438, 18
  %5440 = trunc i64 %5439 to i8
  %5441 = and i8 %5440, 1
  %5442 = lshr i64 %5439, 1
  %5443 = trunc i64 %5442 to i32
  %5444 = and i32 %5443, 2147483647
  %5445 = zext i32 %5444 to i64
  store i64 %5445, i64* %RCX.i391, align 8
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5441, i8* %5446, align 1
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5448 = and i32 %5443, 255
  %5449 = call i32 @llvm.ctpop.i32(i32 %5448)
  %5450 = trunc i32 %5449 to i8
  %5451 = and i8 %5450, 1
  %5452 = xor i8 %5451, 1
  store i8 %5452, i8* %5447, align 1
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5453, align 1
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5455 = icmp eq i32 %5444, 0
  %5456 = zext i1 %5455 to i8
  store i8 %5456, i8* %5454, align 1
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5457, align 1
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5458, align 1
  store %struct.Memory* %loadMem_400744, %struct.Memory** %MEMORY
  %loadMem_400747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 33
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %5461 to i64*
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 5
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %ECX.i388 = bitcast %union.anon* %5464 to i32*
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 1
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %5467 to i64*
  %5468 = load i64, i64* %RAX.i389
  %5469 = load i32, i32* %ECX.i388
  %5470 = zext i32 %5469 to i64
  %5471 = load i64, i64* %PC.i387
  %5472 = add i64 %5471, 2
  store i64 %5472, i64* %PC.i387
  %5473 = or i64 %5470, %5468
  %5474 = trunc i64 %5473 to i32
  %5475 = and i64 %5473, 4294967295
  store i64 %5475, i64* %RAX.i389, align 8
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5476, align 1
  %5477 = and i32 %5474, 255
  %5478 = call i32 @llvm.ctpop.i32(i32 %5477)
  %5479 = trunc i32 %5478 to i8
  %5480 = and i8 %5479, 1
  %5481 = xor i8 %5480, 1
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5481, i8* %5482, align 1
  %5483 = icmp eq i32 %5474, 0
  %5484 = zext i1 %5483 to i8
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5484, i8* %5485, align 1
  %5486 = lshr i32 %5474, 31
  %5487 = trunc i32 %5486 to i8
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5487, i8* %5488, align 1
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5489, align 1
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5490, align 1
  store %struct.Memory* %loadMem_400747, %struct.Memory** %MEMORY
  %loadMem_400749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 33
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %5493 to i64*
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 1
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %5496 to i64*
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 15
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %5499 to i64*
  %5500 = load i64, i64* %RAX.i385
  %5501 = load i64, i64* %RBP.i386
  %5502 = sub i64 %5501, 84
  %5503 = load i64, i64* %PC.i384
  %5504 = add i64 %5503, 3
  store i64 %5504, i64* %PC.i384
  %5505 = trunc i64 %5500 to i32
  %5506 = inttoptr i64 %5502 to i32*
  %5507 = load i32, i32* %5506
  %5508 = xor i32 %5507, %5505
  %5509 = zext i32 %5508 to i64
  store i64 %5509, i64* %RAX.i385, align 8
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5510, align 1
  %5511 = and i32 %5508, 255
  %5512 = call i32 @llvm.ctpop.i32(i32 %5511)
  %5513 = trunc i32 %5512 to i8
  %5514 = and i8 %5513, 1
  %5515 = xor i8 %5514, 1
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5515, i8* %5516, align 1
  %5517 = icmp eq i32 %5508, 0
  %5518 = zext i1 %5517 to i8
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5518, i8* %5519, align 1
  %5520 = lshr i32 %5508, 31
  %5521 = trunc i32 %5520 to i8
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5521, i8* %5522, align 1
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5523, align 1
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5524, align 1
  store %struct.Memory* %loadMem_400749, %struct.Memory** %MEMORY
  %loadMem_40074c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 33
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %5527 to i64*
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 1
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %EAX.i382 = bitcast %union.anon* %5530 to i32*
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 15
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %5533 to i64*
  %5534 = load i64, i64* %RBP.i383
  %5535 = sub i64 %5534, 84
  %5536 = load i32, i32* %EAX.i382
  %5537 = zext i32 %5536 to i64
  %5538 = load i64, i64* %PC.i381
  %5539 = add i64 %5538, 3
  store i64 %5539, i64* %PC.i381
  %5540 = inttoptr i64 %5535 to i32*
  store i32 %5536, i32* %5540
  store %struct.Memory* %loadMem_40074c, %struct.Memory** %MEMORY
  %loadMem_40074f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5542 = getelementptr inbounds %struct.GPR, %struct.GPR* %5541, i32 0, i32 33
  %5543 = getelementptr inbounds %struct.Reg, %struct.Reg* %5542, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %5543 to i64*
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 1
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %5546 to i64*
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 15
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %5549 to i64*
  %5550 = load i64, i64* %RBP.i380
  %5551 = sub i64 %5550, 84
  %5552 = load i64, i64* %PC.i378
  %5553 = add i64 %5552, 3
  store i64 %5553, i64* %PC.i378
  %5554 = inttoptr i64 %5551 to i32*
  %5555 = load i32, i32* %5554
  %5556 = zext i32 %5555 to i64
  store i64 %5556, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_40074f, %struct.Memory** %MEMORY
  %loadMem_400752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5558 = getelementptr inbounds %struct.GPR, %struct.GPR* %5557, i32 0, i32 33
  %5559 = getelementptr inbounds %struct.Reg, %struct.Reg* %5558, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %5559 to i64*
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 1
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %5562 to i64*
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 15
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %5565 to i64*
  %5566 = load i64, i64* %RAX.i376
  %5567 = load i64, i64* %RBP.i377
  %5568 = sub i64 %5567, 88
  %5569 = load i64, i64* %PC.i375
  %5570 = add i64 %5569, 3
  store i64 %5570, i64* %PC.i375
  %5571 = trunc i64 %5566 to i32
  %5572 = inttoptr i64 %5568 to i32*
  %5573 = load i32, i32* %5572
  %5574 = add i32 %5573, %5571
  %5575 = zext i32 %5574 to i64
  store i64 %5575, i64* %RAX.i376, align 8
  %5576 = icmp ult i32 %5574, %5571
  %5577 = icmp ult i32 %5574, %5573
  %5578 = or i1 %5576, %5577
  %5579 = zext i1 %5578 to i8
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5579, i8* %5580, align 1
  %5581 = and i32 %5574, 255
  %5582 = call i32 @llvm.ctpop.i32(i32 %5581)
  %5583 = trunc i32 %5582 to i8
  %5584 = and i8 %5583, 1
  %5585 = xor i8 %5584, 1
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5585, i8* %5586, align 1
  %5587 = xor i32 %5573, %5571
  %5588 = xor i32 %5587, %5574
  %5589 = lshr i32 %5588, 4
  %5590 = trunc i32 %5589 to i8
  %5591 = and i8 %5590, 1
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5591, i8* %5592, align 1
  %5593 = icmp eq i32 %5574, 0
  %5594 = zext i1 %5593 to i8
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5594, i8* %5595, align 1
  %5596 = lshr i32 %5574, 31
  %5597 = trunc i32 %5596 to i8
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5597, i8* %5598, align 1
  %5599 = lshr i32 %5571, 31
  %5600 = lshr i32 %5573, 31
  %5601 = xor i32 %5596, %5599
  %5602 = xor i32 %5596, %5600
  %5603 = add i32 %5601, %5602
  %5604 = icmp eq i32 %5603, 2
  %5605 = zext i1 %5604 to i8
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5605, i8* %5606, align 1
  store %struct.Memory* %loadMem_400752, %struct.Memory** %MEMORY
  %loadMem_400755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5608 = getelementptr inbounds %struct.GPR, %struct.GPR* %5607, i32 0, i32 33
  %5609 = getelementptr inbounds %struct.Reg, %struct.Reg* %5608, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %5609 to i64*
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 1
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %5612 to i64*
  %5613 = load i64, i64* %RAX.i374
  %5614 = load i64, i64* %PC.i373
  %5615 = add i64 %5614, 3
  store i64 %5615, i64* %PC.i373
  %5616 = and i64 %5613, 4294967295
  %5617 = shl i64 %5616, 17
  %5618 = trunc i64 %5617 to i32
  %5619 = icmp slt i32 %5618, 0
  %5620 = shl i32 %5618, 1
  %5621 = zext i32 %5620 to i64
  store i64 %5621, i64* %RAX.i374, align 8
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5623 = zext i1 %5619 to i8
  store i8 %5623, i8* %5622, align 1
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5624, align 1
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5625, align 1
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5627 = icmp eq i32 %5620, 0
  %5628 = zext i1 %5627 to i8
  store i8 %5628, i8* %5626, align 1
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5630 = lshr i32 %5620, 31
  %5631 = trunc i32 %5630 to i8
  store i8 %5631, i8* %5629, align 1
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5632, align 1
  store %struct.Memory* %loadMem_400755, %struct.Memory** %MEMORY
  %loadMem_400758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 33
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %5635 to i64*
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5637 = getelementptr inbounds %struct.GPR, %struct.GPR* %5636, i32 0, i32 5
  %5638 = getelementptr inbounds %struct.Reg, %struct.Reg* %5637, i32 0, i32 0
  %RCX.i371 = bitcast %union.anon* %5638 to i64*
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 15
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %5641 to i64*
  %5642 = load i64, i64* %RBP.i372
  %5643 = sub i64 %5642, 84
  %5644 = load i64, i64* %PC.i370
  %5645 = add i64 %5644, 3
  store i64 %5645, i64* %PC.i370
  %5646 = inttoptr i64 %5643 to i32*
  %5647 = load i32, i32* %5646
  %5648 = zext i32 %5647 to i64
  store i64 %5648, i64* %RCX.i371, align 8
  store %struct.Memory* %loadMem_400758, %struct.Memory** %MEMORY
  %loadMem_40075b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 33
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5651 to i64*
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5653 = getelementptr inbounds %struct.GPR, %struct.GPR* %5652, i32 0, i32 5
  %5654 = getelementptr inbounds %struct.Reg, %struct.Reg* %5653, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %5654 to i64*
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 15
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %5657 to i64*
  %5658 = load i64, i64* %RCX.i368
  %5659 = load i64, i64* %RBP.i369
  %5660 = sub i64 %5659, 88
  %5661 = load i64, i64* %PC.i367
  %5662 = add i64 %5661, 3
  store i64 %5662, i64* %PC.i367
  %5663 = trunc i64 %5658 to i32
  %5664 = inttoptr i64 %5660 to i32*
  %5665 = load i32, i32* %5664
  %5666 = add i32 %5665, %5663
  %5667 = zext i32 %5666 to i64
  store i64 %5667, i64* %RCX.i368, align 8
  %5668 = icmp ult i32 %5666, %5663
  %5669 = icmp ult i32 %5666, %5665
  %5670 = or i1 %5668, %5669
  %5671 = zext i1 %5670 to i8
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5671, i8* %5672, align 1
  %5673 = and i32 %5666, 255
  %5674 = call i32 @llvm.ctpop.i32(i32 %5673)
  %5675 = trunc i32 %5674 to i8
  %5676 = and i8 %5675, 1
  %5677 = xor i8 %5676, 1
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5677, i8* %5678, align 1
  %5679 = xor i32 %5665, %5663
  %5680 = xor i32 %5679, %5666
  %5681 = lshr i32 %5680, 4
  %5682 = trunc i32 %5681 to i8
  %5683 = and i8 %5682, 1
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5683, i8* %5684, align 1
  %5685 = icmp eq i32 %5666, 0
  %5686 = zext i1 %5685 to i8
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5686, i8* %5687, align 1
  %5688 = lshr i32 %5666, 31
  %5689 = trunc i32 %5688 to i8
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5689, i8* %5690, align 1
  %5691 = lshr i32 %5663, 31
  %5692 = lshr i32 %5665, 31
  %5693 = xor i32 %5688, %5691
  %5694 = xor i32 %5688, %5692
  %5695 = add i32 %5693, %5694
  %5696 = icmp eq i32 %5695, 2
  %5697 = zext i1 %5696 to i8
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5697, i8* %5698, align 1
  store %struct.Memory* %loadMem_40075b, %struct.Memory** %MEMORY
  %loadMem_40075e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5700 = getelementptr inbounds %struct.GPR, %struct.GPR* %5699, i32 0, i32 33
  %5701 = getelementptr inbounds %struct.Reg, %struct.Reg* %5700, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5701 to i64*
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 5
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %5704 to i64*
  %5705 = load i64, i64* %RCX.i366
  %5706 = load i64, i64* %PC.i365
  %5707 = add i64 %5706, 3
  store i64 %5707, i64* %PC.i365
  %5708 = and i64 %5705, 4294967295
  %5709 = lshr i64 %5708, 13
  %5710 = trunc i64 %5709 to i8
  %5711 = and i8 %5710, 1
  %5712 = lshr i64 %5709, 1
  %5713 = trunc i64 %5712 to i32
  %5714 = and i32 %5713, 2147483647
  %5715 = zext i32 %5714 to i64
  store i64 %5715, i64* %RCX.i366, align 8
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5711, i8* %5716, align 1
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5718 = and i32 %5713, 255
  %5719 = call i32 @llvm.ctpop.i32(i32 %5718)
  %5720 = trunc i32 %5719 to i8
  %5721 = and i8 %5720, 1
  %5722 = xor i8 %5721, 1
  store i8 %5722, i8* %5717, align 1
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5723, align 1
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5725 = icmp eq i32 %5714, 0
  %5726 = zext i1 %5725 to i8
  store i8 %5726, i8* %5724, align 1
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5727, align 1
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5728, align 1
  store %struct.Memory* %loadMem_40075e, %struct.Memory** %MEMORY
  %loadMem_400761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5730 = getelementptr inbounds %struct.GPR, %struct.GPR* %5729, i32 0, i32 33
  %5731 = getelementptr inbounds %struct.Reg, %struct.Reg* %5730, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %5731 to i64*
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 5
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %ECX.i363 = bitcast %union.anon* %5734 to i32*
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5736 = getelementptr inbounds %struct.GPR, %struct.GPR* %5735, i32 0, i32 1
  %5737 = getelementptr inbounds %struct.Reg, %struct.Reg* %5736, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %5737 to i64*
  %5738 = load i64, i64* %RAX.i364
  %5739 = load i32, i32* %ECX.i363
  %5740 = zext i32 %5739 to i64
  %5741 = load i64, i64* %PC.i362
  %5742 = add i64 %5741, 2
  store i64 %5742, i64* %PC.i362
  %5743 = or i64 %5740, %5738
  %5744 = trunc i64 %5743 to i32
  %5745 = and i64 %5743, 4294967295
  store i64 %5745, i64* %RAX.i364, align 8
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5746, align 1
  %5747 = and i32 %5744, 255
  %5748 = call i32 @llvm.ctpop.i32(i32 %5747)
  %5749 = trunc i32 %5748 to i8
  %5750 = and i8 %5749, 1
  %5751 = xor i8 %5750, 1
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5751, i8* %5752, align 1
  %5753 = icmp eq i32 %5744, 0
  %5754 = zext i1 %5753 to i8
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5754, i8* %5755, align 1
  %5756 = lshr i32 %5744, 31
  %5757 = trunc i32 %5756 to i8
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5757, i8* %5758, align 1
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5759, align 1
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5760, align 1
  store %struct.Memory* %loadMem_400761, %struct.Memory** %MEMORY
  %loadMem_400763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 33
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %5763 to i64*
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 1
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %5766 to i64*
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5768 = getelementptr inbounds %struct.GPR, %struct.GPR* %5767, i32 0, i32 15
  %5769 = getelementptr inbounds %struct.Reg, %struct.Reg* %5768, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %5769 to i64*
  %5770 = load i64, i64* %RAX.i360
  %5771 = load i64, i64* %RBP.i361
  %5772 = sub i64 %5771, 96
  %5773 = load i64, i64* %PC.i359
  %5774 = add i64 %5773, 3
  store i64 %5774, i64* %PC.i359
  %5775 = trunc i64 %5770 to i32
  %5776 = inttoptr i64 %5772 to i32*
  %5777 = load i32, i32* %5776
  %5778 = xor i32 %5777, %5775
  %5779 = zext i32 %5778 to i64
  store i64 %5779, i64* %RAX.i360, align 8
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5780, align 1
  %5781 = and i32 %5778, 255
  %5782 = call i32 @llvm.ctpop.i32(i32 %5781)
  %5783 = trunc i32 %5782 to i8
  %5784 = and i8 %5783, 1
  %5785 = xor i8 %5784, 1
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5785, i8* %5786, align 1
  %5787 = icmp eq i32 %5778, 0
  %5788 = zext i1 %5787 to i8
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5788, i8* %5789, align 1
  %5790 = lshr i32 %5778, 31
  %5791 = trunc i32 %5790 to i8
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5791, i8* %5792, align 1
  %5793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5793, align 1
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5794, align 1
  store %struct.Memory* %loadMem_400763, %struct.Memory** %MEMORY
  %loadMem_400766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5796 = getelementptr inbounds %struct.GPR, %struct.GPR* %5795, i32 0, i32 33
  %5797 = getelementptr inbounds %struct.Reg, %struct.Reg* %5796, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %5797 to i64*
  %5798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5799 = getelementptr inbounds %struct.GPR, %struct.GPR* %5798, i32 0, i32 1
  %5800 = getelementptr inbounds %struct.Reg, %struct.Reg* %5799, i32 0, i32 0
  %EAX.i357 = bitcast %union.anon* %5800 to i32*
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5802 = getelementptr inbounds %struct.GPR, %struct.GPR* %5801, i32 0, i32 15
  %5803 = getelementptr inbounds %struct.Reg, %struct.Reg* %5802, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %5803 to i64*
  %5804 = load i64, i64* %RBP.i358
  %5805 = sub i64 %5804, 96
  %5806 = load i32, i32* %EAX.i357
  %5807 = zext i32 %5806 to i64
  %5808 = load i64, i64* %PC.i356
  %5809 = add i64 %5808, 3
  store i64 %5809, i64* %PC.i356
  %5810 = inttoptr i64 %5805 to i32*
  store i32 %5806, i32* %5810
  store %struct.Memory* %loadMem_400766, %struct.Memory** %MEMORY
  %loadMem_400769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5812 = getelementptr inbounds %struct.GPR, %struct.GPR* %5811, i32 0, i32 33
  %5813 = getelementptr inbounds %struct.Reg, %struct.Reg* %5812, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %5813 to i64*
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5815 = getelementptr inbounds %struct.GPR, %struct.GPR* %5814, i32 0, i32 1
  %5816 = getelementptr inbounds %struct.Reg, %struct.Reg* %5815, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %5816 to i64*
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5818 = getelementptr inbounds %struct.GPR, %struct.GPR* %5817, i32 0, i32 15
  %5819 = getelementptr inbounds %struct.Reg, %struct.Reg* %5818, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %5819 to i64*
  %5820 = load i64, i64* %RBP.i355
  %5821 = sub i64 %5820, 76
  %5822 = load i64, i64* %PC.i353
  %5823 = add i64 %5822, 3
  store i64 %5823, i64* %PC.i353
  %5824 = inttoptr i64 %5821 to i32*
  %5825 = load i32, i32* %5824
  %5826 = zext i32 %5825 to i64
  store i64 %5826, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_400769, %struct.Memory** %MEMORY
  %loadMem_40076c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 33
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5829 to i64*
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 1
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %5832 to i64*
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 15
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %5835 to i64*
  %5836 = load i64, i64* %RAX.i351
  %5837 = load i64, i64* %RBP.i352
  %5838 = sub i64 %5837, 80
  %5839 = load i64, i64* %PC.i350
  %5840 = add i64 %5839, 3
  store i64 %5840, i64* %PC.i350
  %5841 = trunc i64 %5836 to i32
  %5842 = inttoptr i64 %5838 to i32*
  %5843 = load i32, i32* %5842
  %5844 = add i32 %5843, %5841
  %5845 = zext i32 %5844 to i64
  store i64 %5845, i64* %RAX.i351, align 8
  %5846 = icmp ult i32 %5844, %5841
  %5847 = icmp ult i32 %5844, %5843
  %5848 = or i1 %5846, %5847
  %5849 = zext i1 %5848 to i8
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5849, i8* %5850, align 1
  %5851 = and i32 %5844, 255
  %5852 = call i32 @llvm.ctpop.i32(i32 %5851)
  %5853 = trunc i32 %5852 to i8
  %5854 = and i8 %5853, 1
  %5855 = xor i8 %5854, 1
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5855, i8* %5856, align 1
  %5857 = xor i32 %5843, %5841
  %5858 = xor i32 %5857, %5844
  %5859 = lshr i32 %5858, 4
  %5860 = trunc i32 %5859 to i8
  %5861 = and i8 %5860, 1
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5861, i8* %5862, align 1
  %5863 = icmp eq i32 %5844, 0
  %5864 = zext i1 %5863 to i8
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5864, i8* %5865, align 1
  %5866 = lshr i32 %5844, 31
  %5867 = trunc i32 %5866 to i8
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5867, i8* %5868, align 1
  %5869 = lshr i32 %5841, 31
  %5870 = lshr i32 %5843, 31
  %5871 = xor i32 %5866, %5869
  %5872 = xor i32 %5866, %5870
  %5873 = add i32 %5871, %5872
  %5874 = icmp eq i32 %5873, 2
  %5875 = zext i1 %5874 to i8
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5875, i8* %5876, align 1
  store %struct.Memory* %loadMem_40076c, %struct.Memory** %MEMORY
  %loadMem_40076f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 33
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %5879 to i64*
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5881 = getelementptr inbounds %struct.GPR, %struct.GPR* %5880, i32 0, i32 1
  %5882 = getelementptr inbounds %struct.Reg, %struct.Reg* %5881, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %5882 to i64*
  %5883 = load i64, i64* %RAX.i349
  %5884 = load i64, i64* %PC.i348
  %5885 = add i64 %5884, 3
  store i64 %5885, i64* %PC.i348
  %5886 = and i64 %5883, 4294967295
  %5887 = shl i64 %5886, 6
  %5888 = trunc i64 %5887 to i32
  %5889 = icmp slt i32 %5888, 0
  %5890 = shl i32 %5888, 1
  %5891 = zext i32 %5890 to i64
  store i64 %5891, i64* %RAX.i349, align 8
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5893 = zext i1 %5889 to i8
  store i8 %5893, i8* %5892, align 1
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5895 = and i32 %5890, 254
  %5896 = call i32 @llvm.ctpop.i32(i32 %5895)
  %5897 = trunc i32 %5896 to i8
  %5898 = and i8 %5897, 1
  %5899 = xor i8 %5898, 1
  store i8 %5899, i8* %5894, align 1
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5900, align 1
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5902 = icmp eq i32 %5890, 0
  %5903 = zext i1 %5902 to i8
  store i8 %5903, i8* %5901, align 1
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5905 = lshr i32 %5890, 31
  %5906 = trunc i32 %5905 to i8
  store i8 %5906, i8* %5904, align 1
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5907, align 1
  store %struct.Memory* %loadMem_40076f, %struct.Memory** %MEMORY
  %loadMem_400772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 33
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5910 to i64*
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 5
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %5913 to i64*
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 15
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %5916 to i64*
  %5917 = load i64, i64* %RBP.i347
  %5918 = sub i64 %5917, 76
  %5919 = load i64, i64* %PC.i345
  %5920 = add i64 %5919, 3
  store i64 %5920, i64* %PC.i345
  %5921 = inttoptr i64 %5918 to i32*
  %5922 = load i32, i32* %5921
  %5923 = zext i32 %5922 to i64
  store i64 %5923, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_400772, %struct.Memory** %MEMORY
  %loadMem_400775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5925 = getelementptr inbounds %struct.GPR, %struct.GPR* %5924, i32 0, i32 33
  %5926 = getelementptr inbounds %struct.Reg, %struct.Reg* %5925, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5926 to i64*
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5928 = getelementptr inbounds %struct.GPR, %struct.GPR* %5927, i32 0, i32 5
  %5929 = getelementptr inbounds %struct.Reg, %struct.Reg* %5928, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %5929 to i64*
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5931 = getelementptr inbounds %struct.GPR, %struct.GPR* %5930, i32 0, i32 15
  %5932 = getelementptr inbounds %struct.Reg, %struct.Reg* %5931, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %5932 to i64*
  %5933 = load i64, i64* %RCX.i343
  %5934 = load i64, i64* %RBP.i344
  %5935 = sub i64 %5934, 80
  %5936 = load i64, i64* %PC.i342
  %5937 = add i64 %5936, 3
  store i64 %5937, i64* %PC.i342
  %5938 = trunc i64 %5933 to i32
  %5939 = inttoptr i64 %5935 to i32*
  %5940 = load i32, i32* %5939
  %5941 = add i32 %5940, %5938
  %5942 = zext i32 %5941 to i64
  store i64 %5942, i64* %RCX.i343, align 8
  %5943 = icmp ult i32 %5941, %5938
  %5944 = icmp ult i32 %5941, %5940
  %5945 = or i1 %5943, %5944
  %5946 = zext i1 %5945 to i8
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5946, i8* %5947, align 1
  %5948 = and i32 %5941, 255
  %5949 = call i32 @llvm.ctpop.i32(i32 %5948)
  %5950 = trunc i32 %5949 to i8
  %5951 = and i8 %5950, 1
  %5952 = xor i8 %5951, 1
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5952, i8* %5953, align 1
  %5954 = xor i32 %5940, %5938
  %5955 = xor i32 %5954, %5941
  %5956 = lshr i32 %5955, 4
  %5957 = trunc i32 %5956 to i8
  %5958 = and i8 %5957, 1
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5958, i8* %5959, align 1
  %5960 = icmp eq i32 %5941, 0
  %5961 = zext i1 %5960 to i8
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5961, i8* %5962, align 1
  %5963 = lshr i32 %5941, 31
  %5964 = trunc i32 %5963 to i8
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5964, i8* %5965, align 1
  %5966 = lshr i32 %5938, 31
  %5967 = lshr i32 %5940, 31
  %5968 = xor i32 %5963, %5966
  %5969 = xor i32 %5963, %5967
  %5970 = add i32 %5968, %5969
  %5971 = icmp eq i32 %5970, 2
  %5972 = zext i1 %5971 to i8
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5972, i8* %5973, align 1
  store %struct.Memory* %loadMem_400775, %struct.Memory** %MEMORY
  %loadMem_400778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5975 = getelementptr inbounds %struct.GPR, %struct.GPR* %5974, i32 0, i32 33
  %5976 = getelementptr inbounds %struct.Reg, %struct.Reg* %5975, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5976 to i64*
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5978 = getelementptr inbounds %struct.GPR, %struct.GPR* %5977, i32 0, i32 5
  %5979 = getelementptr inbounds %struct.Reg, %struct.Reg* %5978, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %5979 to i64*
  %5980 = load i64, i64* %RCX.i341
  %5981 = load i64, i64* %PC.i340
  %5982 = add i64 %5981, 3
  store i64 %5982, i64* %PC.i340
  %5983 = and i64 %5980, 4294967295
  %5984 = lshr i64 %5983, 24
  %5985 = trunc i64 %5984 to i8
  %5986 = and i8 %5985, 1
  %5987 = lshr i64 %5984, 1
  %5988 = trunc i64 %5987 to i32
  %5989 = and i32 %5988, 2147483647
  %5990 = zext i32 %5989 to i64
  store i64 %5990, i64* %RCX.i341, align 8
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5986, i8* %5991, align 1
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5993 = and i32 %5988, 255
  %5994 = call i32 @llvm.ctpop.i32(i32 %5993)
  %5995 = trunc i32 %5994 to i8
  %5996 = and i8 %5995, 1
  %5997 = xor i8 %5996, 1
  store i8 %5997, i8* %5992, align 1
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5998, align 1
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6000 = icmp eq i32 %5989, 0
  %6001 = zext i1 %6000 to i8
  store i8 %6001, i8* %5999, align 1
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6002, align 1
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6003, align 1
  store %struct.Memory* %loadMem_400778, %struct.Memory** %MEMORY
  %loadMem_40077b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6005 = getelementptr inbounds %struct.GPR, %struct.GPR* %6004, i32 0, i32 33
  %6006 = getelementptr inbounds %struct.Reg, %struct.Reg* %6005, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %6006 to i64*
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6008 = getelementptr inbounds %struct.GPR, %struct.GPR* %6007, i32 0, i32 5
  %6009 = getelementptr inbounds %struct.Reg, %struct.Reg* %6008, i32 0, i32 0
  %ECX.i338 = bitcast %union.anon* %6009 to i32*
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6011 = getelementptr inbounds %struct.GPR, %struct.GPR* %6010, i32 0, i32 1
  %6012 = getelementptr inbounds %struct.Reg, %struct.Reg* %6011, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %6012 to i64*
  %6013 = load i64, i64* %RAX.i339
  %6014 = load i32, i32* %ECX.i338
  %6015 = zext i32 %6014 to i64
  %6016 = load i64, i64* %PC.i337
  %6017 = add i64 %6016, 2
  store i64 %6017, i64* %PC.i337
  %6018 = or i64 %6015, %6013
  %6019 = trunc i64 %6018 to i32
  %6020 = and i64 %6018, 4294967295
  store i64 %6020, i64* %RAX.i339, align 8
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6021, align 1
  %6022 = and i32 %6019, 255
  %6023 = call i32 @llvm.ctpop.i32(i32 %6022)
  %6024 = trunc i32 %6023 to i8
  %6025 = and i8 %6024, 1
  %6026 = xor i8 %6025, 1
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6026, i8* %6027, align 1
  %6028 = icmp eq i32 %6019, 0
  %6029 = zext i1 %6028 to i8
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6029, i8* %6030, align 1
  %6031 = lshr i32 %6019, 31
  %6032 = trunc i32 %6031 to i8
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6032, i8* %6033, align 1
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6034, align 1
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6035, align 1
  store %struct.Memory* %loadMem_40077b, %struct.Memory** %MEMORY
  %loadMem_40077d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6037 = getelementptr inbounds %struct.GPR, %struct.GPR* %6036, i32 0, i32 33
  %6038 = getelementptr inbounds %struct.Reg, %struct.Reg* %6037, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %6038 to i64*
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6040 = getelementptr inbounds %struct.GPR, %struct.GPR* %6039, i32 0, i32 1
  %6041 = getelementptr inbounds %struct.Reg, %struct.Reg* %6040, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %6041 to i64*
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 15
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %6044 to i64*
  %6045 = load i64, i64* %RAX.i335
  %6046 = load i64, i64* %RBP.i336
  %6047 = sub i64 %6046, 72
  %6048 = load i64, i64* %PC.i334
  %6049 = add i64 %6048, 3
  store i64 %6049, i64* %PC.i334
  %6050 = trunc i64 %6045 to i32
  %6051 = inttoptr i64 %6047 to i32*
  %6052 = load i32, i32* %6051
  %6053 = xor i32 %6052, %6050
  %6054 = zext i32 %6053 to i64
  store i64 %6054, i64* %RAX.i335, align 8
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6055, align 1
  %6056 = and i32 %6053, 255
  %6057 = call i32 @llvm.ctpop.i32(i32 %6056)
  %6058 = trunc i32 %6057 to i8
  %6059 = and i8 %6058, 1
  %6060 = xor i8 %6059, 1
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6060, i8* %6061, align 1
  %6062 = icmp eq i32 %6053, 0
  %6063 = zext i1 %6062 to i8
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6063, i8* %6064, align 1
  %6065 = lshr i32 %6053, 31
  %6066 = trunc i32 %6065 to i8
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6066, i8* %6067, align 1
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6068, align 1
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6069, align 1
  store %struct.Memory* %loadMem_40077d, %struct.Memory** %MEMORY
  %loadMem_400780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6071 = getelementptr inbounds %struct.GPR, %struct.GPR* %6070, i32 0, i32 33
  %6072 = getelementptr inbounds %struct.Reg, %struct.Reg* %6071, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %6072 to i64*
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6074 = getelementptr inbounds %struct.GPR, %struct.GPR* %6073, i32 0, i32 1
  %6075 = getelementptr inbounds %struct.Reg, %struct.Reg* %6074, i32 0, i32 0
  %EAX.i332 = bitcast %union.anon* %6075 to i32*
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6077 = getelementptr inbounds %struct.GPR, %struct.GPR* %6076, i32 0, i32 15
  %6078 = getelementptr inbounds %struct.Reg, %struct.Reg* %6077, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %6078 to i64*
  %6079 = load i64, i64* %RBP.i333
  %6080 = sub i64 %6079, 72
  %6081 = load i32, i32* %EAX.i332
  %6082 = zext i32 %6081 to i64
  %6083 = load i64, i64* %PC.i331
  %6084 = add i64 %6083, 3
  store i64 %6084, i64* %PC.i331
  %6085 = inttoptr i64 %6080 to i32*
  store i32 %6081, i32* %6085
  store %struct.Memory* %loadMem_400780, %struct.Memory** %MEMORY
  %loadMem_400783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6087 = getelementptr inbounds %struct.GPR, %struct.GPR* %6086, i32 0, i32 33
  %6088 = getelementptr inbounds %struct.Reg, %struct.Reg* %6087, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %6088 to i64*
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6090 = getelementptr inbounds %struct.GPR, %struct.GPR* %6089, i32 0, i32 1
  %6091 = getelementptr inbounds %struct.Reg, %struct.Reg* %6090, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %6091 to i64*
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6093 = getelementptr inbounds %struct.GPR, %struct.GPR* %6092, i32 0, i32 15
  %6094 = getelementptr inbounds %struct.Reg, %struct.Reg* %6093, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %6094 to i64*
  %6095 = load i64, i64* %RBP.i330
  %6096 = sub i64 %6095, 72
  %6097 = load i64, i64* %PC.i328
  %6098 = add i64 %6097, 3
  store i64 %6098, i64* %PC.i328
  %6099 = inttoptr i64 %6096 to i32*
  %6100 = load i32, i32* %6099
  %6101 = zext i32 %6100 to i64
  store i64 %6101, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_400783, %struct.Memory** %MEMORY
  %loadMem_400786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 33
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %6104 to i64*
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6106 = getelementptr inbounds %struct.GPR, %struct.GPR* %6105, i32 0, i32 1
  %6107 = getelementptr inbounds %struct.Reg, %struct.Reg* %6106, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %6107 to i64*
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6109 = getelementptr inbounds %struct.GPR, %struct.GPR* %6108, i32 0, i32 15
  %6110 = getelementptr inbounds %struct.Reg, %struct.Reg* %6109, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %6110 to i64*
  %6111 = load i64, i64* %RAX.i326
  %6112 = load i64, i64* %RBP.i327
  %6113 = sub i64 %6112, 76
  %6114 = load i64, i64* %PC.i325
  %6115 = add i64 %6114, 3
  store i64 %6115, i64* %PC.i325
  %6116 = trunc i64 %6111 to i32
  %6117 = inttoptr i64 %6113 to i32*
  %6118 = load i32, i32* %6117
  %6119 = add i32 %6118, %6116
  %6120 = zext i32 %6119 to i64
  store i64 %6120, i64* %RAX.i326, align 8
  %6121 = icmp ult i32 %6119, %6116
  %6122 = icmp ult i32 %6119, %6118
  %6123 = or i1 %6121, %6122
  %6124 = zext i1 %6123 to i8
  %6125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6124, i8* %6125, align 1
  %6126 = and i32 %6119, 255
  %6127 = call i32 @llvm.ctpop.i32(i32 %6126)
  %6128 = trunc i32 %6127 to i8
  %6129 = and i8 %6128, 1
  %6130 = xor i8 %6129, 1
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6130, i8* %6131, align 1
  %6132 = xor i32 %6118, %6116
  %6133 = xor i32 %6132, %6119
  %6134 = lshr i32 %6133, 4
  %6135 = trunc i32 %6134 to i8
  %6136 = and i8 %6135, 1
  %6137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6136, i8* %6137, align 1
  %6138 = icmp eq i32 %6119, 0
  %6139 = zext i1 %6138 to i8
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6139, i8* %6140, align 1
  %6141 = lshr i32 %6119, 31
  %6142 = trunc i32 %6141 to i8
  %6143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6142, i8* %6143, align 1
  %6144 = lshr i32 %6116, 31
  %6145 = lshr i32 %6118, 31
  %6146 = xor i32 %6141, %6144
  %6147 = xor i32 %6141, %6145
  %6148 = add i32 %6146, %6147
  %6149 = icmp eq i32 %6148, 2
  %6150 = zext i1 %6149 to i8
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6150, i8* %6151, align 1
  store %struct.Memory* %loadMem_400786, %struct.Memory** %MEMORY
  %loadMem_400789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6153 = getelementptr inbounds %struct.GPR, %struct.GPR* %6152, i32 0, i32 33
  %6154 = getelementptr inbounds %struct.Reg, %struct.Reg* %6153, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %6154 to i64*
  %6155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6156 = getelementptr inbounds %struct.GPR, %struct.GPR* %6155, i32 0, i32 1
  %6157 = getelementptr inbounds %struct.Reg, %struct.Reg* %6156, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %6157 to i64*
  %6158 = load i64, i64* %RAX.i324
  %6159 = load i64, i64* %PC.i323
  %6160 = add i64 %6159, 3
  store i64 %6160, i64* %PC.i323
  %6161 = and i64 %6158, 4294967295
  %6162 = shl i64 %6161, 8
  %6163 = trunc i64 %6162 to i32
  %6164 = icmp slt i32 %6163, 0
  %6165 = shl i32 %6163, 1
  %6166 = zext i32 %6165 to i64
  store i64 %6166, i64* %RAX.i324, align 8
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6168 = zext i1 %6164 to i8
  store i8 %6168, i8* %6167, align 1
  %6169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6169, align 1
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6170, align 1
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6172 = icmp eq i32 %6165, 0
  %6173 = zext i1 %6172 to i8
  store i8 %6173, i8* %6171, align 1
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6175 = lshr i32 %6165, 31
  %6176 = trunc i32 %6175 to i8
  store i8 %6176, i8* %6174, align 1
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6177, align 1
  store %struct.Memory* %loadMem_400789, %struct.Memory** %MEMORY
  %loadMem_40078c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6179 = getelementptr inbounds %struct.GPR, %struct.GPR* %6178, i32 0, i32 33
  %6180 = getelementptr inbounds %struct.Reg, %struct.Reg* %6179, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %6180 to i64*
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 5
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %6183 to i64*
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 15
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %6186 to i64*
  %6187 = load i64, i64* %RBP.i322
  %6188 = sub i64 %6187, 72
  %6189 = load i64, i64* %PC.i320
  %6190 = add i64 %6189, 3
  store i64 %6190, i64* %PC.i320
  %6191 = inttoptr i64 %6188 to i32*
  %6192 = load i32, i32* %6191
  %6193 = zext i32 %6192 to i64
  store i64 %6193, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_40078c, %struct.Memory** %MEMORY
  %loadMem_40078f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 33
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %6196 to i64*
  %6197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6198 = getelementptr inbounds %struct.GPR, %struct.GPR* %6197, i32 0, i32 5
  %6199 = getelementptr inbounds %struct.Reg, %struct.Reg* %6198, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %6199 to i64*
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6201 = getelementptr inbounds %struct.GPR, %struct.GPR* %6200, i32 0, i32 15
  %6202 = getelementptr inbounds %struct.Reg, %struct.Reg* %6201, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %6202 to i64*
  %6203 = load i64, i64* %RCX.i318
  %6204 = load i64, i64* %RBP.i319
  %6205 = sub i64 %6204, 76
  %6206 = load i64, i64* %PC.i317
  %6207 = add i64 %6206, 3
  store i64 %6207, i64* %PC.i317
  %6208 = trunc i64 %6203 to i32
  %6209 = inttoptr i64 %6205 to i32*
  %6210 = load i32, i32* %6209
  %6211 = add i32 %6210, %6208
  %6212 = zext i32 %6211 to i64
  store i64 %6212, i64* %RCX.i318, align 8
  %6213 = icmp ult i32 %6211, %6208
  %6214 = icmp ult i32 %6211, %6210
  %6215 = or i1 %6213, %6214
  %6216 = zext i1 %6215 to i8
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6216, i8* %6217, align 1
  %6218 = and i32 %6211, 255
  %6219 = call i32 @llvm.ctpop.i32(i32 %6218)
  %6220 = trunc i32 %6219 to i8
  %6221 = and i8 %6220, 1
  %6222 = xor i8 %6221, 1
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6222, i8* %6223, align 1
  %6224 = xor i32 %6210, %6208
  %6225 = xor i32 %6224, %6211
  %6226 = lshr i32 %6225, 4
  %6227 = trunc i32 %6226 to i8
  %6228 = and i8 %6227, 1
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6228, i8* %6229, align 1
  %6230 = icmp eq i32 %6211, 0
  %6231 = zext i1 %6230 to i8
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6231, i8* %6232, align 1
  %6233 = lshr i32 %6211, 31
  %6234 = trunc i32 %6233 to i8
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6234, i8* %6235, align 1
  %6236 = lshr i32 %6208, 31
  %6237 = lshr i32 %6210, 31
  %6238 = xor i32 %6233, %6236
  %6239 = xor i32 %6233, %6237
  %6240 = add i32 %6238, %6239
  %6241 = icmp eq i32 %6240, 2
  %6242 = zext i1 %6241 to i8
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6242, i8* %6243, align 1
  store %struct.Memory* %loadMem_40078f, %struct.Memory** %MEMORY
  %loadMem_400792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6245 = getelementptr inbounds %struct.GPR, %struct.GPR* %6244, i32 0, i32 33
  %6246 = getelementptr inbounds %struct.Reg, %struct.Reg* %6245, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %6246 to i64*
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6248 = getelementptr inbounds %struct.GPR, %struct.GPR* %6247, i32 0, i32 5
  %6249 = getelementptr inbounds %struct.Reg, %struct.Reg* %6248, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %6249 to i64*
  %6250 = load i64, i64* %RCX.i316
  %6251 = load i64, i64* %PC.i315
  %6252 = add i64 %6251, 3
  store i64 %6252, i64* %PC.i315
  %6253 = and i64 %6250, 4294967295
  %6254 = lshr i64 %6253, 22
  %6255 = trunc i64 %6254 to i8
  %6256 = and i8 %6255, 1
  %6257 = lshr i64 %6254, 1
  %6258 = trunc i64 %6257 to i32
  %6259 = and i32 %6258, 2147483647
  %6260 = zext i32 %6259 to i64
  store i64 %6260, i64* %RCX.i316, align 8
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6256, i8* %6261, align 1
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6263 = and i32 %6258, 255
  %6264 = call i32 @llvm.ctpop.i32(i32 %6263)
  %6265 = trunc i32 %6264 to i8
  %6266 = and i8 %6265, 1
  %6267 = xor i8 %6266, 1
  store i8 %6267, i8* %6262, align 1
  %6268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6268, align 1
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6270 = icmp eq i32 %6259, 0
  %6271 = zext i1 %6270 to i8
  store i8 %6271, i8* %6269, align 1
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6272, align 1
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6273, align 1
  store %struct.Memory* %loadMem_400792, %struct.Memory** %MEMORY
  %loadMem_400795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6275 = getelementptr inbounds %struct.GPR, %struct.GPR* %6274, i32 0, i32 33
  %6276 = getelementptr inbounds %struct.Reg, %struct.Reg* %6275, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %6276 to i64*
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6278 = getelementptr inbounds %struct.GPR, %struct.GPR* %6277, i32 0, i32 5
  %6279 = getelementptr inbounds %struct.Reg, %struct.Reg* %6278, i32 0, i32 0
  %ECX.i313 = bitcast %union.anon* %6279 to i32*
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6281 = getelementptr inbounds %struct.GPR, %struct.GPR* %6280, i32 0, i32 1
  %6282 = getelementptr inbounds %struct.Reg, %struct.Reg* %6281, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %6282 to i64*
  %6283 = load i64, i64* %RAX.i314
  %6284 = load i32, i32* %ECX.i313
  %6285 = zext i32 %6284 to i64
  %6286 = load i64, i64* %PC.i312
  %6287 = add i64 %6286, 2
  store i64 %6287, i64* %PC.i312
  %6288 = or i64 %6285, %6283
  %6289 = trunc i64 %6288 to i32
  %6290 = and i64 %6288, 4294967295
  store i64 %6290, i64* %RAX.i314, align 8
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6291, align 1
  %6292 = and i32 %6289, 255
  %6293 = call i32 @llvm.ctpop.i32(i32 %6292)
  %6294 = trunc i32 %6293 to i8
  %6295 = and i8 %6294, 1
  %6296 = xor i8 %6295, 1
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6296, i8* %6297, align 1
  %6298 = icmp eq i32 %6289, 0
  %6299 = zext i1 %6298 to i8
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6299, i8* %6300, align 1
  %6301 = lshr i32 %6289, 31
  %6302 = trunc i32 %6301 to i8
  %6303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6302, i8* %6303, align 1
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6304, align 1
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6305, align 1
  store %struct.Memory* %loadMem_400795, %struct.Memory** %MEMORY
  %loadMem_400797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6307 = getelementptr inbounds %struct.GPR, %struct.GPR* %6306, i32 0, i32 33
  %6308 = getelementptr inbounds %struct.Reg, %struct.Reg* %6307, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %6308 to i64*
  %6309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6310 = getelementptr inbounds %struct.GPR, %struct.GPR* %6309, i32 0, i32 1
  %6311 = getelementptr inbounds %struct.Reg, %struct.Reg* %6310, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %6311 to i64*
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6313 = getelementptr inbounds %struct.GPR, %struct.GPR* %6312, i32 0, i32 15
  %6314 = getelementptr inbounds %struct.Reg, %struct.Reg* %6313, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %6314 to i64*
  %6315 = load i64, i64* %RAX.i310
  %6316 = load i64, i64* %RBP.i311
  %6317 = sub i64 %6316, 68
  %6318 = load i64, i64* %PC.i309
  %6319 = add i64 %6318, 3
  store i64 %6319, i64* %PC.i309
  %6320 = trunc i64 %6315 to i32
  %6321 = inttoptr i64 %6317 to i32*
  %6322 = load i32, i32* %6321
  %6323 = xor i32 %6322, %6320
  %6324 = zext i32 %6323 to i64
  store i64 %6324, i64* %RAX.i310, align 8
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6325, align 1
  %6326 = and i32 %6323, 255
  %6327 = call i32 @llvm.ctpop.i32(i32 %6326)
  %6328 = trunc i32 %6327 to i8
  %6329 = and i8 %6328, 1
  %6330 = xor i8 %6329, 1
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6330, i8* %6331, align 1
  %6332 = icmp eq i32 %6323, 0
  %6333 = zext i1 %6332 to i8
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6333, i8* %6334, align 1
  %6335 = lshr i32 %6323, 31
  %6336 = trunc i32 %6335 to i8
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6336, i8* %6337, align 1
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6338, align 1
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6339, align 1
  store %struct.Memory* %loadMem_400797, %struct.Memory** %MEMORY
  %loadMem_40079a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6341 = getelementptr inbounds %struct.GPR, %struct.GPR* %6340, i32 0, i32 33
  %6342 = getelementptr inbounds %struct.Reg, %struct.Reg* %6341, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %6342 to i64*
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6344 = getelementptr inbounds %struct.GPR, %struct.GPR* %6343, i32 0, i32 1
  %6345 = getelementptr inbounds %struct.Reg, %struct.Reg* %6344, i32 0, i32 0
  %EAX.i307 = bitcast %union.anon* %6345 to i32*
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 15
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %6348 to i64*
  %6349 = load i64, i64* %RBP.i308
  %6350 = sub i64 %6349, 68
  %6351 = load i32, i32* %EAX.i307
  %6352 = zext i32 %6351 to i64
  %6353 = load i64, i64* %PC.i306
  %6354 = add i64 %6353, 3
  store i64 %6354, i64* %PC.i306
  %6355 = inttoptr i64 %6350 to i32*
  store i32 %6351, i32* %6355
  store %struct.Memory* %loadMem_40079a, %struct.Memory** %MEMORY
  %loadMem_40079d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6357 = getelementptr inbounds %struct.GPR, %struct.GPR* %6356, i32 0, i32 33
  %6358 = getelementptr inbounds %struct.Reg, %struct.Reg* %6357, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %6358 to i64*
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6360 = getelementptr inbounds %struct.GPR, %struct.GPR* %6359, i32 0, i32 1
  %6361 = getelementptr inbounds %struct.Reg, %struct.Reg* %6360, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %6361 to i64*
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6363 = getelementptr inbounds %struct.GPR, %struct.GPR* %6362, i32 0, i32 15
  %6364 = getelementptr inbounds %struct.Reg, %struct.Reg* %6363, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %6364 to i64*
  %6365 = load i64, i64* %RBP.i305
  %6366 = sub i64 %6365, 68
  %6367 = load i64, i64* %PC.i303
  %6368 = add i64 %6367, 3
  store i64 %6368, i64* %PC.i303
  %6369 = inttoptr i64 %6366 to i32*
  %6370 = load i32, i32* %6369
  %6371 = zext i32 %6370 to i64
  store i64 %6371, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_40079d, %struct.Memory** %MEMORY
  %loadMem_4007a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6373 = getelementptr inbounds %struct.GPR, %struct.GPR* %6372, i32 0, i32 33
  %6374 = getelementptr inbounds %struct.Reg, %struct.Reg* %6373, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %6374 to i64*
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6376 = getelementptr inbounds %struct.GPR, %struct.GPR* %6375, i32 0, i32 1
  %6377 = getelementptr inbounds %struct.Reg, %struct.Reg* %6376, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %6377 to i64*
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6379 = getelementptr inbounds %struct.GPR, %struct.GPR* %6378, i32 0, i32 15
  %6380 = getelementptr inbounds %struct.Reg, %struct.Reg* %6379, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %6380 to i64*
  %6381 = load i64, i64* %RAX.i301
  %6382 = load i64, i64* %RBP.i302
  %6383 = sub i64 %6382, 72
  %6384 = load i64, i64* %PC.i300
  %6385 = add i64 %6384, 3
  store i64 %6385, i64* %PC.i300
  %6386 = trunc i64 %6381 to i32
  %6387 = inttoptr i64 %6383 to i32*
  %6388 = load i32, i32* %6387
  %6389 = add i32 %6388, %6386
  %6390 = zext i32 %6389 to i64
  store i64 %6390, i64* %RAX.i301, align 8
  %6391 = icmp ult i32 %6389, %6386
  %6392 = icmp ult i32 %6389, %6388
  %6393 = or i1 %6391, %6392
  %6394 = zext i1 %6393 to i8
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6394, i8* %6395, align 1
  %6396 = and i32 %6389, 255
  %6397 = call i32 @llvm.ctpop.i32(i32 %6396)
  %6398 = trunc i32 %6397 to i8
  %6399 = and i8 %6398, 1
  %6400 = xor i8 %6399, 1
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6400, i8* %6401, align 1
  %6402 = xor i32 %6388, %6386
  %6403 = xor i32 %6402, %6389
  %6404 = lshr i32 %6403, 4
  %6405 = trunc i32 %6404 to i8
  %6406 = and i8 %6405, 1
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6406, i8* %6407, align 1
  %6408 = icmp eq i32 %6389, 0
  %6409 = zext i1 %6408 to i8
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6409, i8* %6410, align 1
  %6411 = lshr i32 %6389, 31
  %6412 = trunc i32 %6411 to i8
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6412, i8* %6413, align 1
  %6414 = lshr i32 %6386, 31
  %6415 = lshr i32 %6388, 31
  %6416 = xor i32 %6411, %6414
  %6417 = xor i32 %6411, %6415
  %6418 = add i32 %6416, %6417
  %6419 = icmp eq i32 %6418, 2
  %6420 = zext i1 %6419 to i8
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6420, i8* %6421, align 1
  store %struct.Memory* %loadMem_4007a0, %struct.Memory** %MEMORY
  %loadMem_4007a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6423 = getelementptr inbounds %struct.GPR, %struct.GPR* %6422, i32 0, i32 33
  %6424 = getelementptr inbounds %struct.Reg, %struct.Reg* %6423, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %6424 to i64*
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6426 = getelementptr inbounds %struct.GPR, %struct.GPR* %6425, i32 0, i32 1
  %6427 = getelementptr inbounds %struct.Reg, %struct.Reg* %6426, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %6427 to i64*
  %6428 = load i64, i64* %RAX.i299
  %6429 = load i64, i64* %PC.i298
  %6430 = add i64 %6429, 3
  store i64 %6430, i64* %PC.i298
  %6431 = and i64 %6428, 4294967295
  %6432 = shl i64 %6431, 12
  %6433 = trunc i64 %6432 to i32
  %6434 = icmp slt i32 %6433, 0
  %6435 = shl i32 %6433, 1
  %6436 = zext i32 %6435 to i64
  store i64 %6436, i64* %RAX.i299, align 8
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6438 = zext i1 %6434 to i8
  store i8 %6438, i8* %6437, align 1
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6439, align 1
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6440, align 1
  %6441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6442 = icmp eq i32 %6435, 0
  %6443 = zext i1 %6442 to i8
  store i8 %6443, i8* %6441, align 1
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6445 = lshr i32 %6435, 31
  %6446 = trunc i32 %6445 to i8
  store i8 %6446, i8* %6444, align 1
  %6447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6447, align 1
  store %struct.Memory* %loadMem_4007a3, %struct.Memory** %MEMORY
  %loadMem_4007a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 33
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %6450 to i64*
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6452 = getelementptr inbounds %struct.GPR, %struct.GPR* %6451, i32 0, i32 5
  %6453 = getelementptr inbounds %struct.Reg, %struct.Reg* %6452, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %6453 to i64*
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6455 = getelementptr inbounds %struct.GPR, %struct.GPR* %6454, i32 0, i32 15
  %6456 = getelementptr inbounds %struct.Reg, %struct.Reg* %6455, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %6456 to i64*
  %6457 = load i64, i64* %RBP.i297
  %6458 = sub i64 %6457, 68
  %6459 = load i64, i64* %PC.i295
  %6460 = add i64 %6459, 3
  store i64 %6460, i64* %PC.i295
  %6461 = inttoptr i64 %6458 to i32*
  %6462 = load i32, i32* %6461
  %6463 = zext i32 %6462 to i64
  store i64 %6463, i64* %RCX.i296, align 8
  store %struct.Memory* %loadMem_4007a6, %struct.Memory** %MEMORY
  %loadMem_4007a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6465 = getelementptr inbounds %struct.GPR, %struct.GPR* %6464, i32 0, i32 33
  %6466 = getelementptr inbounds %struct.Reg, %struct.Reg* %6465, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %6466 to i64*
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6468 = getelementptr inbounds %struct.GPR, %struct.GPR* %6467, i32 0, i32 5
  %6469 = getelementptr inbounds %struct.Reg, %struct.Reg* %6468, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %6469 to i64*
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6471 = getelementptr inbounds %struct.GPR, %struct.GPR* %6470, i32 0, i32 15
  %6472 = getelementptr inbounds %struct.Reg, %struct.Reg* %6471, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %6472 to i64*
  %6473 = load i64, i64* %RCX.i293
  %6474 = load i64, i64* %RBP.i294
  %6475 = sub i64 %6474, 72
  %6476 = load i64, i64* %PC.i292
  %6477 = add i64 %6476, 3
  store i64 %6477, i64* %PC.i292
  %6478 = trunc i64 %6473 to i32
  %6479 = inttoptr i64 %6475 to i32*
  %6480 = load i32, i32* %6479
  %6481 = add i32 %6480, %6478
  %6482 = zext i32 %6481 to i64
  store i64 %6482, i64* %RCX.i293, align 8
  %6483 = icmp ult i32 %6481, %6478
  %6484 = icmp ult i32 %6481, %6480
  %6485 = or i1 %6483, %6484
  %6486 = zext i1 %6485 to i8
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6486, i8* %6487, align 1
  %6488 = and i32 %6481, 255
  %6489 = call i32 @llvm.ctpop.i32(i32 %6488)
  %6490 = trunc i32 %6489 to i8
  %6491 = and i8 %6490, 1
  %6492 = xor i8 %6491, 1
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6492, i8* %6493, align 1
  %6494 = xor i32 %6480, %6478
  %6495 = xor i32 %6494, %6481
  %6496 = lshr i32 %6495, 4
  %6497 = trunc i32 %6496 to i8
  %6498 = and i8 %6497, 1
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6498, i8* %6499, align 1
  %6500 = icmp eq i32 %6481, 0
  %6501 = zext i1 %6500 to i8
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6501, i8* %6502, align 1
  %6503 = lshr i32 %6481, 31
  %6504 = trunc i32 %6503 to i8
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6504, i8* %6505, align 1
  %6506 = lshr i32 %6478, 31
  %6507 = lshr i32 %6480, 31
  %6508 = xor i32 %6503, %6506
  %6509 = xor i32 %6503, %6507
  %6510 = add i32 %6508, %6509
  %6511 = icmp eq i32 %6510, 2
  %6512 = zext i1 %6511 to i8
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6512, i8* %6513, align 1
  store %struct.Memory* %loadMem_4007a9, %struct.Memory** %MEMORY
  %loadMem_4007ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6515 = getelementptr inbounds %struct.GPR, %struct.GPR* %6514, i32 0, i32 33
  %6516 = getelementptr inbounds %struct.Reg, %struct.Reg* %6515, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %6516 to i64*
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6518 = getelementptr inbounds %struct.GPR, %struct.GPR* %6517, i32 0, i32 5
  %6519 = getelementptr inbounds %struct.Reg, %struct.Reg* %6518, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %6519 to i64*
  %6520 = load i64, i64* %RCX.i291
  %6521 = load i64, i64* %PC.i290
  %6522 = add i64 %6521, 3
  store i64 %6522, i64* %PC.i290
  %6523 = and i64 %6520, 4294967295
  %6524 = lshr i64 %6523, 18
  %6525 = trunc i64 %6524 to i8
  %6526 = and i8 %6525, 1
  %6527 = lshr i64 %6524, 1
  %6528 = trunc i64 %6527 to i32
  %6529 = and i32 %6528, 2147483647
  %6530 = zext i32 %6529 to i64
  store i64 %6530, i64* %RCX.i291, align 8
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6526, i8* %6531, align 1
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6533 = and i32 %6528, 255
  %6534 = call i32 @llvm.ctpop.i32(i32 %6533)
  %6535 = trunc i32 %6534 to i8
  %6536 = and i8 %6535, 1
  %6537 = xor i8 %6536, 1
  store i8 %6537, i8* %6532, align 1
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6538, align 1
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6540 = icmp eq i32 %6529, 0
  %6541 = zext i1 %6540 to i8
  store i8 %6541, i8* %6539, align 1
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6542, align 1
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6543, align 1
  store %struct.Memory* %loadMem_4007ac, %struct.Memory** %MEMORY
  %loadMem_4007af = load %struct.Memory*, %struct.Memory** %MEMORY
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6545 = getelementptr inbounds %struct.GPR, %struct.GPR* %6544, i32 0, i32 33
  %6546 = getelementptr inbounds %struct.Reg, %struct.Reg* %6545, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %6546 to i64*
  %6547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6548 = getelementptr inbounds %struct.GPR, %struct.GPR* %6547, i32 0, i32 5
  %6549 = getelementptr inbounds %struct.Reg, %struct.Reg* %6548, i32 0, i32 0
  %ECX.i288 = bitcast %union.anon* %6549 to i32*
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6551 = getelementptr inbounds %struct.GPR, %struct.GPR* %6550, i32 0, i32 1
  %6552 = getelementptr inbounds %struct.Reg, %struct.Reg* %6551, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %6552 to i64*
  %6553 = load i64, i64* %RAX.i289
  %6554 = load i32, i32* %ECX.i288
  %6555 = zext i32 %6554 to i64
  %6556 = load i64, i64* %PC.i287
  %6557 = add i64 %6556, 2
  store i64 %6557, i64* %PC.i287
  %6558 = or i64 %6555, %6553
  %6559 = trunc i64 %6558 to i32
  %6560 = and i64 %6558, 4294967295
  store i64 %6560, i64* %RAX.i289, align 8
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6561, align 1
  %6562 = and i32 %6559, 255
  %6563 = call i32 @llvm.ctpop.i32(i32 %6562)
  %6564 = trunc i32 %6563 to i8
  %6565 = and i8 %6564, 1
  %6566 = xor i8 %6565, 1
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6566, i8* %6567, align 1
  %6568 = icmp eq i32 %6559, 0
  %6569 = zext i1 %6568 to i8
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6569, i8* %6570, align 1
  %6571 = lshr i32 %6559, 31
  %6572 = trunc i32 %6571 to i8
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6572, i8* %6573, align 1
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6574, align 1
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6575, align 1
  store %struct.Memory* %loadMem_4007af, %struct.Memory** %MEMORY
  %loadMem_4007b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6577 = getelementptr inbounds %struct.GPR, %struct.GPR* %6576, i32 0, i32 33
  %6578 = getelementptr inbounds %struct.Reg, %struct.Reg* %6577, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %6578 to i64*
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 1
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %6581 to i64*
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 15
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %6584 to i64*
  %6585 = load i64, i64* %RAX.i285
  %6586 = load i64, i64* %RBP.i286
  %6587 = sub i64 %6586, 80
  %6588 = load i64, i64* %PC.i284
  %6589 = add i64 %6588, 3
  store i64 %6589, i64* %PC.i284
  %6590 = trunc i64 %6585 to i32
  %6591 = inttoptr i64 %6587 to i32*
  %6592 = load i32, i32* %6591
  %6593 = xor i32 %6592, %6590
  %6594 = zext i32 %6593 to i64
  store i64 %6594, i64* %RAX.i285, align 8
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6595, align 1
  %6596 = and i32 %6593, 255
  %6597 = call i32 @llvm.ctpop.i32(i32 %6596)
  %6598 = trunc i32 %6597 to i8
  %6599 = and i8 %6598, 1
  %6600 = xor i8 %6599, 1
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6600, i8* %6601, align 1
  %6602 = icmp eq i32 %6593, 0
  %6603 = zext i1 %6602 to i8
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6603, i8* %6604, align 1
  %6605 = lshr i32 %6593, 31
  %6606 = trunc i32 %6605 to i8
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6606, i8* %6607, align 1
  %6608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6608, align 1
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6609, align 1
  store %struct.Memory* %loadMem_4007b1, %struct.Memory** %MEMORY
  %loadMem_4007b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6611 = getelementptr inbounds %struct.GPR, %struct.GPR* %6610, i32 0, i32 33
  %6612 = getelementptr inbounds %struct.Reg, %struct.Reg* %6611, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %6612 to i64*
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6614 = getelementptr inbounds %struct.GPR, %struct.GPR* %6613, i32 0, i32 1
  %6615 = getelementptr inbounds %struct.Reg, %struct.Reg* %6614, i32 0, i32 0
  %EAX.i282 = bitcast %union.anon* %6615 to i32*
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6617 = getelementptr inbounds %struct.GPR, %struct.GPR* %6616, i32 0, i32 15
  %6618 = getelementptr inbounds %struct.Reg, %struct.Reg* %6617, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %6618 to i64*
  %6619 = load i64, i64* %RBP.i283
  %6620 = sub i64 %6619, 80
  %6621 = load i32, i32* %EAX.i282
  %6622 = zext i32 %6621 to i64
  %6623 = load i64, i64* %PC.i281
  %6624 = add i64 %6623, 3
  store i64 %6624, i64* %PC.i281
  %6625 = inttoptr i64 %6620 to i32*
  store i32 %6621, i32* %6625
  store %struct.Memory* %loadMem_4007b4, %struct.Memory** %MEMORY
  %loadMem_4007b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6627 = getelementptr inbounds %struct.GPR, %struct.GPR* %6626, i32 0, i32 33
  %6628 = getelementptr inbounds %struct.Reg, %struct.Reg* %6627, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %6628 to i64*
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6630 = getelementptr inbounds %struct.GPR, %struct.GPR* %6629, i32 0, i32 1
  %6631 = getelementptr inbounds %struct.Reg, %struct.Reg* %6630, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %6631 to i64*
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6633 = getelementptr inbounds %struct.GPR, %struct.GPR* %6632, i32 0, i32 15
  %6634 = getelementptr inbounds %struct.Reg, %struct.Reg* %6633, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %6634 to i64*
  %6635 = load i64, i64* %RBP.i280
  %6636 = sub i64 %6635, 80
  %6637 = load i64, i64* %PC.i278
  %6638 = add i64 %6637, 3
  store i64 %6638, i64* %PC.i278
  %6639 = inttoptr i64 %6636 to i32*
  %6640 = load i32, i32* %6639
  %6641 = zext i32 %6640 to i64
  store i64 %6641, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_4007b7, %struct.Memory** %MEMORY
  %loadMem_4007ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6643 = getelementptr inbounds %struct.GPR, %struct.GPR* %6642, i32 0, i32 33
  %6644 = getelementptr inbounds %struct.Reg, %struct.Reg* %6643, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %6644 to i64*
  %6645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6646 = getelementptr inbounds %struct.GPR, %struct.GPR* %6645, i32 0, i32 1
  %6647 = getelementptr inbounds %struct.Reg, %struct.Reg* %6646, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %6647 to i64*
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6649 = getelementptr inbounds %struct.GPR, %struct.GPR* %6648, i32 0, i32 15
  %6650 = getelementptr inbounds %struct.Reg, %struct.Reg* %6649, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %6650 to i64*
  %6651 = load i64, i64* %RAX.i276
  %6652 = load i64, i64* %RBP.i277
  %6653 = sub i64 %6652, 68
  %6654 = load i64, i64* %PC.i275
  %6655 = add i64 %6654, 3
  store i64 %6655, i64* %PC.i275
  %6656 = trunc i64 %6651 to i32
  %6657 = inttoptr i64 %6653 to i32*
  %6658 = load i32, i32* %6657
  %6659 = add i32 %6658, %6656
  %6660 = zext i32 %6659 to i64
  store i64 %6660, i64* %RAX.i276, align 8
  %6661 = icmp ult i32 %6659, %6656
  %6662 = icmp ult i32 %6659, %6658
  %6663 = or i1 %6661, %6662
  %6664 = zext i1 %6663 to i8
  %6665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6664, i8* %6665, align 1
  %6666 = and i32 %6659, 255
  %6667 = call i32 @llvm.ctpop.i32(i32 %6666)
  %6668 = trunc i32 %6667 to i8
  %6669 = and i8 %6668, 1
  %6670 = xor i8 %6669, 1
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6670, i8* %6671, align 1
  %6672 = xor i32 %6658, %6656
  %6673 = xor i32 %6672, %6659
  %6674 = lshr i32 %6673, 4
  %6675 = trunc i32 %6674 to i8
  %6676 = and i8 %6675, 1
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6676, i8* %6677, align 1
  %6678 = icmp eq i32 %6659, 0
  %6679 = zext i1 %6678 to i8
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6679, i8* %6680, align 1
  %6681 = lshr i32 %6659, 31
  %6682 = trunc i32 %6681 to i8
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6682, i8* %6683, align 1
  %6684 = lshr i32 %6656, 31
  %6685 = lshr i32 %6658, 31
  %6686 = xor i32 %6681, %6684
  %6687 = xor i32 %6681, %6685
  %6688 = add i32 %6686, %6687
  %6689 = icmp eq i32 %6688, 2
  %6690 = zext i1 %6689 to i8
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6690, i8* %6691, align 1
  store %struct.Memory* %loadMem_4007ba, %struct.Memory** %MEMORY
  %loadMem_4007bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6693 = getelementptr inbounds %struct.GPR, %struct.GPR* %6692, i32 0, i32 33
  %6694 = getelementptr inbounds %struct.Reg, %struct.Reg* %6693, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %6694 to i64*
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6696 = getelementptr inbounds %struct.GPR, %struct.GPR* %6695, i32 0, i32 1
  %6697 = getelementptr inbounds %struct.Reg, %struct.Reg* %6696, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %6697 to i64*
  %6698 = load i64, i64* %RAX.i274
  %6699 = load i64, i64* %PC.i273
  %6700 = add i64 %6699, 3
  store i64 %6700, i64* %PC.i273
  %6701 = and i64 %6698, 4294967295
  %6702 = shl i64 %6701, 17
  %6703 = trunc i64 %6702 to i32
  %6704 = icmp slt i32 %6703, 0
  %6705 = shl i32 %6703, 1
  %6706 = zext i32 %6705 to i64
  store i64 %6706, i64* %RAX.i274, align 8
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6708 = zext i1 %6704 to i8
  store i8 %6708, i8* %6707, align 1
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6709, align 1
  %6710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6710, align 1
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6712 = icmp eq i32 %6705, 0
  %6713 = zext i1 %6712 to i8
  store i8 %6713, i8* %6711, align 1
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6715 = lshr i32 %6705, 31
  %6716 = trunc i32 %6715 to i8
  store i8 %6716, i8* %6714, align 1
  %6717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6717, align 1
  store %struct.Memory* %loadMem_4007bd, %struct.Memory** %MEMORY
  %loadMem_4007c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6719 = getelementptr inbounds %struct.GPR, %struct.GPR* %6718, i32 0, i32 33
  %6720 = getelementptr inbounds %struct.Reg, %struct.Reg* %6719, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %6720 to i64*
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6722 = getelementptr inbounds %struct.GPR, %struct.GPR* %6721, i32 0, i32 5
  %6723 = getelementptr inbounds %struct.Reg, %struct.Reg* %6722, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %6723 to i64*
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 15
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %6726 to i64*
  %6727 = load i64, i64* %RBP.i272
  %6728 = sub i64 %6727, 80
  %6729 = load i64, i64* %PC.i270
  %6730 = add i64 %6729, 3
  store i64 %6730, i64* %PC.i270
  %6731 = inttoptr i64 %6728 to i32*
  %6732 = load i32, i32* %6731
  %6733 = zext i32 %6732 to i64
  store i64 %6733, i64* %RCX.i271, align 8
  store %struct.Memory* %loadMem_4007c0, %struct.Memory** %MEMORY
  %loadMem_4007c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6735 = getelementptr inbounds %struct.GPR, %struct.GPR* %6734, i32 0, i32 33
  %6736 = getelementptr inbounds %struct.Reg, %struct.Reg* %6735, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %6736 to i64*
  %6737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6738 = getelementptr inbounds %struct.GPR, %struct.GPR* %6737, i32 0, i32 5
  %6739 = getelementptr inbounds %struct.Reg, %struct.Reg* %6738, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %6739 to i64*
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6741 = getelementptr inbounds %struct.GPR, %struct.GPR* %6740, i32 0, i32 15
  %6742 = getelementptr inbounds %struct.Reg, %struct.Reg* %6741, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %6742 to i64*
  %6743 = load i64, i64* %RCX.i268
  %6744 = load i64, i64* %RBP.i269
  %6745 = sub i64 %6744, 68
  %6746 = load i64, i64* %PC.i267
  %6747 = add i64 %6746, 3
  store i64 %6747, i64* %PC.i267
  %6748 = trunc i64 %6743 to i32
  %6749 = inttoptr i64 %6745 to i32*
  %6750 = load i32, i32* %6749
  %6751 = add i32 %6750, %6748
  %6752 = zext i32 %6751 to i64
  store i64 %6752, i64* %RCX.i268, align 8
  %6753 = icmp ult i32 %6751, %6748
  %6754 = icmp ult i32 %6751, %6750
  %6755 = or i1 %6753, %6754
  %6756 = zext i1 %6755 to i8
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6756, i8* %6757, align 1
  %6758 = and i32 %6751, 255
  %6759 = call i32 @llvm.ctpop.i32(i32 %6758)
  %6760 = trunc i32 %6759 to i8
  %6761 = and i8 %6760, 1
  %6762 = xor i8 %6761, 1
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6762, i8* %6763, align 1
  %6764 = xor i32 %6750, %6748
  %6765 = xor i32 %6764, %6751
  %6766 = lshr i32 %6765, 4
  %6767 = trunc i32 %6766 to i8
  %6768 = and i8 %6767, 1
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6768, i8* %6769, align 1
  %6770 = icmp eq i32 %6751, 0
  %6771 = zext i1 %6770 to i8
  %6772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6771, i8* %6772, align 1
  %6773 = lshr i32 %6751, 31
  %6774 = trunc i32 %6773 to i8
  %6775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6774, i8* %6775, align 1
  %6776 = lshr i32 %6748, 31
  %6777 = lshr i32 %6750, 31
  %6778 = xor i32 %6773, %6776
  %6779 = xor i32 %6773, %6777
  %6780 = add i32 %6778, %6779
  %6781 = icmp eq i32 %6780, 2
  %6782 = zext i1 %6781 to i8
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6782, i8* %6783, align 1
  store %struct.Memory* %loadMem_4007c3, %struct.Memory** %MEMORY
  %loadMem_4007c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6785 = getelementptr inbounds %struct.GPR, %struct.GPR* %6784, i32 0, i32 33
  %6786 = getelementptr inbounds %struct.Reg, %struct.Reg* %6785, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %6786 to i64*
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6788 = getelementptr inbounds %struct.GPR, %struct.GPR* %6787, i32 0, i32 5
  %6789 = getelementptr inbounds %struct.Reg, %struct.Reg* %6788, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %6789 to i64*
  %6790 = load i64, i64* %RCX.i266
  %6791 = load i64, i64* %PC.i265
  %6792 = add i64 %6791, 3
  store i64 %6792, i64* %PC.i265
  %6793 = and i64 %6790, 4294967295
  %6794 = lshr i64 %6793, 13
  %6795 = trunc i64 %6794 to i8
  %6796 = and i8 %6795, 1
  %6797 = lshr i64 %6794, 1
  %6798 = trunc i64 %6797 to i32
  %6799 = and i32 %6798, 2147483647
  %6800 = zext i32 %6799 to i64
  store i64 %6800, i64* %RCX.i266, align 8
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6796, i8* %6801, align 1
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6803 = and i32 %6798, 255
  %6804 = call i32 @llvm.ctpop.i32(i32 %6803)
  %6805 = trunc i32 %6804 to i8
  %6806 = and i8 %6805, 1
  %6807 = xor i8 %6806, 1
  store i8 %6807, i8* %6802, align 1
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6808, align 1
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6810 = icmp eq i32 %6799, 0
  %6811 = zext i1 %6810 to i8
  store i8 %6811, i8* %6809, align 1
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6812, align 1
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6813, align 1
  store %struct.Memory* %loadMem_4007c6, %struct.Memory** %MEMORY
  %loadMem_4007c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6815 = getelementptr inbounds %struct.GPR, %struct.GPR* %6814, i32 0, i32 33
  %6816 = getelementptr inbounds %struct.Reg, %struct.Reg* %6815, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %6816 to i64*
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6818 = getelementptr inbounds %struct.GPR, %struct.GPR* %6817, i32 0, i32 5
  %6819 = getelementptr inbounds %struct.Reg, %struct.Reg* %6818, i32 0, i32 0
  %ECX.i263 = bitcast %union.anon* %6819 to i32*
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 1
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %6822 to i64*
  %6823 = load i64, i64* %RAX.i264
  %6824 = load i32, i32* %ECX.i263
  %6825 = zext i32 %6824 to i64
  %6826 = load i64, i64* %PC.i262
  %6827 = add i64 %6826, 2
  store i64 %6827, i64* %PC.i262
  %6828 = or i64 %6825, %6823
  %6829 = trunc i64 %6828 to i32
  %6830 = and i64 %6828, 4294967295
  store i64 %6830, i64* %RAX.i264, align 8
  %6831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6831, align 1
  %6832 = and i32 %6829, 255
  %6833 = call i32 @llvm.ctpop.i32(i32 %6832)
  %6834 = trunc i32 %6833 to i8
  %6835 = and i8 %6834, 1
  %6836 = xor i8 %6835, 1
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6836, i8* %6837, align 1
  %6838 = icmp eq i32 %6829, 0
  %6839 = zext i1 %6838 to i8
  %6840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6839, i8* %6840, align 1
  %6841 = lshr i32 %6829, 31
  %6842 = trunc i32 %6841 to i8
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6842, i8* %6843, align 1
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6844, align 1
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6845, align 1
  store %struct.Memory* %loadMem_4007c9, %struct.Memory** %MEMORY
  %loadMem_4007cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6847 = getelementptr inbounds %struct.GPR, %struct.GPR* %6846, i32 0, i32 33
  %6848 = getelementptr inbounds %struct.Reg, %struct.Reg* %6847, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %6848 to i64*
  %6849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6850 = getelementptr inbounds %struct.GPR, %struct.GPR* %6849, i32 0, i32 1
  %6851 = getelementptr inbounds %struct.Reg, %struct.Reg* %6850, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %6851 to i64*
  %6852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6853 = getelementptr inbounds %struct.GPR, %struct.GPR* %6852, i32 0, i32 15
  %6854 = getelementptr inbounds %struct.Reg, %struct.Reg* %6853, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %6854 to i64*
  %6855 = load i64, i64* %RAX.i260
  %6856 = load i64, i64* %RBP.i261
  %6857 = sub i64 %6856, 76
  %6858 = load i64, i64* %PC.i259
  %6859 = add i64 %6858, 3
  store i64 %6859, i64* %PC.i259
  %6860 = trunc i64 %6855 to i32
  %6861 = inttoptr i64 %6857 to i32*
  %6862 = load i32, i32* %6861
  %6863 = xor i32 %6862, %6860
  %6864 = zext i32 %6863 to i64
  store i64 %6864, i64* %RAX.i260, align 8
  %6865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6865, align 1
  %6866 = and i32 %6863, 255
  %6867 = call i32 @llvm.ctpop.i32(i32 %6866)
  %6868 = trunc i32 %6867 to i8
  %6869 = and i8 %6868, 1
  %6870 = xor i8 %6869, 1
  %6871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6870, i8* %6871, align 1
  %6872 = icmp eq i32 %6863, 0
  %6873 = zext i1 %6872 to i8
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6873, i8* %6874, align 1
  %6875 = lshr i32 %6863, 31
  %6876 = trunc i32 %6875 to i8
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6876, i8* %6877, align 1
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6878, align 1
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6879, align 1
  store %struct.Memory* %loadMem_4007cb, %struct.Memory** %MEMORY
  %loadMem_4007ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6881 = getelementptr inbounds %struct.GPR, %struct.GPR* %6880, i32 0, i32 33
  %6882 = getelementptr inbounds %struct.Reg, %struct.Reg* %6881, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %6882 to i64*
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6884 = getelementptr inbounds %struct.GPR, %struct.GPR* %6883, i32 0, i32 1
  %6885 = getelementptr inbounds %struct.Reg, %struct.Reg* %6884, i32 0, i32 0
  %EAX.i257 = bitcast %union.anon* %6885 to i32*
  %6886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6887 = getelementptr inbounds %struct.GPR, %struct.GPR* %6886, i32 0, i32 15
  %6888 = getelementptr inbounds %struct.Reg, %struct.Reg* %6887, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %6888 to i64*
  %6889 = load i64, i64* %RBP.i258
  %6890 = sub i64 %6889, 76
  %6891 = load i32, i32* %EAX.i257
  %6892 = zext i32 %6891 to i64
  %6893 = load i64, i64* %PC.i256
  %6894 = add i64 %6893, 3
  store i64 %6894, i64* %PC.i256
  %6895 = inttoptr i64 %6890 to i32*
  store i32 %6891, i32* %6895
  store %struct.Memory* %loadMem_4007ce, %struct.Memory** %MEMORY
  %loadMem_4007d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6897 = getelementptr inbounds %struct.GPR, %struct.GPR* %6896, i32 0, i32 33
  %6898 = getelementptr inbounds %struct.Reg, %struct.Reg* %6897, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %6898 to i64*
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6900 = getelementptr inbounds %struct.GPR, %struct.GPR* %6899, i32 0, i32 1
  %6901 = getelementptr inbounds %struct.Reg, %struct.Reg* %6900, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %6901 to i64*
  %6902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6903 = getelementptr inbounds %struct.GPR, %struct.GPR* %6902, i32 0, i32 15
  %6904 = getelementptr inbounds %struct.Reg, %struct.Reg* %6903, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %6904 to i64*
  %6905 = load i64, i64* %RBP.i255
  %6906 = sub i64 %6905, 56
  %6907 = load i64, i64* %PC.i253
  %6908 = add i64 %6907, 3
  store i64 %6908, i64* %PC.i253
  %6909 = inttoptr i64 %6906 to i32*
  %6910 = load i32, i32* %6909
  %6911 = zext i32 %6910 to i64
  store i64 %6911, i64* %RAX.i254, align 8
  store %struct.Memory* %loadMem_4007d1, %struct.Memory** %MEMORY
  %loadMem_4007d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6913 = getelementptr inbounds %struct.GPR, %struct.GPR* %6912, i32 0, i32 33
  %6914 = getelementptr inbounds %struct.Reg, %struct.Reg* %6913, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %6914 to i64*
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 1
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %6917 to i64*
  %6918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6919 = getelementptr inbounds %struct.GPR, %struct.GPR* %6918, i32 0, i32 15
  %6920 = getelementptr inbounds %struct.Reg, %struct.Reg* %6919, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %6920 to i64*
  %6921 = load i64, i64* %RAX.i251
  %6922 = load i64, i64* %RBP.i252
  %6923 = sub i64 %6922, 60
  %6924 = load i64, i64* %PC.i250
  %6925 = add i64 %6924, 3
  store i64 %6925, i64* %PC.i250
  %6926 = trunc i64 %6921 to i32
  %6927 = inttoptr i64 %6923 to i32*
  %6928 = load i32, i32* %6927
  %6929 = add i32 %6928, %6926
  %6930 = zext i32 %6929 to i64
  store i64 %6930, i64* %RAX.i251, align 8
  %6931 = icmp ult i32 %6929, %6926
  %6932 = icmp ult i32 %6929, %6928
  %6933 = or i1 %6931, %6932
  %6934 = zext i1 %6933 to i8
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6934, i8* %6935, align 1
  %6936 = and i32 %6929, 255
  %6937 = call i32 @llvm.ctpop.i32(i32 %6936)
  %6938 = trunc i32 %6937 to i8
  %6939 = and i8 %6938, 1
  %6940 = xor i8 %6939, 1
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6940, i8* %6941, align 1
  %6942 = xor i32 %6928, %6926
  %6943 = xor i32 %6942, %6929
  %6944 = lshr i32 %6943, 4
  %6945 = trunc i32 %6944 to i8
  %6946 = and i8 %6945, 1
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6946, i8* %6947, align 1
  %6948 = icmp eq i32 %6929, 0
  %6949 = zext i1 %6948 to i8
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6949, i8* %6950, align 1
  %6951 = lshr i32 %6929, 31
  %6952 = trunc i32 %6951 to i8
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6952, i8* %6953, align 1
  %6954 = lshr i32 %6926, 31
  %6955 = lshr i32 %6928, 31
  %6956 = xor i32 %6951, %6954
  %6957 = xor i32 %6951, %6955
  %6958 = add i32 %6956, %6957
  %6959 = icmp eq i32 %6958, 2
  %6960 = zext i1 %6959 to i8
  %6961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6960, i8* %6961, align 1
  store %struct.Memory* %loadMem_4007d4, %struct.Memory** %MEMORY
  %loadMem_4007d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6963 = getelementptr inbounds %struct.GPR, %struct.GPR* %6962, i32 0, i32 33
  %6964 = getelementptr inbounds %struct.Reg, %struct.Reg* %6963, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %6964 to i64*
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6966 = getelementptr inbounds %struct.GPR, %struct.GPR* %6965, i32 0, i32 1
  %6967 = getelementptr inbounds %struct.Reg, %struct.Reg* %6966, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %6967 to i64*
  %6968 = load i64, i64* %RAX.i249
  %6969 = load i64, i64* %PC.i248
  %6970 = add i64 %6969, 3
  store i64 %6970, i64* %PC.i248
  %6971 = and i64 %6968, 4294967295
  %6972 = shl i64 %6971, 6
  %6973 = trunc i64 %6972 to i32
  %6974 = icmp slt i32 %6973, 0
  %6975 = shl i32 %6973, 1
  %6976 = zext i32 %6975 to i64
  store i64 %6976, i64* %RAX.i249, align 8
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6978 = zext i1 %6974 to i8
  store i8 %6978, i8* %6977, align 1
  %6979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6980 = and i32 %6975, 254
  %6981 = call i32 @llvm.ctpop.i32(i32 %6980)
  %6982 = trunc i32 %6981 to i8
  %6983 = and i8 %6982, 1
  %6984 = xor i8 %6983, 1
  store i8 %6984, i8* %6979, align 1
  %6985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6985, align 1
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6987 = icmp eq i32 %6975, 0
  %6988 = zext i1 %6987 to i8
  store i8 %6988, i8* %6986, align 1
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6990 = lshr i32 %6975, 31
  %6991 = trunc i32 %6990 to i8
  store i8 %6991, i8* %6989, align 1
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6992, align 1
  store %struct.Memory* %loadMem_4007d7, %struct.Memory** %MEMORY
  %loadMem_4007da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6994 = getelementptr inbounds %struct.GPR, %struct.GPR* %6993, i32 0, i32 33
  %6995 = getelementptr inbounds %struct.Reg, %struct.Reg* %6994, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %6995 to i64*
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6997 = getelementptr inbounds %struct.GPR, %struct.GPR* %6996, i32 0, i32 5
  %6998 = getelementptr inbounds %struct.Reg, %struct.Reg* %6997, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %6998 to i64*
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7000 = getelementptr inbounds %struct.GPR, %struct.GPR* %6999, i32 0, i32 15
  %7001 = getelementptr inbounds %struct.Reg, %struct.Reg* %7000, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %7001 to i64*
  %7002 = load i64, i64* %RBP.i247
  %7003 = sub i64 %7002, 56
  %7004 = load i64, i64* %PC.i245
  %7005 = add i64 %7004, 3
  store i64 %7005, i64* %PC.i245
  %7006 = inttoptr i64 %7003 to i32*
  %7007 = load i32, i32* %7006
  %7008 = zext i32 %7007 to i64
  store i64 %7008, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_4007da, %struct.Memory** %MEMORY
  %loadMem_4007dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7010 = getelementptr inbounds %struct.GPR, %struct.GPR* %7009, i32 0, i32 33
  %7011 = getelementptr inbounds %struct.Reg, %struct.Reg* %7010, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %7011 to i64*
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7013 = getelementptr inbounds %struct.GPR, %struct.GPR* %7012, i32 0, i32 5
  %7014 = getelementptr inbounds %struct.Reg, %struct.Reg* %7013, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %7014 to i64*
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7016 = getelementptr inbounds %struct.GPR, %struct.GPR* %7015, i32 0, i32 15
  %7017 = getelementptr inbounds %struct.Reg, %struct.Reg* %7016, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %7017 to i64*
  %7018 = load i64, i64* %RCX.i243
  %7019 = load i64, i64* %RBP.i244
  %7020 = sub i64 %7019, 60
  %7021 = load i64, i64* %PC.i242
  %7022 = add i64 %7021, 3
  store i64 %7022, i64* %PC.i242
  %7023 = trunc i64 %7018 to i32
  %7024 = inttoptr i64 %7020 to i32*
  %7025 = load i32, i32* %7024
  %7026 = add i32 %7025, %7023
  %7027 = zext i32 %7026 to i64
  store i64 %7027, i64* %RCX.i243, align 8
  %7028 = icmp ult i32 %7026, %7023
  %7029 = icmp ult i32 %7026, %7025
  %7030 = or i1 %7028, %7029
  %7031 = zext i1 %7030 to i8
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7031, i8* %7032, align 1
  %7033 = and i32 %7026, 255
  %7034 = call i32 @llvm.ctpop.i32(i32 %7033)
  %7035 = trunc i32 %7034 to i8
  %7036 = and i8 %7035, 1
  %7037 = xor i8 %7036, 1
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7037, i8* %7038, align 1
  %7039 = xor i32 %7025, %7023
  %7040 = xor i32 %7039, %7026
  %7041 = lshr i32 %7040, 4
  %7042 = trunc i32 %7041 to i8
  %7043 = and i8 %7042, 1
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7043, i8* %7044, align 1
  %7045 = icmp eq i32 %7026, 0
  %7046 = zext i1 %7045 to i8
  %7047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7046, i8* %7047, align 1
  %7048 = lshr i32 %7026, 31
  %7049 = trunc i32 %7048 to i8
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7049, i8* %7050, align 1
  %7051 = lshr i32 %7023, 31
  %7052 = lshr i32 %7025, 31
  %7053 = xor i32 %7048, %7051
  %7054 = xor i32 %7048, %7052
  %7055 = add i32 %7053, %7054
  %7056 = icmp eq i32 %7055, 2
  %7057 = zext i1 %7056 to i8
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7057, i8* %7058, align 1
  store %struct.Memory* %loadMem_4007dd, %struct.Memory** %MEMORY
  %loadMem_4007e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7060 = getelementptr inbounds %struct.GPR, %struct.GPR* %7059, i32 0, i32 33
  %7061 = getelementptr inbounds %struct.Reg, %struct.Reg* %7060, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %7061 to i64*
  %7062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7063 = getelementptr inbounds %struct.GPR, %struct.GPR* %7062, i32 0, i32 5
  %7064 = getelementptr inbounds %struct.Reg, %struct.Reg* %7063, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %7064 to i64*
  %7065 = load i64, i64* %RCX.i241
  %7066 = load i64, i64* %PC.i240
  %7067 = add i64 %7066, 3
  store i64 %7067, i64* %PC.i240
  %7068 = and i64 %7065, 4294967295
  %7069 = lshr i64 %7068, 24
  %7070 = trunc i64 %7069 to i8
  %7071 = and i8 %7070, 1
  %7072 = lshr i64 %7069, 1
  %7073 = trunc i64 %7072 to i32
  %7074 = and i32 %7073, 2147483647
  %7075 = zext i32 %7074 to i64
  store i64 %7075, i64* %RCX.i241, align 8
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7071, i8* %7076, align 1
  %7077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7078 = and i32 %7073, 255
  %7079 = call i32 @llvm.ctpop.i32(i32 %7078)
  %7080 = trunc i32 %7079 to i8
  %7081 = and i8 %7080, 1
  %7082 = xor i8 %7081, 1
  store i8 %7082, i8* %7077, align 1
  %7083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7083, align 1
  %7084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7085 = icmp eq i32 %7074, 0
  %7086 = zext i1 %7085 to i8
  store i8 %7086, i8* %7084, align 1
  %7087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7087, align 1
  %7088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7088, align 1
  store %struct.Memory* %loadMem_4007e0, %struct.Memory** %MEMORY
  %loadMem_4007e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7090 = getelementptr inbounds %struct.GPR, %struct.GPR* %7089, i32 0, i32 33
  %7091 = getelementptr inbounds %struct.Reg, %struct.Reg* %7090, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %7091 to i64*
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7093 = getelementptr inbounds %struct.GPR, %struct.GPR* %7092, i32 0, i32 5
  %7094 = getelementptr inbounds %struct.Reg, %struct.Reg* %7093, i32 0, i32 0
  %ECX.i238 = bitcast %union.anon* %7094 to i32*
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7096 = getelementptr inbounds %struct.GPR, %struct.GPR* %7095, i32 0, i32 1
  %7097 = getelementptr inbounds %struct.Reg, %struct.Reg* %7096, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %7097 to i64*
  %7098 = load i64, i64* %RAX.i239
  %7099 = load i32, i32* %ECX.i238
  %7100 = zext i32 %7099 to i64
  %7101 = load i64, i64* %PC.i237
  %7102 = add i64 %7101, 2
  store i64 %7102, i64* %PC.i237
  %7103 = or i64 %7100, %7098
  %7104 = trunc i64 %7103 to i32
  %7105 = and i64 %7103, 4294967295
  store i64 %7105, i64* %RAX.i239, align 8
  %7106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7106, align 1
  %7107 = and i32 %7104, 255
  %7108 = call i32 @llvm.ctpop.i32(i32 %7107)
  %7109 = trunc i32 %7108 to i8
  %7110 = and i8 %7109, 1
  %7111 = xor i8 %7110, 1
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7111, i8* %7112, align 1
  %7113 = icmp eq i32 %7104, 0
  %7114 = zext i1 %7113 to i8
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7114, i8* %7115, align 1
  %7116 = lshr i32 %7104, 31
  %7117 = trunc i32 %7116 to i8
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7117, i8* %7118, align 1
  %7119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7119, align 1
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7120, align 1
  store %struct.Memory* %loadMem_4007e3, %struct.Memory** %MEMORY
  %loadMem_4007e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7122 = getelementptr inbounds %struct.GPR, %struct.GPR* %7121, i32 0, i32 33
  %7123 = getelementptr inbounds %struct.Reg, %struct.Reg* %7122, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %7123 to i64*
  %7124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7125 = getelementptr inbounds %struct.GPR, %struct.GPR* %7124, i32 0, i32 1
  %7126 = getelementptr inbounds %struct.Reg, %struct.Reg* %7125, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %7126 to i64*
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7128 = getelementptr inbounds %struct.GPR, %struct.GPR* %7127, i32 0, i32 15
  %7129 = getelementptr inbounds %struct.Reg, %struct.Reg* %7128, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %7129 to i64*
  %7130 = load i64, i64* %RAX.i235
  %7131 = load i64, i64* %RBP.i236
  %7132 = sub i64 %7131, 52
  %7133 = load i64, i64* %PC.i234
  %7134 = add i64 %7133, 3
  store i64 %7134, i64* %PC.i234
  %7135 = trunc i64 %7130 to i32
  %7136 = inttoptr i64 %7132 to i32*
  %7137 = load i32, i32* %7136
  %7138 = xor i32 %7137, %7135
  %7139 = zext i32 %7138 to i64
  store i64 %7139, i64* %RAX.i235, align 8
  %7140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7140, align 1
  %7141 = and i32 %7138, 255
  %7142 = call i32 @llvm.ctpop.i32(i32 %7141)
  %7143 = trunc i32 %7142 to i8
  %7144 = and i8 %7143, 1
  %7145 = xor i8 %7144, 1
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7145, i8* %7146, align 1
  %7147 = icmp eq i32 %7138, 0
  %7148 = zext i1 %7147 to i8
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7148, i8* %7149, align 1
  %7150 = lshr i32 %7138, 31
  %7151 = trunc i32 %7150 to i8
  %7152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7151, i8* %7152, align 1
  %7153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7153, align 1
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7154, align 1
  store %struct.Memory* %loadMem_4007e5, %struct.Memory** %MEMORY
  %loadMem_4007e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7156 = getelementptr inbounds %struct.GPR, %struct.GPR* %7155, i32 0, i32 33
  %7157 = getelementptr inbounds %struct.Reg, %struct.Reg* %7156, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %7157 to i64*
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7159 = getelementptr inbounds %struct.GPR, %struct.GPR* %7158, i32 0, i32 1
  %7160 = getelementptr inbounds %struct.Reg, %struct.Reg* %7159, i32 0, i32 0
  %EAX.i232 = bitcast %union.anon* %7160 to i32*
  %7161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7162 = getelementptr inbounds %struct.GPR, %struct.GPR* %7161, i32 0, i32 15
  %7163 = getelementptr inbounds %struct.Reg, %struct.Reg* %7162, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %7163 to i64*
  %7164 = load i64, i64* %RBP.i233
  %7165 = sub i64 %7164, 52
  %7166 = load i32, i32* %EAX.i232
  %7167 = zext i32 %7166 to i64
  %7168 = load i64, i64* %PC.i231
  %7169 = add i64 %7168, 3
  store i64 %7169, i64* %PC.i231
  %7170 = inttoptr i64 %7165 to i32*
  store i32 %7166, i32* %7170
  store %struct.Memory* %loadMem_4007e8, %struct.Memory** %MEMORY
  %loadMem_4007eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7172 = getelementptr inbounds %struct.GPR, %struct.GPR* %7171, i32 0, i32 33
  %7173 = getelementptr inbounds %struct.Reg, %struct.Reg* %7172, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %7173 to i64*
  %7174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7175 = getelementptr inbounds %struct.GPR, %struct.GPR* %7174, i32 0, i32 1
  %7176 = getelementptr inbounds %struct.Reg, %struct.Reg* %7175, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %7176 to i64*
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7178 = getelementptr inbounds %struct.GPR, %struct.GPR* %7177, i32 0, i32 15
  %7179 = getelementptr inbounds %struct.Reg, %struct.Reg* %7178, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %7179 to i64*
  %7180 = load i64, i64* %RBP.i230
  %7181 = sub i64 %7180, 52
  %7182 = load i64, i64* %PC.i228
  %7183 = add i64 %7182, 3
  store i64 %7183, i64* %PC.i228
  %7184 = inttoptr i64 %7181 to i32*
  %7185 = load i32, i32* %7184
  %7186 = zext i32 %7185 to i64
  store i64 %7186, i64* %RAX.i229, align 8
  store %struct.Memory* %loadMem_4007eb, %struct.Memory** %MEMORY
  %loadMem_4007ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %7187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7188 = getelementptr inbounds %struct.GPR, %struct.GPR* %7187, i32 0, i32 33
  %7189 = getelementptr inbounds %struct.Reg, %struct.Reg* %7188, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %7189 to i64*
  %7190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7191 = getelementptr inbounds %struct.GPR, %struct.GPR* %7190, i32 0, i32 1
  %7192 = getelementptr inbounds %struct.Reg, %struct.Reg* %7191, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %7192 to i64*
  %7193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7194 = getelementptr inbounds %struct.GPR, %struct.GPR* %7193, i32 0, i32 15
  %7195 = getelementptr inbounds %struct.Reg, %struct.Reg* %7194, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %7195 to i64*
  %7196 = load i64, i64* %RAX.i226
  %7197 = load i64, i64* %RBP.i227
  %7198 = sub i64 %7197, 56
  %7199 = load i64, i64* %PC.i225
  %7200 = add i64 %7199, 3
  store i64 %7200, i64* %PC.i225
  %7201 = trunc i64 %7196 to i32
  %7202 = inttoptr i64 %7198 to i32*
  %7203 = load i32, i32* %7202
  %7204 = add i32 %7203, %7201
  %7205 = zext i32 %7204 to i64
  store i64 %7205, i64* %RAX.i226, align 8
  %7206 = icmp ult i32 %7204, %7201
  %7207 = icmp ult i32 %7204, %7203
  %7208 = or i1 %7206, %7207
  %7209 = zext i1 %7208 to i8
  %7210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7209, i8* %7210, align 1
  %7211 = and i32 %7204, 255
  %7212 = call i32 @llvm.ctpop.i32(i32 %7211)
  %7213 = trunc i32 %7212 to i8
  %7214 = and i8 %7213, 1
  %7215 = xor i8 %7214, 1
  %7216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7215, i8* %7216, align 1
  %7217 = xor i32 %7203, %7201
  %7218 = xor i32 %7217, %7204
  %7219 = lshr i32 %7218, 4
  %7220 = trunc i32 %7219 to i8
  %7221 = and i8 %7220, 1
  %7222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7221, i8* %7222, align 1
  %7223 = icmp eq i32 %7204, 0
  %7224 = zext i1 %7223 to i8
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7224, i8* %7225, align 1
  %7226 = lshr i32 %7204, 31
  %7227 = trunc i32 %7226 to i8
  %7228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7227, i8* %7228, align 1
  %7229 = lshr i32 %7201, 31
  %7230 = lshr i32 %7203, 31
  %7231 = xor i32 %7226, %7229
  %7232 = xor i32 %7226, %7230
  %7233 = add i32 %7231, %7232
  %7234 = icmp eq i32 %7233, 2
  %7235 = zext i1 %7234 to i8
  %7236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7235, i8* %7236, align 1
  store %struct.Memory* %loadMem_4007ee, %struct.Memory** %MEMORY
  %loadMem_4007f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7238 = getelementptr inbounds %struct.GPR, %struct.GPR* %7237, i32 0, i32 33
  %7239 = getelementptr inbounds %struct.Reg, %struct.Reg* %7238, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %7239 to i64*
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7241 = getelementptr inbounds %struct.GPR, %struct.GPR* %7240, i32 0, i32 1
  %7242 = getelementptr inbounds %struct.Reg, %struct.Reg* %7241, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %7242 to i64*
  %7243 = load i64, i64* %RAX.i224
  %7244 = load i64, i64* %PC.i223
  %7245 = add i64 %7244, 3
  store i64 %7245, i64* %PC.i223
  %7246 = and i64 %7243, 4294967295
  %7247 = shl i64 %7246, 8
  %7248 = trunc i64 %7247 to i32
  %7249 = icmp slt i32 %7248, 0
  %7250 = shl i32 %7248, 1
  %7251 = zext i32 %7250 to i64
  store i64 %7251, i64* %RAX.i224, align 8
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7253 = zext i1 %7249 to i8
  store i8 %7253, i8* %7252, align 1
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7254, align 1
  %7255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7255, align 1
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7257 = icmp eq i32 %7250, 0
  %7258 = zext i1 %7257 to i8
  store i8 %7258, i8* %7256, align 1
  %7259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7260 = lshr i32 %7250, 31
  %7261 = trunc i32 %7260 to i8
  store i8 %7261, i8* %7259, align 1
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7262, align 1
  store %struct.Memory* %loadMem_4007f1, %struct.Memory** %MEMORY
  %loadMem_4007f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7264 = getelementptr inbounds %struct.GPR, %struct.GPR* %7263, i32 0, i32 33
  %7265 = getelementptr inbounds %struct.Reg, %struct.Reg* %7264, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %7265 to i64*
  %7266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7267 = getelementptr inbounds %struct.GPR, %struct.GPR* %7266, i32 0, i32 5
  %7268 = getelementptr inbounds %struct.Reg, %struct.Reg* %7267, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %7268 to i64*
  %7269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7270 = getelementptr inbounds %struct.GPR, %struct.GPR* %7269, i32 0, i32 15
  %7271 = getelementptr inbounds %struct.Reg, %struct.Reg* %7270, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %7271 to i64*
  %7272 = load i64, i64* %RBP.i222
  %7273 = sub i64 %7272, 52
  %7274 = load i64, i64* %PC.i220
  %7275 = add i64 %7274, 3
  store i64 %7275, i64* %PC.i220
  %7276 = inttoptr i64 %7273 to i32*
  %7277 = load i32, i32* %7276
  %7278 = zext i32 %7277 to i64
  store i64 %7278, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_4007f4, %struct.Memory** %MEMORY
  %loadMem_4007f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7280 = getelementptr inbounds %struct.GPR, %struct.GPR* %7279, i32 0, i32 33
  %7281 = getelementptr inbounds %struct.Reg, %struct.Reg* %7280, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %7281 to i64*
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7283 = getelementptr inbounds %struct.GPR, %struct.GPR* %7282, i32 0, i32 5
  %7284 = getelementptr inbounds %struct.Reg, %struct.Reg* %7283, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %7284 to i64*
  %7285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7286 = getelementptr inbounds %struct.GPR, %struct.GPR* %7285, i32 0, i32 15
  %7287 = getelementptr inbounds %struct.Reg, %struct.Reg* %7286, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %7287 to i64*
  %7288 = load i64, i64* %RCX.i218
  %7289 = load i64, i64* %RBP.i219
  %7290 = sub i64 %7289, 56
  %7291 = load i64, i64* %PC.i217
  %7292 = add i64 %7291, 3
  store i64 %7292, i64* %PC.i217
  %7293 = trunc i64 %7288 to i32
  %7294 = inttoptr i64 %7290 to i32*
  %7295 = load i32, i32* %7294
  %7296 = add i32 %7295, %7293
  %7297 = zext i32 %7296 to i64
  store i64 %7297, i64* %RCX.i218, align 8
  %7298 = icmp ult i32 %7296, %7293
  %7299 = icmp ult i32 %7296, %7295
  %7300 = or i1 %7298, %7299
  %7301 = zext i1 %7300 to i8
  %7302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7301, i8* %7302, align 1
  %7303 = and i32 %7296, 255
  %7304 = call i32 @llvm.ctpop.i32(i32 %7303)
  %7305 = trunc i32 %7304 to i8
  %7306 = and i8 %7305, 1
  %7307 = xor i8 %7306, 1
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7307, i8* %7308, align 1
  %7309 = xor i32 %7295, %7293
  %7310 = xor i32 %7309, %7296
  %7311 = lshr i32 %7310, 4
  %7312 = trunc i32 %7311 to i8
  %7313 = and i8 %7312, 1
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7313, i8* %7314, align 1
  %7315 = icmp eq i32 %7296, 0
  %7316 = zext i1 %7315 to i8
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7316, i8* %7317, align 1
  %7318 = lshr i32 %7296, 31
  %7319 = trunc i32 %7318 to i8
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7319, i8* %7320, align 1
  %7321 = lshr i32 %7293, 31
  %7322 = lshr i32 %7295, 31
  %7323 = xor i32 %7318, %7321
  %7324 = xor i32 %7318, %7322
  %7325 = add i32 %7323, %7324
  %7326 = icmp eq i32 %7325, 2
  %7327 = zext i1 %7326 to i8
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7327, i8* %7328, align 1
  store %struct.Memory* %loadMem_4007f7, %struct.Memory** %MEMORY
  %loadMem_4007fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7330 = getelementptr inbounds %struct.GPR, %struct.GPR* %7329, i32 0, i32 33
  %7331 = getelementptr inbounds %struct.Reg, %struct.Reg* %7330, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %7331 to i64*
  %7332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7333 = getelementptr inbounds %struct.GPR, %struct.GPR* %7332, i32 0, i32 5
  %7334 = getelementptr inbounds %struct.Reg, %struct.Reg* %7333, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %7334 to i64*
  %7335 = load i64, i64* %RCX.i216
  %7336 = load i64, i64* %PC.i215
  %7337 = add i64 %7336, 3
  store i64 %7337, i64* %PC.i215
  %7338 = and i64 %7335, 4294967295
  %7339 = lshr i64 %7338, 22
  %7340 = trunc i64 %7339 to i8
  %7341 = and i8 %7340, 1
  %7342 = lshr i64 %7339, 1
  %7343 = trunc i64 %7342 to i32
  %7344 = and i32 %7343, 2147483647
  %7345 = zext i32 %7344 to i64
  store i64 %7345, i64* %RCX.i216, align 8
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7341, i8* %7346, align 1
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7348 = and i32 %7343, 255
  %7349 = call i32 @llvm.ctpop.i32(i32 %7348)
  %7350 = trunc i32 %7349 to i8
  %7351 = and i8 %7350, 1
  %7352 = xor i8 %7351, 1
  store i8 %7352, i8* %7347, align 1
  %7353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7353, align 1
  %7354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7355 = icmp eq i32 %7344, 0
  %7356 = zext i1 %7355 to i8
  store i8 %7356, i8* %7354, align 1
  %7357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7357, align 1
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7358, align 1
  store %struct.Memory* %loadMem_4007fa, %struct.Memory** %MEMORY
  %loadMem_4007fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7360 = getelementptr inbounds %struct.GPR, %struct.GPR* %7359, i32 0, i32 33
  %7361 = getelementptr inbounds %struct.Reg, %struct.Reg* %7360, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %7361 to i64*
  %7362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7363 = getelementptr inbounds %struct.GPR, %struct.GPR* %7362, i32 0, i32 5
  %7364 = getelementptr inbounds %struct.Reg, %struct.Reg* %7363, i32 0, i32 0
  %ECX.i213 = bitcast %union.anon* %7364 to i32*
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7366 = getelementptr inbounds %struct.GPR, %struct.GPR* %7365, i32 0, i32 1
  %7367 = getelementptr inbounds %struct.Reg, %struct.Reg* %7366, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %7367 to i64*
  %7368 = load i64, i64* %RAX.i214
  %7369 = load i32, i32* %ECX.i213
  %7370 = zext i32 %7369 to i64
  %7371 = load i64, i64* %PC.i212
  %7372 = add i64 %7371, 2
  store i64 %7372, i64* %PC.i212
  %7373 = or i64 %7370, %7368
  %7374 = trunc i64 %7373 to i32
  %7375 = and i64 %7373, 4294967295
  store i64 %7375, i64* %RAX.i214, align 8
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7376, align 1
  %7377 = and i32 %7374, 255
  %7378 = call i32 @llvm.ctpop.i32(i32 %7377)
  %7379 = trunc i32 %7378 to i8
  %7380 = and i8 %7379, 1
  %7381 = xor i8 %7380, 1
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7381, i8* %7382, align 1
  %7383 = icmp eq i32 %7374, 0
  %7384 = zext i1 %7383 to i8
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7384, i8* %7385, align 1
  %7386 = lshr i32 %7374, 31
  %7387 = trunc i32 %7386 to i8
  %7388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7387, i8* %7388, align 1
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7389, align 1
  %7390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7390, align 1
  store %struct.Memory* %loadMem_4007fd, %struct.Memory** %MEMORY
  %loadMem_4007ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7392 = getelementptr inbounds %struct.GPR, %struct.GPR* %7391, i32 0, i32 33
  %7393 = getelementptr inbounds %struct.Reg, %struct.Reg* %7392, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %7393 to i64*
  %7394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7395 = getelementptr inbounds %struct.GPR, %struct.GPR* %7394, i32 0, i32 1
  %7396 = getelementptr inbounds %struct.Reg, %struct.Reg* %7395, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %7396 to i64*
  %7397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7398 = getelementptr inbounds %struct.GPR, %struct.GPR* %7397, i32 0, i32 15
  %7399 = getelementptr inbounds %struct.Reg, %struct.Reg* %7398, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %7399 to i64*
  %7400 = load i64, i64* %RAX.i210
  %7401 = load i64, i64* %RBP.i211
  %7402 = sub i64 %7401, 64
  %7403 = load i64, i64* %PC.i209
  %7404 = add i64 %7403, 3
  store i64 %7404, i64* %PC.i209
  %7405 = trunc i64 %7400 to i32
  %7406 = inttoptr i64 %7402 to i32*
  %7407 = load i32, i32* %7406
  %7408 = xor i32 %7407, %7405
  %7409 = zext i32 %7408 to i64
  store i64 %7409, i64* %RAX.i210, align 8
  %7410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7410, align 1
  %7411 = and i32 %7408, 255
  %7412 = call i32 @llvm.ctpop.i32(i32 %7411)
  %7413 = trunc i32 %7412 to i8
  %7414 = and i8 %7413, 1
  %7415 = xor i8 %7414, 1
  %7416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7415, i8* %7416, align 1
  %7417 = icmp eq i32 %7408, 0
  %7418 = zext i1 %7417 to i8
  %7419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7418, i8* %7419, align 1
  %7420 = lshr i32 %7408, 31
  %7421 = trunc i32 %7420 to i8
  %7422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7421, i8* %7422, align 1
  %7423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7423, align 1
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7424, align 1
  store %struct.Memory* %loadMem_4007ff, %struct.Memory** %MEMORY
  %loadMem_400802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7426 = getelementptr inbounds %struct.GPR, %struct.GPR* %7425, i32 0, i32 33
  %7427 = getelementptr inbounds %struct.Reg, %struct.Reg* %7426, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %7427 to i64*
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7429 = getelementptr inbounds %struct.GPR, %struct.GPR* %7428, i32 0, i32 1
  %7430 = getelementptr inbounds %struct.Reg, %struct.Reg* %7429, i32 0, i32 0
  %EAX.i207 = bitcast %union.anon* %7430 to i32*
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7432 = getelementptr inbounds %struct.GPR, %struct.GPR* %7431, i32 0, i32 15
  %7433 = getelementptr inbounds %struct.Reg, %struct.Reg* %7432, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %7433 to i64*
  %7434 = load i64, i64* %RBP.i208
  %7435 = sub i64 %7434, 64
  %7436 = load i32, i32* %EAX.i207
  %7437 = zext i32 %7436 to i64
  %7438 = load i64, i64* %PC.i206
  %7439 = add i64 %7438, 3
  store i64 %7439, i64* %PC.i206
  %7440 = inttoptr i64 %7435 to i32*
  store i32 %7436, i32* %7440
  store %struct.Memory* %loadMem_400802, %struct.Memory** %MEMORY
  %loadMem_400805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7442 = getelementptr inbounds %struct.GPR, %struct.GPR* %7441, i32 0, i32 33
  %7443 = getelementptr inbounds %struct.Reg, %struct.Reg* %7442, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %7443 to i64*
  %7444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7445 = getelementptr inbounds %struct.GPR, %struct.GPR* %7444, i32 0, i32 1
  %7446 = getelementptr inbounds %struct.Reg, %struct.Reg* %7445, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %7446 to i64*
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7448 = getelementptr inbounds %struct.GPR, %struct.GPR* %7447, i32 0, i32 15
  %7449 = getelementptr inbounds %struct.Reg, %struct.Reg* %7448, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %7449 to i64*
  %7450 = load i64, i64* %RBP.i205
  %7451 = sub i64 %7450, 64
  %7452 = load i64, i64* %PC.i203
  %7453 = add i64 %7452, 3
  store i64 %7453, i64* %PC.i203
  %7454 = inttoptr i64 %7451 to i32*
  %7455 = load i32, i32* %7454
  %7456 = zext i32 %7455 to i64
  store i64 %7456, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_400805, %struct.Memory** %MEMORY
  %loadMem_400808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7458 = getelementptr inbounds %struct.GPR, %struct.GPR* %7457, i32 0, i32 33
  %7459 = getelementptr inbounds %struct.Reg, %struct.Reg* %7458, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %7459 to i64*
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7461 = getelementptr inbounds %struct.GPR, %struct.GPR* %7460, i32 0, i32 1
  %7462 = getelementptr inbounds %struct.Reg, %struct.Reg* %7461, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %7462 to i64*
  %7463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7464 = getelementptr inbounds %struct.GPR, %struct.GPR* %7463, i32 0, i32 15
  %7465 = getelementptr inbounds %struct.Reg, %struct.Reg* %7464, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %7465 to i64*
  %7466 = load i64, i64* %RAX.i201
  %7467 = load i64, i64* %RBP.i202
  %7468 = sub i64 %7467, 52
  %7469 = load i64, i64* %PC.i200
  %7470 = add i64 %7469, 3
  store i64 %7470, i64* %PC.i200
  %7471 = trunc i64 %7466 to i32
  %7472 = inttoptr i64 %7468 to i32*
  %7473 = load i32, i32* %7472
  %7474 = add i32 %7473, %7471
  %7475 = zext i32 %7474 to i64
  store i64 %7475, i64* %RAX.i201, align 8
  %7476 = icmp ult i32 %7474, %7471
  %7477 = icmp ult i32 %7474, %7473
  %7478 = or i1 %7476, %7477
  %7479 = zext i1 %7478 to i8
  %7480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7479, i8* %7480, align 1
  %7481 = and i32 %7474, 255
  %7482 = call i32 @llvm.ctpop.i32(i32 %7481)
  %7483 = trunc i32 %7482 to i8
  %7484 = and i8 %7483, 1
  %7485 = xor i8 %7484, 1
  %7486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7485, i8* %7486, align 1
  %7487 = xor i32 %7473, %7471
  %7488 = xor i32 %7487, %7474
  %7489 = lshr i32 %7488, 4
  %7490 = trunc i32 %7489 to i8
  %7491 = and i8 %7490, 1
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7491, i8* %7492, align 1
  %7493 = icmp eq i32 %7474, 0
  %7494 = zext i1 %7493 to i8
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7494, i8* %7495, align 1
  %7496 = lshr i32 %7474, 31
  %7497 = trunc i32 %7496 to i8
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7497, i8* %7498, align 1
  %7499 = lshr i32 %7471, 31
  %7500 = lshr i32 %7473, 31
  %7501 = xor i32 %7496, %7499
  %7502 = xor i32 %7496, %7500
  %7503 = add i32 %7501, %7502
  %7504 = icmp eq i32 %7503, 2
  %7505 = zext i1 %7504 to i8
  %7506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7505, i8* %7506, align 1
  store %struct.Memory* %loadMem_400808, %struct.Memory** %MEMORY
  %loadMem_40080b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7508 = getelementptr inbounds %struct.GPR, %struct.GPR* %7507, i32 0, i32 33
  %7509 = getelementptr inbounds %struct.Reg, %struct.Reg* %7508, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %7509 to i64*
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 1
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %7512 to i64*
  %7513 = load i64, i64* %RAX.i199
  %7514 = load i64, i64* %PC.i198
  %7515 = add i64 %7514, 3
  store i64 %7515, i64* %PC.i198
  %7516 = and i64 %7513, 4294967295
  %7517 = shl i64 %7516, 12
  %7518 = trunc i64 %7517 to i32
  %7519 = icmp slt i32 %7518, 0
  %7520 = shl i32 %7518, 1
  %7521 = zext i32 %7520 to i64
  store i64 %7521, i64* %RAX.i199, align 8
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7523 = zext i1 %7519 to i8
  store i8 %7523, i8* %7522, align 1
  %7524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7524, align 1
  %7525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7525, align 1
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7527 = icmp eq i32 %7520, 0
  %7528 = zext i1 %7527 to i8
  store i8 %7528, i8* %7526, align 1
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7530 = lshr i32 %7520, 31
  %7531 = trunc i32 %7530 to i8
  store i8 %7531, i8* %7529, align 1
  %7532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7532, align 1
  store %struct.Memory* %loadMem_40080b, %struct.Memory** %MEMORY
  %loadMem_40080e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7534 = getelementptr inbounds %struct.GPR, %struct.GPR* %7533, i32 0, i32 33
  %7535 = getelementptr inbounds %struct.Reg, %struct.Reg* %7534, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %7535 to i64*
  %7536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7537 = getelementptr inbounds %struct.GPR, %struct.GPR* %7536, i32 0, i32 5
  %7538 = getelementptr inbounds %struct.Reg, %struct.Reg* %7537, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %7538 to i64*
  %7539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7540 = getelementptr inbounds %struct.GPR, %struct.GPR* %7539, i32 0, i32 15
  %7541 = getelementptr inbounds %struct.Reg, %struct.Reg* %7540, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %7541 to i64*
  %7542 = load i64, i64* %RBP.i197
  %7543 = sub i64 %7542, 64
  %7544 = load i64, i64* %PC.i195
  %7545 = add i64 %7544, 3
  store i64 %7545, i64* %PC.i195
  %7546 = inttoptr i64 %7543 to i32*
  %7547 = load i32, i32* %7546
  %7548 = zext i32 %7547 to i64
  store i64 %7548, i64* %RCX.i196, align 8
  store %struct.Memory* %loadMem_40080e, %struct.Memory** %MEMORY
  %loadMem_400811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7550 = getelementptr inbounds %struct.GPR, %struct.GPR* %7549, i32 0, i32 33
  %7551 = getelementptr inbounds %struct.Reg, %struct.Reg* %7550, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %7551 to i64*
  %7552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7553 = getelementptr inbounds %struct.GPR, %struct.GPR* %7552, i32 0, i32 5
  %7554 = getelementptr inbounds %struct.Reg, %struct.Reg* %7553, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %7554 to i64*
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7556 = getelementptr inbounds %struct.GPR, %struct.GPR* %7555, i32 0, i32 15
  %7557 = getelementptr inbounds %struct.Reg, %struct.Reg* %7556, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %7557 to i64*
  %7558 = load i64, i64* %RCX.i193
  %7559 = load i64, i64* %RBP.i194
  %7560 = sub i64 %7559, 52
  %7561 = load i64, i64* %PC.i192
  %7562 = add i64 %7561, 3
  store i64 %7562, i64* %PC.i192
  %7563 = trunc i64 %7558 to i32
  %7564 = inttoptr i64 %7560 to i32*
  %7565 = load i32, i32* %7564
  %7566 = add i32 %7565, %7563
  %7567 = zext i32 %7566 to i64
  store i64 %7567, i64* %RCX.i193, align 8
  %7568 = icmp ult i32 %7566, %7563
  %7569 = icmp ult i32 %7566, %7565
  %7570 = or i1 %7568, %7569
  %7571 = zext i1 %7570 to i8
  %7572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7571, i8* %7572, align 1
  %7573 = and i32 %7566, 255
  %7574 = call i32 @llvm.ctpop.i32(i32 %7573)
  %7575 = trunc i32 %7574 to i8
  %7576 = and i8 %7575, 1
  %7577 = xor i8 %7576, 1
  %7578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7577, i8* %7578, align 1
  %7579 = xor i32 %7565, %7563
  %7580 = xor i32 %7579, %7566
  %7581 = lshr i32 %7580, 4
  %7582 = trunc i32 %7581 to i8
  %7583 = and i8 %7582, 1
  %7584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7583, i8* %7584, align 1
  %7585 = icmp eq i32 %7566, 0
  %7586 = zext i1 %7585 to i8
  %7587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7586, i8* %7587, align 1
  %7588 = lshr i32 %7566, 31
  %7589 = trunc i32 %7588 to i8
  %7590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7589, i8* %7590, align 1
  %7591 = lshr i32 %7563, 31
  %7592 = lshr i32 %7565, 31
  %7593 = xor i32 %7588, %7591
  %7594 = xor i32 %7588, %7592
  %7595 = add i32 %7593, %7594
  %7596 = icmp eq i32 %7595, 2
  %7597 = zext i1 %7596 to i8
  %7598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7597, i8* %7598, align 1
  store %struct.Memory* %loadMem_400811, %struct.Memory** %MEMORY
  %loadMem_400814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7600 = getelementptr inbounds %struct.GPR, %struct.GPR* %7599, i32 0, i32 33
  %7601 = getelementptr inbounds %struct.Reg, %struct.Reg* %7600, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %7601 to i64*
  %7602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7603 = getelementptr inbounds %struct.GPR, %struct.GPR* %7602, i32 0, i32 5
  %7604 = getelementptr inbounds %struct.Reg, %struct.Reg* %7603, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %7604 to i64*
  %7605 = load i64, i64* %RCX.i191
  %7606 = load i64, i64* %PC.i190
  %7607 = add i64 %7606, 3
  store i64 %7607, i64* %PC.i190
  %7608 = and i64 %7605, 4294967295
  %7609 = lshr i64 %7608, 18
  %7610 = trunc i64 %7609 to i8
  %7611 = and i8 %7610, 1
  %7612 = lshr i64 %7609, 1
  %7613 = trunc i64 %7612 to i32
  %7614 = and i32 %7613, 2147483647
  %7615 = zext i32 %7614 to i64
  store i64 %7615, i64* %RCX.i191, align 8
  %7616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7611, i8* %7616, align 1
  %7617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7618 = and i32 %7613, 255
  %7619 = call i32 @llvm.ctpop.i32(i32 %7618)
  %7620 = trunc i32 %7619 to i8
  %7621 = and i8 %7620, 1
  %7622 = xor i8 %7621, 1
  store i8 %7622, i8* %7617, align 1
  %7623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7623, align 1
  %7624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7625 = icmp eq i32 %7614, 0
  %7626 = zext i1 %7625 to i8
  store i8 %7626, i8* %7624, align 1
  %7627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7627, align 1
  %7628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7628, align 1
  store %struct.Memory* %loadMem_400814, %struct.Memory** %MEMORY
  %loadMem_400817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7630 = getelementptr inbounds %struct.GPR, %struct.GPR* %7629, i32 0, i32 33
  %7631 = getelementptr inbounds %struct.Reg, %struct.Reg* %7630, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %7631 to i64*
  %7632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7633 = getelementptr inbounds %struct.GPR, %struct.GPR* %7632, i32 0, i32 5
  %7634 = getelementptr inbounds %struct.Reg, %struct.Reg* %7633, i32 0, i32 0
  %ECX.i188 = bitcast %union.anon* %7634 to i32*
  %7635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7636 = getelementptr inbounds %struct.GPR, %struct.GPR* %7635, i32 0, i32 1
  %7637 = getelementptr inbounds %struct.Reg, %struct.Reg* %7636, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %7637 to i64*
  %7638 = load i64, i64* %RAX.i189
  %7639 = load i32, i32* %ECX.i188
  %7640 = zext i32 %7639 to i64
  %7641 = load i64, i64* %PC.i187
  %7642 = add i64 %7641, 2
  store i64 %7642, i64* %PC.i187
  %7643 = or i64 %7640, %7638
  %7644 = trunc i64 %7643 to i32
  %7645 = and i64 %7643, 4294967295
  store i64 %7645, i64* %RAX.i189, align 8
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7646, align 1
  %7647 = and i32 %7644, 255
  %7648 = call i32 @llvm.ctpop.i32(i32 %7647)
  %7649 = trunc i32 %7648 to i8
  %7650 = and i8 %7649, 1
  %7651 = xor i8 %7650, 1
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7651, i8* %7652, align 1
  %7653 = icmp eq i32 %7644, 0
  %7654 = zext i1 %7653 to i8
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7654, i8* %7655, align 1
  %7656 = lshr i32 %7644, 31
  %7657 = trunc i32 %7656 to i8
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7657, i8* %7658, align 1
  %7659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7659, align 1
  %7660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7660, align 1
  store %struct.Memory* %loadMem_400817, %struct.Memory** %MEMORY
  %loadMem_400819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7662 = getelementptr inbounds %struct.GPR, %struct.GPR* %7661, i32 0, i32 33
  %7663 = getelementptr inbounds %struct.Reg, %struct.Reg* %7662, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %7663 to i64*
  %7664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7665 = getelementptr inbounds %struct.GPR, %struct.GPR* %7664, i32 0, i32 1
  %7666 = getelementptr inbounds %struct.Reg, %struct.Reg* %7665, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %7666 to i64*
  %7667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7668 = getelementptr inbounds %struct.GPR, %struct.GPR* %7667, i32 0, i32 15
  %7669 = getelementptr inbounds %struct.Reg, %struct.Reg* %7668, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %7669 to i64*
  %7670 = load i64, i64* %RAX.i185
  %7671 = load i64, i64* %RBP.i186
  %7672 = sub i64 %7671, 60
  %7673 = load i64, i64* %PC.i184
  %7674 = add i64 %7673, 3
  store i64 %7674, i64* %PC.i184
  %7675 = trunc i64 %7670 to i32
  %7676 = inttoptr i64 %7672 to i32*
  %7677 = load i32, i32* %7676
  %7678 = xor i32 %7677, %7675
  %7679 = zext i32 %7678 to i64
  store i64 %7679, i64* %RAX.i185, align 8
  %7680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7680, align 1
  %7681 = and i32 %7678, 255
  %7682 = call i32 @llvm.ctpop.i32(i32 %7681)
  %7683 = trunc i32 %7682 to i8
  %7684 = and i8 %7683, 1
  %7685 = xor i8 %7684, 1
  %7686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7685, i8* %7686, align 1
  %7687 = icmp eq i32 %7678, 0
  %7688 = zext i1 %7687 to i8
  %7689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7688, i8* %7689, align 1
  %7690 = lshr i32 %7678, 31
  %7691 = trunc i32 %7690 to i8
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7691, i8* %7692, align 1
  %7693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7693, align 1
  %7694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7694, align 1
  store %struct.Memory* %loadMem_400819, %struct.Memory** %MEMORY
  %loadMem_40081c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7696 = getelementptr inbounds %struct.GPR, %struct.GPR* %7695, i32 0, i32 33
  %7697 = getelementptr inbounds %struct.Reg, %struct.Reg* %7696, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %7697 to i64*
  %7698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7699 = getelementptr inbounds %struct.GPR, %struct.GPR* %7698, i32 0, i32 1
  %7700 = getelementptr inbounds %struct.Reg, %struct.Reg* %7699, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %7700 to i32*
  %7701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7702 = getelementptr inbounds %struct.GPR, %struct.GPR* %7701, i32 0, i32 15
  %7703 = getelementptr inbounds %struct.Reg, %struct.Reg* %7702, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %7703 to i64*
  %7704 = load i64, i64* %RBP.i183
  %7705 = sub i64 %7704, 60
  %7706 = load i32, i32* %EAX.i182
  %7707 = zext i32 %7706 to i64
  %7708 = load i64, i64* %PC.i181
  %7709 = add i64 %7708, 3
  store i64 %7709, i64* %PC.i181
  %7710 = inttoptr i64 %7705 to i32*
  store i32 %7706, i32* %7710
  store %struct.Memory* %loadMem_40081c, %struct.Memory** %MEMORY
  %loadMem_40081f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7712 = getelementptr inbounds %struct.GPR, %struct.GPR* %7711, i32 0, i32 33
  %7713 = getelementptr inbounds %struct.Reg, %struct.Reg* %7712, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %7713 to i64*
  %7714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7715 = getelementptr inbounds %struct.GPR, %struct.GPR* %7714, i32 0, i32 1
  %7716 = getelementptr inbounds %struct.Reg, %struct.Reg* %7715, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %7716 to i64*
  %7717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7718 = getelementptr inbounds %struct.GPR, %struct.GPR* %7717, i32 0, i32 15
  %7719 = getelementptr inbounds %struct.Reg, %struct.Reg* %7718, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %7719 to i64*
  %7720 = load i64, i64* %RBP.i180
  %7721 = sub i64 %7720, 60
  %7722 = load i64, i64* %PC.i178
  %7723 = add i64 %7722, 3
  store i64 %7723, i64* %PC.i178
  %7724 = inttoptr i64 %7721 to i32*
  %7725 = load i32, i32* %7724
  %7726 = zext i32 %7725 to i64
  store i64 %7726, i64* %RAX.i179, align 8
  store %struct.Memory* %loadMem_40081f, %struct.Memory** %MEMORY
  %loadMem_400822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7728 = getelementptr inbounds %struct.GPR, %struct.GPR* %7727, i32 0, i32 33
  %7729 = getelementptr inbounds %struct.Reg, %struct.Reg* %7728, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %7729 to i64*
  %7730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7731 = getelementptr inbounds %struct.GPR, %struct.GPR* %7730, i32 0, i32 1
  %7732 = getelementptr inbounds %struct.Reg, %struct.Reg* %7731, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %7732 to i64*
  %7733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7734 = getelementptr inbounds %struct.GPR, %struct.GPR* %7733, i32 0, i32 15
  %7735 = getelementptr inbounds %struct.Reg, %struct.Reg* %7734, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %7735 to i64*
  %7736 = load i64, i64* %RAX.i176
  %7737 = load i64, i64* %RBP.i177
  %7738 = sub i64 %7737, 64
  %7739 = load i64, i64* %PC.i175
  %7740 = add i64 %7739, 3
  store i64 %7740, i64* %PC.i175
  %7741 = trunc i64 %7736 to i32
  %7742 = inttoptr i64 %7738 to i32*
  %7743 = load i32, i32* %7742
  %7744 = add i32 %7743, %7741
  %7745 = zext i32 %7744 to i64
  store i64 %7745, i64* %RAX.i176, align 8
  %7746 = icmp ult i32 %7744, %7741
  %7747 = icmp ult i32 %7744, %7743
  %7748 = or i1 %7746, %7747
  %7749 = zext i1 %7748 to i8
  %7750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7749, i8* %7750, align 1
  %7751 = and i32 %7744, 255
  %7752 = call i32 @llvm.ctpop.i32(i32 %7751)
  %7753 = trunc i32 %7752 to i8
  %7754 = and i8 %7753, 1
  %7755 = xor i8 %7754, 1
  %7756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7755, i8* %7756, align 1
  %7757 = xor i32 %7743, %7741
  %7758 = xor i32 %7757, %7744
  %7759 = lshr i32 %7758, 4
  %7760 = trunc i32 %7759 to i8
  %7761 = and i8 %7760, 1
  %7762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7761, i8* %7762, align 1
  %7763 = icmp eq i32 %7744, 0
  %7764 = zext i1 %7763 to i8
  %7765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7764, i8* %7765, align 1
  %7766 = lshr i32 %7744, 31
  %7767 = trunc i32 %7766 to i8
  %7768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7767, i8* %7768, align 1
  %7769 = lshr i32 %7741, 31
  %7770 = lshr i32 %7743, 31
  %7771 = xor i32 %7766, %7769
  %7772 = xor i32 %7766, %7770
  %7773 = add i32 %7771, %7772
  %7774 = icmp eq i32 %7773, 2
  %7775 = zext i1 %7774 to i8
  %7776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7775, i8* %7776, align 1
  store %struct.Memory* %loadMem_400822, %struct.Memory** %MEMORY
  %loadMem_400825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7778 = getelementptr inbounds %struct.GPR, %struct.GPR* %7777, i32 0, i32 33
  %7779 = getelementptr inbounds %struct.Reg, %struct.Reg* %7778, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %7779 to i64*
  %7780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7781 = getelementptr inbounds %struct.GPR, %struct.GPR* %7780, i32 0, i32 1
  %7782 = getelementptr inbounds %struct.Reg, %struct.Reg* %7781, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %7782 to i64*
  %7783 = load i64, i64* %RAX.i174
  %7784 = load i64, i64* %PC.i173
  %7785 = add i64 %7784, 3
  store i64 %7785, i64* %PC.i173
  %7786 = and i64 %7783, 4294967295
  %7787 = shl i64 %7786, 17
  %7788 = trunc i64 %7787 to i32
  %7789 = icmp slt i32 %7788, 0
  %7790 = shl i32 %7788, 1
  %7791 = zext i32 %7790 to i64
  store i64 %7791, i64* %RAX.i174, align 8
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7793 = zext i1 %7789 to i8
  store i8 %7793, i8* %7792, align 1
  %7794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7794, align 1
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7795, align 1
  %7796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7797 = icmp eq i32 %7790, 0
  %7798 = zext i1 %7797 to i8
  store i8 %7798, i8* %7796, align 1
  %7799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7800 = lshr i32 %7790, 31
  %7801 = trunc i32 %7800 to i8
  store i8 %7801, i8* %7799, align 1
  %7802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7802, align 1
  store %struct.Memory* %loadMem_400825, %struct.Memory** %MEMORY
  %loadMem_400828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7804 = getelementptr inbounds %struct.GPR, %struct.GPR* %7803, i32 0, i32 33
  %7805 = getelementptr inbounds %struct.Reg, %struct.Reg* %7804, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %7805 to i64*
  %7806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7807 = getelementptr inbounds %struct.GPR, %struct.GPR* %7806, i32 0, i32 5
  %7808 = getelementptr inbounds %struct.Reg, %struct.Reg* %7807, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %7808 to i64*
  %7809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7810 = getelementptr inbounds %struct.GPR, %struct.GPR* %7809, i32 0, i32 15
  %7811 = getelementptr inbounds %struct.Reg, %struct.Reg* %7810, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %7811 to i64*
  %7812 = load i64, i64* %RBP.i172
  %7813 = sub i64 %7812, 60
  %7814 = load i64, i64* %PC.i170
  %7815 = add i64 %7814, 3
  store i64 %7815, i64* %PC.i170
  %7816 = inttoptr i64 %7813 to i32*
  %7817 = load i32, i32* %7816
  %7818 = zext i32 %7817 to i64
  store i64 %7818, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_400828, %struct.Memory** %MEMORY
  %loadMem_40082b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7820 = getelementptr inbounds %struct.GPR, %struct.GPR* %7819, i32 0, i32 33
  %7821 = getelementptr inbounds %struct.Reg, %struct.Reg* %7820, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %7821 to i64*
  %7822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7823 = getelementptr inbounds %struct.GPR, %struct.GPR* %7822, i32 0, i32 5
  %7824 = getelementptr inbounds %struct.Reg, %struct.Reg* %7823, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %7824 to i64*
  %7825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7826 = getelementptr inbounds %struct.GPR, %struct.GPR* %7825, i32 0, i32 15
  %7827 = getelementptr inbounds %struct.Reg, %struct.Reg* %7826, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %7827 to i64*
  %7828 = load i64, i64* %RCX.i168
  %7829 = load i64, i64* %RBP.i169
  %7830 = sub i64 %7829, 64
  %7831 = load i64, i64* %PC.i167
  %7832 = add i64 %7831, 3
  store i64 %7832, i64* %PC.i167
  %7833 = trunc i64 %7828 to i32
  %7834 = inttoptr i64 %7830 to i32*
  %7835 = load i32, i32* %7834
  %7836 = add i32 %7835, %7833
  %7837 = zext i32 %7836 to i64
  store i64 %7837, i64* %RCX.i168, align 8
  %7838 = icmp ult i32 %7836, %7833
  %7839 = icmp ult i32 %7836, %7835
  %7840 = or i1 %7838, %7839
  %7841 = zext i1 %7840 to i8
  %7842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7841, i8* %7842, align 1
  %7843 = and i32 %7836, 255
  %7844 = call i32 @llvm.ctpop.i32(i32 %7843)
  %7845 = trunc i32 %7844 to i8
  %7846 = and i8 %7845, 1
  %7847 = xor i8 %7846, 1
  %7848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7847, i8* %7848, align 1
  %7849 = xor i32 %7835, %7833
  %7850 = xor i32 %7849, %7836
  %7851 = lshr i32 %7850, 4
  %7852 = trunc i32 %7851 to i8
  %7853 = and i8 %7852, 1
  %7854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7853, i8* %7854, align 1
  %7855 = icmp eq i32 %7836, 0
  %7856 = zext i1 %7855 to i8
  %7857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7856, i8* %7857, align 1
  %7858 = lshr i32 %7836, 31
  %7859 = trunc i32 %7858 to i8
  %7860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7859, i8* %7860, align 1
  %7861 = lshr i32 %7833, 31
  %7862 = lshr i32 %7835, 31
  %7863 = xor i32 %7858, %7861
  %7864 = xor i32 %7858, %7862
  %7865 = add i32 %7863, %7864
  %7866 = icmp eq i32 %7865, 2
  %7867 = zext i1 %7866 to i8
  %7868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7867, i8* %7868, align 1
  store %struct.Memory* %loadMem_40082b, %struct.Memory** %MEMORY
  %loadMem_40082e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7870 = getelementptr inbounds %struct.GPR, %struct.GPR* %7869, i32 0, i32 33
  %7871 = getelementptr inbounds %struct.Reg, %struct.Reg* %7870, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %7871 to i64*
  %7872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7873 = getelementptr inbounds %struct.GPR, %struct.GPR* %7872, i32 0, i32 5
  %7874 = getelementptr inbounds %struct.Reg, %struct.Reg* %7873, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %7874 to i64*
  %7875 = load i64, i64* %RCX.i166
  %7876 = load i64, i64* %PC.i165
  %7877 = add i64 %7876, 3
  store i64 %7877, i64* %PC.i165
  %7878 = and i64 %7875, 4294967295
  %7879 = lshr i64 %7878, 13
  %7880 = trunc i64 %7879 to i8
  %7881 = and i8 %7880, 1
  %7882 = lshr i64 %7879, 1
  %7883 = trunc i64 %7882 to i32
  %7884 = and i32 %7883, 2147483647
  %7885 = zext i32 %7884 to i64
  store i64 %7885, i64* %RCX.i166, align 8
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7881, i8* %7886, align 1
  %7887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7888 = and i32 %7883, 255
  %7889 = call i32 @llvm.ctpop.i32(i32 %7888)
  %7890 = trunc i32 %7889 to i8
  %7891 = and i8 %7890, 1
  %7892 = xor i8 %7891, 1
  store i8 %7892, i8* %7887, align 1
  %7893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7893, align 1
  %7894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7895 = icmp eq i32 %7884, 0
  %7896 = zext i1 %7895 to i8
  store i8 %7896, i8* %7894, align 1
  %7897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7897, align 1
  %7898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7898, align 1
  store %struct.Memory* %loadMem_40082e, %struct.Memory** %MEMORY
  %loadMem_400831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7900 = getelementptr inbounds %struct.GPR, %struct.GPR* %7899, i32 0, i32 33
  %7901 = getelementptr inbounds %struct.Reg, %struct.Reg* %7900, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %7901 to i64*
  %7902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7903 = getelementptr inbounds %struct.GPR, %struct.GPR* %7902, i32 0, i32 5
  %7904 = getelementptr inbounds %struct.Reg, %struct.Reg* %7903, i32 0, i32 0
  %ECX.i163 = bitcast %union.anon* %7904 to i32*
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7906 = getelementptr inbounds %struct.GPR, %struct.GPR* %7905, i32 0, i32 1
  %7907 = getelementptr inbounds %struct.Reg, %struct.Reg* %7906, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %7907 to i64*
  %7908 = load i64, i64* %RAX.i164
  %7909 = load i32, i32* %ECX.i163
  %7910 = zext i32 %7909 to i64
  %7911 = load i64, i64* %PC.i162
  %7912 = add i64 %7911, 2
  store i64 %7912, i64* %PC.i162
  %7913 = or i64 %7910, %7908
  %7914 = trunc i64 %7913 to i32
  %7915 = and i64 %7913, 4294967295
  store i64 %7915, i64* %RAX.i164, align 8
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7916, align 1
  %7917 = and i32 %7914, 255
  %7918 = call i32 @llvm.ctpop.i32(i32 %7917)
  %7919 = trunc i32 %7918 to i8
  %7920 = and i8 %7919, 1
  %7921 = xor i8 %7920, 1
  %7922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7921, i8* %7922, align 1
  %7923 = icmp eq i32 %7914, 0
  %7924 = zext i1 %7923 to i8
  %7925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7924, i8* %7925, align 1
  %7926 = lshr i32 %7914, 31
  %7927 = trunc i32 %7926 to i8
  %7928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7927, i8* %7928, align 1
  %7929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7929, align 1
  %7930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7930, align 1
  store %struct.Memory* %loadMem_400831, %struct.Memory** %MEMORY
  %loadMem_400833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7932 = getelementptr inbounds %struct.GPR, %struct.GPR* %7931, i32 0, i32 33
  %7933 = getelementptr inbounds %struct.Reg, %struct.Reg* %7932, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %7933 to i64*
  %7934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7935 = getelementptr inbounds %struct.GPR, %struct.GPR* %7934, i32 0, i32 1
  %7936 = getelementptr inbounds %struct.Reg, %struct.Reg* %7935, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %7936 to i64*
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7938 = getelementptr inbounds %struct.GPR, %struct.GPR* %7937, i32 0, i32 15
  %7939 = getelementptr inbounds %struct.Reg, %struct.Reg* %7938, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %7939 to i64*
  %7940 = load i64, i64* %RAX.i160
  %7941 = load i64, i64* %RBP.i161
  %7942 = sub i64 %7941, 56
  %7943 = load i64, i64* %PC.i159
  %7944 = add i64 %7943, 3
  store i64 %7944, i64* %PC.i159
  %7945 = trunc i64 %7940 to i32
  %7946 = inttoptr i64 %7942 to i32*
  %7947 = load i32, i32* %7946
  %7948 = xor i32 %7947, %7945
  %7949 = zext i32 %7948 to i64
  store i64 %7949, i64* %RAX.i160, align 8
  %7950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7950, align 1
  %7951 = and i32 %7948, 255
  %7952 = call i32 @llvm.ctpop.i32(i32 %7951)
  %7953 = trunc i32 %7952 to i8
  %7954 = and i8 %7953, 1
  %7955 = xor i8 %7954, 1
  %7956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7955, i8* %7956, align 1
  %7957 = icmp eq i32 %7948, 0
  %7958 = zext i1 %7957 to i8
  %7959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7958, i8* %7959, align 1
  %7960 = lshr i32 %7948, 31
  %7961 = trunc i32 %7960 to i8
  %7962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7961, i8* %7962, align 1
  %7963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7963, align 1
  %7964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7964, align 1
  store %struct.Memory* %loadMem_400833, %struct.Memory** %MEMORY
  %loadMem_400836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7966 = getelementptr inbounds %struct.GPR, %struct.GPR* %7965, i32 0, i32 33
  %7967 = getelementptr inbounds %struct.Reg, %struct.Reg* %7966, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %7967 to i64*
  %7968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7969 = getelementptr inbounds %struct.GPR, %struct.GPR* %7968, i32 0, i32 1
  %7970 = getelementptr inbounds %struct.Reg, %struct.Reg* %7969, i32 0, i32 0
  %EAX.i157 = bitcast %union.anon* %7970 to i32*
  %7971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7972 = getelementptr inbounds %struct.GPR, %struct.GPR* %7971, i32 0, i32 15
  %7973 = getelementptr inbounds %struct.Reg, %struct.Reg* %7972, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %7973 to i64*
  %7974 = load i64, i64* %RBP.i158
  %7975 = sub i64 %7974, 56
  %7976 = load i32, i32* %EAX.i157
  %7977 = zext i32 %7976 to i64
  %7978 = load i64, i64* %PC.i156
  %7979 = add i64 %7978, 3
  store i64 %7979, i64* %PC.i156
  %7980 = inttoptr i64 %7975 to i32*
  store i32 %7976, i32* %7980
  store %struct.Memory* %loadMem_400836, %struct.Memory** %MEMORY
  %loadMem_400839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7982 = getelementptr inbounds %struct.GPR, %struct.GPR* %7981, i32 0, i32 33
  %7983 = getelementptr inbounds %struct.Reg, %struct.Reg* %7982, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %7983 to i64*
  %7984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7985 = getelementptr inbounds %struct.GPR, %struct.GPR* %7984, i32 0, i32 1
  %7986 = getelementptr inbounds %struct.Reg, %struct.Reg* %7985, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %7986 to i64*
  %7987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7988 = getelementptr inbounds %struct.GPR, %struct.GPR* %7987, i32 0, i32 15
  %7989 = getelementptr inbounds %struct.Reg, %struct.Reg* %7988, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %7989 to i64*
  %7990 = load i64, i64* %RBP.i155
  %7991 = sub i64 %7990, 36
  %7992 = load i64, i64* %PC.i153
  %7993 = add i64 %7992, 3
  store i64 %7993, i64* %PC.i153
  %7994 = inttoptr i64 %7991 to i32*
  %7995 = load i32, i32* %7994
  %7996 = zext i32 %7995 to i64
  store i64 %7996, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_400839, %struct.Memory** %MEMORY
  %loadMem_40083c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7998 = getelementptr inbounds %struct.GPR, %struct.GPR* %7997, i32 0, i32 33
  %7999 = getelementptr inbounds %struct.Reg, %struct.Reg* %7998, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %7999 to i64*
  %8000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8001 = getelementptr inbounds %struct.GPR, %struct.GPR* %8000, i32 0, i32 1
  %8002 = getelementptr inbounds %struct.Reg, %struct.Reg* %8001, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %8002 to i64*
  %8003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8004 = getelementptr inbounds %struct.GPR, %struct.GPR* %8003, i32 0, i32 15
  %8005 = getelementptr inbounds %struct.Reg, %struct.Reg* %8004, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %8005 to i64*
  %8006 = load i64, i64* %RAX.i151
  %8007 = load i64, i64* %RBP.i152
  %8008 = sub i64 %8007, 40
  %8009 = load i64, i64* %PC.i150
  %8010 = add i64 %8009, 3
  store i64 %8010, i64* %PC.i150
  %8011 = trunc i64 %8006 to i32
  %8012 = inttoptr i64 %8008 to i32*
  %8013 = load i32, i32* %8012
  %8014 = add i32 %8013, %8011
  %8015 = zext i32 %8014 to i64
  store i64 %8015, i64* %RAX.i151, align 8
  %8016 = icmp ult i32 %8014, %8011
  %8017 = icmp ult i32 %8014, %8013
  %8018 = or i1 %8016, %8017
  %8019 = zext i1 %8018 to i8
  %8020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8019, i8* %8020, align 1
  %8021 = and i32 %8014, 255
  %8022 = call i32 @llvm.ctpop.i32(i32 %8021)
  %8023 = trunc i32 %8022 to i8
  %8024 = and i8 %8023, 1
  %8025 = xor i8 %8024, 1
  %8026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8025, i8* %8026, align 1
  %8027 = xor i32 %8013, %8011
  %8028 = xor i32 %8027, %8014
  %8029 = lshr i32 %8028, 4
  %8030 = trunc i32 %8029 to i8
  %8031 = and i8 %8030, 1
  %8032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8031, i8* %8032, align 1
  %8033 = icmp eq i32 %8014, 0
  %8034 = zext i1 %8033 to i8
  %8035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8034, i8* %8035, align 1
  %8036 = lshr i32 %8014, 31
  %8037 = trunc i32 %8036 to i8
  %8038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8037, i8* %8038, align 1
  %8039 = lshr i32 %8011, 31
  %8040 = lshr i32 %8013, 31
  %8041 = xor i32 %8036, %8039
  %8042 = xor i32 %8036, %8040
  %8043 = add i32 %8041, %8042
  %8044 = icmp eq i32 %8043, 2
  %8045 = zext i1 %8044 to i8
  %8046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8045, i8* %8046, align 1
  store %struct.Memory* %loadMem_40083c, %struct.Memory** %MEMORY
  %loadMem_40083f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8048 = getelementptr inbounds %struct.GPR, %struct.GPR* %8047, i32 0, i32 33
  %8049 = getelementptr inbounds %struct.Reg, %struct.Reg* %8048, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %8049 to i64*
  %8050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8051 = getelementptr inbounds %struct.GPR, %struct.GPR* %8050, i32 0, i32 1
  %8052 = getelementptr inbounds %struct.Reg, %struct.Reg* %8051, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %8052 to i64*
  %8053 = load i64, i64* %RAX.i149
  %8054 = load i64, i64* %PC.i148
  %8055 = add i64 %8054, 3
  store i64 %8055, i64* %PC.i148
  %8056 = and i64 %8053, 4294967295
  %8057 = shl i64 %8056, 6
  %8058 = trunc i64 %8057 to i32
  %8059 = icmp slt i32 %8058, 0
  %8060 = shl i32 %8058, 1
  %8061 = zext i32 %8060 to i64
  store i64 %8061, i64* %RAX.i149, align 8
  %8062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8063 = zext i1 %8059 to i8
  store i8 %8063, i8* %8062, align 1
  %8064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8065 = and i32 %8060, 254
  %8066 = call i32 @llvm.ctpop.i32(i32 %8065)
  %8067 = trunc i32 %8066 to i8
  %8068 = and i8 %8067, 1
  %8069 = xor i8 %8068, 1
  store i8 %8069, i8* %8064, align 1
  %8070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8070, align 1
  %8071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8072 = icmp eq i32 %8060, 0
  %8073 = zext i1 %8072 to i8
  store i8 %8073, i8* %8071, align 1
  %8074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8075 = lshr i32 %8060, 31
  %8076 = trunc i32 %8075 to i8
  store i8 %8076, i8* %8074, align 1
  %8077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8077, align 1
  store %struct.Memory* %loadMem_40083f, %struct.Memory** %MEMORY
  %loadMem_400842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8079 = getelementptr inbounds %struct.GPR, %struct.GPR* %8078, i32 0, i32 33
  %8080 = getelementptr inbounds %struct.Reg, %struct.Reg* %8079, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %8080 to i64*
  %8081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8082 = getelementptr inbounds %struct.GPR, %struct.GPR* %8081, i32 0, i32 5
  %8083 = getelementptr inbounds %struct.Reg, %struct.Reg* %8082, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %8083 to i64*
  %8084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8085 = getelementptr inbounds %struct.GPR, %struct.GPR* %8084, i32 0, i32 15
  %8086 = getelementptr inbounds %struct.Reg, %struct.Reg* %8085, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %8086 to i64*
  %8087 = load i64, i64* %RBP.i147
  %8088 = sub i64 %8087, 36
  %8089 = load i64, i64* %PC.i145
  %8090 = add i64 %8089, 3
  store i64 %8090, i64* %PC.i145
  %8091 = inttoptr i64 %8088 to i32*
  %8092 = load i32, i32* %8091
  %8093 = zext i32 %8092 to i64
  store i64 %8093, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_400842, %struct.Memory** %MEMORY
  %loadMem_400845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8095 = getelementptr inbounds %struct.GPR, %struct.GPR* %8094, i32 0, i32 33
  %8096 = getelementptr inbounds %struct.Reg, %struct.Reg* %8095, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %8096 to i64*
  %8097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8098 = getelementptr inbounds %struct.GPR, %struct.GPR* %8097, i32 0, i32 5
  %8099 = getelementptr inbounds %struct.Reg, %struct.Reg* %8098, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %8099 to i64*
  %8100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8101 = getelementptr inbounds %struct.GPR, %struct.GPR* %8100, i32 0, i32 15
  %8102 = getelementptr inbounds %struct.Reg, %struct.Reg* %8101, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %8102 to i64*
  %8103 = load i64, i64* %RCX.i143
  %8104 = load i64, i64* %RBP.i144
  %8105 = sub i64 %8104, 40
  %8106 = load i64, i64* %PC.i142
  %8107 = add i64 %8106, 3
  store i64 %8107, i64* %PC.i142
  %8108 = trunc i64 %8103 to i32
  %8109 = inttoptr i64 %8105 to i32*
  %8110 = load i32, i32* %8109
  %8111 = add i32 %8110, %8108
  %8112 = zext i32 %8111 to i64
  store i64 %8112, i64* %RCX.i143, align 8
  %8113 = icmp ult i32 %8111, %8108
  %8114 = icmp ult i32 %8111, %8110
  %8115 = or i1 %8113, %8114
  %8116 = zext i1 %8115 to i8
  %8117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8116, i8* %8117, align 1
  %8118 = and i32 %8111, 255
  %8119 = call i32 @llvm.ctpop.i32(i32 %8118)
  %8120 = trunc i32 %8119 to i8
  %8121 = and i8 %8120, 1
  %8122 = xor i8 %8121, 1
  %8123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8122, i8* %8123, align 1
  %8124 = xor i32 %8110, %8108
  %8125 = xor i32 %8124, %8111
  %8126 = lshr i32 %8125, 4
  %8127 = trunc i32 %8126 to i8
  %8128 = and i8 %8127, 1
  %8129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8128, i8* %8129, align 1
  %8130 = icmp eq i32 %8111, 0
  %8131 = zext i1 %8130 to i8
  %8132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8131, i8* %8132, align 1
  %8133 = lshr i32 %8111, 31
  %8134 = trunc i32 %8133 to i8
  %8135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8134, i8* %8135, align 1
  %8136 = lshr i32 %8108, 31
  %8137 = lshr i32 %8110, 31
  %8138 = xor i32 %8133, %8136
  %8139 = xor i32 %8133, %8137
  %8140 = add i32 %8138, %8139
  %8141 = icmp eq i32 %8140, 2
  %8142 = zext i1 %8141 to i8
  %8143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8142, i8* %8143, align 1
  store %struct.Memory* %loadMem_400845, %struct.Memory** %MEMORY
  %loadMem_400848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8145 = getelementptr inbounds %struct.GPR, %struct.GPR* %8144, i32 0, i32 33
  %8146 = getelementptr inbounds %struct.Reg, %struct.Reg* %8145, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %8146 to i64*
  %8147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8148 = getelementptr inbounds %struct.GPR, %struct.GPR* %8147, i32 0, i32 5
  %8149 = getelementptr inbounds %struct.Reg, %struct.Reg* %8148, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %8149 to i64*
  %8150 = load i64, i64* %RCX.i141
  %8151 = load i64, i64* %PC.i140
  %8152 = add i64 %8151, 3
  store i64 %8152, i64* %PC.i140
  %8153 = and i64 %8150, 4294967295
  %8154 = lshr i64 %8153, 24
  %8155 = trunc i64 %8154 to i8
  %8156 = and i8 %8155, 1
  %8157 = lshr i64 %8154, 1
  %8158 = trunc i64 %8157 to i32
  %8159 = and i32 %8158, 2147483647
  %8160 = zext i32 %8159 to i64
  store i64 %8160, i64* %RCX.i141, align 8
  %8161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8156, i8* %8161, align 1
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8163 = and i32 %8158, 255
  %8164 = call i32 @llvm.ctpop.i32(i32 %8163)
  %8165 = trunc i32 %8164 to i8
  %8166 = and i8 %8165, 1
  %8167 = xor i8 %8166, 1
  store i8 %8167, i8* %8162, align 1
  %8168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8168, align 1
  %8169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8170 = icmp eq i32 %8159, 0
  %8171 = zext i1 %8170 to i8
  store i8 %8171, i8* %8169, align 1
  %8172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8172, align 1
  %8173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8173, align 1
  store %struct.Memory* %loadMem_400848, %struct.Memory** %MEMORY
  %loadMem_40084b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8175 = getelementptr inbounds %struct.GPR, %struct.GPR* %8174, i32 0, i32 33
  %8176 = getelementptr inbounds %struct.Reg, %struct.Reg* %8175, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %8176 to i64*
  %8177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8178 = getelementptr inbounds %struct.GPR, %struct.GPR* %8177, i32 0, i32 5
  %8179 = getelementptr inbounds %struct.Reg, %struct.Reg* %8178, i32 0, i32 0
  %ECX.i138 = bitcast %union.anon* %8179 to i32*
  %8180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8181 = getelementptr inbounds %struct.GPR, %struct.GPR* %8180, i32 0, i32 1
  %8182 = getelementptr inbounds %struct.Reg, %struct.Reg* %8181, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %8182 to i64*
  %8183 = load i64, i64* %RAX.i139
  %8184 = load i32, i32* %ECX.i138
  %8185 = zext i32 %8184 to i64
  %8186 = load i64, i64* %PC.i137
  %8187 = add i64 %8186, 2
  store i64 %8187, i64* %PC.i137
  %8188 = or i64 %8185, %8183
  %8189 = trunc i64 %8188 to i32
  %8190 = and i64 %8188, 4294967295
  store i64 %8190, i64* %RAX.i139, align 8
  %8191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8191, align 1
  %8192 = and i32 %8189, 255
  %8193 = call i32 @llvm.ctpop.i32(i32 %8192)
  %8194 = trunc i32 %8193 to i8
  %8195 = and i8 %8194, 1
  %8196 = xor i8 %8195, 1
  %8197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8196, i8* %8197, align 1
  %8198 = icmp eq i32 %8189, 0
  %8199 = zext i1 %8198 to i8
  %8200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8199, i8* %8200, align 1
  %8201 = lshr i32 %8189, 31
  %8202 = trunc i32 %8201 to i8
  %8203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8202, i8* %8203, align 1
  %8204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8204, align 1
  %8205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8205, align 1
  store %struct.Memory* %loadMem_40084b, %struct.Memory** %MEMORY
  %loadMem_40084d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8207 = getelementptr inbounds %struct.GPR, %struct.GPR* %8206, i32 0, i32 33
  %8208 = getelementptr inbounds %struct.Reg, %struct.Reg* %8207, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %8208 to i64*
  %8209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8210 = getelementptr inbounds %struct.GPR, %struct.GPR* %8209, i32 0, i32 1
  %8211 = getelementptr inbounds %struct.Reg, %struct.Reg* %8210, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %8211 to i64*
  %8212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8213 = getelementptr inbounds %struct.GPR, %struct.GPR* %8212, i32 0, i32 15
  %8214 = getelementptr inbounds %struct.Reg, %struct.Reg* %8213, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %8214 to i64*
  %8215 = load i64, i64* %RAX.i135
  %8216 = load i64, i64* %RBP.i136
  %8217 = sub i64 %8216, 48
  %8218 = load i64, i64* %PC.i134
  %8219 = add i64 %8218, 3
  store i64 %8219, i64* %PC.i134
  %8220 = trunc i64 %8215 to i32
  %8221 = inttoptr i64 %8217 to i32*
  %8222 = load i32, i32* %8221
  %8223 = xor i32 %8222, %8220
  %8224 = zext i32 %8223 to i64
  store i64 %8224, i64* %RAX.i135, align 8
  %8225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8225, align 1
  %8226 = and i32 %8223, 255
  %8227 = call i32 @llvm.ctpop.i32(i32 %8226)
  %8228 = trunc i32 %8227 to i8
  %8229 = and i8 %8228, 1
  %8230 = xor i8 %8229, 1
  %8231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8230, i8* %8231, align 1
  %8232 = icmp eq i32 %8223, 0
  %8233 = zext i1 %8232 to i8
  %8234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8233, i8* %8234, align 1
  %8235 = lshr i32 %8223, 31
  %8236 = trunc i32 %8235 to i8
  %8237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8236, i8* %8237, align 1
  %8238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8238, align 1
  %8239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8239, align 1
  store %struct.Memory* %loadMem_40084d, %struct.Memory** %MEMORY
  %loadMem_400850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8241 = getelementptr inbounds %struct.GPR, %struct.GPR* %8240, i32 0, i32 33
  %8242 = getelementptr inbounds %struct.Reg, %struct.Reg* %8241, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %8242 to i64*
  %8243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8244 = getelementptr inbounds %struct.GPR, %struct.GPR* %8243, i32 0, i32 1
  %8245 = getelementptr inbounds %struct.Reg, %struct.Reg* %8244, i32 0, i32 0
  %EAX.i132 = bitcast %union.anon* %8245 to i32*
  %8246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8247 = getelementptr inbounds %struct.GPR, %struct.GPR* %8246, i32 0, i32 15
  %8248 = getelementptr inbounds %struct.Reg, %struct.Reg* %8247, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %8248 to i64*
  %8249 = load i64, i64* %RBP.i133
  %8250 = sub i64 %8249, 48
  %8251 = load i32, i32* %EAX.i132
  %8252 = zext i32 %8251 to i64
  %8253 = load i64, i64* %PC.i131
  %8254 = add i64 %8253, 3
  store i64 %8254, i64* %PC.i131
  %8255 = inttoptr i64 %8250 to i32*
  store i32 %8251, i32* %8255
  store %struct.Memory* %loadMem_400850, %struct.Memory** %MEMORY
  %loadMem_400853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8257 = getelementptr inbounds %struct.GPR, %struct.GPR* %8256, i32 0, i32 33
  %8258 = getelementptr inbounds %struct.Reg, %struct.Reg* %8257, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %8258 to i64*
  %8259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8260 = getelementptr inbounds %struct.GPR, %struct.GPR* %8259, i32 0, i32 1
  %8261 = getelementptr inbounds %struct.Reg, %struct.Reg* %8260, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %8261 to i64*
  %8262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8263 = getelementptr inbounds %struct.GPR, %struct.GPR* %8262, i32 0, i32 15
  %8264 = getelementptr inbounds %struct.Reg, %struct.Reg* %8263, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %8264 to i64*
  %8265 = load i64, i64* %RBP.i130
  %8266 = sub i64 %8265, 48
  %8267 = load i64, i64* %PC.i128
  %8268 = add i64 %8267, 3
  store i64 %8268, i64* %PC.i128
  %8269 = inttoptr i64 %8266 to i32*
  %8270 = load i32, i32* %8269
  %8271 = zext i32 %8270 to i64
  store i64 %8271, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_400853, %struct.Memory** %MEMORY
  %loadMem_400856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8273 = getelementptr inbounds %struct.GPR, %struct.GPR* %8272, i32 0, i32 33
  %8274 = getelementptr inbounds %struct.Reg, %struct.Reg* %8273, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %8274 to i64*
  %8275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8276 = getelementptr inbounds %struct.GPR, %struct.GPR* %8275, i32 0, i32 1
  %8277 = getelementptr inbounds %struct.Reg, %struct.Reg* %8276, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %8277 to i64*
  %8278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8279 = getelementptr inbounds %struct.GPR, %struct.GPR* %8278, i32 0, i32 15
  %8280 = getelementptr inbounds %struct.Reg, %struct.Reg* %8279, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %8280 to i64*
  %8281 = load i64, i64* %RAX.i126
  %8282 = load i64, i64* %RBP.i127
  %8283 = sub i64 %8282, 36
  %8284 = load i64, i64* %PC.i125
  %8285 = add i64 %8284, 3
  store i64 %8285, i64* %PC.i125
  %8286 = trunc i64 %8281 to i32
  %8287 = inttoptr i64 %8283 to i32*
  %8288 = load i32, i32* %8287
  %8289 = add i32 %8288, %8286
  %8290 = zext i32 %8289 to i64
  store i64 %8290, i64* %RAX.i126, align 8
  %8291 = icmp ult i32 %8289, %8286
  %8292 = icmp ult i32 %8289, %8288
  %8293 = or i1 %8291, %8292
  %8294 = zext i1 %8293 to i8
  %8295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8294, i8* %8295, align 1
  %8296 = and i32 %8289, 255
  %8297 = call i32 @llvm.ctpop.i32(i32 %8296)
  %8298 = trunc i32 %8297 to i8
  %8299 = and i8 %8298, 1
  %8300 = xor i8 %8299, 1
  %8301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8300, i8* %8301, align 1
  %8302 = xor i32 %8288, %8286
  %8303 = xor i32 %8302, %8289
  %8304 = lshr i32 %8303, 4
  %8305 = trunc i32 %8304 to i8
  %8306 = and i8 %8305, 1
  %8307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8306, i8* %8307, align 1
  %8308 = icmp eq i32 %8289, 0
  %8309 = zext i1 %8308 to i8
  %8310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8309, i8* %8310, align 1
  %8311 = lshr i32 %8289, 31
  %8312 = trunc i32 %8311 to i8
  %8313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8312, i8* %8313, align 1
  %8314 = lshr i32 %8286, 31
  %8315 = lshr i32 %8288, 31
  %8316 = xor i32 %8311, %8314
  %8317 = xor i32 %8311, %8315
  %8318 = add i32 %8316, %8317
  %8319 = icmp eq i32 %8318, 2
  %8320 = zext i1 %8319 to i8
  %8321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8320, i8* %8321, align 1
  store %struct.Memory* %loadMem_400856, %struct.Memory** %MEMORY
  %loadMem_400859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8323 = getelementptr inbounds %struct.GPR, %struct.GPR* %8322, i32 0, i32 33
  %8324 = getelementptr inbounds %struct.Reg, %struct.Reg* %8323, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %8324 to i64*
  %8325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8326 = getelementptr inbounds %struct.GPR, %struct.GPR* %8325, i32 0, i32 1
  %8327 = getelementptr inbounds %struct.Reg, %struct.Reg* %8326, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %8327 to i64*
  %8328 = load i64, i64* %RAX.i124
  %8329 = load i64, i64* %PC.i123
  %8330 = add i64 %8329, 3
  store i64 %8330, i64* %PC.i123
  %8331 = and i64 %8328, 4294967295
  %8332 = shl i64 %8331, 8
  %8333 = trunc i64 %8332 to i32
  %8334 = icmp slt i32 %8333, 0
  %8335 = shl i32 %8333, 1
  %8336 = zext i32 %8335 to i64
  store i64 %8336, i64* %RAX.i124, align 8
  %8337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8338 = zext i1 %8334 to i8
  store i8 %8338, i8* %8337, align 1
  %8339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8339, align 1
  %8340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8340, align 1
  %8341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8342 = icmp eq i32 %8335, 0
  %8343 = zext i1 %8342 to i8
  store i8 %8343, i8* %8341, align 1
  %8344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8345 = lshr i32 %8335, 31
  %8346 = trunc i32 %8345 to i8
  store i8 %8346, i8* %8344, align 1
  %8347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8347, align 1
  store %struct.Memory* %loadMem_400859, %struct.Memory** %MEMORY
  %loadMem_40085c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8349 = getelementptr inbounds %struct.GPR, %struct.GPR* %8348, i32 0, i32 33
  %8350 = getelementptr inbounds %struct.Reg, %struct.Reg* %8349, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %8350 to i64*
  %8351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8352 = getelementptr inbounds %struct.GPR, %struct.GPR* %8351, i32 0, i32 5
  %8353 = getelementptr inbounds %struct.Reg, %struct.Reg* %8352, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %8353 to i64*
  %8354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8355 = getelementptr inbounds %struct.GPR, %struct.GPR* %8354, i32 0, i32 15
  %8356 = getelementptr inbounds %struct.Reg, %struct.Reg* %8355, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %8356 to i64*
  %8357 = load i64, i64* %RBP.i122
  %8358 = sub i64 %8357, 48
  %8359 = load i64, i64* %PC.i120
  %8360 = add i64 %8359, 3
  store i64 %8360, i64* %PC.i120
  %8361 = inttoptr i64 %8358 to i32*
  %8362 = load i32, i32* %8361
  %8363 = zext i32 %8362 to i64
  store i64 %8363, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_40085c, %struct.Memory** %MEMORY
  %loadMem_40085f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8365 = getelementptr inbounds %struct.GPR, %struct.GPR* %8364, i32 0, i32 33
  %8366 = getelementptr inbounds %struct.Reg, %struct.Reg* %8365, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %8366 to i64*
  %8367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8368 = getelementptr inbounds %struct.GPR, %struct.GPR* %8367, i32 0, i32 5
  %8369 = getelementptr inbounds %struct.Reg, %struct.Reg* %8368, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %8369 to i64*
  %8370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8371 = getelementptr inbounds %struct.GPR, %struct.GPR* %8370, i32 0, i32 15
  %8372 = getelementptr inbounds %struct.Reg, %struct.Reg* %8371, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %8372 to i64*
  %8373 = load i64, i64* %RCX.i118
  %8374 = load i64, i64* %RBP.i119
  %8375 = sub i64 %8374, 36
  %8376 = load i64, i64* %PC.i117
  %8377 = add i64 %8376, 3
  store i64 %8377, i64* %PC.i117
  %8378 = trunc i64 %8373 to i32
  %8379 = inttoptr i64 %8375 to i32*
  %8380 = load i32, i32* %8379
  %8381 = add i32 %8380, %8378
  %8382 = zext i32 %8381 to i64
  store i64 %8382, i64* %RCX.i118, align 8
  %8383 = icmp ult i32 %8381, %8378
  %8384 = icmp ult i32 %8381, %8380
  %8385 = or i1 %8383, %8384
  %8386 = zext i1 %8385 to i8
  %8387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8386, i8* %8387, align 1
  %8388 = and i32 %8381, 255
  %8389 = call i32 @llvm.ctpop.i32(i32 %8388)
  %8390 = trunc i32 %8389 to i8
  %8391 = and i8 %8390, 1
  %8392 = xor i8 %8391, 1
  %8393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8392, i8* %8393, align 1
  %8394 = xor i32 %8380, %8378
  %8395 = xor i32 %8394, %8381
  %8396 = lshr i32 %8395, 4
  %8397 = trunc i32 %8396 to i8
  %8398 = and i8 %8397, 1
  %8399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8398, i8* %8399, align 1
  %8400 = icmp eq i32 %8381, 0
  %8401 = zext i1 %8400 to i8
  %8402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8401, i8* %8402, align 1
  %8403 = lshr i32 %8381, 31
  %8404 = trunc i32 %8403 to i8
  %8405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8404, i8* %8405, align 1
  %8406 = lshr i32 %8378, 31
  %8407 = lshr i32 %8380, 31
  %8408 = xor i32 %8403, %8406
  %8409 = xor i32 %8403, %8407
  %8410 = add i32 %8408, %8409
  %8411 = icmp eq i32 %8410, 2
  %8412 = zext i1 %8411 to i8
  %8413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8412, i8* %8413, align 1
  store %struct.Memory* %loadMem_40085f, %struct.Memory** %MEMORY
  %loadMem_400862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8415 = getelementptr inbounds %struct.GPR, %struct.GPR* %8414, i32 0, i32 33
  %8416 = getelementptr inbounds %struct.Reg, %struct.Reg* %8415, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %8416 to i64*
  %8417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8418 = getelementptr inbounds %struct.GPR, %struct.GPR* %8417, i32 0, i32 5
  %8419 = getelementptr inbounds %struct.Reg, %struct.Reg* %8418, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %8419 to i64*
  %8420 = load i64, i64* %RCX.i116
  %8421 = load i64, i64* %PC.i115
  %8422 = add i64 %8421, 3
  store i64 %8422, i64* %PC.i115
  %8423 = and i64 %8420, 4294967295
  %8424 = lshr i64 %8423, 22
  %8425 = trunc i64 %8424 to i8
  %8426 = and i8 %8425, 1
  %8427 = lshr i64 %8424, 1
  %8428 = trunc i64 %8427 to i32
  %8429 = and i32 %8428, 2147483647
  %8430 = zext i32 %8429 to i64
  store i64 %8430, i64* %RCX.i116, align 8
  %8431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8426, i8* %8431, align 1
  %8432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8433 = and i32 %8428, 255
  %8434 = call i32 @llvm.ctpop.i32(i32 %8433)
  %8435 = trunc i32 %8434 to i8
  %8436 = and i8 %8435, 1
  %8437 = xor i8 %8436, 1
  store i8 %8437, i8* %8432, align 1
  %8438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8438, align 1
  %8439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8440 = icmp eq i32 %8429, 0
  %8441 = zext i1 %8440 to i8
  store i8 %8441, i8* %8439, align 1
  %8442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8442, align 1
  %8443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8443, align 1
  store %struct.Memory* %loadMem_400862, %struct.Memory** %MEMORY
  %loadMem_400865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8445 = getelementptr inbounds %struct.GPR, %struct.GPR* %8444, i32 0, i32 33
  %8446 = getelementptr inbounds %struct.Reg, %struct.Reg* %8445, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %8446 to i64*
  %8447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8448 = getelementptr inbounds %struct.GPR, %struct.GPR* %8447, i32 0, i32 5
  %8449 = getelementptr inbounds %struct.Reg, %struct.Reg* %8448, i32 0, i32 0
  %ECX.i113 = bitcast %union.anon* %8449 to i32*
  %8450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8451 = getelementptr inbounds %struct.GPR, %struct.GPR* %8450, i32 0, i32 1
  %8452 = getelementptr inbounds %struct.Reg, %struct.Reg* %8451, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %8452 to i64*
  %8453 = load i64, i64* %RAX.i114
  %8454 = load i32, i32* %ECX.i113
  %8455 = zext i32 %8454 to i64
  %8456 = load i64, i64* %PC.i112
  %8457 = add i64 %8456, 2
  store i64 %8457, i64* %PC.i112
  %8458 = or i64 %8455, %8453
  %8459 = trunc i64 %8458 to i32
  %8460 = and i64 %8458, 4294967295
  store i64 %8460, i64* %RAX.i114, align 8
  %8461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8461, align 1
  %8462 = and i32 %8459, 255
  %8463 = call i32 @llvm.ctpop.i32(i32 %8462)
  %8464 = trunc i32 %8463 to i8
  %8465 = and i8 %8464, 1
  %8466 = xor i8 %8465, 1
  %8467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8466, i8* %8467, align 1
  %8468 = icmp eq i32 %8459, 0
  %8469 = zext i1 %8468 to i8
  %8470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8469, i8* %8470, align 1
  %8471 = lshr i32 %8459, 31
  %8472 = trunc i32 %8471 to i8
  %8473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8472, i8* %8473, align 1
  %8474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8474, align 1
  %8475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8475, align 1
  store %struct.Memory* %loadMem_400865, %struct.Memory** %MEMORY
  %loadMem_400867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8477 = getelementptr inbounds %struct.GPR, %struct.GPR* %8476, i32 0, i32 33
  %8478 = getelementptr inbounds %struct.Reg, %struct.Reg* %8477, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %8478 to i64*
  %8479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8480 = getelementptr inbounds %struct.GPR, %struct.GPR* %8479, i32 0, i32 1
  %8481 = getelementptr inbounds %struct.Reg, %struct.Reg* %8480, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %8481 to i64*
  %8482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8483 = getelementptr inbounds %struct.GPR, %struct.GPR* %8482, i32 0, i32 15
  %8484 = getelementptr inbounds %struct.Reg, %struct.Reg* %8483, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %8484 to i64*
  %8485 = load i64, i64* %RAX.i110
  %8486 = load i64, i64* %RBP.i111
  %8487 = sub i64 %8486, 44
  %8488 = load i64, i64* %PC.i109
  %8489 = add i64 %8488, 3
  store i64 %8489, i64* %PC.i109
  %8490 = trunc i64 %8485 to i32
  %8491 = inttoptr i64 %8487 to i32*
  %8492 = load i32, i32* %8491
  %8493 = xor i32 %8492, %8490
  %8494 = zext i32 %8493 to i64
  store i64 %8494, i64* %RAX.i110, align 8
  %8495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8495, align 1
  %8496 = and i32 %8493, 255
  %8497 = call i32 @llvm.ctpop.i32(i32 %8496)
  %8498 = trunc i32 %8497 to i8
  %8499 = and i8 %8498, 1
  %8500 = xor i8 %8499, 1
  %8501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8500, i8* %8501, align 1
  %8502 = icmp eq i32 %8493, 0
  %8503 = zext i1 %8502 to i8
  %8504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8503, i8* %8504, align 1
  %8505 = lshr i32 %8493, 31
  %8506 = trunc i32 %8505 to i8
  %8507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8506, i8* %8507, align 1
  %8508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8508, align 1
  %8509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8509, align 1
  store %struct.Memory* %loadMem_400867, %struct.Memory** %MEMORY
  %loadMem_40086a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8511 = getelementptr inbounds %struct.GPR, %struct.GPR* %8510, i32 0, i32 33
  %8512 = getelementptr inbounds %struct.Reg, %struct.Reg* %8511, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %8512 to i64*
  %8513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8514 = getelementptr inbounds %struct.GPR, %struct.GPR* %8513, i32 0, i32 1
  %8515 = getelementptr inbounds %struct.Reg, %struct.Reg* %8514, i32 0, i32 0
  %EAX.i107 = bitcast %union.anon* %8515 to i32*
  %8516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8517 = getelementptr inbounds %struct.GPR, %struct.GPR* %8516, i32 0, i32 15
  %8518 = getelementptr inbounds %struct.Reg, %struct.Reg* %8517, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %8518 to i64*
  %8519 = load i64, i64* %RBP.i108
  %8520 = sub i64 %8519, 44
  %8521 = load i32, i32* %EAX.i107
  %8522 = zext i32 %8521 to i64
  %8523 = load i64, i64* %PC.i106
  %8524 = add i64 %8523, 3
  store i64 %8524, i64* %PC.i106
  %8525 = inttoptr i64 %8520 to i32*
  store i32 %8521, i32* %8525
  store %struct.Memory* %loadMem_40086a, %struct.Memory** %MEMORY
  %loadMem_40086d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8527 = getelementptr inbounds %struct.GPR, %struct.GPR* %8526, i32 0, i32 33
  %8528 = getelementptr inbounds %struct.Reg, %struct.Reg* %8527, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %8528 to i64*
  %8529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8530 = getelementptr inbounds %struct.GPR, %struct.GPR* %8529, i32 0, i32 1
  %8531 = getelementptr inbounds %struct.Reg, %struct.Reg* %8530, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %8531 to i64*
  %8532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8533 = getelementptr inbounds %struct.GPR, %struct.GPR* %8532, i32 0, i32 15
  %8534 = getelementptr inbounds %struct.Reg, %struct.Reg* %8533, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %8534 to i64*
  %8535 = load i64, i64* %RBP.i105
  %8536 = sub i64 %8535, 44
  %8537 = load i64, i64* %PC.i103
  %8538 = add i64 %8537, 3
  store i64 %8538, i64* %PC.i103
  %8539 = inttoptr i64 %8536 to i32*
  %8540 = load i32, i32* %8539
  %8541 = zext i32 %8540 to i64
  store i64 %8541, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_40086d, %struct.Memory** %MEMORY
  %loadMem_400870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8543 = getelementptr inbounds %struct.GPR, %struct.GPR* %8542, i32 0, i32 33
  %8544 = getelementptr inbounds %struct.Reg, %struct.Reg* %8543, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %8544 to i64*
  %8545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8546 = getelementptr inbounds %struct.GPR, %struct.GPR* %8545, i32 0, i32 1
  %8547 = getelementptr inbounds %struct.Reg, %struct.Reg* %8546, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %8547 to i64*
  %8548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8549 = getelementptr inbounds %struct.GPR, %struct.GPR* %8548, i32 0, i32 15
  %8550 = getelementptr inbounds %struct.Reg, %struct.Reg* %8549, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %8550 to i64*
  %8551 = load i64, i64* %RAX.i101
  %8552 = load i64, i64* %RBP.i102
  %8553 = sub i64 %8552, 48
  %8554 = load i64, i64* %PC.i100
  %8555 = add i64 %8554, 3
  store i64 %8555, i64* %PC.i100
  %8556 = trunc i64 %8551 to i32
  %8557 = inttoptr i64 %8553 to i32*
  %8558 = load i32, i32* %8557
  %8559 = add i32 %8558, %8556
  %8560 = zext i32 %8559 to i64
  store i64 %8560, i64* %RAX.i101, align 8
  %8561 = icmp ult i32 %8559, %8556
  %8562 = icmp ult i32 %8559, %8558
  %8563 = or i1 %8561, %8562
  %8564 = zext i1 %8563 to i8
  %8565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8564, i8* %8565, align 1
  %8566 = and i32 %8559, 255
  %8567 = call i32 @llvm.ctpop.i32(i32 %8566)
  %8568 = trunc i32 %8567 to i8
  %8569 = and i8 %8568, 1
  %8570 = xor i8 %8569, 1
  %8571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8570, i8* %8571, align 1
  %8572 = xor i32 %8558, %8556
  %8573 = xor i32 %8572, %8559
  %8574 = lshr i32 %8573, 4
  %8575 = trunc i32 %8574 to i8
  %8576 = and i8 %8575, 1
  %8577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8576, i8* %8577, align 1
  %8578 = icmp eq i32 %8559, 0
  %8579 = zext i1 %8578 to i8
  %8580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8579, i8* %8580, align 1
  %8581 = lshr i32 %8559, 31
  %8582 = trunc i32 %8581 to i8
  %8583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8582, i8* %8583, align 1
  %8584 = lshr i32 %8556, 31
  %8585 = lshr i32 %8558, 31
  %8586 = xor i32 %8581, %8584
  %8587 = xor i32 %8581, %8585
  %8588 = add i32 %8586, %8587
  %8589 = icmp eq i32 %8588, 2
  %8590 = zext i1 %8589 to i8
  %8591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8590, i8* %8591, align 1
  store %struct.Memory* %loadMem_400870, %struct.Memory** %MEMORY
  %loadMem_400873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8593 = getelementptr inbounds %struct.GPR, %struct.GPR* %8592, i32 0, i32 33
  %8594 = getelementptr inbounds %struct.Reg, %struct.Reg* %8593, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %8594 to i64*
  %8595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8596 = getelementptr inbounds %struct.GPR, %struct.GPR* %8595, i32 0, i32 1
  %8597 = getelementptr inbounds %struct.Reg, %struct.Reg* %8596, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %8597 to i64*
  %8598 = load i64, i64* %RAX.i99
  %8599 = load i64, i64* %PC.i98
  %8600 = add i64 %8599, 3
  store i64 %8600, i64* %PC.i98
  %8601 = and i64 %8598, 4294967295
  %8602 = shl i64 %8601, 12
  %8603 = trunc i64 %8602 to i32
  %8604 = icmp slt i32 %8603, 0
  %8605 = shl i32 %8603, 1
  %8606 = zext i32 %8605 to i64
  store i64 %8606, i64* %RAX.i99, align 8
  %8607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8608 = zext i1 %8604 to i8
  store i8 %8608, i8* %8607, align 1
  %8609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8609, align 1
  %8610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8610, align 1
  %8611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8612 = icmp eq i32 %8605, 0
  %8613 = zext i1 %8612 to i8
  store i8 %8613, i8* %8611, align 1
  %8614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8615 = lshr i32 %8605, 31
  %8616 = trunc i32 %8615 to i8
  store i8 %8616, i8* %8614, align 1
  %8617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8617, align 1
  store %struct.Memory* %loadMem_400873, %struct.Memory** %MEMORY
  %loadMem_400876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8619 = getelementptr inbounds %struct.GPR, %struct.GPR* %8618, i32 0, i32 33
  %8620 = getelementptr inbounds %struct.Reg, %struct.Reg* %8619, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %8620 to i64*
  %8621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8622 = getelementptr inbounds %struct.GPR, %struct.GPR* %8621, i32 0, i32 5
  %8623 = getelementptr inbounds %struct.Reg, %struct.Reg* %8622, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %8623 to i64*
  %8624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8625 = getelementptr inbounds %struct.GPR, %struct.GPR* %8624, i32 0, i32 15
  %8626 = getelementptr inbounds %struct.Reg, %struct.Reg* %8625, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %8626 to i64*
  %8627 = load i64, i64* %RBP.i97
  %8628 = sub i64 %8627, 44
  %8629 = load i64, i64* %PC.i95
  %8630 = add i64 %8629, 3
  store i64 %8630, i64* %PC.i95
  %8631 = inttoptr i64 %8628 to i32*
  %8632 = load i32, i32* %8631
  %8633 = zext i32 %8632 to i64
  store i64 %8633, i64* %RCX.i96, align 8
  store %struct.Memory* %loadMem_400876, %struct.Memory** %MEMORY
  %loadMem_400879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8635 = getelementptr inbounds %struct.GPR, %struct.GPR* %8634, i32 0, i32 33
  %8636 = getelementptr inbounds %struct.Reg, %struct.Reg* %8635, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %8636 to i64*
  %8637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8638 = getelementptr inbounds %struct.GPR, %struct.GPR* %8637, i32 0, i32 5
  %8639 = getelementptr inbounds %struct.Reg, %struct.Reg* %8638, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %8639 to i64*
  %8640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8641 = getelementptr inbounds %struct.GPR, %struct.GPR* %8640, i32 0, i32 15
  %8642 = getelementptr inbounds %struct.Reg, %struct.Reg* %8641, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %8642 to i64*
  %8643 = load i64, i64* %RCX.i93
  %8644 = load i64, i64* %RBP.i94
  %8645 = sub i64 %8644, 48
  %8646 = load i64, i64* %PC.i92
  %8647 = add i64 %8646, 3
  store i64 %8647, i64* %PC.i92
  %8648 = trunc i64 %8643 to i32
  %8649 = inttoptr i64 %8645 to i32*
  %8650 = load i32, i32* %8649
  %8651 = add i32 %8650, %8648
  %8652 = zext i32 %8651 to i64
  store i64 %8652, i64* %RCX.i93, align 8
  %8653 = icmp ult i32 %8651, %8648
  %8654 = icmp ult i32 %8651, %8650
  %8655 = or i1 %8653, %8654
  %8656 = zext i1 %8655 to i8
  %8657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8656, i8* %8657, align 1
  %8658 = and i32 %8651, 255
  %8659 = call i32 @llvm.ctpop.i32(i32 %8658)
  %8660 = trunc i32 %8659 to i8
  %8661 = and i8 %8660, 1
  %8662 = xor i8 %8661, 1
  %8663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8662, i8* %8663, align 1
  %8664 = xor i32 %8650, %8648
  %8665 = xor i32 %8664, %8651
  %8666 = lshr i32 %8665, 4
  %8667 = trunc i32 %8666 to i8
  %8668 = and i8 %8667, 1
  %8669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8668, i8* %8669, align 1
  %8670 = icmp eq i32 %8651, 0
  %8671 = zext i1 %8670 to i8
  %8672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8671, i8* %8672, align 1
  %8673 = lshr i32 %8651, 31
  %8674 = trunc i32 %8673 to i8
  %8675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8674, i8* %8675, align 1
  %8676 = lshr i32 %8648, 31
  %8677 = lshr i32 %8650, 31
  %8678 = xor i32 %8673, %8676
  %8679 = xor i32 %8673, %8677
  %8680 = add i32 %8678, %8679
  %8681 = icmp eq i32 %8680, 2
  %8682 = zext i1 %8681 to i8
  %8683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8682, i8* %8683, align 1
  store %struct.Memory* %loadMem_400879, %struct.Memory** %MEMORY
  %loadMem_40087c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8685 = getelementptr inbounds %struct.GPR, %struct.GPR* %8684, i32 0, i32 33
  %8686 = getelementptr inbounds %struct.Reg, %struct.Reg* %8685, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %8686 to i64*
  %8687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8688 = getelementptr inbounds %struct.GPR, %struct.GPR* %8687, i32 0, i32 5
  %8689 = getelementptr inbounds %struct.Reg, %struct.Reg* %8688, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %8689 to i64*
  %8690 = load i64, i64* %RCX.i91
  %8691 = load i64, i64* %PC.i90
  %8692 = add i64 %8691, 3
  store i64 %8692, i64* %PC.i90
  %8693 = and i64 %8690, 4294967295
  %8694 = lshr i64 %8693, 18
  %8695 = trunc i64 %8694 to i8
  %8696 = and i8 %8695, 1
  %8697 = lshr i64 %8694, 1
  %8698 = trunc i64 %8697 to i32
  %8699 = and i32 %8698, 2147483647
  %8700 = zext i32 %8699 to i64
  store i64 %8700, i64* %RCX.i91, align 8
  %8701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8696, i8* %8701, align 1
  %8702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8703 = and i32 %8698, 255
  %8704 = call i32 @llvm.ctpop.i32(i32 %8703)
  %8705 = trunc i32 %8704 to i8
  %8706 = and i8 %8705, 1
  %8707 = xor i8 %8706, 1
  store i8 %8707, i8* %8702, align 1
  %8708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8708, align 1
  %8709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8710 = icmp eq i32 %8699, 0
  %8711 = zext i1 %8710 to i8
  store i8 %8711, i8* %8709, align 1
  %8712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8712, align 1
  %8713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8713, align 1
  store %struct.Memory* %loadMem_40087c, %struct.Memory** %MEMORY
  %loadMem_40087f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8715 = getelementptr inbounds %struct.GPR, %struct.GPR* %8714, i32 0, i32 33
  %8716 = getelementptr inbounds %struct.Reg, %struct.Reg* %8715, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %8716 to i64*
  %8717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8718 = getelementptr inbounds %struct.GPR, %struct.GPR* %8717, i32 0, i32 5
  %8719 = getelementptr inbounds %struct.Reg, %struct.Reg* %8718, i32 0, i32 0
  %ECX.i88 = bitcast %union.anon* %8719 to i32*
  %8720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8721 = getelementptr inbounds %struct.GPR, %struct.GPR* %8720, i32 0, i32 1
  %8722 = getelementptr inbounds %struct.Reg, %struct.Reg* %8721, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %8722 to i64*
  %8723 = load i64, i64* %RAX.i89
  %8724 = load i32, i32* %ECX.i88
  %8725 = zext i32 %8724 to i64
  %8726 = load i64, i64* %PC.i87
  %8727 = add i64 %8726, 2
  store i64 %8727, i64* %PC.i87
  %8728 = or i64 %8725, %8723
  %8729 = trunc i64 %8728 to i32
  %8730 = and i64 %8728, 4294967295
  store i64 %8730, i64* %RAX.i89, align 8
  %8731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8731, align 1
  %8732 = and i32 %8729, 255
  %8733 = call i32 @llvm.ctpop.i32(i32 %8732)
  %8734 = trunc i32 %8733 to i8
  %8735 = and i8 %8734, 1
  %8736 = xor i8 %8735, 1
  %8737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8736, i8* %8737, align 1
  %8738 = icmp eq i32 %8729, 0
  %8739 = zext i1 %8738 to i8
  %8740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8739, i8* %8740, align 1
  %8741 = lshr i32 %8729, 31
  %8742 = trunc i32 %8741 to i8
  %8743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8742, i8* %8743, align 1
  %8744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8744, align 1
  %8745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8745, align 1
  store %struct.Memory* %loadMem_40087f, %struct.Memory** %MEMORY
  %loadMem_400881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8747 = getelementptr inbounds %struct.GPR, %struct.GPR* %8746, i32 0, i32 33
  %8748 = getelementptr inbounds %struct.Reg, %struct.Reg* %8747, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %8748 to i64*
  %8749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8750 = getelementptr inbounds %struct.GPR, %struct.GPR* %8749, i32 0, i32 1
  %8751 = getelementptr inbounds %struct.Reg, %struct.Reg* %8750, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %8751 to i64*
  %8752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8753 = getelementptr inbounds %struct.GPR, %struct.GPR* %8752, i32 0, i32 15
  %8754 = getelementptr inbounds %struct.Reg, %struct.Reg* %8753, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %8754 to i64*
  %8755 = load i64, i64* %RAX.i85
  %8756 = load i64, i64* %RBP.i86
  %8757 = sub i64 %8756, 40
  %8758 = load i64, i64* %PC.i84
  %8759 = add i64 %8758, 3
  store i64 %8759, i64* %PC.i84
  %8760 = trunc i64 %8755 to i32
  %8761 = inttoptr i64 %8757 to i32*
  %8762 = load i32, i32* %8761
  %8763 = xor i32 %8762, %8760
  %8764 = zext i32 %8763 to i64
  store i64 %8764, i64* %RAX.i85, align 8
  %8765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8765, align 1
  %8766 = and i32 %8763, 255
  %8767 = call i32 @llvm.ctpop.i32(i32 %8766)
  %8768 = trunc i32 %8767 to i8
  %8769 = and i8 %8768, 1
  %8770 = xor i8 %8769, 1
  %8771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8770, i8* %8771, align 1
  %8772 = icmp eq i32 %8763, 0
  %8773 = zext i1 %8772 to i8
  %8774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8773, i8* %8774, align 1
  %8775 = lshr i32 %8763, 31
  %8776 = trunc i32 %8775 to i8
  %8777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8776, i8* %8777, align 1
  %8778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8778, align 1
  %8779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8779, align 1
  store %struct.Memory* %loadMem_400881, %struct.Memory** %MEMORY
  %loadMem_400884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8781 = getelementptr inbounds %struct.GPR, %struct.GPR* %8780, i32 0, i32 33
  %8782 = getelementptr inbounds %struct.Reg, %struct.Reg* %8781, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %8782 to i64*
  %8783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8784 = getelementptr inbounds %struct.GPR, %struct.GPR* %8783, i32 0, i32 1
  %8785 = getelementptr inbounds %struct.Reg, %struct.Reg* %8784, i32 0, i32 0
  %EAX.i82 = bitcast %union.anon* %8785 to i32*
  %8786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8787 = getelementptr inbounds %struct.GPR, %struct.GPR* %8786, i32 0, i32 15
  %8788 = getelementptr inbounds %struct.Reg, %struct.Reg* %8787, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %8788 to i64*
  %8789 = load i64, i64* %RBP.i83
  %8790 = sub i64 %8789, 40
  %8791 = load i32, i32* %EAX.i82
  %8792 = zext i32 %8791 to i64
  %8793 = load i64, i64* %PC.i81
  %8794 = add i64 %8793, 3
  store i64 %8794, i64* %PC.i81
  %8795 = inttoptr i64 %8790 to i32*
  store i32 %8791, i32* %8795
  store %struct.Memory* %loadMem_400884, %struct.Memory** %MEMORY
  %loadMem_400887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8797 = getelementptr inbounds %struct.GPR, %struct.GPR* %8796, i32 0, i32 33
  %8798 = getelementptr inbounds %struct.Reg, %struct.Reg* %8797, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %8798 to i64*
  %8799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8800 = getelementptr inbounds %struct.GPR, %struct.GPR* %8799, i32 0, i32 1
  %8801 = getelementptr inbounds %struct.Reg, %struct.Reg* %8800, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %8801 to i64*
  %8802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8803 = getelementptr inbounds %struct.GPR, %struct.GPR* %8802, i32 0, i32 15
  %8804 = getelementptr inbounds %struct.Reg, %struct.Reg* %8803, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %8804 to i64*
  %8805 = load i64, i64* %RBP.i80
  %8806 = sub i64 %8805, 40
  %8807 = load i64, i64* %PC.i78
  %8808 = add i64 %8807, 3
  store i64 %8808, i64* %PC.i78
  %8809 = inttoptr i64 %8806 to i32*
  %8810 = load i32, i32* %8809
  %8811 = zext i32 %8810 to i64
  store i64 %8811, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_400887, %struct.Memory** %MEMORY
  %loadMem_40088a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8813 = getelementptr inbounds %struct.GPR, %struct.GPR* %8812, i32 0, i32 33
  %8814 = getelementptr inbounds %struct.Reg, %struct.Reg* %8813, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %8814 to i64*
  %8815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8816 = getelementptr inbounds %struct.GPR, %struct.GPR* %8815, i32 0, i32 1
  %8817 = getelementptr inbounds %struct.Reg, %struct.Reg* %8816, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %8817 to i64*
  %8818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8819 = getelementptr inbounds %struct.GPR, %struct.GPR* %8818, i32 0, i32 15
  %8820 = getelementptr inbounds %struct.Reg, %struct.Reg* %8819, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %8820 to i64*
  %8821 = load i64, i64* %RAX.i76
  %8822 = load i64, i64* %RBP.i77
  %8823 = sub i64 %8822, 44
  %8824 = load i64, i64* %PC.i75
  %8825 = add i64 %8824, 3
  store i64 %8825, i64* %PC.i75
  %8826 = trunc i64 %8821 to i32
  %8827 = inttoptr i64 %8823 to i32*
  %8828 = load i32, i32* %8827
  %8829 = add i32 %8828, %8826
  %8830 = zext i32 %8829 to i64
  store i64 %8830, i64* %RAX.i76, align 8
  %8831 = icmp ult i32 %8829, %8826
  %8832 = icmp ult i32 %8829, %8828
  %8833 = or i1 %8831, %8832
  %8834 = zext i1 %8833 to i8
  %8835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8834, i8* %8835, align 1
  %8836 = and i32 %8829, 255
  %8837 = call i32 @llvm.ctpop.i32(i32 %8836)
  %8838 = trunc i32 %8837 to i8
  %8839 = and i8 %8838, 1
  %8840 = xor i8 %8839, 1
  %8841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8840, i8* %8841, align 1
  %8842 = xor i32 %8828, %8826
  %8843 = xor i32 %8842, %8829
  %8844 = lshr i32 %8843, 4
  %8845 = trunc i32 %8844 to i8
  %8846 = and i8 %8845, 1
  %8847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8846, i8* %8847, align 1
  %8848 = icmp eq i32 %8829, 0
  %8849 = zext i1 %8848 to i8
  %8850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8849, i8* %8850, align 1
  %8851 = lshr i32 %8829, 31
  %8852 = trunc i32 %8851 to i8
  %8853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8852, i8* %8853, align 1
  %8854 = lshr i32 %8826, 31
  %8855 = lshr i32 %8828, 31
  %8856 = xor i32 %8851, %8854
  %8857 = xor i32 %8851, %8855
  %8858 = add i32 %8856, %8857
  %8859 = icmp eq i32 %8858, 2
  %8860 = zext i1 %8859 to i8
  %8861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8860, i8* %8861, align 1
  store %struct.Memory* %loadMem_40088a, %struct.Memory** %MEMORY
  %loadMem_40088d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8863 = getelementptr inbounds %struct.GPR, %struct.GPR* %8862, i32 0, i32 33
  %8864 = getelementptr inbounds %struct.Reg, %struct.Reg* %8863, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %8864 to i64*
  %8865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8866 = getelementptr inbounds %struct.GPR, %struct.GPR* %8865, i32 0, i32 1
  %8867 = getelementptr inbounds %struct.Reg, %struct.Reg* %8866, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %8867 to i64*
  %8868 = load i64, i64* %RAX.i74
  %8869 = load i64, i64* %PC.i73
  %8870 = add i64 %8869, 3
  store i64 %8870, i64* %PC.i73
  %8871 = and i64 %8868, 4294967295
  %8872 = shl i64 %8871, 17
  %8873 = trunc i64 %8872 to i32
  %8874 = icmp slt i32 %8873, 0
  %8875 = shl i32 %8873, 1
  %8876 = zext i32 %8875 to i64
  store i64 %8876, i64* %RAX.i74, align 8
  %8877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8878 = zext i1 %8874 to i8
  store i8 %8878, i8* %8877, align 1
  %8879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8879, align 1
  %8880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8880, align 1
  %8881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8882 = icmp eq i32 %8875, 0
  %8883 = zext i1 %8882 to i8
  store i8 %8883, i8* %8881, align 1
  %8884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8885 = lshr i32 %8875, 31
  %8886 = trunc i32 %8885 to i8
  store i8 %8886, i8* %8884, align 1
  %8887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8887, align 1
  store %struct.Memory* %loadMem_40088d, %struct.Memory** %MEMORY
  %loadMem_400890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8889 = getelementptr inbounds %struct.GPR, %struct.GPR* %8888, i32 0, i32 33
  %8890 = getelementptr inbounds %struct.Reg, %struct.Reg* %8889, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %8890 to i64*
  %8891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8892 = getelementptr inbounds %struct.GPR, %struct.GPR* %8891, i32 0, i32 5
  %8893 = getelementptr inbounds %struct.Reg, %struct.Reg* %8892, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %8893 to i64*
  %8894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8895 = getelementptr inbounds %struct.GPR, %struct.GPR* %8894, i32 0, i32 15
  %8896 = getelementptr inbounds %struct.Reg, %struct.Reg* %8895, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %8896 to i64*
  %8897 = load i64, i64* %RBP.i72
  %8898 = sub i64 %8897, 40
  %8899 = load i64, i64* %PC.i70
  %8900 = add i64 %8899, 3
  store i64 %8900, i64* %PC.i70
  %8901 = inttoptr i64 %8898 to i32*
  %8902 = load i32, i32* %8901
  %8903 = zext i32 %8902 to i64
  store i64 %8903, i64* %RCX.i71, align 8
  store %struct.Memory* %loadMem_400890, %struct.Memory** %MEMORY
  %loadMem_400893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8905 = getelementptr inbounds %struct.GPR, %struct.GPR* %8904, i32 0, i32 33
  %8906 = getelementptr inbounds %struct.Reg, %struct.Reg* %8905, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %8906 to i64*
  %8907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8908 = getelementptr inbounds %struct.GPR, %struct.GPR* %8907, i32 0, i32 5
  %8909 = getelementptr inbounds %struct.Reg, %struct.Reg* %8908, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %8909 to i64*
  %8910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8911 = getelementptr inbounds %struct.GPR, %struct.GPR* %8910, i32 0, i32 15
  %8912 = getelementptr inbounds %struct.Reg, %struct.Reg* %8911, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %8912 to i64*
  %8913 = load i64, i64* %RCX.i68
  %8914 = load i64, i64* %RBP.i69
  %8915 = sub i64 %8914, 44
  %8916 = load i64, i64* %PC.i67
  %8917 = add i64 %8916, 3
  store i64 %8917, i64* %PC.i67
  %8918 = trunc i64 %8913 to i32
  %8919 = inttoptr i64 %8915 to i32*
  %8920 = load i32, i32* %8919
  %8921 = add i32 %8920, %8918
  %8922 = zext i32 %8921 to i64
  store i64 %8922, i64* %RCX.i68, align 8
  %8923 = icmp ult i32 %8921, %8918
  %8924 = icmp ult i32 %8921, %8920
  %8925 = or i1 %8923, %8924
  %8926 = zext i1 %8925 to i8
  %8927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8926, i8* %8927, align 1
  %8928 = and i32 %8921, 255
  %8929 = call i32 @llvm.ctpop.i32(i32 %8928)
  %8930 = trunc i32 %8929 to i8
  %8931 = and i8 %8930, 1
  %8932 = xor i8 %8931, 1
  %8933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8932, i8* %8933, align 1
  %8934 = xor i32 %8920, %8918
  %8935 = xor i32 %8934, %8921
  %8936 = lshr i32 %8935, 4
  %8937 = trunc i32 %8936 to i8
  %8938 = and i8 %8937, 1
  %8939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8938, i8* %8939, align 1
  %8940 = icmp eq i32 %8921, 0
  %8941 = zext i1 %8940 to i8
  %8942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8941, i8* %8942, align 1
  %8943 = lshr i32 %8921, 31
  %8944 = trunc i32 %8943 to i8
  %8945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8944, i8* %8945, align 1
  %8946 = lshr i32 %8918, 31
  %8947 = lshr i32 %8920, 31
  %8948 = xor i32 %8943, %8946
  %8949 = xor i32 %8943, %8947
  %8950 = add i32 %8948, %8949
  %8951 = icmp eq i32 %8950, 2
  %8952 = zext i1 %8951 to i8
  %8953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8952, i8* %8953, align 1
  store %struct.Memory* %loadMem_400893, %struct.Memory** %MEMORY
  %loadMem_400896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8955 = getelementptr inbounds %struct.GPR, %struct.GPR* %8954, i32 0, i32 33
  %8956 = getelementptr inbounds %struct.Reg, %struct.Reg* %8955, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %8956 to i64*
  %8957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8958 = getelementptr inbounds %struct.GPR, %struct.GPR* %8957, i32 0, i32 5
  %8959 = getelementptr inbounds %struct.Reg, %struct.Reg* %8958, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %8959 to i64*
  %8960 = load i64, i64* %RCX.i66
  %8961 = load i64, i64* %PC.i65
  %8962 = add i64 %8961, 3
  store i64 %8962, i64* %PC.i65
  %8963 = and i64 %8960, 4294967295
  %8964 = lshr i64 %8963, 13
  %8965 = trunc i64 %8964 to i8
  %8966 = and i8 %8965, 1
  %8967 = lshr i64 %8964, 1
  %8968 = trunc i64 %8967 to i32
  %8969 = and i32 %8968, 2147483647
  %8970 = zext i32 %8969 to i64
  store i64 %8970, i64* %RCX.i66, align 8
  %8971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8966, i8* %8971, align 1
  %8972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8973 = and i32 %8968, 255
  %8974 = call i32 @llvm.ctpop.i32(i32 %8973)
  %8975 = trunc i32 %8974 to i8
  %8976 = and i8 %8975, 1
  %8977 = xor i8 %8976, 1
  store i8 %8977, i8* %8972, align 1
  %8978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8978, align 1
  %8979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8980 = icmp eq i32 %8969, 0
  %8981 = zext i1 %8980 to i8
  store i8 %8981, i8* %8979, align 1
  %8982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8982, align 1
  %8983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8983, align 1
  store %struct.Memory* %loadMem_400896, %struct.Memory** %MEMORY
  %loadMem_400899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8985 = getelementptr inbounds %struct.GPR, %struct.GPR* %8984, i32 0, i32 33
  %8986 = getelementptr inbounds %struct.Reg, %struct.Reg* %8985, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %8986 to i64*
  %8987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8988 = getelementptr inbounds %struct.GPR, %struct.GPR* %8987, i32 0, i32 5
  %8989 = getelementptr inbounds %struct.Reg, %struct.Reg* %8988, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8989 to i32*
  %8990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8991 = getelementptr inbounds %struct.GPR, %struct.GPR* %8990, i32 0, i32 1
  %8992 = getelementptr inbounds %struct.Reg, %struct.Reg* %8991, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %8992 to i64*
  %8993 = load i64, i64* %RAX.i64
  %8994 = load i32, i32* %ECX.i
  %8995 = zext i32 %8994 to i64
  %8996 = load i64, i64* %PC.i63
  %8997 = add i64 %8996, 2
  store i64 %8997, i64* %PC.i63
  %8998 = or i64 %8995, %8993
  %8999 = trunc i64 %8998 to i32
  %9000 = and i64 %8998, 4294967295
  store i64 %9000, i64* %RAX.i64, align 8
  %9001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9001, align 1
  %9002 = and i32 %8999, 255
  %9003 = call i32 @llvm.ctpop.i32(i32 %9002)
  %9004 = trunc i32 %9003 to i8
  %9005 = and i8 %9004, 1
  %9006 = xor i8 %9005, 1
  %9007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9006, i8* %9007, align 1
  %9008 = icmp eq i32 %8999, 0
  %9009 = zext i1 %9008 to i8
  %9010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9009, i8* %9010, align 1
  %9011 = lshr i32 %8999, 31
  %9012 = trunc i32 %9011 to i8
  %9013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9012, i8* %9013, align 1
  %9014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9014, align 1
  %9015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9015, align 1
  store %struct.Memory* %loadMem_400899, %struct.Memory** %MEMORY
  %loadMem_40089b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9017 = getelementptr inbounds %struct.GPR, %struct.GPR* %9016, i32 0, i32 33
  %9018 = getelementptr inbounds %struct.Reg, %struct.Reg* %9017, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %9018 to i64*
  %9019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9020 = getelementptr inbounds %struct.GPR, %struct.GPR* %9019, i32 0, i32 1
  %9021 = getelementptr inbounds %struct.Reg, %struct.Reg* %9020, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %9021 to i64*
  %9022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9023 = getelementptr inbounds %struct.GPR, %struct.GPR* %9022, i32 0, i32 15
  %9024 = getelementptr inbounds %struct.Reg, %struct.Reg* %9023, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %9024 to i64*
  %9025 = load i64, i64* %RAX.i61
  %9026 = load i64, i64* %RBP.i62
  %9027 = sub i64 %9026, 36
  %9028 = load i64, i64* %PC.i60
  %9029 = add i64 %9028, 3
  store i64 %9029, i64* %PC.i60
  %9030 = trunc i64 %9025 to i32
  %9031 = inttoptr i64 %9027 to i32*
  %9032 = load i32, i32* %9031
  %9033 = xor i32 %9032, %9030
  %9034 = zext i32 %9033 to i64
  store i64 %9034, i64* %RAX.i61, align 8
  %9035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9035, align 1
  %9036 = and i32 %9033, 255
  %9037 = call i32 @llvm.ctpop.i32(i32 %9036)
  %9038 = trunc i32 %9037 to i8
  %9039 = and i8 %9038, 1
  %9040 = xor i8 %9039, 1
  %9041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9040, i8* %9041, align 1
  %9042 = icmp eq i32 %9033, 0
  %9043 = zext i1 %9042 to i8
  %9044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9043, i8* %9044, align 1
  %9045 = lshr i32 %9033, 31
  %9046 = trunc i32 %9045 to i8
  %9047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9046, i8* %9047, align 1
  %9048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9048, align 1
  %9049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9049, align 1
  store %struct.Memory* %loadMem_40089b, %struct.Memory** %MEMORY
  %loadMem_40089e = load %struct.Memory*, %struct.Memory** %MEMORY
  %9050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9051 = getelementptr inbounds %struct.GPR, %struct.GPR* %9050, i32 0, i32 33
  %9052 = getelementptr inbounds %struct.Reg, %struct.Reg* %9051, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %9052 to i64*
  %9053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9054 = getelementptr inbounds %struct.GPR, %struct.GPR* %9053, i32 0, i32 1
  %9055 = getelementptr inbounds %struct.Reg, %struct.Reg* %9054, i32 0, i32 0
  %EAX.i58 = bitcast %union.anon* %9055 to i32*
  %9056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9057 = getelementptr inbounds %struct.GPR, %struct.GPR* %9056, i32 0, i32 15
  %9058 = getelementptr inbounds %struct.Reg, %struct.Reg* %9057, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %9058 to i64*
  %9059 = load i64, i64* %RBP.i59
  %9060 = sub i64 %9059, 36
  %9061 = load i32, i32* %EAX.i58
  %9062 = zext i32 %9061 to i64
  %9063 = load i64, i64* %PC.i57
  %9064 = add i64 %9063, 3
  store i64 %9064, i64* %PC.i57
  %9065 = inttoptr i64 %9060 to i32*
  store i32 %9061, i32* %9065
  store %struct.Memory* %loadMem_40089e, %struct.Memory** %MEMORY
  %loadMem_4008a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9067 = getelementptr inbounds %struct.GPR, %struct.GPR* %9066, i32 0, i32 33
  %9068 = getelementptr inbounds %struct.Reg, %struct.Reg* %9067, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %9068 to i64*
  %9069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9070 = getelementptr inbounds %struct.GPR, %struct.GPR* %9069, i32 0, i32 1
  %9071 = getelementptr inbounds %struct.Reg, %struct.Reg* %9070, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %9071 to i64*
  %9072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9073 = getelementptr inbounds %struct.GPR, %struct.GPR* %9072, i32 0, i32 15
  %9074 = getelementptr inbounds %struct.Reg, %struct.Reg* %9073, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %9074 to i64*
  %9075 = load i64, i64* %RBP.i56
  %9076 = sub i64 %9075, 20
  %9077 = load i64, i64* %PC.i54
  %9078 = add i64 %9077, 3
  store i64 %9078, i64* %PC.i54
  %9079 = inttoptr i64 %9076 to i32*
  %9080 = load i32, i32* %9079
  %9081 = zext i32 %9080 to i64
  store i64 %9081, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_4008a1, %struct.Memory** %MEMORY
  %loadMem_4008a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9083 = getelementptr inbounds %struct.GPR, %struct.GPR* %9082, i32 0, i32 33
  %9084 = getelementptr inbounds %struct.Reg, %struct.Reg* %9083, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %9084 to i64*
  %9085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9086 = getelementptr inbounds %struct.GPR, %struct.GPR* %9085, i32 0, i32 1
  %9087 = getelementptr inbounds %struct.Reg, %struct.Reg* %9086, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %9087 to i64*
  %9088 = load i64, i64* %RAX.i53
  %9089 = load i64, i64* %PC.i52
  %9090 = add i64 %9089, 3
  store i64 %9090, i64* %PC.i52
  %9091 = trunc i64 %9088 to i32
  %9092 = sub i32 %9091, 2
  %9093 = zext i32 %9092 to i64
  store i64 %9093, i64* %RAX.i53, align 8
  %9094 = icmp ult i32 %9091, 2
  %9095 = zext i1 %9094 to i8
  %9096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9095, i8* %9096, align 1
  %9097 = and i32 %9092, 255
  %9098 = call i32 @llvm.ctpop.i32(i32 %9097)
  %9099 = trunc i32 %9098 to i8
  %9100 = and i8 %9099, 1
  %9101 = xor i8 %9100, 1
  %9102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9101, i8* %9102, align 1
  %9103 = xor i64 2, %9088
  %9104 = trunc i64 %9103 to i32
  %9105 = xor i32 %9104, %9092
  %9106 = lshr i32 %9105, 4
  %9107 = trunc i32 %9106 to i8
  %9108 = and i8 %9107, 1
  %9109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9108, i8* %9109, align 1
  %9110 = icmp eq i32 %9092, 0
  %9111 = zext i1 %9110 to i8
  %9112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9111, i8* %9112, align 1
  %9113 = lshr i32 %9092, 31
  %9114 = trunc i32 %9113 to i8
  %9115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9114, i8* %9115, align 1
  %9116 = lshr i32 %9091, 31
  %9117 = xor i32 %9113, %9116
  %9118 = add i32 %9117, %9116
  %9119 = icmp eq i32 %9118, 2
  %9120 = zext i1 %9119 to i8
  %9121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9120, i8* %9121, align 1
  store %struct.Memory* %loadMem_4008a4, %struct.Memory** %MEMORY
  %loadMem_4008a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9123 = getelementptr inbounds %struct.GPR, %struct.GPR* %9122, i32 0, i32 33
  %9124 = getelementptr inbounds %struct.Reg, %struct.Reg* %9123, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %9124 to i64*
  %9125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9126 = getelementptr inbounds %struct.GPR, %struct.GPR* %9125, i32 0, i32 1
  %9127 = getelementptr inbounds %struct.Reg, %struct.Reg* %9126, i32 0, i32 0
  %EAX.i50 = bitcast %union.anon* %9127 to i32*
  %9128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9129 = getelementptr inbounds %struct.GPR, %struct.GPR* %9128, i32 0, i32 15
  %9130 = getelementptr inbounds %struct.Reg, %struct.Reg* %9129, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %9130 to i64*
  %9131 = load i64, i64* %RBP.i51
  %9132 = sub i64 %9131, 20
  %9133 = load i32, i32* %EAX.i50
  %9134 = zext i32 %9133 to i64
  %9135 = load i64, i64* %PC.i49
  %9136 = add i64 %9135, 3
  store i64 %9136, i64* %PC.i49
  %9137 = inttoptr i64 %9132 to i32*
  store i32 %9133, i32* %9137
  store %struct.Memory* %loadMem_4008a7, %struct.Memory** %MEMORY
  %loadMem_4008aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %9138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9139 = getelementptr inbounds %struct.GPR, %struct.GPR* %9138, i32 0, i32 33
  %9140 = getelementptr inbounds %struct.Reg, %struct.Reg* %9139, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %9140 to i64*
  %9141 = load i64, i64* %PC.i48
  %9142 = add i64 %9141, -851
  %9143 = load i64, i64* %PC.i48
  %9144 = add i64 %9143, 5
  store i64 %9144, i64* %PC.i48
  %9145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9142, i64* %9145, align 8
  store %struct.Memory* %loadMem_4008aa, %struct.Memory** %MEMORY
  br label %block_.L_400557

block_.L_4008af:                                  ; preds = %block_.L_400557
  %loadMem_4008af = load %struct.Memory*, %struct.Memory** %MEMORY
  %9146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9147 = getelementptr inbounds %struct.GPR, %struct.GPR* %9146, i32 0, i32 33
  %9148 = getelementptr inbounds %struct.Reg, %struct.Reg* %9147, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %9148 to i64*
  %9149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9150 = getelementptr inbounds %struct.GPR, %struct.GPR* %9149, i32 0, i32 15
  %9151 = getelementptr inbounds %struct.Reg, %struct.Reg* %9150, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %9151 to i64*
  %9152 = load i64, i64* %RBP.i47
  %9153 = sub i64 %9152, 20
  %9154 = load i64, i64* %PC.i46
  %9155 = add i64 %9154, 7
  store i64 %9155, i64* %PC.i46
  %9156 = inttoptr i64 %9153 to i32*
  store i32 0, i32* %9156
  store %struct.Memory* %loadMem_4008af, %struct.Memory** %MEMORY
  br label %block_.L_4008b6

block_.L_4008b6:                                  ; preds = %block_4008c0, %block_.L_4008af
  %loadMem_4008b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9158 = getelementptr inbounds %struct.GPR, %struct.GPR* %9157, i32 0, i32 33
  %9159 = getelementptr inbounds %struct.Reg, %struct.Reg* %9158, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %9159 to i64*
  %9160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9161 = getelementptr inbounds %struct.GPR, %struct.GPR* %9160, i32 0, i32 15
  %9162 = getelementptr inbounds %struct.Reg, %struct.Reg* %9161, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %9162 to i64*
  %9163 = load i64, i64* %RBP.i45
  %9164 = sub i64 %9163, 20
  %9165 = load i64, i64* %PC.i44
  %9166 = add i64 %9165, 4
  store i64 %9166, i64* %PC.i44
  %9167 = inttoptr i64 %9164 to i32*
  %9168 = load i32, i32* %9167
  %9169 = sub i32 %9168, 16
  %9170 = icmp ult i32 %9168, 16
  %9171 = zext i1 %9170 to i8
  %9172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9171, i8* %9172, align 1
  %9173 = and i32 %9169, 255
  %9174 = call i32 @llvm.ctpop.i32(i32 %9173)
  %9175 = trunc i32 %9174 to i8
  %9176 = and i8 %9175, 1
  %9177 = xor i8 %9176, 1
  %9178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9177, i8* %9178, align 1
  %9179 = xor i32 %9168, 16
  %9180 = xor i32 %9179, %9169
  %9181 = lshr i32 %9180, 4
  %9182 = trunc i32 %9181 to i8
  %9183 = and i8 %9182, 1
  %9184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9183, i8* %9184, align 1
  %9185 = icmp eq i32 %9169, 0
  %9186 = zext i1 %9185 to i8
  %9187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9186, i8* %9187, align 1
  %9188 = lshr i32 %9169, 31
  %9189 = trunc i32 %9188 to i8
  %9190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9189, i8* %9190, align 1
  %9191 = lshr i32 %9168, 31
  %9192 = xor i32 %9188, %9191
  %9193 = add i32 %9192, %9191
  %9194 = icmp eq i32 %9193, 2
  %9195 = zext i1 %9194 to i8
  %9196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9195, i8* %9196, align 1
  store %struct.Memory* %loadMem_4008b6, %struct.Memory** %MEMORY
  %loadMem_4008ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %9197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9198 = getelementptr inbounds %struct.GPR, %struct.GPR* %9197, i32 0, i32 33
  %9199 = getelementptr inbounds %struct.Reg, %struct.Reg* %9198, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %9199 to i64*
  %9200 = load i64, i64* %PC.i43
  %9201 = add i64 %9200, 53
  %9202 = load i64, i64* %PC.i43
  %9203 = add i64 %9202, 6
  %9204 = load i64, i64* %PC.i43
  %9205 = add i64 %9204, 6
  store i64 %9205, i64* %PC.i43
  %9206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9207 = load i8, i8* %9206, align 1
  %9208 = icmp eq i8 %9207, 0
  %9209 = zext i1 %9208 to i8
  store i8 %9209, i8* %BRANCH_TAKEN, align 1
  %9210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9211 = select i1 %9208, i64 %9201, i64 %9203
  store i64 %9211, i64* %9210, align 8
  store %struct.Memory* %loadMem_4008ba, %struct.Memory** %MEMORY
  %loadBr_4008ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4008ba = icmp eq i8 %loadBr_4008ba, 1
  br i1 %cmpBr_4008ba, label %block_.L_4008ef, label %block_4008c0

block_4008c0:                                     ; preds = %block_.L_4008b6
  %loadMem_4008c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9213 = getelementptr inbounds %struct.GPR, %struct.GPR* %9212, i32 0, i32 33
  %9214 = getelementptr inbounds %struct.Reg, %struct.Reg* %9213, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %9214 to i64*
  %9215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9216 = getelementptr inbounds %struct.GPR, %struct.GPR* %9215, i32 0, i32 1
  %9217 = getelementptr inbounds %struct.Reg, %struct.Reg* %9216, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %9217 to i64*
  %9218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9219 = getelementptr inbounds %struct.GPR, %struct.GPR* %9218, i32 0, i32 15
  %9220 = getelementptr inbounds %struct.Reg, %struct.Reg* %9219, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %9220 to i64*
  %9221 = load i64, i64* %RBP.i42
  %9222 = sub i64 %9221, 20
  %9223 = load i64, i64* %PC.i40
  %9224 = add i64 %9223, 3
  store i64 %9224, i64* %PC.i40
  %9225 = inttoptr i64 %9222 to i32*
  %9226 = load i32, i32* %9225
  %9227 = zext i32 %9226 to i64
  store i64 %9227, i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_4008c0, %struct.Memory** %MEMORY
  %loadMem_4008c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9229 = getelementptr inbounds %struct.GPR, %struct.GPR* %9228, i32 0, i32 33
  %9230 = getelementptr inbounds %struct.Reg, %struct.Reg* %9229, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %9230 to i64*
  %9231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9232 = getelementptr inbounds %struct.GPR, %struct.GPR* %9231, i32 0, i32 1
  %9233 = getelementptr inbounds %struct.Reg, %struct.Reg* %9232, i32 0, i32 0
  %EAX.i38 = bitcast %union.anon* %9233 to i32*
  %9234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9235 = getelementptr inbounds %struct.GPR, %struct.GPR* %9234, i32 0, i32 5
  %9236 = getelementptr inbounds %struct.Reg, %struct.Reg* %9235, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %9236 to i64*
  %9237 = load i32, i32* %EAX.i38
  %9238 = zext i32 %9237 to i64
  %9239 = load i64, i64* %PC.i37
  %9240 = add i64 %9239, 2
  store i64 %9240, i64* %PC.i37
  %9241 = and i64 %9238, 4294967295
  store i64 %9241, i64* %RCX.i39, align 8
  store %struct.Memory* %loadMem_4008c3, %struct.Memory** %MEMORY
  %loadMem_4008c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9243 = getelementptr inbounds %struct.GPR, %struct.GPR* %9242, i32 0, i32 33
  %9244 = getelementptr inbounds %struct.Reg, %struct.Reg* %9243, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %9244 to i64*
  %9245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9246 = getelementptr inbounds %struct.GPR, %struct.GPR* %9245, i32 0, i32 1
  %9247 = getelementptr inbounds %struct.Reg, %struct.Reg* %9246, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %9247 to i64*
  %9248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9249 = getelementptr inbounds %struct.GPR, %struct.GPR* %9248, i32 0, i32 5
  %9250 = getelementptr inbounds %struct.Reg, %struct.Reg* %9249, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %9250 to i64*
  %9251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9252 = getelementptr inbounds %struct.GPR, %struct.GPR* %9251, i32 0, i32 15
  %9253 = getelementptr inbounds %struct.Reg, %struct.Reg* %9252, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %9253 to i64*
  %9254 = load i64, i64* %RBP.i36
  %9255 = load i64, i64* %RCX.i35
  %9256 = mul i64 %9255, 4
  %9257 = add i64 %9254, -96
  %9258 = add i64 %9257, %9256
  %9259 = load i64, i64* %PC.i33
  %9260 = add i64 %9259, 4
  store i64 %9260, i64* %PC.i33
  %9261 = inttoptr i64 %9258 to i32*
  %9262 = load i32, i32* %9261
  %9263 = zext i32 %9262 to i64
  store i64 %9263, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_4008c5, %struct.Memory** %MEMORY
  %loadMem_4008c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9265 = getelementptr inbounds %struct.GPR, %struct.GPR* %9264, i32 0, i32 33
  %9266 = getelementptr inbounds %struct.Reg, %struct.Reg* %9265, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %9266 to i64*
  %9267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9268 = getelementptr inbounds %struct.GPR, %struct.GPR* %9267, i32 0, i32 5
  %9269 = getelementptr inbounds %struct.Reg, %struct.Reg* %9268, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %9269 to i64*
  %9270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9271 = getelementptr inbounds %struct.GPR, %struct.GPR* %9270, i32 0, i32 15
  %9272 = getelementptr inbounds %struct.Reg, %struct.Reg* %9271, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %9272 to i64*
  %9273 = load i64, i64* %RBP.i32
  %9274 = sub i64 %9273, 16
  %9275 = load i64, i64* %PC.i30
  %9276 = add i64 %9275, 4
  store i64 %9276, i64* %PC.i30
  %9277 = inttoptr i64 %9274 to i64*
  %9278 = load i64, i64* %9277
  store i64 %9278, i64* %RCX.i31, align 8
  store %struct.Memory* %loadMem_4008c9, %struct.Memory** %MEMORY
  %loadMem_4008cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %9279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9280 = getelementptr inbounds %struct.GPR, %struct.GPR* %9279, i32 0, i32 33
  %9281 = getelementptr inbounds %struct.Reg, %struct.Reg* %9280, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %9281 to i64*
  %9282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9283 = getelementptr inbounds %struct.GPR, %struct.GPR* %9282, i32 0, i32 7
  %9284 = getelementptr inbounds %struct.Reg, %struct.Reg* %9283, i32 0, i32 0
  %RDX.i28 = bitcast %union.anon* %9284 to i64*
  %9285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9286 = getelementptr inbounds %struct.GPR, %struct.GPR* %9285, i32 0, i32 15
  %9287 = getelementptr inbounds %struct.Reg, %struct.Reg* %9286, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %9287 to i64*
  %9288 = load i64, i64* %RBP.i29
  %9289 = sub i64 %9288, 20
  %9290 = load i64, i64* %PC.i27
  %9291 = add i64 %9290, 3
  store i64 %9291, i64* %PC.i27
  %9292 = inttoptr i64 %9289 to i32*
  %9293 = load i32, i32* %9292
  %9294 = zext i32 %9293 to i64
  store i64 %9294, i64* %RDX.i28, align 8
  store %struct.Memory* %loadMem_4008cd, %struct.Memory** %MEMORY
  %loadMem_4008d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9296 = getelementptr inbounds %struct.GPR, %struct.GPR* %9295, i32 0, i32 33
  %9297 = getelementptr inbounds %struct.Reg, %struct.Reg* %9296, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %9297 to i64*
  %9298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9299 = getelementptr inbounds %struct.GPR, %struct.GPR* %9298, i32 0, i32 7
  %9300 = getelementptr inbounds %struct.Reg, %struct.Reg* %9299, i32 0, i32 0
  %EDX.i25 = bitcast %union.anon* %9300 to i32*
  %9301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9302 = getelementptr inbounds %struct.GPR, %struct.GPR* %9301, i32 0, i32 9
  %9303 = getelementptr inbounds %struct.Reg, %struct.Reg* %9302, i32 0, i32 0
  %RSI.i26 = bitcast %union.anon* %9303 to i64*
  %9304 = load i32, i32* %EDX.i25
  %9305 = zext i32 %9304 to i64
  %9306 = load i64, i64* %PC.i24
  %9307 = add i64 %9306, 2
  store i64 %9307, i64* %PC.i24
  %9308 = and i64 %9305, 4294967295
  store i64 %9308, i64* %RSI.i26, align 8
  store %struct.Memory* %loadMem_4008d0, %struct.Memory** %MEMORY
  %loadMem_4008d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9310 = getelementptr inbounds %struct.GPR, %struct.GPR* %9309, i32 0, i32 33
  %9311 = getelementptr inbounds %struct.Reg, %struct.Reg* %9310, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %9311 to i64*
  %9312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9313 = getelementptr inbounds %struct.GPR, %struct.GPR* %9312, i32 0, i32 1
  %9314 = getelementptr inbounds %struct.Reg, %struct.Reg* %9313, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %9314 to i64*
  %9315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9316 = getelementptr inbounds %struct.GPR, %struct.GPR* %9315, i32 0, i32 5
  %9317 = getelementptr inbounds %struct.Reg, %struct.Reg* %9316, i32 0, i32 0
  %RCX.i22 = bitcast %union.anon* %9317 to i64*
  %9318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9319 = getelementptr inbounds %struct.GPR, %struct.GPR* %9318, i32 0, i32 9
  %9320 = getelementptr inbounds %struct.Reg, %struct.Reg* %9319, i32 0, i32 0
  %RSI.i23 = bitcast %union.anon* %9320 to i64*
  %9321 = load i64, i64* %RAX.i21
  %9322 = load i64, i64* %RCX.i22
  %9323 = load i64, i64* %RSI.i23
  %9324 = mul i64 %9323, 4
  %9325 = add i64 %9324, %9322
  %9326 = load i64, i64* %PC.i20
  %9327 = add i64 %9326, 3
  store i64 %9327, i64* %PC.i20
  %9328 = trunc i64 %9321 to i32
  %9329 = inttoptr i64 %9325 to i32*
  %9330 = load i32, i32* %9329
  %9331 = add i32 %9330, %9328
  %9332 = zext i32 %9331 to i64
  store i64 %9332, i64* %RAX.i21, align 8
  %9333 = icmp ult i32 %9331, %9328
  %9334 = icmp ult i32 %9331, %9330
  %9335 = or i1 %9333, %9334
  %9336 = zext i1 %9335 to i8
  %9337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9336, i8* %9337, align 1
  %9338 = and i32 %9331, 255
  %9339 = call i32 @llvm.ctpop.i32(i32 %9338)
  %9340 = trunc i32 %9339 to i8
  %9341 = and i8 %9340, 1
  %9342 = xor i8 %9341, 1
  %9343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9342, i8* %9343, align 1
  %9344 = xor i32 %9330, %9328
  %9345 = xor i32 %9344, %9331
  %9346 = lshr i32 %9345, 4
  %9347 = trunc i32 %9346 to i8
  %9348 = and i8 %9347, 1
  %9349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9348, i8* %9349, align 1
  %9350 = icmp eq i32 %9331, 0
  %9351 = zext i1 %9350 to i8
  %9352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9351, i8* %9352, align 1
  %9353 = lshr i32 %9331, 31
  %9354 = trunc i32 %9353 to i8
  %9355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9354, i8* %9355, align 1
  %9356 = lshr i32 %9328, 31
  %9357 = lshr i32 %9330, 31
  %9358 = xor i32 %9353, %9356
  %9359 = xor i32 %9353, %9357
  %9360 = add i32 %9358, %9359
  %9361 = icmp eq i32 %9360, 2
  %9362 = zext i1 %9361 to i8
  %9363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9362, i8* %9363, align 1
  store %struct.Memory* %loadMem_4008d2, %struct.Memory** %MEMORY
  %loadMem_4008d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9365 = getelementptr inbounds %struct.GPR, %struct.GPR* %9364, i32 0, i32 33
  %9366 = getelementptr inbounds %struct.Reg, %struct.Reg* %9365, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %9366 to i64*
  %9367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9368 = getelementptr inbounds %struct.GPR, %struct.GPR* %9367, i32 0, i32 5
  %9369 = getelementptr inbounds %struct.Reg, %struct.Reg* %9368, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %9369 to i64*
  %9370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9371 = getelementptr inbounds %struct.GPR, %struct.GPR* %9370, i32 0, i32 15
  %9372 = getelementptr inbounds %struct.Reg, %struct.Reg* %9371, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %9372 to i64*
  %9373 = load i64, i64* %RBP.i19
  %9374 = sub i64 %9373, 8
  %9375 = load i64, i64* %PC.i17
  %9376 = add i64 %9375, 4
  store i64 %9376, i64* %PC.i17
  %9377 = inttoptr i64 %9374 to i64*
  %9378 = load i64, i64* %9377
  store i64 %9378, i64* %RCX.i18, align 8
  store %struct.Memory* %loadMem_4008d5, %struct.Memory** %MEMORY
  %loadMem_4008d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9380 = getelementptr inbounds %struct.GPR, %struct.GPR* %9379, i32 0, i32 33
  %9381 = getelementptr inbounds %struct.Reg, %struct.Reg* %9380, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %9381 to i64*
  %9382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9383 = getelementptr inbounds %struct.GPR, %struct.GPR* %9382, i32 0, i32 7
  %9384 = getelementptr inbounds %struct.Reg, %struct.Reg* %9383, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %9384 to i64*
  %9385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9386 = getelementptr inbounds %struct.GPR, %struct.GPR* %9385, i32 0, i32 15
  %9387 = getelementptr inbounds %struct.Reg, %struct.Reg* %9386, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %9387 to i64*
  %9388 = load i64, i64* %RBP.i16
  %9389 = sub i64 %9388, 20
  %9390 = load i64, i64* %PC.i15
  %9391 = add i64 %9390, 3
  store i64 %9391, i64* %PC.i15
  %9392 = inttoptr i64 %9389 to i32*
  %9393 = load i32, i32* %9392
  %9394 = zext i32 %9393 to i64
  store i64 %9394, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4008d9, %struct.Memory** %MEMORY
  %loadMem_4008dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %9395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9396 = getelementptr inbounds %struct.GPR, %struct.GPR* %9395, i32 0, i32 33
  %9397 = getelementptr inbounds %struct.Reg, %struct.Reg* %9396, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %9397 to i64*
  %9398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9399 = getelementptr inbounds %struct.GPR, %struct.GPR* %9398, i32 0, i32 7
  %9400 = getelementptr inbounds %struct.Reg, %struct.Reg* %9399, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %9400 to i32*
  %9401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9402 = getelementptr inbounds %struct.GPR, %struct.GPR* %9401, i32 0, i32 9
  %9403 = getelementptr inbounds %struct.Reg, %struct.Reg* %9402, i32 0, i32 0
  %RSI.i14 = bitcast %union.anon* %9403 to i64*
  %9404 = load i32, i32* %EDX.i
  %9405 = zext i32 %9404 to i64
  %9406 = load i64, i64* %PC.i13
  %9407 = add i64 %9406, 2
  store i64 %9407, i64* %PC.i13
  %9408 = and i64 %9405, 4294967295
  store i64 %9408, i64* %RSI.i14, align 8
  store %struct.Memory* %loadMem_4008dc, %struct.Memory** %MEMORY
  %loadMem_4008de = load %struct.Memory*, %struct.Memory** %MEMORY
  %9409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9410 = getelementptr inbounds %struct.GPR, %struct.GPR* %9409, i32 0, i32 33
  %9411 = getelementptr inbounds %struct.Reg, %struct.Reg* %9410, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %9411 to i64*
  %9412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9413 = getelementptr inbounds %struct.GPR, %struct.GPR* %9412, i32 0, i32 1
  %9414 = getelementptr inbounds %struct.Reg, %struct.Reg* %9413, i32 0, i32 0
  %EAX.i12 = bitcast %union.anon* %9414 to i32*
  %9415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9416 = getelementptr inbounds %struct.GPR, %struct.GPR* %9415, i32 0, i32 5
  %9417 = getelementptr inbounds %struct.Reg, %struct.Reg* %9416, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %9417 to i64*
  %9418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9419 = getelementptr inbounds %struct.GPR, %struct.GPR* %9418, i32 0, i32 9
  %9420 = getelementptr inbounds %struct.Reg, %struct.Reg* %9419, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %9420 to i64*
  %9421 = load i64, i64* %RCX.i
  %9422 = load i64, i64* %RSI.i
  %9423 = mul i64 %9422, 4
  %9424 = add i64 %9423, %9421
  %9425 = load i32, i32* %EAX.i12
  %9426 = zext i32 %9425 to i64
  %9427 = load i64, i64* %PC.i11
  %9428 = add i64 %9427, 3
  store i64 %9428, i64* %PC.i11
  %9429 = inttoptr i64 %9424 to i32*
  store i32 %9425, i32* %9429
  store %struct.Memory* %loadMem_4008de, %struct.Memory** %MEMORY
  %loadMem_4008e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9431 = getelementptr inbounds %struct.GPR, %struct.GPR* %9430, i32 0, i32 33
  %9432 = getelementptr inbounds %struct.Reg, %struct.Reg* %9431, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %9432 to i64*
  %9433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9434 = getelementptr inbounds %struct.GPR, %struct.GPR* %9433, i32 0, i32 1
  %9435 = getelementptr inbounds %struct.Reg, %struct.Reg* %9434, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %9435 to i64*
  %9436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9437 = getelementptr inbounds %struct.GPR, %struct.GPR* %9436, i32 0, i32 15
  %9438 = getelementptr inbounds %struct.Reg, %struct.Reg* %9437, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %9438 to i64*
  %9439 = load i64, i64* %RBP.i10
  %9440 = sub i64 %9439, 20
  %9441 = load i64, i64* %PC.i8
  %9442 = add i64 %9441, 3
  store i64 %9442, i64* %PC.i8
  %9443 = inttoptr i64 %9440 to i32*
  %9444 = load i32, i32* %9443
  %9445 = zext i32 %9444 to i64
  store i64 %9445, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_4008e1, %struct.Memory** %MEMORY
  %loadMem_4008e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9447 = getelementptr inbounds %struct.GPR, %struct.GPR* %9446, i32 0, i32 33
  %9448 = getelementptr inbounds %struct.Reg, %struct.Reg* %9447, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %9448 to i64*
  %9449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9450 = getelementptr inbounds %struct.GPR, %struct.GPR* %9449, i32 0, i32 1
  %9451 = getelementptr inbounds %struct.Reg, %struct.Reg* %9450, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %9451 to i64*
  %9452 = load i64, i64* %RAX.i
  %9453 = load i64, i64* %PC.i7
  %9454 = add i64 %9453, 3
  store i64 %9454, i64* %PC.i7
  %9455 = trunc i64 %9452 to i32
  %9456 = add i32 1, %9455
  %9457 = zext i32 %9456 to i64
  store i64 %9457, i64* %RAX.i, align 8
  %9458 = icmp ult i32 %9456, %9455
  %9459 = icmp ult i32 %9456, 1
  %9460 = or i1 %9458, %9459
  %9461 = zext i1 %9460 to i8
  %9462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9461, i8* %9462, align 1
  %9463 = and i32 %9456, 255
  %9464 = call i32 @llvm.ctpop.i32(i32 %9463)
  %9465 = trunc i32 %9464 to i8
  %9466 = and i8 %9465, 1
  %9467 = xor i8 %9466, 1
  %9468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9467, i8* %9468, align 1
  %9469 = xor i64 1, %9452
  %9470 = trunc i64 %9469 to i32
  %9471 = xor i32 %9470, %9456
  %9472 = lshr i32 %9471, 4
  %9473 = trunc i32 %9472 to i8
  %9474 = and i8 %9473, 1
  %9475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9474, i8* %9475, align 1
  %9476 = icmp eq i32 %9456, 0
  %9477 = zext i1 %9476 to i8
  %9478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9477, i8* %9478, align 1
  %9479 = lshr i32 %9456, 31
  %9480 = trunc i32 %9479 to i8
  %9481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9480, i8* %9481, align 1
  %9482 = lshr i32 %9455, 31
  %9483 = xor i32 %9479, %9482
  %9484 = add i32 %9483, %9479
  %9485 = icmp eq i32 %9484, 2
  %9486 = zext i1 %9485 to i8
  %9487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9486, i8* %9487, align 1
  store %struct.Memory* %loadMem_4008e4, %struct.Memory** %MEMORY
  %loadMem_4008e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9489 = getelementptr inbounds %struct.GPR, %struct.GPR* %9488, i32 0, i32 33
  %9490 = getelementptr inbounds %struct.Reg, %struct.Reg* %9489, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %9490 to i64*
  %9491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9492 = getelementptr inbounds %struct.GPR, %struct.GPR* %9491, i32 0, i32 1
  %9493 = getelementptr inbounds %struct.Reg, %struct.Reg* %9492, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %9493 to i32*
  %9494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9495 = getelementptr inbounds %struct.GPR, %struct.GPR* %9494, i32 0, i32 15
  %9496 = getelementptr inbounds %struct.Reg, %struct.Reg* %9495, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %9496 to i64*
  %9497 = load i64, i64* %RBP.i6
  %9498 = sub i64 %9497, 20
  %9499 = load i32, i32* %EAX.i
  %9500 = zext i32 %9499 to i64
  %9501 = load i64, i64* %PC.i5
  %9502 = add i64 %9501, 3
  store i64 %9502, i64* %PC.i5
  %9503 = inttoptr i64 %9498 to i32*
  store i32 %9499, i32* %9503
  store %struct.Memory* %loadMem_4008e7, %struct.Memory** %MEMORY
  %loadMem_4008ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %9504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9505 = getelementptr inbounds %struct.GPR, %struct.GPR* %9504, i32 0, i32 33
  %9506 = getelementptr inbounds %struct.Reg, %struct.Reg* %9505, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9506 to i64*
  %9507 = load i64, i64* %PC.i4
  %9508 = add i64 %9507, -52
  %9509 = load i64, i64* %PC.i4
  %9510 = add i64 %9509, 5
  store i64 %9510, i64* %PC.i4
  %9511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9508, i64* %9511, align 8
  store %struct.Memory* %loadMem_4008ea, %struct.Memory** %MEMORY
  br label %block_.L_4008b6

block_.L_4008ef:                                  ; preds = %block_.L_4008b6
  %loadMem_4008ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %9512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9513 = getelementptr inbounds %struct.GPR, %struct.GPR* %9512, i32 0, i32 33
  %9514 = getelementptr inbounds %struct.Reg, %struct.Reg* %9513, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9514 to i64*
  %9515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9516 = getelementptr inbounds %struct.GPR, %struct.GPR* %9515, i32 0, i32 15
  %9517 = getelementptr inbounds %struct.Reg, %struct.Reg* %9516, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9517 to i64*
  %9518 = load i64, i64* %PC.i2
  %9519 = add i64 %9518, 1
  store i64 %9519, i64* %PC.i2
  %9520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9521 = load i64, i64* %9520, align 8
  %9522 = add i64 %9521, 8
  %9523 = inttoptr i64 %9521 to i64*
  %9524 = load i64, i64* %9523
  store i64 %9524, i64* %RBP.i3, align 8
  store i64 %9522, i64* %9520, align 8
  store %struct.Memory* %loadMem_4008ef, %struct.Memory** %MEMORY
  %loadMem_4008f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9526 = getelementptr inbounds %struct.GPR, %struct.GPR* %9525, i32 0, i32 33
  %9527 = getelementptr inbounds %struct.Reg, %struct.Reg* %9526, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9527 to i64*
  %9528 = load i64, i64* %PC.i1
  %9529 = add i64 %9528, 1
  store i64 %9529, i64* %PC.i1
  %9530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9532 = load i64, i64* %9531, align 8
  %9533 = inttoptr i64 %9532 to i64*
  %9534 = load i64, i64* %9533
  store i64 %9534, i64* %9530, align 8
  %9535 = add i64 %9532, 8
  store i64 %9535, i64* %9531, align 8
  store %struct.Memory* %loadMem_4008f0, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4008f0
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

define %struct.Memory* @routine_cmpl__0x10__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 16
  %16 = icmp ult i32 %14, 16
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
  %25 = xor i32 %14, 16
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

define %struct.Memory* @routine_jae_.L_400550(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -96
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
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

define %struct.Memory* @routine_jmpq_.L_400523(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x14__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 20, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jbe_.L_4008af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_shll__0x7___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = shl i64 %12, 6
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

define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_shrl__0x19___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 24
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = or i64 %14, %12
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

define %struct.Memory* @routine_xorl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_addl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
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

define %struct.Memory* @routine_shll__0x9___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = shl i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %16, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x60__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
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

define %struct.Memory* @routine_shrl__0x17___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 22
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_addl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
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

define %struct.Memory* @routine_shll__0xd___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = shl i64 %12, 12
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %16, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
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

define %struct.Memory* @routine_addl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
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

define %struct.Memory* @routine_shrl__0x13___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 18
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_addl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
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

define %struct.Memory* @routine_shll__0x12___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = shl i64 %12, 17
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %16, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x40__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
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

define %struct.Memory* @routine_shrl__0xe___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 13
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_addl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 92
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 92
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

define %struct.Memory* @routine_xorl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_addl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
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

define %struct.Memory* @routine_xorl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
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

define %struct.Memory* @routine_xorl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 92
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_xorl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_addl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
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

define %struct.Memory* @routine_xorl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_xorl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
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

define %struct.Memory* @routine_xorl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x58__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
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

define %struct.Memory* @routine_xorl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_xorl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 84
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
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

define %struct.Memory* @routine_xorl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_addl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 84
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

define %struct.Memory* @routine_addl_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 84
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

define %struct.Memory* @routine_xorl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_addl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
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

define %struct.Memory* @routine_xorl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
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

define %struct.Memory* @routine_subl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 2
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 2
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
  %24 = xor i64 2, %9
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

define %struct.Memory* @routine_jmpq_.L_400557(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jae_.L_4008ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -96
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_addl___rcx__rsi_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
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
  store i64 %26, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4008b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
