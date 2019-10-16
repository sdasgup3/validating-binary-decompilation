; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_floyd_warshall_StrictFP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -28
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 7
  store i64 %25, i64* %3, align 8
  %26 = inttoptr i64 %23 to i32*
  store i32 0, i32* %26, align 4
  %RAX.i191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RCX.i163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %34 = bitcast [32 x %union.VectorReg]* %33 to double*
  %35 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %37 = bitcast i64* %36 to double*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %39 = bitcast %union.VectorReg* %38 to double*
  %40 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %38, i64 0, i32 0, i32 0, i32 0, i64 0
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %42 = bitcast i64* %41 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400c02

block_.L_400c02:                                  ; preds = %block_.L_400d1b, %entry
  %43 = phi i64 [ %.pre, %entry ], [ %587, %block_.L_400d1b ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_400d1b ]
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -28
  %46 = add i64 %43, 3
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %45 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %RAX.i191, align 8
  %50 = add i64 %44, -4
  %51 = add i64 %43, 6
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = sub i32 %48, %53
  %55 = icmp ult i32 %48, %53
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %27, align 1
  %57 = and i32 %54, 255
  %58 = tail call i32 @llvm.ctpop.i32(i32 %57)
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %28, align 1
  %62 = xor i32 %53, %48
  %63 = xor i32 %62, %54
  %64 = lshr i32 %63, 4
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  store i8 %66, i8* %29, align 1
  %67 = icmp eq i32 %54, 0
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %30, align 1
  %69 = lshr i32 %54, 31
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %31, align 1
  %71 = lshr i32 %48, 31
  %72 = lshr i32 %53, 31
  %73 = xor i32 %72, %71
  %74 = xor i32 %69, %71
  %75 = add nuw nsw i32 %74, %73
  %76 = icmp eq i32 %75, 2
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %32, align 1
  %78 = icmp ne i8 %70, 0
  %79 = xor i1 %78, %76
  %.v20 = select i1 %79, i64 12, i64 300
  %80 = add i64 %43, %.v20
  store i64 %80, i64* %3, align 8
  br i1 %79, label %block_400c0e, label %block_.L_400d2e

block_400c0e:                                     ; preds = %block_.L_400c02
  %81 = add i64 %44, -20
  %82 = add i64 %80, 7
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i32*
  store i32 0, i32* %83, align 4
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_400c15

block_.L_400c15:                                  ; preds = %block_.L_400d08, %block_400c0e
  %84 = phi i64 [ %.pre13, %block_400c0e ], [ %557, %block_.L_400d08 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400c0e ], [ %MEMORY.2, %block_.L_400d08 ]
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -20
  %87 = add i64 %84, 3
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RAX.i191, align 8
  %91 = add i64 %85, -4
  %92 = add i64 %84, 6
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = sub i32 %89, %94
  %96 = icmp ult i32 %89, %94
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %27, align 1
  %98 = and i32 %95, 255
  %99 = tail call i32 @llvm.ctpop.i32(i32 %98)
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  store i8 %102, i8* %28, align 1
  %103 = xor i32 %94, %89
  %104 = xor i32 %103, %95
  %105 = lshr i32 %104, 4
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  store i8 %107, i8* %29, align 1
  %108 = icmp eq i32 %95, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %30, align 1
  %110 = lshr i32 %95, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %31, align 1
  %112 = lshr i32 %89, 31
  %113 = lshr i32 %94, 31
  %114 = xor i32 %113, %112
  %115 = xor i32 %110, %112
  %116 = add nuw nsw i32 %115, %114
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %32, align 1
  %119 = icmp ne i8 %111, 0
  %120 = xor i1 %119, %117
  %.v = select i1 %120, i64 12, i64 262
  %121 = add i64 %84, %.v
  store i64 %121, i64* %3, align 8
  br i1 %120, label %block_400c21, label %block_.L_400d1b

block_400c21:                                     ; preds = %block_.L_400c15
  %122 = add i64 %85, -24
  %123 = add i64 %121, 7
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i32*
  store i32 0, i32* %124, align 4
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_400c28

