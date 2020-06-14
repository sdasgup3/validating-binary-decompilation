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
define %struct.Memory* @demo3(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI.i, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %PC.i, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %RSI.i73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %15 = load i64, i64* %RBP.i, align 8
  %16 = add i64 %15, -16
  %17 = load i64, i64* %RSI.i73, align 8
  %18 = load i64, i64* %PC.i, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC.i, align 8
  %20 = inttoptr i64 %16 to i64*
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %RBP.i, align 8
  %22 = add i64 %21, -8
  %23 = load i64, i64* %PC.i, align 8
  %24 = add i64 %23, 4
  store i64 %24, i64* %PC.i, align 8
  %25 = inttoptr i64 %22 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %RSI.i73, align 8
  %27 = add i64 %21, -24
  %28 = add i64 %23, 8
  store i64 %28, i64* %PC.i, align 8
  %29 = inttoptr i64 %27 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -16
  %32 = load i64, i64* %PC.i, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %PC.i, align 8
  %34 = inttoptr i64 %31 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %RSI.i73, align 8
  %36 = add i64 %30, -32
  %37 = add i64 %32, 8
  store i64 %37, i64* %PC.i, align 8
  %38 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %38, align 8
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -24
  %41 = load i64, i64* %PC.i, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i, align 8
  %43 = inttoptr i64 %40 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %RSI.i73, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i56 = bitcast %union.anon* %45 to i8*
  %46 = add i64 %41, 6
  store i64 %46, i64* %PC.i, align 8
  %47 = inttoptr i64 %44 to i8*
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %AL.i56, align 1
  %49 = add i64 %39, -33
  %50 = add i64 %41, 9
  store i64 %50, i64* %PC.i, align 8
  %51 = inttoptr i64 %49 to i8*
  store i8 %48, i8* %51, align 1
  %RAX.i50 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i30 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %CL.i8 = bitcast %union.anon* %58 to i8*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4006d5

block_.L_4006d5:                                  ; preds = %block_.L_400704, %entry
  %59 = phi i64 [ %196, %block_.L_400704 ], [ %.pre, %entry ]
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -33
  %62 = add i64 %59, 4
  store i64 %62, i64* %PC.i, align 8
  %63 = inttoptr i64 %61 to i8*
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i64
  %66 = and i64 %65, 4294967295
  store i64 %66, i64* %RAX.i50, align 8
  %67 = sext i8 %64 to i32
  store i8 0, i8* %52, align 1
  %68 = and i32 %67, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68)
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %73 = icmp eq i8 %64, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %55, align 1
  %75 = lshr i32 %67, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %.v = select i1 %73, i64 85, i64 13
  %77 = add i64 %59, %.v
  store i64 %77, i64* %3, align 8
  br i1 %73, label %block_.L_40072a, label %block_4006e2

block_4006e2:                                     ; preds = %block_.L_4006d5
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC.i, align 8
  %79 = load i8, i8* %63, align 1
  %80 = sext i8 %79 to i64
  %81 = and i64 %80, 4294967295
  store i64 %81, i64* %RAX.i50, align 8
  %82 = sext i8 %79 to i32
  %83 = add nsw i32 %82, -47
  %84 = icmp ult i8 %79, 47
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %52, align 1
  %86 = and i32 %83, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86)
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %53, align 1
  %91 = xor i32 %82, %83
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %54, align 1
  %95 = icmp eq i32 %83, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %55, align 1
  %97 = lshr i32 %83, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %56, align 1
  %99 = lshr i32 %82, 31
  %100 = xor i32 %97, %99
  %101 = add nuw nsw i32 %100, %99
  %102 = icmp eq i32 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %57, align 1
  %.v2 = select i1 %95, i64 13, i64 25
  %104 = add i64 %77, %.v2
  store i64 %104, i64* %3, align 8
  br i1 %95, label %block_4006ef, label %block_.L_4006fb

block_4006ef:                                     ; preds = %block_4006e2
  %105 = add i64 %60, -32
  %106 = add i64 %104, 4
  store i64 %106, i64* %PC.i, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RAX.i50, align 8
  %109 = add i64 %104, 7
  store i64 %109, i64* %PC.i, align 8
  %110 = inttoptr i64 %108 to i8*
  store i8 92, i8* %110, align 1
  %111 = load i64, i64* %PC.i, align 8
  %112 = add i64 %111, 14
  store i64 %112, i64* %3, align 8
  br label %block_.L_400704

