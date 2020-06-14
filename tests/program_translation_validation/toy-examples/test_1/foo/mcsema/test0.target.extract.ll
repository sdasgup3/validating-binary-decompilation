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
define %struct.Memory* @foo(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC.i = bitcast %union.anon* %6 to i64*
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP.i
  %10 = add i64 %1, 1
  store i64 %10, i64* %PC.i
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %9, i64* %14
  store i64 %13, i64* %11, align 8
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 13
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %16 to i64*
  %17 = load i64, i64* %PC.i
  %18 = add i64 %17, 3
  store i64 %13, i64* %RBP.i, align 8
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 11
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %20 to i32*
  %21 = sub i64 %13, 4
  %22 = load i32, i32* %EDI.i
  %23 = zext i32 %22 to i64
  %24 = add i64 %18, 3
  store i64 %24, i64* %PC.i
  %25 = inttoptr i64 %21 to i32*
  store i32 %22, i32* %25
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 9
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %ESI.i11 = bitcast %union.anon* %27 to i32*
  %28 = load i64, i64* %RBP.i
  %29 = sub i64 %28, 8
  %30 = load i32, i32* %ESI.i11
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %PC.i
  %33 = add i64 %32, 3
  store i64 %33, i64* %PC.i
  %34 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %34
  %RSI.i8 = bitcast %union.anon* %27 to i64*
  %35 = load i64, i64* %RBP.i
  %36 = sub i64 %35, 4
  %37 = load i64, i64* %PC.i
  %38 = add i64 %37, 3
  store i64 %38, i64* %PC.i
  %39 = inttoptr i64 %36 to i32*
  %40 = load i32, i32* %39
  %41 = zext i32 %40 to i64
  store i64 %41, i64* %RSI.i8, align 8
  %42 = sub i64 %35, 8
  %43 = add i64 %38, 3
  store i64 %43, i64* %PC.i
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44
  %46 = add i32 %45, %40
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %RSI.i8, align 8
  %48 = icmp ult i32 %46, %40
  %49 = icmp ult i32 %46, %45
  %50 = or i1 %48, %49
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %51, i8* %52, align 1
  %53 = and i32 %46, 255
  %54 = call i32 @llvm.ctpop.i32(i32 %53)
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %57, i8* %58, align 1
  %59 = xor i32 %45, %40
  %60 = xor i32 %59, %46
  %61 = lshr i32 %60, 4
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %63, i8* %64, align 1
  %65 = icmp eq i32 %46, 0
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %66, i8* %67, align 1
  %68 = lshr i32 %46, 31
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %69, i8* %70, align 1
  %71 = lshr i32 %40, 31
  %72 = lshr i32 %45, 31
  %73 = xor i32 %68, %71
  %74 = xor i32 %68, %72
  %75 = add i32 %73, %74
  %76 = icmp eq i32 %75, 2
  %77 = zext i1 %76 to i8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %77, i8* %78, align 1
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 1
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %80 to i64*
  %81 = add i64 %43, 2
  %82 = and i64 %47, 4294967295
  store i64 %82, i64* %RAX.i, align 8
  %83 = add i64 %81, 1
  store i64 %83, i64* %PC.i
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %84, 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RBP.i, align 8
  store i64 %85, i64* %11, align 8
  %88 = add i64 %83, 1
  store i64 %88, i64* %PC.i
  %89 = inttoptr i64 %85 to i64*
  %90 = load i64, i64* %89
  store i64 %90, i64* %3, align 8
  %91 = add i64 %85, 8
  store i64 %91, i64* %11, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