block_.L_400c28:                                  ; preds = %block_.L_400cdd, %block_400c21
  %125 = phi i64 [ %.pre14, %block_400c21 ], [ %527, %block_.L_400cdd ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400c21 ], [ %328, %block_.L_400cdd ]
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -24
  %128 = add i64 %125, 3
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  store i64 %131, i64* %RAX.i191, align 8
  %132 = add i64 %126, -4
  %133 = add i64 %125, 6
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = sub i32 %130, %135
  %137 = icmp ult i32 %130, %135
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %27, align 1
  %139 = and i32 %136, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139)
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %28, align 1
  %144 = xor i32 %135, %130
  %145 = xor i32 %144, %136
  %146 = lshr i32 %145, 4
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %29, align 1
  %149 = icmp eq i32 %136, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %30, align 1
  %151 = lshr i32 %136, 31
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %31, align 1
  %153 = lshr i32 %130, 31
  %154 = lshr i32 %135, 31
  %155 = xor i32 %154, %153
  %156 = xor i32 %151, %153
  %157 = add nuw nsw i32 %156, %155
  %158 = icmp eq i32 %157, 2
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %32, align 1
  %160 = icmp ne i8 %152, 0
  %161 = xor i1 %160, %158
  %.v19 = select i1 %161, i64 12, i64 224
  %162 = add i64 %125, %.v19
  store i64 %162, i64* %3, align 8
  br i1 %161, label %block_400c34, label %block_.L_400d08

