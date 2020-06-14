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
define %struct.Memory* @doStuff(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %12 = add i64 %7, -16
  %13 = load i64, i64* %RDI.i, align 8
  %14 = add i64 %10, 7
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %15, align 8
  %RSI.i73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i73, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %3, align 8
  %26 = inttoptr i64 %23 to i64*
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %RSI.i73, align 8
  %28 = load i64, i64* %RBP.i, align 8
  %29 = add i64 %28, -24
  %30 = add i64 %24, 8
  store i64 %30, i64* %3, align 8
  %31 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %31, align 8
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -16
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 4
  store i64 %35, i64* %3, align 8
  %36 = inttoptr i64 %33 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %RSI.i73, align 8
  %38 = load i64, i64* %RBP.i, align 8
  %39 = add i64 %38, -32
  %40 = add i64 %34, 8
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i64*
  store i64 %37, i64* %41, align 8
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -24
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 4
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %RSI.i73, align 8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i56 = bitcast %union.anon* %48 to i8*
  %49 = add i64 %44, 6
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i8*
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %AL.i56, align 1
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -33
  %54 = add i64 %44, 9
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %53 to i8*
  store i8 %51, i8* %55, align 1
  %RAX.i50 = getelementptr inbounds %union.anon, %union.anon* %48, i64 0, i32 0
  %EAX.i48 = bitcast %union.anon* %48 to i32*
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i30 = getelementptr inbounds %union.anon, %union.anon* %62, i64 0, i32 0
  %CL.i8 = bitcast %union.anon* %62 to i8*
  br label %block_.L_4008f5

block_.L_4008f5:                                  ; preds = %block_.L_400924, %entry
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -33
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %64 to i8*
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i64
  %70 = and i64 %69, 4294967295
  store i64 %70, i64* %RAX.i50, align 8
  %71 = load i32, i32* %EAX.i48, align 4
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 3
  store i64 %73, i64* %3, align 8
  store i8 0, i8* %56, align 1
  %74 = and i32 %71, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %57, align 1
  store i8 0, i8* %58, align 1
  %79 = icmp eq i32 %71, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %59, align 1
  %81 = lshr i32 %71, 31
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %60, align 1
  store i8 0, i8* %61, align 1
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 78
  %85 = add i64 %83, 6
  store i64 %85, i64* %3, align 8
  %86 = load i8, i8* %59, align 1
  %87 = icmp ne i8 %86, 0
  %88 = select i1 %87, i64 %84, i64 %85
  store i64 %88, i64* %3, align 8
  %cmpBr_4008fc = icmp eq i8 %86, 1
  br i1 %cmpBr_4008fc, label %block_.L_40094a, label %block_400902

block_400902:                                     ; preds = %block_.L_4008f5
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -33
  %91 = add i64 %88, 4
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i8*
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i64
  %95 = and i64 %94, 4294967295
  store i64 %95, i64* %RAX.i50, align 8
  %96 = load i32, i32* %EAX.i48, align 4
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 3
  store i64 %98, i64* %3, align 8
  %99 = add i32 %96, -47
  %100 = icmp ult i32 %96, 47
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %56, align 1
  %102 = and i32 %99, 255
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102)
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %57, align 1
  %107 = xor i32 %96, %99
  %108 = lshr i32 %107, 4
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %58, align 1
  %111 = icmp eq i32 %99, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %59, align 1
  %113 = lshr i32 %99, 31
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %60, align 1
  %115 = lshr i32 %96, 31
  %116 = xor i32 %113, %115
  %117 = add nuw nsw i32 %116, %115
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %61, align 1
  %120 = load i64, i64* %3, align 8
  %121 = add i64 %120, 18
  %122 = add i64 %120, 6
  store i64 %122, i64* %3, align 8
  %123 = load i8, i8* %59, align 1
  %124 = icmp eq i8 %123, 0
  %125 = select i1 %124, i64 %121, i64 %122
  store i64 %125, i64* %3, align 8
  %126 = load i64, i64* %RBP.i, align 8
  br i1 %124, label %block_.L_40091b, label %block_40090f

block_40090f:                                     ; preds = %block_400902
  %127 = add i64 %126, -32
  %128 = add i64 %125, 4
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RAX.i50, align 8
  %131 = add i64 %125, 7
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i8*
  store i8 92, i8* %132, align 1
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 14
  store i64 %134, i64* %3, align 8
  br label %block_.L_400924

