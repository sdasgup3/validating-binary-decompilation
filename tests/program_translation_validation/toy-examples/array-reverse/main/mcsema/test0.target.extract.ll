; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G_0x4005e0_type = type <{ [8 x i8] }>
%G_0x4005e8_type = type <{ [8 x i8] }>
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

@G_0x4005e0 = external global %G_0x4005e0_type
@G_0x4005e8 = external global %G_0x4005e8_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_400490.array_reverse(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RSP.i26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP.i26, align 8
  %12 = icmp ult i64 %8, 32
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 4, i64* %RSI.i, align 8
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 %11, i64* %RDI.i, align 8
  %39 = add i64 %7, -12
  %40 = add i64 %10, 23
  store i64 %40, i64* %PC.i, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %RAX.i17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %42 = load i64, i64* %PC.i, align 8
  %43 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%G_0x4005e0_type* @G_0x4005e0 to i64), i64 152) to i64*), align 8
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -32
  %46 = add i64 %42, 12
  store i64 %46, i64* %PC.i, align 8
  %47 = inttoptr i64 %45 to i64*
  store i64 %43, i64* %47, align 8
  %48 = load i64, i64* %PC.i, align 8
  %49 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%G_0x4005e8_type* @G_0x4005e8 to i64), i64 160) to i64*), align 8
  store i64 %49, i64* %RAX.i17, align 8
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -24
  %52 = add i64 %48, 12
  store i64 %52, i64* %PC.i, align 8
  %53 = inttoptr i64 %51 to i64*
  store i64 %49, i64* %53, align 8
  %54 = load i64, i64* %PC.i, align 8
  %55 = add i64 %54, -176
  %56 = add i64 %54, 5
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, -8
  %59 = inttoptr i64 %58 to i64*
  store i64 %56, i64* %59, align 8
  store i64 %58, i64* %6, align 8
  store i64 %55, i64* %3, align 8
  %call2_400540 = tail call %struct.Memory* @sub_400490.array_reverse(%struct.State* %0, i64 %55, %struct.Memory* %2)
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -32
  %62 = load i64, i64* %PC.i, align 8
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC.i, align 8
  %64 = inttoptr i64 %61 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %RAX.i17, align 8
  %67 = load i64, i64* %RSP.i26, align 8
  %68 = add i64 %67, 32
  store i64 %68, i64* %RSP.i26, align 8
  %69 = icmp ugt i64 %67, -33
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1
  %71 = trunc i64 %68 to i32
  %72 = and i32 %71, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72)
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %21, align 1
  %77 = xor i64 %67, %68
  %78 = lshr i64 %77, 4
  %79 = trunc i64 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %26, align 1
  %81 = icmp eq i64 %68, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %29, align 1
  %83 = lshr i64 %68, 63
  %84 = trunc i64 %83 to i8
  store i8 %84, i8* %32, align 1
  %85 = lshr i64 %67, 63
  %86 = xor i64 %83, %85
  %87 = add nuw nsw i64 %86, %83
  %88 = icmp eq i64 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %38, align 1
  %90 = add i64 %62, 8
  store i64 %90, i64* %PC.i, align 8
  %91 = add i64 %67, 40
  %92 = inttoptr i64 %68 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RBP.i, align 8
  store i64 %91, i64* %6, align 8
  %94 = add i64 %62, 9
  store i64 %94, i64* %PC.i, align 8
  %95 = inttoptr i64 %91 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %3, align 8
  %97 = add i64 %67, 48
  store i64 %97, i64* %6, align 8
  ret %struct.Memory* %call2_400540
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