block_400c34:                                     ; preds = %block_.L_400c28
  %163 = add i64 %126, -16
  %164 = add i64 %162, 4
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %RAX.i191, align 8
  %167 = add i64 %126, -20
  %168 = add i64 %162, 8
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = shl nsw i64 %171, 13
  store i64 %172, i64* %RCX.i163, align 8
  %173 = add i64 %172, %166
  store i64 %173, i64* %RAX.i191, align 8
  %174 = icmp ult i64 %173, %166
  %175 = icmp ult i64 %173, %172
  %176 = or i1 %174, %175
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %27, align 1
  %178 = trunc i64 %173 to i32
  %179 = and i32 %178, 255
  %180 = tail call i32 @llvm.ctpop.i32(i32 %179)
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %28, align 1
  %184 = xor i64 %166, %173
  %185 = lshr i64 %184, 4
  %186 = trunc i64 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %29, align 1
  %188 = icmp eq i64 %173, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %30, align 1
  %190 = lshr i64 %173, 63
  %191 = trunc i64 %190 to i8
  store i8 %191, i8* %31, align 1
  %192 = lshr i64 %166, 63
  %193 = lshr i64 %171, 50
  %194 = and i64 %193, 1
  %195 = xor i64 %190, %192
  %196 = xor i64 %190, %194
  %197 = add nuw nsw i64 %195, %196
  %198 = icmp eq i64 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %32, align 1
  %200 = add i64 %162, 19
  store i64 %200, i64* %3, align 8
  %201 = load i32, i32* %129, align 4
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %RCX.i163, align 8
  %203 = shl nsw i64 %202, 3
  %204 = add i64 %203, %173
  %205 = add i64 %162, 24
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %35, align 1
  store double 0.000000e+00, double* %37, align 1
  %208 = add i64 %162, 28
  store i64 %208, i64* %3, align 8
  %209 = load i64, i64* %165, align 8
  store i64 %209, i64* %RAX.i191, align 8
  %210 = add i64 %162, 32
  store i64 %210, i64* %3, align 8
  %211 = load i32, i32* %169, align 4
  %212 = sext i32 %211 to i64
  %213 = shl nsw i64 %212, 13
  store i64 %213, i64* %RCX.i163, align 8
  %214 = add i64 %213, %209
  store i64 %214, i64* %RAX.i191, align 8
  %215 = icmp ult i64 %214, %209
  %216 = icmp ult i64 %214, %213
  %217 = or i1 %215, %216
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %27, align 1
  %219 = trunc i64 %214 to i32
  %220 = and i32 %219, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220)
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %28, align 1
  %225 = xor i64 %209, %214
  %226 = lshr i64 %225, 4
  %227 = trunc i64 %226 to i8
  %228 = and i8 %227, 1
  store i8 %228, i8* %29, align 1
  %229 = icmp eq i64 %214, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %30, align 1
  %231 = lshr i64 %214, 63
  %232 = trunc i64 %231 to i8
  store i8 %232, i8* %31, align 1
  %233 = lshr i64 %209, 63
  %234 = lshr i64 %212, 50
  %235 = and i64 %234, 1
  %236 = xor i64 %231, %233
  %237 = xor i64 %231, %235
  %238 = add nuw nsw i64 %236, %237
  %239 = icmp eq i64 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %32, align 1
  %241 = load i64, i64* %RBP.i, align 8
  %242 = add i64 %241, -28
  %243 = add i64 %162, 43
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %RCX.i163, align 8
  %247 = shl nsw i64 %246, 3
  %248 = add i64 %247, %214
  %249 = add i64 %162, 48
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %40, align 1
  store double 0.000000e+00, double* %42, align 1
  %252 = add i64 %241, -16
  %253 = add i64 %162, 52
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i64*
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %RAX.i191, align 8
  %256 = add i64 %162, 56
  store i64 %256, i64* %3, align 8
  %257 = load i32, i32* %244, align 4
  %258 = sext i32 %257 to i64
  %259 = shl nsw i64 %258, 13
  store i64 %259, i64* %RCX.i163, align 8
  %260 = add i64 %259, %255
  store i64 %260, i64* %RAX.i191, align 8
  %261 = icmp ult i64 %260, %255
  %262 = icmp ult i64 %260, %259
  %263 = or i1 %261, %262
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %27, align 1
  %265 = trunc i64 %260 to i32
  %266 = and i32 %265, 255
  %267 = tail call i32 @llvm.ctpop.i32(i32 %266)
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  store i8 %270, i8* %28, align 1
  %271 = xor i64 %255, %260
  %272 = lshr i64 %271, 4
  %273 = trunc i64 %272 to i8
  %274 = and i8 %273, 1
  store i8 %274, i8* %29, align 1
  %275 = icmp eq i64 %260, 0
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %30, align 1
  %277 = lshr i64 %260, 63
  %278 = trunc i64 %277 to i8
  store i8 %278, i8* %31, align 1
  %279 = lshr i64 %255, 63
  %280 = lshr i64 %258, 50
  %281 = and i64 %280, 1
  %282 = xor i64 %277, %279
  %283 = xor i64 %277, %281
  %284 = add nuw nsw i64 %282, %283
  %285 = icmp eq i64 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %32, align 1
  %287 = add i64 %241, -24
  %288 = add i64 %162, 67
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %RCX.i163, align 8
  %292 = shl nsw i64 %291, 3
  %293 = add i64 %292, %260
  %294 = add i64 %162, 72
  store i64 %294, i64* %3, align 8
  %295 = bitcast i64 %251 to double
  %296 = inttoptr i64 %293 to double*
  %297 = load double, double* %296, align 8
  %298 = fadd double %295, %297
  store double %298, double* %39, align 1
  store i64 0, i64* %41, align 1
  %299 = add i64 %162, 76
  store i64 %299, i64* %3, align 8
  %300 = load double, double* %34, align 1
  %301 = fcmp uno double %298, %300
  br i1 %301, label %302, label %312

; <label>:302:                                    ; preds = %block_400c34
  %303 = fadd double %298, %300
  %304 = bitcast double %303 to i64
  %305 = and i64 %304, 9221120237041090560
  %306 = icmp eq i64 %305, 9218868437227405312
  %307 = and i64 %304, 2251799813685247
  %308 = icmp ne i64 %307, 0
  %309 = and i1 %306, %308
  br i1 %309, label %310, label %318

; <label>:310:                                    ; preds = %302
  %311 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %299, %struct.Memory* %MEMORY.2)
  %.pre15 = load i64, i64* %3, align 8
  %.pre16 = load i8, i8* %27, align 1
  %.pre17 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:312:                                    ; preds = %block_400c34
  %313 = fcmp ogt double %298, %300
  br i1 %313, label %318, label %314

; <label>:314:                                    ; preds = %312
  %315 = fcmp olt double %298, %300
  br i1 %315, label %318, label %316

; <label>:316:                                    ; preds = %314
  %317 = fcmp oeq double %298, %300
  br i1 %317, label %318, label %322

