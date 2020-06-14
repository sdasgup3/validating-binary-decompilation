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
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }

; Function Attrs: alwaysinline
define %struct.Memory* @fun(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #0 {
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %20 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %19, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %20 to %union.vec128_t*
  %21 = sub i64 %13, 8
  %22 = bitcast %union.vec128_t* %XMM0.i to i8*
  %23 = add i64 %18, 5
  store i64 %23, i64* %PC.i
  %24 = bitcast i8* %22 to double*
  %25 = load double, double* %24, align 1
  %26 = inttoptr i64 %21 to double*
  store double %25, double* %26
  %27 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %19, i64 0, i64 1
  %XMM1.i18 = bitcast %union.VectorReg* %27 to %union.vec128_t*
  %28 = load i64, i64* %RBP.i
  %29 = sub i64 %28, 16
  %30 = bitcast %union.vec128_t* %XMM1.i18 to i8*
  %31 = load i64, i64* %PC.i
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC.i
  %33 = bitcast i8* %30 to double*
  %34 = load double, double* %33, align 1
  %35 = inttoptr i64 %29 to double*
  store double %34, double* %35
  %YMM0.i15 = bitcast %union.VectorReg* %20 to %"class.std::bitset"*
  %36 = bitcast %"class.std::bitset"* %YMM0.i15 to i8*
  %37 = load i64, i64* %RBP.i
  %38 = sub i64 %37, 8
  %39 = load i64, i64* %PC.i
  %40 = add i64 %39, 5
  store i64 %40, i64* %PC.i
  %41 = inttoptr i64 %38 to double*
  %42 = load double, double* %41
  %43 = bitcast i8* %36 to double*
  store double %42, double* %43, align 1
  %44 = getelementptr inbounds i8, i8* %36, i64 8
  %45 = bitcast i8* %44 to double*
  store double 0.000000e+00, double* %45, align 1
  %46 = add i64 %40, 5
  store i64 %46, i64* %PC.i
  %47 = bitcast i8* %44 to i64*
  %48 = load double, double* %41
  %49 = fmul double %42, %48
  store double %49, double* %43, align 1
  store i64 0, i64* %47, align 1
  %YMM1.i9 = bitcast %union.VectorReg* %27 to %"class.std::bitset"*
  %50 = bitcast %"class.std::bitset"* %YMM1.i9 to i8*
  %51 = sub i64 %37, 16
  %52 = add i64 %46, 5
  store i64 %52, i64* %PC.i
  %53 = inttoptr i64 %51 to double*
  %54 = load double, double* %53
  %55 = bitcast i8* %50 to double*
  store double %54, double* %55, align 1
  %56 = getelementptr inbounds i8, i8* %50, i64 8
  %57 = bitcast i8* %56 to double*
  store double 0.000000e+00, double* %57, align 1
  %58 = add i64 %52, 5
  store i64 %58, i64* %PC.i
  %59 = bitcast i8* %56 to i64*
  %60 = load double, double* %53
  %61 = fmul double %54, %60
  store double %61, double* %55, align 1
  store i64 0, i64* %59, align 1
  %62 = add i64 %58, 4
  %63 = fadd double %49, %61
  store double %63, double* %43, align 1
  store i64 0, i64* %47, align 1
  %64 = add i64 %62, 1
  store i64 %64, i64* %PC.i
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %RBP.i, align 8
  store i64 %66, i64* %11, align 8
  %69 = add i64 %64, 1
  store i64 %69, i64* %PC.i
  %70 = inttoptr i64 %66 to i64*
  %71 = load i64, i64* %70
  store i64 %71, i64* %3, align 8
  %72 = add i64 %66, 8
  store i64 %72, i64* %11, align 8
  ret %struct.Memory* %2
}

attributes #0 = { alwaysinline }