block_.L_4006fb:                                  ; preds = %block_4006e2
  %113 = add i64 %104, 3
  store i64 %113, i64* %PC.i, align 8
  %114 = load i8, i8* %63, align 1
  store i8 %114, i8* %AL.i56, align 1
  %115 = add i64 %60, -32
  %116 = add i64 %104, 7
  store i64 %116, i64* %PC.i, align 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %RCX.i30, align 8
  %119 = add i64 %104, 9
  store i64 %119, i64* %PC.i, align 8
  %120 = inttoptr i64 %118 to i8*
  store i8 %114, i8* %120, align 1
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400704

block_.L_400704:                                  ; preds = %block_.L_4006fb, %block_4006ef
  %121 = phi i64 [ %.pre1, %block_.L_4006fb ], [ %112, %block_4006ef ]
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -24
  %124 = add i64 %121, 4
  store i64 %124, i64* %PC.i, align 8
  %125 = inttoptr i64 %123 to i64*
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %RAX.i50, align 8
  %128 = icmp eq i64 %126, -1
  %129 = icmp eq i64 %127, 0
  %130 = or i1 %128, %129
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %52, align 1
  %132 = trunc i64 %127 to i32
  %133 = and i32 %132, 255
  %134 = tail call i32 @llvm.ctpop.i32(i32 %133)
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  store i8 %137, i8* %53, align 1
  %138 = xor i64 %126, %127
  %139 = lshr i64 %138, 4
  %140 = trunc i64 %139 to i8
  %141 = and i8 %140, 1
  store i8 %141, i8* %54, align 1
  %142 = icmp eq i64 %127, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %55, align 1
  %144 = lshr i64 %127, 63
  %145 = trunc i64 %144 to i8
  store i8 %145, i8* %56, align 1
  %146 = lshr i64 %126, 63
  %147 = xor i64 %144, %146
  %148 = add nuw nsw i64 %147, %144
  %149 = icmp eq i64 %148, 2
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %57, align 1
  %151 = add i64 %121, 12
  store i64 %151, i64* %PC.i, align 8
  store i64 %127, i64* %125, align 8
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -32
  %154 = load i64, i64* %PC.i, align 8
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC.i, align 8
  %156 = inttoptr i64 %153 to i64*
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %RAX.i50, align 8
  %159 = icmp eq i64 %157, -1
  %160 = icmp eq i64 %158, 0
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %52, align 1
  %163 = trunc i64 %158 to i32
  %164 = and i32 %163, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %53, align 1
  %169 = xor i64 %157, %158
  %170 = lshr i64 %169, 4
  %171 = trunc i64 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %54, align 1
  %173 = icmp eq i64 %158, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %55, align 1
  %175 = lshr i64 %158, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %56, align 1
  %177 = lshr i64 %157, 63
  %178 = xor i64 %175, %177
  %179 = add nuw nsw i64 %178, %175
  %180 = icmp eq i64 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %57, align 1
  %182 = add i64 %154, 12
  store i64 %182, i64* %PC.i, align 8
  store i64 %158, i64* %156, align 8
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -24
  %185 = load i64, i64* %PC.i, align 8
  %186 = add i64 %185, 4
  store i64 %186, i64* %PC.i, align 8
  %187 = inttoptr i64 %184 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %RAX.i50, align 8
  %189 = add i64 %185, 6
  store i64 %189, i64* %PC.i, align 8
  %190 = inttoptr i64 %188 to i8*
  %191 = load i8, i8* %190, align 1
  store i8 %191, i8* %CL.i8, align 1
  %192 = add i64 %183, -33
  %193 = add i64 %185, 9
  store i64 %193, i64* %PC.i, align 8
  %194 = inttoptr i64 %192 to i8*
  store i8 %191, i8* %194, align 1
  %195 = load i64, i64* %PC.i, align 8
  %196 = add i64 %195, -80
  store i64 %196, i64* %3, align 8
  br label %block_.L_4006d5

block_.L_40072a:                                  ; preds = %block_.L_4006d5
  %197 = add i64 %77, 1
  store i64 %197, i64* %PC.i, align 8
  %198 = load i64, i64* %6, align 8
  %199 = add i64 %198, 8
  %200 = inttoptr i64 %198 to i64*
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %RBP.i, align 8
  store i64 %199, i64* %6, align 8
  %202 = add i64 %77, 2
  store i64 %202, i64* %PC.i, align 8
  %203 = inttoptr i64 %199 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %3, align 8
  %205 = add i64 %198, 16
  store i64 %205, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