; <label>:318:                                    ; preds = %316, %314, %312, %302
  %319 = phi i8 [ 0, %312 ], [ 0, %314 ], [ 1, %316 ], [ 1, %302 ]
  %320 = phi i8 [ 0, %312 ], [ 0, %314 ], [ 0, %316 ], [ 1, %302 ]
  %321 = phi i8 [ 0, %312 ], [ 1, %314 ], [ 0, %316 ], [ 1, %302 ]
  store i8 %319, i8* %30, align 1
  store i8 %320, i8* %28, align 1
  store i8 %321, i8* %27, align 1
  br label %322

; <label>:322:                                    ; preds = %318, %316
  %323 = phi i8 [ %319, %318 ], [ %276, %316 ]
  %324 = phi i8 [ %321, %318 ], [ %264, %316 ]
  store i8 0, i8* %32, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %322, %310
  %325 = phi i8 [ %.pre17, %310 ], [ %323, %322 ]
  %326 = phi i8 [ %.pre16, %310 ], [ %324, %322 ]
  %327 = phi i64 [ %.pre15, %310 ], [ %299, %322 ]
  %328 = phi %struct.Memory* [ %311, %310 ], [ %MEMORY.2, %322 ]
  %329 = or i8 %325, %326
  %330 = icmp ne i8 %329, 0
  %.v21 = select i1 %330, i64 40, i64 6
  %331 = add i64 %327, %.v21
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -16
  %334 = add i64 %331, 4
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i64*
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %RAX.i191, align 8
  %337 = add i64 %332, -20
  %338 = add i64 %331, 8
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = shl nsw i64 %341, 13
  store i64 %342, i64* %RCX.i163, align 8
  %343 = add i64 %331, 15
  store i64 %343, i64* %3, align 8
  %344 = add i64 %342, %336
  store i64 %344, i64* %RAX.i191, align 8
  %345 = icmp ult i64 %344, %336
  %346 = icmp ult i64 %344, %342
  %347 = or i1 %345, %346
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %27, align 1
  %349 = trunc i64 %344 to i32
  %350 = and i32 %349, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350)
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %28, align 1
  %355 = xor i64 %336, %344
  %356 = lshr i64 %355, 4
  %357 = trunc i64 %356 to i8
  %358 = and i8 %357, 1
  store i8 %358, i8* %29, align 1
  %359 = icmp eq i64 %344, 0
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %30, align 1
  %361 = lshr i64 %344, 63
  %362 = trunc i64 %361 to i8
  store i8 %362, i8* %31, align 1
  %363 = lshr i64 %336, 63
  %364 = lshr i64 %341, 50
  %365 = and i64 %364, 1
  %366 = xor i64 %361, %363
  %367 = xor i64 %361, %365
  %368 = add nuw nsw i64 %366, %367
  %369 = icmp eq i64 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %32, align 1
  br i1 %330, label %block_.L_400ca8, label %block_400c86

block_400c86:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %371 = add i64 %332, -24
  %372 = add i64 %331, 19
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  store i64 %375, i64* %RCX.i163, align 8
  %376 = shl nsw i64 %375, 3
  %377 = add i64 %376, %344
  %378 = add i64 %331, 24
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i64*
  %380 = load i64, i64* %379, align 8
  store i64 %380, i64* %35, align 1
  store double 0.000000e+00, double* %37, align 1
  %381 = add i64 %332, -40
  %382 = add i64 %331, 29
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i64*
  store i64 %380, i64* %383, align 8
  %384 = load i64, i64* %3, align 8
  %385 = add i64 %384, 58
  store i64 %385, i64* %3, align 8
  br label %block_.L_400cdd

