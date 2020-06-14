; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x400614_type = type <{ [8 x i8] }>
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

@G__0x400614 = external global %G__0x400614_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400550.shiftit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
  %RSP.i11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP.i11, align 8
  %12 = icmp ult i64 %8, 32
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i44 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 16, i64* %RAX.i44, align 8
  %RCX.i41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %40 = add i64 %7, -32
  store i64 %40, i64* %RCX.i41, align 8
  %RDX.i39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 -4294967296, i64* %RDX.i39, align 8
  %41 = add i64 %7, -12
  %42 = add i64 %10, 33
  store i64 %42, i64* %PC.i, align 8
  %43 = inttoptr i64 %41 to i32*
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %EDI.i, align 4
  %48 = load i64, i64* %PC.i, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %PC.i, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %RSI.i32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -16
  %53 = load i64, i64* %RSI.i32, align 8
  %54 = load i64, i64* %PC.i, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC.i, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -24
  %59 = load i64, i64* %RDX.i39, align 8
  %60 = load i64, i64* %PC.i, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC.i, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %EAX.i27 = bitcast %union.anon* %39 to i32*
  %RDI.i28 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %63 = load i32, i32* %EAX.i27, align 4
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %PC.i, align 8
  store i64 %64, i64* %RDI.i28, align 8
  %66 = load i64, i64* %RCX.i41, align 8
  store i64 %66, i64* %RSI.i32, align 8
  %AL.i23 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i23, align 1
  %67 = add i64 %65, 51
  %68 = add i64 %65, 12
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %68, i64* %71, align 8
  store i64 %70, i64* %6, align 8
  store i64 %67, i64* %3, align 8
  %call2_400524 = call %struct.Memory* @sub_400550.shiftit(%struct.State* %0, i64 %67, %struct.Memory* %2)
  %72 = load i64, i64* %PC.i, align 8
  store i64 add (i64 ptrtoint (%G__0x400614_type* @G__0x400614 to i64), i64 204), i64* %RDI.i28, align 8
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -24
  %75 = add i64 %72, 14
  store i64 %75, i64* %PC.i, align 8
  %76 = inttoptr i64 %74 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %RSI.i32, align 8
  %78 = add i64 %73, -28
  %79 = load i32, i32* %EAX.i27, align 4
  %80 = add i64 %72, 17
  store i64 %80, i64* %PC.i, align 8
  %81 = inttoptr i64 %78 to i32*
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i23, align 1
  %83 = add i64 %82, -330
  %84 = add i64 %82, 7
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, -8
  %87 = inttoptr i64 %86 to i64*
  store i64 %84, i64* %87, align 8
  store i64 %86, i64* %6, align 8
  store i64 %83, i64* %3, align 8
  %88 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400524)
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i9 = bitcast %union.anon* %89 to i32*
  %90 = getelementptr inbounds %union.anon, %union.anon* %89, i64 0, i32 0
  %91 = load i64, i64* %PC.i, align 8
  store i64 0, i64* %90, align 8
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -32
  %94 = load i32, i32* %EAX.i27, align 4
  %95 = add i64 %91, 6
  store i64 %95, i64* %PC.i, align 8
  %96 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %R8D.i9, align 4
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %PC.i, align 8
  store i64 %98, i64* %RAX.i44, align 8
  %100 = load i64, i64* %RSP.i11, align 8
  %101 = add i64 %100, 32
  store i64 %101, i64* %RSP.i11, align 8
  %102 = icmp ugt i64 %100, -33
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %14, align 1
  %104 = trunc i64 %101 to i32
  %105 = and i32 %104, 255
  %106 = call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %21, align 1
  %110 = xor i64 %100, %101
  %111 = lshr i64 %110, 4
  %112 = trunc i64 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %26, align 1
  %114 = icmp eq i64 %101, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %29, align 1
  %116 = lshr i64 %101, 63
  %117 = trunc i64 %116 to i8
  store i8 %117, i8* %32, align 1
  %118 = lshr i64 %100, 63
  %119 = xor i64 %116, %118
  %120 = add nuw nsw i64 %119, %116
  %121 = icmp eq i64 %120, 2
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %38, align 1
  %123 = add i64 %99, 8
  store i64 %123, i64* %PC.i, align 8
  %124 = add i64 %100, 40
  %125 = inttoptr i64 %101 to i64*
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %RBP.i, align 8
  store i64 %124, i64* %6, align 8
  %127 = add i64 %99, 9
  store i64 %127, i64* %PC.i, align 8
  %128 = inttoptr i64 %124 to i64*
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %3, align 8
  %130 = add i64 %100, 48
  store i64 %130, i64* %6, align 8
  ret %struct.Memory* %88
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
