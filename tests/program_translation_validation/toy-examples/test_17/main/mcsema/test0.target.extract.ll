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
%struct.anon.2 = type { i8, i8 }

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4004c0.printdata(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 13
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %RSP.i16 = bitcast %union.anon* %16 to i64*
  %17 = load i64, i64* %PC.i
  %18 = add i64 %17, 3
  store i64 %13, i64* %RBP.i, align 8
  %19 = add i64 %18, 4
  %20 = sub i64 %13, 16
  store i64 %20, i64* %RSP.i16, align 8
  %21 = icmp ult i64 %13, 16
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = trunc i64 %20 to i32
  %25 = and i32 %24, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 16, %13
  %32 = xor i64 %31, %20
  %33 = lshr i64 %32, 4
  %34 = trunc i64 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i64 %20, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i64 %20, 63
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i64 %13, 63
  %44 = xor i64 %40, %43
  %45 = add i64 %44, %43
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  %49 = sub i64 %13, 4
  %50 = add i64 %19, 7
  store i64 %50, i64* %PC.i
  %51 = inttoptr i64 %49 to i32*
  store i32 0, i32* %51
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 11
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %53 to i32*
  %54 = load i64, i64* %RBP.i
  %55 = sub i64 %54, 8
  %56 = load i32, i32* %EDI.i
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC.i
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC.i
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 9
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %62 to i64*
  %63 = load i64, i64* %RBP.i
  %64 = sub i64 %63, 16
  %65 = load i64, i64* %RSI.i
  %66 = load i64, i64* %PC.i
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC.i
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 1
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %71 = bitcast %union.anon* %70 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %71, i32 0, i32 0
  %72 = load i64, i64* %PC.i
  %73 = add i64 %72, 2
  store i8 0, i8* %AL.i, align 1
  %74 = add i64 %73, 24
  %75 = add i64 %73, 5
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %78
  store i64 %77, i64* %11, align 8
  store i64 %74, i64* %3, align 8
  %call2_4004a8 = call %struct.Memory* @sub_4004c0.printdata(%struct.State* %0, i64 %74, %struct.Memory* %2)
  %79 = load i64, i64* %RSP.i16
  %80 = load i64, i64* %PC.i
  %81 = add i64 %80, 4
  %82 = add i64 16, %79
  store i64 %82, i64* %RSP.i16, align 8
  %83 = icmp ult i64 %82, %79
  %84 = icmp ult i64 %82, 16
  %85 = or i1 %83, %84
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %23, align 1
  %87 = trunc i64 %82 to i32
  %88 = and i32 %87, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88)
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %30, align 1
  %93 = xor i64 16, %79
  %94 = xor i64 %93, %82
  %95 = lshr i64 %94, 4
  %96 = trunc i64 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %36, align 1
  %98 = icmp eq i64 %82, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %39, align 1
  %100 = lshr i64 %82, 63
  %101 = trunc i64 %100 to i8
  store i8 %101, i8* %42, align 1
  %102 = lshr i64 %79, 63
  %103 = xor i64 %100, %102
  %104 = add i64 %103, %100
  %105 = icmp eq i64 %104, 2
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %48, align 1
  %107 = add i64 %81, 1
  store i64 %107, i64* %PC.i
  %108 = add i64 %82, 8
  %109 = inttoptr i64 %82 to i64*
  %110 = load i64, i64* %109
  store i64 %110, i64* %RBP.i, align 8
  store i64 %108, i64* %11, align 8
  %111 = add i64 %107, 1
  store i64 %111, i64* %PC.i
  %112 = inttoptr i64 %108 to i64*
  %113 = load i64, i64* %112
  store i64 %113, i64* %3, align 8
  %114 = add i64 %108, 8
  store i64 %114, i64* %11, align 8
  ret %struct.Memory* %call2_4004a8
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
