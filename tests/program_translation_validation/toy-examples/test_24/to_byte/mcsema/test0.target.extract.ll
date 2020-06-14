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
define %struct.Memory* @to_byte(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i53 = bitcast %union.anon* %11 to i8*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL.i = bitcast %union.anon* %12 to i8*
  %13 = load i8, i8* %DIL.i, align 1
  store i8 %13, i8* %AL.i53, align 1
  %14 = add i64 %7, -13
  %15 = add i64 %10, 9
  store i64 %15, i64* %3, align 8
  %16 = inttoptr i64 %14 to i8*
  store i8 %13, i8* %16, align 1
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -5
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i64
  store i64 %23, i64* %RDI.i, align 8
  %24 = zext i8 %22 to i32
  %25 = add nsw i32 %24, -57
  %26 = icmp ult i8 %22, 57
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %25, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = xor i8 %22, 16
  %36 = zext i8 %35 to i32
  %37 = xor i32 %36, %25
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %25, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %25, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %48, align 1
  %49 = xor i1 %42, true
  %50 = icmp eq i8 %46, 0
  %51 = and i1 %50, %49
  %.v = select i1 %51, i64 28, i64 13
  %52 = add i64 %19, %.v
  %RAX.i35 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = load i8, i8* %21, align 1
  %55 = zext i8 %54 to i64
  store i64 %55, i64* %RAX.i35, align 8
  %56 = zext i8 %54 to i32
  br i1 %51, label %block_.L_4005e6, label %block_4005d7

block_4005d7:                                     ; preds = %entry
  %57 = add nsw i32 %56, -48
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %RAX.i35, align 8
  %59 = icmp ult i8 %54, 48
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %28, align 1
  %61 = and i32 %57, 255
  %62 = call i32 @llvm.ctpop.i32(i32 %61)
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  %65 = xor i8 %64, 1
  store i8 %65, i8* %34, align 1
  %66 = xor i8 %54, 16
  %67 = zext i8 %66 to i32
  %68 = xor i32 %67, %57
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %41, align 1
  %72 = icmp eq i32 %57, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %44, align 1
  %74 = lshr i32 %57, 31
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %76 = add i64 %17, -4
  %77 = add i64 %52, 10
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %76 to i32*
  store i32 %57, i32* %78, align 4
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 68
  store i64 %80, i64* %3, align 8
  br label %block_.L_400625

block_.L_4005e6:                                  ; preds = %entry
  %81 = add nsw i32 %56, -70
  %82 = icmp ult i8 %54, 70
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %28, align 1
  %84 = and i32 %81, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %34, align 1
  %89 = xor i32 %56, %81
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, i8* %41, align 1
  %93 = icmp eq i32 %81, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %44, align 1
  %95 = lshr i32 %81, 31
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %97 = xor i1 %93, true
  %98 = icmp eq i8 %96, 0
  %99 = and i1 %98, %97
  %.v2 = select i1 %99, i64 28, i64 13
  %100 = add i64 %52, %.v2
  %101 = add i64 %100, 4
  store i64 %101, i64* %3, align 8
  %102 = load i8, i8* %21, align 1
  %103 = zext i8 %102 to i64
  store i64 %103, i64* %RAX.i35, align 8
  %104 = zext i8 %102 to i32
  br i1 %99, label %block_.L_400602, label %block_4005f3

block_4005f3:                                     ; preds = %block_.L_4005e6
  %105 = add nsw i32 %104, -55
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %RAX.i35, align 8
  %107 = icmp ult i8 %102, 55
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %28, align 1
  %109 = and i32 %105, 255
  %110 = call i32 @llvm.ctpop.i32(i32 %109)
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %34, align 1
  %114 = xor i8 %102, 16
  %115 = zext i8 %114 to i32
  %116 = xor i32 %115, %105
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %41, align 1
  %120 = icmp eq i32 %105, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %44, align 1
  %122 = lshr i32 %105, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %124 = add i64 %17, -4
  %125 = add i64 %100, 10
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  store i32 %105, i32* %126, align 4
  %127 = load i64, i64* %3, align 8
  %128 = add i64 %127, 40
  store i64 %128, i64* %3, align 8
  br label %block_.L_400625

block_.L_400602:                                  ; preds = %block_.L_4005e6
  %129 = add nsw i32 %104, -102
  %130 = icmp ult i8 %102, 102
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %28, align 1
  %132 = and i32 %129, 255
  %133 = call i32 @llvm.ctpop.i32(i32 %132)
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %34, align 1
  %137 = xor i32 %104, %129
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %41, align 1
  %141 = icmp eq i32 %129, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %44, align 1
  %143 = lshr i32 %129, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %145 = xor i1 %141, true
  %146 = icmp eq i8 %144, 0
  %147 = and i1 %146, %145
  %.v3 = select i1 %147, i64 28, i64 13
  %148 = add i64 %100, %.v3
  store i64 %148, i64* %3, align 8
  br i1 %147, label %block_.L_40061e, label %block_40060f

block_40060f:                                     ; preds = %block_.L_400602
  %149 = add i64 %148, 4
  store i64 %149, i64* %3, align 8
  %150 = load i8, i8* %21, align 1
  %151 = zext i8 %150 to i32
  %152 = add nsw i32 %151, -87
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX.i35, align 8
  %154 = icmp ult i8 %150, 87
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %28, align 1
  %156 = and i32 %152, 255
  %157 = call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %34, align 1
  %161 = xor i8 %150, 16
  %162 = zext i8 %161 to i32
  %163 = xor i32 %162, %152
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %41, align 1
  %167 = icmp eq i32 %152, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %44, align 1
  %169 = lshr i32 %152, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %171 = add i64 %17, -4
  %172 = add i64 %148, 10
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  store i32 %152, i32* %173, align 4
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 12
  store i64 %175, i64* %3, align 8
  br label %block_.L_400625

block_.L_40061e:                                  ; preds = %block_.L_400602
  %176 = add i64 %17, -4
  %177 = add i64 %148, 7
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i32*
  store i32 0, i32* %178, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400625

block_.L_400625:                                  ; preds = %block_.L_40061e, %block_40060f, %block_4005f3, %block_4005d7
  %179 = phi i64 [ %.pre, %block_.L_40061e ], [ %175, %block_40060f ], [ %128, %block_4005f3 ], [ %80, %block_4005d7 ]
  %180 = load i64, i64* %RBP.i, align 8
  %181 = add i64 %180, -4
  %182 = add i64 %179, 3
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RAX.i35, align 8
  %186 = add i64 %179, 4
  store i64 %186, i64* %3, align 8
  %187 = load i64, i64* %6, align 8
  %188 = add i64 %187, 8
  %189 = inttoptr i64 %187 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %RBP.i, align 8
  store i64 %188, i64* %6, align 8
  %191 = add i64 %179, 5
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %188 to i64*
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %3, align 8
  %194 = add i64 %187, 16
  store i64 %194, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