block_.L_40091b:                                  ; preds = %block_400902
  %135 = add i64 %126, -33
  %136 = add i64 %125, 3
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i8*
  %138 = load i8, i8* %137, align 1
  store i8 %138, i8* %AL.i56, align 1
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -32
  %141 = add i64 %125, 7
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %RCX.i30, align 8
  %144 = load i8, i8* %AL.i56, align 1
  %145 = add i64 %125, 9
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %143 to i8*
  store i8 %144, i8* %146, align 1
  br label %block_.L_400924

block_.L_400924:                                  ; preds = %block_.L_40091b, %block_40090f
  %147 = load i64, i64* %RBP.i, align 8
  %148 = add i64 %147, -24
  %149 = load i64, i64* %3, align 8
  %150 = add i64 %149, 4
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %148 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RAX.i50, align 8
  %153 = add i64 %149, 8
  store i64 %153, i64* %3, align 8
  %154 = add i64 %152, 1
  store i64 %154, i64* %RAX.i50, align 8
  %155 = icmp eq i64 %152, -1
  %156 = icmp eq i64 %154, 0
  %157 = or i1 %155, %156
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %56, align 1
  %159 = trunc i64 %154 to i32
  %160 = and i32 %159, 255
  %161 = tail call i32 @llvm.ctpop.i32(i32 %160)
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = xor i8 %163, 1
  store i8 %164, i8* %57, align 1
  %165 = xor i64 %152, %154
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %58, align 1
  %169 = zext i1 %156 to i8
  store i8 %169, i8* %59, align 1
  %170 = lshr i64 %154, 63
  %171 = trunc i64 %170 to i8
  store i8 %171, i8* %60, align 1
  %172 = lshr i64 %152, 63
  %173 = xor i64 %170, %172
  %174 = add nuw nsw i64 %173, %170
  %175 = icmp eq i64 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %61, align 1
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -24
  %179 = load i64, i64* %RAX.i50, align 8
  %180 = load i64, i64* %3, align 8
  %181 = add i64 %180, 4
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %178 to i64*
  store i64 %179, i64* %182, align 8
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -32
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 4
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %184 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %RAX.i50, align 8
  %189 = add i64 %185, 8
  store i64 %189, i64* %3, align 8
  %190 = add i64 %188, 1
  store i64 %190, i64* %RAX.i50, align 8
  %191 = icmp eq i64 %188, -1
  %192 = icmp eq i64 %190, 0
  %193 = or i1 %191, %192
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %56, align 1
  %195 = trunc i64 %190 to i32
  %196 = and i32 %195, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %57, align 1
  %201 = xor i64 %188, %190
  %202 = lshr i64 %201, 4
  %203 = trunc i64 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %58, align 1
  %205 = zext i1 %192 to i8
  store i8 %205, i8* %59, align 1
  %206 = lshr i64 %190, 63
  %207 = trunc i64 %206 to i8
  store i8 %207, i8* %60, align 1
  %208 = lshr i64 %188, 63
  %209 = xor i64 %206, %208
  %210 = add nuw nsw i64 %209, %206
  %211 = icmp eq i64 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %61, align 1
  %213 = load i64, i64* %RBP.i, align 8
  %214 = add i64 %213, -32
  %215 = load i64, i64* %RAX.i50, align 8
  %216 = load i64, i64* %3, align 8
  %217 = add i64 %216, 4
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %214 to i64*
  store i64 %215, i64* %218, align 8
  %219 = load i64, i64* %RBP.i, align 8
  %220 = add i64 %219, -24
  %221 = load i64, i64* %3, align 8
  %222 = add i64 %221, 4
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %220 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RAX.i50, align 8
  %225 = add i64 %221, 6
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i8*
  %227 = load i8, i8* %226, align 1
  store i8 %227, i8* %CL.i8, align 1
  %228 = load i64, i64* %RBP.i, align 8
  %229 = add i64 %228, -33
  %230 = add i64 %221, 9
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i8*
  store i8 %227, i8* %231, align 1
  %232 = load i64, i64* %3, align 8
  %233 = add i64 %232, -80
  store i64 %233, i64* %3, align 8
  br label %block_.L_4008f5

block_.L_40094a:                                  ; preds = %block_.L_4008f5
  %234 = add i64 %88, 1
  store i64 %234, i64* %3, align 8
  %235 = load i64, i64* %6, align 8
  %236 = add i64 %235, 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RBP.i, align 8
  store i64 %236, i64* %6, align 8
  %239 = load i64, i64* %3, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %236 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %3, align 8
  %243 = add i64 %235, 16
  store i64 %243, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
