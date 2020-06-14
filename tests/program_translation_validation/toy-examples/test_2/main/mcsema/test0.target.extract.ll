; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x400664_type = type <{ [8 x i8] }>
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

@G__0x400664 = external global %G__0x400664_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4004f0.foo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %RSP.i11, align 8
  %12 = icmp ult i64 %8, 48
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %RDI.i45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 10, i64* %RDI.i45, align 8
  %RSI.i43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 20, i64* %RSI.i43, align 8
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 30, i64* %RDX.i, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i40 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 40, i64* %RCX.i40, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 50, i64* %41, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 60, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i36 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  store i64 70, i64* %RAX.i36, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i34 = bitcast %union.anon* %44 to i32*
  %45 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 80, i64* %45, align 8
  %46 = add i64 %7, -12
  %47 = add i64 %10, 57
  store i64 %47, i64* %PC.i, align 8
  %48 = inttoptr i64 %46 to i32*
  store i32 0, i32* %48, align 4
  %49 = bitcast i64* %RSP.i11 to i32**
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %PC.i, align 8
  %52 = add i64 %51, 7
  store i64 %52, i64* %PC.i, align 8
  store i32 70, i32* %50, align 4
  %53 = load i64, i64* %RSP.i11, align 8
  %54 = add i64 %53, 8
  %55 = load i64, i64* %PC.i, align 8
  %56 = add i64 %55, 8
  store i64 %56, i64* %PC.i, align 8
  %57 = inttoptr i64 %54 to i32*
  store i32 80, i32* %57, align 4
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -12
  %60 = load i32, i32* %R10D.i34, align 4
  %61 = load i64, i64* %PC.i, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC.i, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %EAX.i23 = bitcast %union.anon* %43 to i32*
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -16
  %66 = load i32, i32* %EAX.i23, align 4
  %67 = load i64, i64* %PC.i, align 8
  %68 = add i64 %67, 3
  store i64 %68, i64* %PC.i, align 8
  %69 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %69, align 4
  %70 = load i64, i64* %PC.i, align 8
  %71 = add i64 %70, -192
  %72 = add i64 %70, 5
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %72, i64* %75, align 8
  store i64 %74, i64* %6, align 8
  store i64 %71, i64* %3, align 8
  %call2_4005b0 = call %struct.Memory* @sub_4004f0.foo(%struct.State* %0, i64 %71, %struct.Memory* %2)
  %76 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400664_type* @G__0x400664 to i64), i64* %RDI.i45, align 8
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -8
  %79 = load i32, i32* %EAX.i23, align 4
  %80 = add i64 %76, 13
  store i64 %80, i64* %PC.i, align 8
  %81 = inttoptr i64 %78 to i32*
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -8
  %84 = load i64, i64* %PC.i, align 8
  %85 = add i64 %84, 3
  store i64 %85, i64* %PC.i, align 8
  %86 = inttoptr i64 %83 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RSI.i43, align 8
  %AL.i = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i, align 1
  %89 = add i64 %84, -466
  %90 = add i64 %84, 10
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %90, i64* %93, align 8
  store i64 %92, i64* %6, align 8
  store i64 %89, i64* %3, align 8
  %94 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4005b0)
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -8
  %97 = load i64, i64* %PC.i, align 8
  %98 = add i64 %97, 3
  store i64 %98, i64* %PC.i, align 8
  %99 = inttoptr i64 %96 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = zext i32 %100 to i64
  store i64 %101, i64* %RCX.i40, align 8
  %102 = add i64 %95, -20
  %103 = load i32, i32* %EAX.i23, align 4
  %104 = add i64 %97, 6
  store i64 %104, i64* %PC.i, align 8
  %105 = inttoptr i64 %102 to i32*
  store i32 %103, i32* %105, align 4
  %ECX.i = bitcast %union.anon* %40 to i32*
  %106 = load i32, i32* %ECX.i, align 4
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %PC.i, align 8
  store i64 %107, i64* %RAX.i36, align 8
  %109 = load i64, i64* %RSP.i11, align 8
  %110 = add i64 %109, 48
  store i64 %110, i64* %RSP.i11, align 8
  %111 = icmp ugt i64 %109, -49
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %14, align 1
  %113 = trunc i64 %110 to i32
  %114 = and i32 %113, 255
  %115 = call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %21, align 1
  %119 = xor i64 %109, 16
  %120 = xor i64 %119, %110
  %121 = lshr i64 %120, 4
  %122 = trunc i64 %121 to i8
  %123 = and i8 %122, 1
  store i8 %123, i8* %27, align 1
  %124 = icmp eq i64 %110, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %30, align 1
  %126 = lshr i64 %110, 63
  %127 = trunc i64 %126 to i8
  store i8 %127, i8* %33, align 1
  %128 = lshr i64 %109, 63
  %129 = xor i64 %126, %128
  %130 = add nuw nsw i64 %129, %126
  %131 = icmp eq i64 %130, 2
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %39, align 1
  %133 = add i64 %108, 7
  store i64 %133, i64* %PC.i, align 8
  %134 = add i64 %109, 56
  %135 = inttoptr i64 %110 to i64*
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %RBP.i, align 8
  store i64 %134, i64* %6, align 8
  %137 = add i64 %108, 8
  store i64 %137, i64* %PC.i, align 8
  %138 = inttoptr i64 %134 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %3, align 8
  %140 = add i64 %109, 64
  store i64 %140, i64* %6, align 8
  ret %struct.Memory* %94
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