block_.L_400ca8:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %386 = add i64 %332, -28
  %387 = add i64 %331, 19
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  store i64 %390, i64* %RCX.i163, align 8
  %391 = shl nsw i64 %390, 3
  %392 = add i64 %391, %344
  %393 = add i64 %331, 24
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %35, align 1
  store double 0.000000e+00, double* %37, align 1
  %396 = add i64 %331, 28
  store i64 %396, i64* %3, align 8
  %397 = load i64, i64* %335, align 8
  store i64 %397, i64* %RAX.i191, align 8
  %398 = add i64 %331, 32
  store i64 %398, i64* %3, align 8
  %399 = load i32, i32* %388, align 4
  %400 = sext i32 %399 to i64
  %401 = shl nsw i64 %400, 13
  store i64 %401, i64* %RCX.i163, align 8
  %402 = add i64 %401, %397
  store i64 %402, i64* %RAX.i191, align 8
  %403 = icmp ult i64 %402, %397
  %404 = icmp ult i64 %402, %401
  %405 = or i1 %403, %404
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %27, align 1
  %407 = trunc i64 %402 to i32
  %408 = and i32 %407, 255
  %409 = tail call i32 @llvm.ctpop.i32(i32 %408)
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  store i8 %412, i8* %28, align 1
  %413 = xor i64 %397, %402
  %414 = lshr i64 %413, 4
  %415 = trunc i64 %414 to i8
  %416 = and i8 %415, 1
  store i8 %416, i8* %29, align 1
  %417 = icmp eq i64 %402, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %30, align 1
  %419 = lshr i64 %402, 63
  %420 = trunc i64 %419 to i8
  store i8 %420, i8* %31, align 1
  %421 = lshr i64 %397, 63
  %422 = lshr i64 %400, 50
  %423 = and i64 %422, 1
  %424 = xor i64 %419, %421
  %425 = xor i64 %419, %423
  %426 = add nuw nsw i64 %424, %425
  %427 = icmp eq i64 %426, 2
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %32, align 1
  %429 = add i64 %332, -24
  %430 = add i64 %331, 43
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = sext i32 %432 to i64
  store i64 %433, i64* %RCX.i163, align 8
  %434 = shl nsw i64 %433, 3
  %435 = add i64 %434, %402
  %436 = add i64 %331, 48
  store i64 %436, i64* %3, align 8
  %437 = bitcast i64 %395 to double
  %438 = inttoptr i64 %435 to double*
  %439 = load double, double* %438, align 8
  %440 = fadd double %437, %439
  store double %440, double* %34, align 1
  store i64 0, i64* %36, align 1
  %441 = add i64 %332, -40
  %442 = add i64 %331, 53
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to double*
  store double %440, double* %443, align 8
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_400cdd

block_.L_400cdd:                                  ; preds = %block_.L_400ca8, %block_400c86
  %444 = phi i64 [ %.pre18, %block_.L_400ca8 ], [ %385, %block_400c86 ]
  %445 = load i64, i64* %RBP.i, align 8
  %446 = add i64 %445, -40
  %447 = add i64 %444, 5
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i64*
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %35, align 1
  store double 0.000000e+00, double* %37, align 1
  %450 = add i64 %445, -16
  %451 = add i64 %444, 9
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i64*
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %RAX.i191, align 8
  %454 = add i64 %445, -20
  %455 = add i64 %444, 13
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = sext i32 %457 to i64
  %459 = shl nsw i64 %458, 13
  store i64 %459, i64* %RCX.i163, align 8
  %460 = add i64 %459, %453
  store i64 %460, i64* %RAX.i191, align 8
  %461 = icmp ult i64 %460, %453
  %462 = icmp ult i64 %460, %459
  %463 = or i1 %461, %462
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %27, align 1
  %465 = trunc i64 %460 to i32
  %466 = and i32 %465, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %28, align 1
  %471 = xor i64 %453, %460
  %472 = lshr i64 %471, 4
  %473 = trunc i64 %472 to i8
  %474 = and i8 %473, 1
  store i8 %474, i8* %29, align 1
  %475 = icmp eq i64 %460, 0
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %30, align 1
  %477 = lshr i64 %460, 63
  %478 = trunc i64 %477 to i8
  store i8 %478, i8* %31, align 1
  %479 = lshr i64 %453, 63
  %480 = lshr i64 %458, 50
  %481 = and i64 %480, 1
  %482 = xor i64 %477, %479
  %483 = xor i64 %477, %481
  %484 = add nuw nsw i64 %482, %483
  %485 = icmp eq i64 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %32, align 1
  %487 = add i64 %445, -24
  %488 = add i64 %444, 24
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = sext i32 %490 to i64
  store i64 %491, i64* %RCX.i163, align 8
  %492 = shl nsw i64 %491, 3
  %493 = add i64 %492, %460
  %494 = add i64 %444, 29
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i64*
  store i64 %449, i64* %495, align 8
  %496 = load i64, i64* %RBP.i, align 8
  %497 = add i64 %496, -24
  %498 = load i64, i64* %3, align 8
  %499 = add i64 %498, 3
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %497 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = add i32 %501, 1
  %503 = zext i32 %502 to i64
  store i64 %503, i64* %RAX.i191, align 8
  %504 = icmp eq i32 %501, -1
  %505 = icmp eq i32 %502, 0
  %506 = or i1 %504, %505
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %27, align 1
  %508 = and i32 %502, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %28, align 1
  %513 = xor i32 %502, %501
  %514 = lshr i32 %513, 4
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  store i8 %516, i8* %29, align 1
  %517 = zext i1 %505 to i8
  store i8 %517, i8* %30, align 1
  %518 = lshr i32 %502, 31
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %31, align 1
  %520 = lshr i32 %501, 31
  %521 = xor i32 %518, %520
  %522 = add nuw nsw i32 %521, %518
  %523 = icmp eq i32 %522, 2
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %32, align 1
  %525 = add i64 %498, 9
  store i64 %525, i64* %3, align 8
  store i32 %502, i32* %500, align 4
  %526 = load i64, i64* %3, align 8
  %527 = add i64 %526, -219
  store i64 %527, i64* %3, align 8
  br label %block_.L_400c28

