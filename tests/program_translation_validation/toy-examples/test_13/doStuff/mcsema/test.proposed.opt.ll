; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "no-source"
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @doStuff(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI.i, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %RSI.i73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %15 = load i64, i64* %RBP.i, align 8
  %16 = add i64 %15, -16
  %17 = load i64, i64* %RSI.i73, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %3, align 8
  %20 = inttoptr i64 %16 to i64*
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %RBP.i, align 8
  %22 = add i64 %21, -8
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 4
  store i64 %24, i64* %3, align 8
  %25 = inttoptr i64 %22 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %RSI.i73, align 8
  %27 = add i64 %21, -24
  %28 = add i64 %23, 8
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %27 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -16
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %31 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %RSI.i73, align 8
  %36 = add i64 %30, -32
  %37 = add i64 %32, 8
  store i64 %37, i64* %3, align 8
  %38 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %38, align 8
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -24
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %RSI.i73, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i56 = bitcast %union.anon* %45 to i8*
  %46 = add i64 %41, 6
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i8*
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %AL.i56, align 1
  %49 = add i64 %39, -33
  %50 = add i64 %41, 9
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i8*
  store i8 %48, i8* %51, align 1
  %RAX.i50 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RCX.i30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL.i8 = bitcast %union.anon* %58 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4008d5

block_.L_4008d5:                                  ; preds = %block_.L_400904, %entry
  %59 = phi i64 [ %194, %block_.L_400904 ], [ %.pre, %entry ]
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -33
  %62 = add i64 %59, 4
  store i64 %62, i64* %3, align 8
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
  br i1 %73, label %block_.L_40092a, label %block_4008e2

block_4008e2:                                     ; preds = %block_.L_4008d5
  %78 = add i64 %77, 4
  store i64 %78, i64* %3, align 8
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
  %91 = xor i32 %83, %82
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
  %.v3 = select i1 %95, i64 13, i64 25
  %104 = add i64 %77, %.v3
  store i64 %104, i64* %3, align 8
  br i1 %95, label %block_4008ef, label %block_.L_4008fb

block_4008ef:                                     ; preds = %block_4008e2
  %105 = add i64 %60, -32
  %106 = add i64 %104, 4
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RAX.i50, align 8
  %109 = add i64 %104, 7
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i8*
  store i8 92, i8* %110, align 1
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 14
  store i64 %112, i64* %3, align 8
  br label %block_.L_400904

block_.L_4008fb:                                  ; preds = %block_4008e2
  %113 = add i64 %104, 3
  store i64 %113, i64* %3, align 8
  %114 = load i8, i8* %63, align 1
  store i8 %114, i8* %AL.i56, align 1
  %115 = add i64 %60, -32
  %116 = add i64 %104, 7
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %RCX.i30, align 8
  %119 = add i64 %104, 9
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i8*
  store i8 %114, i8* %120, align 1
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400904

block_.L_400904:                                  ; preds = %block_.L_4008fb, %block_4008ef
  %121 = phi i64 [ %.pre2, %block_.L_4008fb ], [ %112, %block_4008ef ]
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -24
  %124 = add i64 %121, 4
  store i64 %124, i64* %3, align 8
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
  %138 = xor i64 %127, %126
  %139 = lshr i64 %138, 4
  %140 = trunc i64 %139 to i8
  %141 = and i8 %140, 1
  store i8 %141, i8* %54, align 1
  %142 = zext i1 %129 to i8
  store i8 %142, i8* %55, align 1
  %143 = lshr i64 %127, 63
  %144 = trunc i64 %143 to i8
  store i8 %144, i8* %56, align 1
  %145 = lshr i64 %126, 63
  %146 = xor i64 %143, %145
  %147 = add nuw nsw i64 %146, %143
  %148 = icmp eq i64 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %57, align 1
  %150 = add i64 %121, 12
  store i64 %150, i64* %3, align 8
  store i64 %127, i64* %125, align 8
  %151 = load i64, i64* %RBP.i, align 8
  %152 = add i64 %151, -32
  %153 = load i64, i64* %3, align 8
  %154 = add i64 %153, 4
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %152 to i64*
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %RAX.i50, align 8
  %158 = icmp eq i64 %156, -1
  %159 = icmp eq i64 %157, 0
  %160 = or i1 %158, %159
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %52, align 1
  %162 = trunc i64 %157 to i32
  %163 = and i32 %162, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %53, align 1
  %168 = xor i64 %157, %156
  %169 = lshr i64 %168, 4
  %170 = trunc i64 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %54, align 1
  %172 = zext i1 %159 to i8
  store i8 %172, i8* %55, align 1
  %173 = lshr i64 %157, 63
  %174 = trunc i64 %173 to i8
  store i8 %174, i8* %56, align 1
  %175 = lshr i64 %156, 63
  %176 = xor i64 %173, %175
  %177 = add nuw nsw i64 %176, %173
  %178 = icmp eq i64 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %57, align 1
  %180 = add i64 %153, 12
  store i64 %180, i64* %3, align 8
  store i64 %157, i64* %155, align 8
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -24
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, 4
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %182 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RAX.i50, align 8
  %187 = add i64 %183, 6
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to i8*
  %189 = load i8, i8* %188, align 1
  store i8 %189, i8* %CL.i8, align 1
  %190 = add i64 %181, -33
  %191 = add i64 %183, 9
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i8*
  store i8 %189, i8* %192, align 1
  %193 = load i64, i64* %3, align 8
  %194 = add i64 %193, -80
  store i64 %194, i64* %3, align 8
  br label %block_.L_4008d5

block_.L_40092a:                                  ; preds = %block_.L_4008d5
  %195 = add i64 %77, 1
  store i64 %195, i64* %3, align 8
  %196 = load i64, i64* %6, align 8
  %197 = add i64 %196, 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RBP.i, align 8
  store i64 %197, i64* %6, align 8
  %200 = add i64 %77, 2
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %197 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %3, align 8
  %203 = add i64 %196, 16
  store i64 %203, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBP, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb___rsi____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = load i8, i8* %5, align 1
  store i8 %8, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x21__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -33
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x21__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -33
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40092a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -47
  %8 = icmp ult i32 %4, 47
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4008fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x5c____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 92, i8* %4, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400904(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x21__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -33
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i8 %6, i8* %5, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb___rax____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = load i8, i8* %5, align 1
  store i8 %8, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x21__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -33
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4008d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBP, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400468:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %PC, align 8
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
