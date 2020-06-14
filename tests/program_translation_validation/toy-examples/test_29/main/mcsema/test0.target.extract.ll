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
  %RSP.i38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -56
  store i64 %11, i64* %RSP.i38, align 8
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
  %40 = add i64 %7, -12
  %41 = add i64 %10, 14
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -36
  %45 = load i64, i64* %PC.i, align 8
  %46 = add i64 %45, 7
  store i64 %46, i64* %PC.i, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 0, i32* %47, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RAX.i13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400596

block_.L_400596:                                  ; preds = %block_4005a0, %entry
  %48 = phi i64 [ %140, %block_4005a0 ], [ %.pre, %entry ]
  %loadMem_4005d6 = phi %struct.Memory* [ %call2_4005c3, %block_4005a0 ], [ %2, %entry ]
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -36
  %51 = add i64 %48, 4
  store i64 %51, i64* %PC.i, align 8
  %52 = inttoptr i64 %50 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, -5
  %55 = icmp ult i32 %53, 5
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %14, align 1
  %57 = and i32 %54, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %57)
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %21, align 1
  %62 = xor i32 %53, %54
  %63 = lshr i32 %62, 4
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, i8* %27, align 1
  %66 = icmp eq i32 %54, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %30, align 1
  %68 = lshr i32 %54, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %33, align 1
  %70 = lshr i32 %53, 31
  %71 = xor i32 %68, %70
  %72 = add nuw nsw i32 %71, %70
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %39, align 1
  %75 = icmp ne i8 %69, 0
  %76 = xor i1 %75, %73
  %.v = select i1 %76, i64 10, i64 64
  %77 = add i64 %48, %.v
  store i64 %77, i64* %3, align 8
  br i1 %76, label %block_4005a0, label %block_.L_4005d6

block_4005a0:                                     ; preds = %block_.L_400596
  %78 = add i64 %49, -32
  store i64 %78, i64* %RSI.i, align 8
  %79 = add i64 %77, 11
  store i64 %79, i64* %PC.i, align 8
  %80 = inttoptr i64 %78 to i32*
  store i32 5, i32* %80, align 4
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -28
  %83 = load i64, i64* %PC.i, align 8
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC.i, align 8
  %85 = inttoptr i64 %82 to i32*
  store i32 6, i32* %85, align 4
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -24
  %88 = load i64, i64* %PC.i, align 8
  %89 = add i64 %88, 7
  store i64 %89, i64* %PC.i, align 8
  %90 = inttoptr i64 %87 to i32*
  store i32 7, i32* %90, align 4
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -20
  %93 = load i64, i64* %PC.i, align 8
  %94 = add i64 %93, 7
  store i64 %94, i64* %PC.i, align 8
  %95 = inttoptr i64 %92 to i32*
  store i32 8, i32* %95, align 4
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -36
  %98 = load i64, i64* %PC.i, align 8
  %99 = add i64 %98, 3
  store i64 %99, i64* %PC.i, align 8
  %100 = inttoptr i64 %97 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RDI.i, align 8
  %103 = add i64 %98, -208
  %104 = add i64 %98, 8
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, -8
  %107 = inttoptr i64 %106 to i64*
  store i64 %104, i64* %107, align 8
  store i64 %106, i64* %6, align 8
  store i64 %103, i64* %3, align 8
  %call2_4005c3 = call %struct.Memory* @sub_4004f0.foo(%struct.State* %0, i64 %103, %struct.Memory* %loadMem_4005d6)
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -36
  %110 = load i64, i64* %PC.i, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC.i, align 8
  %112 = inttoptr i64 %109 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, 1
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX.i13, align 8
  %116 = icmp eq i32 %113, -1
  %117 = icmp eq i32 %114, 0
  %118 = or i1 %116, %117
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %14, align 1
  %120 = and i32 %114, 255
  %121 = call i32 @llvm.ctpop.i32(i32 %120)
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %21, align 1
  %125 = xor i32 %113, %114
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %27, align 1
  %129 = icmp eq i32 %114, 0
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %30, align 1
  %131 = lshr i32 %114, 31
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %33, align 1
  %133 = lshr i32 %113, 31
  %134 = xor i32 %131, %133
  %135 = add nuw nsw i32 %134, %131
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %39, align 1
  %138 = add i64 %110, 9
  store i64 %138, i64* %PC.i, align 8
  store i32 %114, i32* %112, align 4
  %139 = load i64, i64* %PC.i, align 8
  %140 = add i64 %139, -59
  store i64 %140, i64* %3, align 8
  br label %block_.L_400596

block_.L_4005d6:                                  ; preds = %block_.L_400596
  store i64 0, i64* %RAX.i13, align 8
  %141 = load i64, i64* %RSP.i38, align 8
  %142 = add i64 %141, 48
  store i64 %142, i64* %RSP.i38, align 8
  %143 = icmp ugt i64 %141, -49
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %14, align 1
  %145 = trunc i64 %142 to i32
  %146 = and i32 %145, 255
  %147 = call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %21, align 1
  %151 = xor i64 %141, 16
  %152 = xor i64 %151, %142
  %153 = lshr i64 %152, 4
  %154 = trunc i64 %153 to i8
  %155 = and i8 %154, 1
  store i8 %155, i8* %27, align 1
  %156 = icmp eq i64 %142, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %30, align 1
  %158 = lshr i64 %142, 63
  %159 = trunc i64 %158 to i8
  store i8 %159, i8* %33, align 1
  %160 = lshr i64 %141, 63
  %161 = xor i64 %158, %160
  %162 = add nuw nsw i64 %161, %158
  %163 = icmp eq i64 %162, 2
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %39, align 1
  %165 = add i64 %77, 7
  store i64 %165, i64* %PC.i, align 8
  %166 = add i64 %141, 56
  %167 = inttoptr i64 %142 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RBP.i, align 8
  store i64 %166, i64* %6, align 8
  %169 = add i64 %77, 8
  store i64 %169, i64* %PC.i, align 8
  %170 = inttoptr i64 %166 to i64*
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %3, align 8
  %172 = add i64 %141, 64
  store i64 %172, i64* %6, align 8
  ret %struct.Memory* %loadMem_4005d6
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