block_.L_400d08:                                  ; preds = %block_.L_400c28
  %528 = add i64 %126, -20
  %529 = add i64 %162, 8
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = add i32 %531, 1
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RAX.i191, align 8
  %534 = icmp eq i32 %531, -1
  %535 = icmp eq i32 %532, 0
  %536 = or i1 %534, %535
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %27, align 1
  %538 = and i32 %532, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %28, align 1
  %543 = xor i32 %532, %531
  %544 = lshr i32 %543, 4
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  store i8 %546, i8* %29, align 1
  %547 = zext i1 %535 to i8
  store i8 %547, i8* %30, align 1
  %548 = lshr i32 %532, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %31, align 1
  %550 = lshr i32 %531, 31
  %551 = xor i32 %548, %550
  %552 = add nuw nsw i32 %551, %548
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %32, align 1
  %555 = add i64 %162, 14
  store i64 %555, i64* %3, align 8
  store i32 %532, i32* %530, align 4
  %556 = load i64, i64* %3, align 8
  %557 = add i64 %556, -257
  store i64 %557, i64* %3, align 8
  br label %block_.L_400c15

block_.L_400d1b:                                  ; preds = %block_.L_400c15
  %558 = add i64 %85, -28
  %559 = add i64 %121, 8
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = add i32 %561, 1
  %563 = zext i32 %562 to i64
  store i64 %563, i64* %RAX.i191, align 8
  %564 = icmp eq i32 %561, -1
  %565 = icmp eq i32 %562, 0
  %566 = or i1 %564, %565
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %27, align 1
  %568 = and i32 %562, 255
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %28, align 1
  %573 = xor i32 %562, %561
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %29, align 1
  %577 = zext i1 %565 to i8
  store i8 %577, i8* %30, align 1
  %578 = lshr i32 %562, 31
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %31, align 1
  %580 = lshr i32 %561, 31
  %581 = xor i32 %578, %580
  %582 = add nuw nsw i32 %581, %578
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %32, align 1
  %585 = add i64 %121, 14
  store i64 %585, i64* %3, align 8
  store i32 %562, i32* %560, align 4
  %586 = load i64, i64* %3, align 8
  %587 = add i64 %586, -295
  store i64 %587, i64* %3, align 8
  br label %block_.L_400c02

block_.L_400d2e:                                  ; preds = %block_.L_400c02
  %588 = add i64 %80, 1
  store i64 %588, i64* %3, align 8
  %589 = load i64, i64* %6, align 8
  %590 = add i64 %589, 8
  %591 = inttoptr i64 %589 to i64*
  %592 = load i64, i64* %591, align 8
  store i64 %592, i64* %RBP.i, align 8
  store i64 %590, i64* %6, align 8
  %593 = add i64 %80, 2
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %590 to i64*
  %595 = load i64, i64* %594, align 8
  store i64 %595, i64* %3, align 8
  %596 = add i64 %589, 16
  store i64 %596, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
block_400488:
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 13
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 51
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 50
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400ca8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
block_400488:
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
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
