; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

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
%union.anon = type { i64 }
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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @shiftit(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i37 = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i37, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %PC.i, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i34, align 8
  %19 = load i64, i64* %PC.i, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC.i, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -16
  %24 = load i64, i64* %PC.i, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %PC.i, align 8
  %26 = inttoptr i64 %23 to i64*
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %RSI.i34, align 8
  %28 = add i64 %24, 7
  store i64 %28, i64* %PC.i, align 8
  %29 = inttoptr i64 %27 to i64*
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %RSI.i34, align 8
  %31 = add i64 %22, -24
  %32 = add i64 %24, 11
  store i64 %32, i64* %PC.i, align 8
  %33 = inttoptr i64 %31 to i64*
  store i64 %30, i64* %33, align 8
  %RDI.i23 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %34 = load i64, i64* %RBP.i, align 8
  %35 = add i64 %34, -4
  %36 = load i64, i64* %PC.i, align 8
  %37 = add i64 %36, 3
  store i64 %37, i64* %PC.i, align 8
  %38 = inttoptr i64 %35 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %39 to i64
  store i64 %40, i64* %RDI.i23, align 8
  %41 = add i64 %34, -24
  %42 = add i64 %36, 7
  store i64 %42, i64* %PC.i, align 8
  %43 = inttoptr i64 %41 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %RSI.i34, align 8
  store i64 %40, i64* %RDI.i23, align 8
  %RCX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %45 = zext i32 %39 to i64
  store i64 %45, i64* %RCX.i, align 8
  %46 = add i64 %36, 14
  store i64 %46, i64* %PC.i, align 8
  %47 = trunc i32 %39 to i6
  switch i6 %47, label %51 [
    i6 0, label %routine_shrq__cl___rsi.exit
    i6 1, label %48
  ]

; <label>:48:                                     ; preds = %entry
  %49 = lshr i64 %44, 63
  %50 = trunc i64 %49 to i8
  br label %56

; <label>:51:                                     ; preds = %entry
  %52 = and i32 %39, 63
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %53, -1
  %55 = lshr i64 %44, %54
  br label %56

; <label>:56:                                     ; preds = %51, %48
  %57 = phi i64 [ %55, %51 ], [ %44, %48 ]
  %58 = phi i8 [ 0, %51 ], [ %50, %48 ]
  %59 = trunc i64 %57 to i8
  %60 = and i8 %59, 1
  %61 = lshr i64 %57, 1
  store i64 %61, i64* %RSI.i34, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %60, i8* %62, align 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %64 = trunc i64 %61 to i32
  %65 = and i32 %64, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65)
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %63, align 1
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %70, align 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %72 = icmp eq i64 %61, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %71, align 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %74, align 1
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %58, i8* %75, align 1
  br label %routine_shrq__cl___rsi.exit

routine_shrq__cl___rsi.exit:                      ; preds = %56, %entry
  %76 = phi i64 [ %61, %56 ], [ %44, %entry ]
  %77 = add i64 %36, 18
  store i64 %77, i64* %PC.i, align 8
  store i64 %76, i64* %43, align 8
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -24
  %80 = load i64, i64* %PC.i, align 8
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC.i, align 8
  %82 = inttoptr i64 %79 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %RSI.i34, align 8
  %RAX.i6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %84 = add i64 %78, -16
  %85 = add i64 %80, 8
  store i64 %85, i64* %PC.i, align 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RAX.i6, align 8
  %88 = add i64 %80, 11
  store i64 %88, i64* %PC.i, align 8
  %89 = inttoptr i64 %87 to i64*
  store i64 %83, i64* %89, align 8
  %90 = load i64, i64* %PC.i, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %PC.i, align 8
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 8
  %94 = inttoptr i64 %92 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RBP.i, align 8
  store i64 %93, i64* %6, align 8
  %96 = add i64 %90, 2
  store i64 %96, i64* %PC.i, align 8
  %97 = inttoptr i64 %93 to i64*
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %3, align 8
  %99 = add i64 %92, 16
  store i64 %99, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
